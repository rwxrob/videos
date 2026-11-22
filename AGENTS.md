# AGENTS.md

## Adding a video

- Create `data/<UID>.md`, where `<UID>` is the YouTube video ID.
- Start the file with the video title as a `#` heading.
- Follow it with the YouTube description, then the hashtags on their own line, then a `## Transcription` heading with the transcript as a single paragraph.
- Wrap the hashtag line in backticks so Markdown doesn't treat `#` as a heading.
- Blank line between each section. Example (transcript shortened):

  ```markdown
  # Use explicit ALE linters and fixers

  These days ALE linters and fixers are the way to keep your code clean...

  `#vim #tips #editors`

  ## Transcription

  Okay, linters and fixers. These are things that I did not really understand...
  ```
- Get the title and description from the YouTube page. No `yt-dlp` is needed.
- Always assume the latest file in `~/Movies` (by modification time) is the video to transcribe. Do not ask for confirmation.
- To open a file for the user, always use the full path `/usr/bin/open`.
- Transcribe locally with `ffmpeg` and `whisper-cli` (whisper-cpp), keeping working files outside the repo:

  ```sh
  ffmpeg -i "$HOME/Movies/<file>.mov" -ar 16000 -ac 1 -c:a pcm_s16le audio.wav
  whisper-cli -m ~/whisper-work/models/ggml-base.en.bin -f audio.wav -nt -otxt -of transcript
  ```
