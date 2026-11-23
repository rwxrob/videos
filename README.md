# Videos

Searchable flat-text (YFM) database of all rwxrob videos.

## Sample video metadata markdown file

The text files that contain information about a video are designed to be cut and pasted directly into a YouTube description field.

Each file lives at `data/<UID>.md`, named for the YouTube video ID, and has four parts: the title as a heading, the description, the hashtags (in backticks so Markdown doesn't treat `#` as a heading), and the timestamped transcript, one `[HH:MM:SS] text` line per segment, under a `## Transcription` heading. The timestamps make it possible to generate chapter headings. The raw captions are also saved alongside as `data/<UID>.srt`.

```markdown
# Use explicit ALE linters and fixers

These days ALE linters and fixers are the way to keep your code clean...

`#vim #tips #editors`

## Transcription

[00:00:00] Okay, linters and fixers.
[00:00:03] These are things that I did not really understand...
```

YouTube video descriptions are capped at **5,000 characters** (or 5,000 bytes via the API) and prohibit angle brackets (`<` and `>`), while supporting lightweight Markdown-like syntax for text styling, lists, timestamps, and links.

### Core limitations

* **Total Length:** Videos and playlists allow up to **5,000 characters** (roughly 800 words), whereas channel "About" descriptions are capped at **1,000 characters**. The YouTube Data API enforces this strictly as **5,000 bytes**—meaning emojis and non-Latin characters (2–4 bytes each) consume your limit faster.
* **Visible Preview Cutoff:** Only the first **125 to 157 characters** (about 2–3 lines) appear before viewers must click "...more" to expand the text.
* **Restricted Characters:** Angle brackets (`<` and `>`) are completely blocked to prevent HTML injection (so emoticons like `<3` will trigger a save error).
* **Hashtag Limits:** You can add up to **60 hashtags** in a description; if you exceed 60, YouTube ignores *all* of them. Only the first three appear above your video title.
* **Clickable Links:** External links only become clickable once your channel unlocks YouTube Advanced Features (via video verification, valid ID, or channel history) and must include `http://` or `https://`.
* **Policy Restrictions:** Tag stuffing (listing blocks of unformatted keywords), doxing, excessive profanity, and links to spam or prohibited sites violate YouTube's metadata policies.

#### Special syntax & formatting

YouTube uses simple inline syntax to trigger rich features in descriptions:

| Feature            | Syntax                          | Rules & Behavior                                                                                                                                                       |
| :----------------- | :------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Bold**           | `*text*`                        | No spaces between the asterisks and the text; avoid touching punctuation directly against the outer asterisks.                                                         |
| **Italics**        | `_text_`                        | Wrap words or phrases in single underscores.                                                                                                                           |
| **Strikethrough**  | `-text-`                        | Wrap words or phrases in single hyphens.                                                                                                                               |
| **Bullet Lists**   | `* Item`, `- Item`, or `+ Item` | Must be placed at the very start of a new line, immediately followed by a single space.                                                                                |
| **Video Chapters** | `0:00 Chapter Title`            | Must start with `0:00`, include at least **3 timestamps** in ascending order, and each chapter must be at least **10 seconds** long.                                   |
| **Mentions**       | `@ChannelHandle`                | Creates a clickable badge linking directly to that creator's channel.                                                                                                  |
| **Hashtags**       | `#Topic`                        | No spaces allowed; spaces break the tag.                                                                                                                               |
| **Corrections**    | `Correction:` + timestamp       | Adding `Correction:` on a line with a timestamp (e.g., `Correction: 1:45 - Fixed the audio`) triggers an interactive "View corrections" info card on the video player. |

> [!TIP]
> On desktop in YouTube Studio, you can also highlight text and use the formatting toolbar at the bottom of the description box to apply bold, italics, and strikethrough without typing symbols manually.

### Video production workflow

For those interested in knowing how I produce videos so that they can be consumed quickly while still being developed quickly without any editing at all, read this section.

1. Record a video with OBS (usually while live streaming)
1. Upload to YouTube using web interface
1. Add a simple title and description with three main hashtags
1. Copy the UID of video
1. Create a new empty YFM (`.md`) file under [data](data) named for UID of video
1. Wait for upload to complete
1. Task AI to fill the YFM file: it pulls the title and description from the YouTube page and transcribes the latest video in `~/Movies` locally (see [AGENTS.md](AGENTS.md))
1. Have AI add a summary and chapters (from the timestamps) to the description in the YFM file
1. Update the YouTube description to match, either by pasting it in or with `bin/yt-update <UID>` (see [Updating YouTube from the command line](#updating-youtube-from-the-command-line))

### Updating YouTube from the command line

`bin/yt-update <UID>` pushes the title and description (including chapters and hashtags) from `data/<UID>.md` to YouTube using the YouTube Data API. It is optional; everything else here works without it. It needs `bash`, `curl`, and [`jq`](https://jqlang.org) (`brew install jq`).

One-time setup, because changing a video requires OAuth as the channel owner (an API key is not enough):

1. In the [Google Cloud console](https://console.cloud.google.com) create a project.
1. Go to **APIs & Services → Library** and enable **YouTube Data API v3**.
1. Go to **APIs & Services → OAuth consent screen** (Google Auth Platform), choose **External**, and fill in the required fields. Add your own Google account as a test user.
1. **Publish the app** (set publishing status to "In production"). Left in "Testing", refresh tokens expire after 7 days. Google will warn that the app is unverified when you sign in; that is fine for your own use.
1. Go to **Credentials → Create credentials → OAuth client ID**, choose **Desktop app**, and download the JSON. (A **Web application** client also works if you add `http://127.0.0.1:8085` as an authorized redirect URI.)
1. Save the download outside the repo and lock it down:

   ```sh
   mkdir -p ~/.config/videos && chmod 700 ~/.config/videos
   mv ~/Downloads/client_secret_*.json ~/.config/videos/client_secret.json
   chmod 600 ~/.config/videos/client_secret.json
   ```

1. Run `bin/yt-update auth`. It opens your browser, you sign in as the account (or brand account) that owns the channel, and it saves the refresh token to `~/.config/videos/token.json`. You never copy a token by hand.

If the token is ever missing, expired, or revoked, `bin/yt-update` logs in again automatically. Set `YT_CONFIG_DIR` to use a different config directory.

Usage:

```sh
bin/yt-update -n <UID>   # dry run: only show the parsed title and description
bin/yt-update <UID>      # show current vs. new description, confirm, then update
bin/yt-update -y <UID>   # skip the confirmation prompt
bin/yt-update auth       # log in again and exit
```

The script fetches the video's current metadata first and sends it back with only the title and description changed, so category and tags are preserved. Each update costs about 50 of the 10,000 daily API quota units. Never commit the credentials file.

### Dependencies

Transcription runs entirely locally; no accounts or API keys are needed. Only `bin/yt-update` talks to YouTube.

* **[OBS](https://obsproject.com)** records the video (usually while live streaming).
* **[Homebrew](https://brew.sh)** installs the tools below on macOS.
* **[ffmpeg](https://ffmpeg.org)** extracts 16 kHz mono WAV audio from the video file (`brew install ffmpeg`).
* **[whisper-cpp](https://github.com/ggml-org/whisper.cpp)** provides `whisper-cli`, which transcribes the audio locally (`brew install whisper-cpp`).
* **[ggml-base.en model](https://huggingface.co/ggerganov/whisper.cpp)** is the Whisper model `whisper-cli` loads (about 141 MB). Larger models are more accurate with technical terms.
* **An AI coding agent** fetches the title and description from the YouTube page and fills the YFM file (see [AGENTS.md](AGENTS.md)).

### Future plans

* Have AI backfill the data files for all existing videos: titles and descriptions come from the YouTube pages, but transcripts need the audio, so either the original recordings or a downloader such as `yt-dlp`
* Write an ALE linter for the YouTube-flavored Markdown in descriptions and data files (see the [limitations](#core-limitations) above)
* Try a larger Whisper model for better accuracy on technical terms
* Create an MCP that's based on the data and transcriptions from all published videos
* Command-line tool and web frontend that fronts the MCP for queries against video data.
