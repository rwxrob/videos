# Navigate and change terminal command history with vi mode (set -o vi)

If you are a vi fan (and why aren't you if not) then you probably already know about set -o vi to get vi mode for your history.

`#linux #unix #tips`

## Transcription

[00:00:00] If you ever wanted to use VI on the command line
[00:00:04] in order to navigate your history,
[00:00:07] a lot of people don't know about Set-Show VI.
[00:00:09] I just reminded somebody about it.
[00:00:10] They're like, oh my god, Set-Show is basically VI.
[00:00:13] This is not the default, for whatever reason,
[00:00:15] probably because Richard Solomon made Bash.
[00:00:18] They made Emacs mode the default, which, yes, this is true.
[00:00:21] If you can do Emacs.
[00:00:23] And you can operate on the command line history file
[00:00:27] as if it were a file you were editing using Emacs or VI.
[00:00:32] You don't have to use zero keys, zero.
[00:00:33] People are like, don't you use zero keys?
[00:00:35] I'm like, no, I never use zero keys for anything.
[00:00:36] I use VI keys for everything.
[00:00:38] So, in fact, almost the first thing I ever do
[00:00:40] whenever I get on any terminal is set to actual VI
[00:00:43] so that I can use VI things.
[00:00:44] And that way, when I do VI things,
[00:00:47] so I just did control, I did escape,
[00:00:49] and now I'm pushing K to go up and J to go down.
[00:00:52] And you can do really amazing things
[00:00:54] like you can search through your entire history
[00:00:56] with a slash, right?
[00:00:58] So, I regularly will have something
[00:01:00] like I was pushing some stuff earlier.
[00:01:02] I'll go find my push command,
[00:01:03] and it jumps entirely through my history.
[00:01:05] And it finds the one that has what that command was,
[00:01:08] or I can do slash.
[00:01:10] Whoops, I have to escape.
[00:01:11] I have to do another one.
[00:01:13] Fishies, so I go search for fishies.
[00:01:15] So, everything else that you know about VI is command mode,
[00:01:19] which is very powerful.
[00:01:20] The more better you are with VI,
[00:01:23] the better, the more time you spend in command mode,
[00:01:24] the less time in edit mode,
[00:01:27] and you never, ever, ever use your arrows.
[00:01:30] So, this is a good way for you to do this.
[00:01:32] It's also, a lot of other people will say,
[00:01:35] you should be doing this and all that.
[00:01:36] No, screw that.
[00:01:38] I'm just gonna go search through and find
[00:01:40] where I'm just gonna do a keyword search for everything,
[00:01:43] staying very search-centric as you should.
