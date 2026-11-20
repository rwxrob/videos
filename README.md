# Videos

Searchable flat-text (YFM) database of all rwxrob videos.

## Sample video metadata markdown file

The text files that contain information about a video are designed to be cut and pasted directly into a YouTube description field.

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
1. Task AI to transcribe video locally and fill the YFM file
1. Update YouTube description to match

### Future plans

* Have AI pull down and create the data for all existing videos
* Create an MCP that's based on the data and transcriptions from all published videos
* Command-line tool and web frontend that fronts the MCP for queries against video data.
