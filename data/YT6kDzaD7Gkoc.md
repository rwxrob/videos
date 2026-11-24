# 💢 Claude too stupid to not rm -rf without checking for files

Warns about trusting AI coding agents with destructive commands, using an example where an agent proposed running rm -rf on an entire OBS directory when asked to back out a single Lua plugin file. The directory also held an overlay index.html and a logo that would have been lost. Stresses explicitly authorizing every action and checking directory contents before deleting.

Agentic AI is crazy powerful, but has to be babysat like a first year intern.

`#claude #aiagents #linux #rmrf #obs #devculture #terminal #ai #danger #mistakes`

## Category

Science & Technology

## Transcription

[00:00:00] Here's just how dangerous this is.
[00:00:05] When you're using agents, you have to never, ever, ever trust the agent.
[00:00:11] That means don't give it authority to do anything, explicitly authorize every single
[00:00:15] thing.
[00:00:16] I asked my quad to back out a single file, so in this directory here in OBS directory,
[00:00:25] I had my index.html is just my overlay, which you're seeing right now.
[00:00:28] That's why it's not working.
[00:00:30] You see the logo.
[00:00:31] Then there was a Lua plugin that I had in there to just start all of my stuff up when
[00:00:39] I launched OBS.
[00:00:40] I decided to back off from it because OBS doesn't have the same environment as my user, which
[00:00:45] means it doesn't know where any of my categories or topic lists are, so it can't find anything.
[00:00:50] I just decided to just run topics D, which is the daemon by hand.
[00:00:55] I asked it to back it out, look what it tried to do.
[00:01:01] Remove my entire OBS directory, and I even told it, I've like, I removed it since you're
[00:01:05] going to delete an index station on the logo as well, which would have been bad.
[00:01:09] And Claude very politely says, "Oh, good catch.
[00:01:12] I should have checked."
[00:01:13] That was in that directory.
[00:01:15] Nothing was in there before I did, "RM-RF!"
[00:01:19] So Claude is stupid enough to not, even Claude, this is Opus 4.6, which is supposed to be
[00:01:26] really smart, is even stupid enough to not know not to do an RM-RF against an entire
[00:01:34] directory before checking what's in the directory.
[00:01:37] You've been warned.
