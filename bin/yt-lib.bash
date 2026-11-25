#!/usr/bin/env bash
# yt-lib.bash: shared YouTube OAuth helpers for yt-update and yt-sync.
# Source this file; it is not meant to be run.
#
# Config dir (default ~/.config/videos, override with YT_CONFIG_DIR), kept
# outside the repo:
#   client_secret.json  the OAuth client JSON downloaded from Google Cloud
#   token.json          written by do_login: {"refresh_token": "..."}

command -v jq >/dev/null || { echo "jq is required" >&2; exit 1; }

conf=${YT_CONFIG_DIR:-$HOME/.config/videos}
secret=$conf/client_secret.json
tokfile=$conf/token.json
token_uri=https://oauth2.googleapis.com/token
port=8085
redir=http://127.0.0.1:$port

# client_field <name>: read a field from Google's client JSON (installed or web).
client_field() { jq -r --arg k "$1" '(.installed // .web)[$k]' "$secret"; }

# do_login: browser OAuth flow; saves the refresh token to $tokfile.
do_login() {
  [[ -f $secret ]] || { echo "missing $secret (download it from Google Cloud)" >&2; exit 1; }
  local cid state url req code resp rt
  cid=$(client_field client_id)
  state=$(openssl rand -hex 16)
  url="https://accounts.google.com/o/oauth2/v2/auth?client_id=$(jq -rn --arg v "$cid" '$v|@uri')"
  url+="&redirect_uri=$(jq -rn --arg v "$redir" '$v|@uri')&response_type=code"
  url+="&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fyoutube"
  url+="&access_type=offline&prompt=consent&state=$state"
  echo "Opening browser to authorize. If it does not open, visit:" >&2
  echo "$url" >&2
  (/usr/bin/open "$url" 2>/dev/null || xdg-open "$url" 2>/dev/null || true) &
  # Serve one response on the loopback port and read the request line.
  req=$(printf 'HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nConnection: close\r\n\r\n<h1>Authorized. You can close this tab.</h1>' \
    | nc -l "$port" | head -1)
  [[ $req == *"state=$state"* ]] || { echo "bad or missing state in redirect: $req" >&2; exit 1; }
  code=$(sed -n 's/.*[?&]code=\([^& ]*\).*/\1/p' <<<"$req")
  [[ -n $code ]] || { echo "no code in redirect: $req" >&2; exit 1; }
  resp=$(curl -sS "$(client_field token_uri)" \
    --data-urlencode "code=$code" \
    --data-urlencode "client_id=$cid" \
    --data-urlencode "client_secret=$(client_field client_secret)" \
    --data-urlencode "redirect_uri=$redir" \
    --data-urlencode "grant_type=authorization_code")
  rt=$(jq -r '.refresh_token // empty' <<<"$resp")
  [[ -n $rt ]] || { echo "no refresh token returned: $(jq -r '.error_description // .error // .' <<<"$resp")" >&2; exit 1; }
  (umask 077; jq -n --arg rt "$rt" '{refresh_token: $rt}' > "$tokfile")
  chmod 600 "$tokfile"
  echo "saved refresh token to $tokfile" >&2
}

# get_access: exchange the saved refresh token for a short-lived access token.
get_access() {
  [[ -f $tokfile ]] || return 1
  curl -sS --max-time 30 "$(client_field token_uri)" \
    --data-urlencode "client_id=$(client_field client_id)" \
    --data-urlencode "client_secret=$(client_field client_secret)" \
    --data-urlencode "refresh_token=$(jq -r .refresh_token "$tokfile")" \
    --data-urlencode "grant_type=refresh_token" | jq -r '.access_token // empty'
}

# ensure_access: set $access, logging in first if there is no valid token.
ensure_access() {
  [[ -f $secret ]] || { echo "missing $secret (download it from Google Cloud)" >&2; exit 1; }
  access=$(get_access || true)
  if [[ -z $access ]]; then
    # Interactive login waits for a person forever; background jobs set
    # YT_NO_LOGIN so a failed token refresh just fails and is retried later.
    [[ -z ${YT_NO_LOGIN:-} ]] || { echo "could not refresh the access token (not logging in: YT_NO_LOGIN)" >&2; exit 1; }
    echo "no valid refresh token; logging in" >&2
    do_login
    access=$(get_access || true)
  fi
  [[ -n $access ]] || { echo "could not get access token" >&2; exit 1; }
}

# selected_ids: IDs we are allowed to process, newest first, plus include.txt.
# Needs $manifest.
# Only public videos by default (YT_PRIVACY="public,unlisted" to widen; private
# is never processed); YT_MAX_MINUTES skips longer videos.
selected_ids() {
  if [[ -n ${YT_ONLY_INCLUDE:-} ]]; then include_ids; return; fi
  jq -r --arg p "${YT_PRIVACY:-public}" --argjson max "${YT_MAX_MINUTES:-0}" '
    def secs: capture("PT(?:(?<h>[0-9]+)H)?(?:(?<m>[0-9]+)M)?(?:(?<s>[0-9]+)S)?")
      | ((.h // "0" | tonumber) * 3600 + (.m // "0" | tonumber) * 60 + (.s // "0" | tonumber));
    ($p | split(",") | map(select(. != "private"))) as $ok
    | .[] | select(.live == "none" and (.privacy as $x | $ok | index($x))
                   and ($max == 0 or (.duration | secs) <= $max * 60)) | .id' "$manifest" \
    | cat - <(include_ids) \
    | awk '!seen[$0]++'
}

_yt_lib_dir=$(dirname "${BASH_SOURCE[0]}")

# include_ids: IDs from include.txt (YT_INCLUDE_FILE overrides) that are in the
# manifest, not live and not private, even if they are not public. The order of
# the file is kept, so you can rank the videos you want processed first.
include_ids() {
  local f=${YT_INCLUDE_FILE:-$_yt_lib_dir/../include.txt}
  [[ -f $f ]] || return 0
  grep -Fxf <(jq -r '.[] | select(.live == "none" and .privacy != "private") | .id' "$manifest") \
    <(sed 's/[[:space:]]*#.*//; s/[[:space:]]*$//' "$f" | awk 'NF') || true
}

# norm_id accepts a bare video ID, or a data file name or path such as
# data/YT-RqoPoOQd7w.md (handy with tab completion), and prints the bare ID.
norm_id() {
  local x=${1##*/}
  x=${x%.md}; x=${x%.srt}
  [[ $x == YT* && ${#x} -eq 13 ]] && x=${x#YT}
  printf '%s\n' "$x"
}
