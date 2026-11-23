# AGENTS.md

## Adding a video

- Create `data/<UID>.md`, where `<UID>` is the YouTube video ID.
- Start the file with the video title as a `#` heading.
- Follow it with the YouTube description, then the hashtags on their own line, then a `## Transcription` heading with the timestamped transcript, one segment per line as `[HH:MM:SS] text`. Always keep timestamps so chapter headings can be created from them.
- Wrap the hashtag line in backticks so Markdown doesn't treat `#` as a heading.
- Blank line between each section. Example (transcript shortened):

  ```markdown
  # Use explicit ALE linters and fixers

  These days ALE linters and fixers are the way to keep your code clean...

  `#vim #tips #editors`

  ## Transcription

  [00:00:00] Okay, linters and fixers.
  [00:00:03] These are things that I did not really understand...
  ```
- Get the title and description from the YouTube page. No `yt-dlp` is needed.
- Always assume the latest file in `~/Movies` (by modification time) is the video to transcribe. Do not ask for confirmation.
- To open a file for the user, always use the full path `/usr/bin/open`.
- Transcribe locally with `ffmpeg` and `whisper-cli` (whisper-cpp), keeping working files outside the repo:

  ```sh
  ffmpeg -i "$HOME/Movies/<file>.mov" -ar 16000 -ac 1 -c:a pcm_s16le audio.wav
  whisper-cli -m ~/whisper-work/models/ggml-base.en.bin -f audio.wav -osrt -of transcript
  ```

  Do not pass `-nt`. Convert the `.srt` into `[HH:MM:SS] text` lines for the markdown file, and also save the `.srt` as `data/<UID>.srt`.

## After a video is processed

- Keep timestamps in the transcript. If the `.srt` is fixed by hand, run `bin/yt-sync srt2md <UID>` to rebuild the markdown transcript from it.
- Only public videos belong in `data/`. Unlisted ones are processed only if listed in `include.txt`; private ones never.
- To publish a description, run `bin/yt-update <UID>` (it shows the old and new text and asks first). Descriptions are built from the part of the markdown file before the first `##` heading; `## Category` sets the YouTube category.
- Background jobs (`yt-sync`, `yt-enrich`) are described in [README.md](README.md). Never run `yt-update` or change privacy for a video without the user's say-so.
