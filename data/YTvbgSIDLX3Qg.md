# 🍅 XDG_STATE_HOME (~/.local/state) and Go's Missing os.UserStateDir

Covers the XDG state directory (~/.local/state), prompted by a viewer's correction about Neovim's use of it, and notes that Go has user directory functions for cache, config and home but none for state. Looks at Go issue 68988, which concerns telemetry data being stored under the config directory, and discusses the possibility of adding os.UserStateDir to Go.

Chapters:
0:00 Neovim correction about the XDG state directory
0:24 Go has no UserStateDir function
0:55 Go telemetry data in the config directory
2:18 Go team's response on moving telemetry
2:42 The case for adding UserStateDir to Go

`#golang #xdg #linux #neovim #opensource #desktop #standards`

## Category

Science & Technology

## Transcription

[00:00:00] Recently, somebody made a comment, in my Neil Villem apology video, I made a comment
[00:00:06] about Neil Villem wrongly, and I was wrong, again wrongly, using the state directory.
[00:00:15] And somebody in the comments, you know, sort of patiently said, "You know, that's X-T-G
[00:00:21] thing now."
[00:00:22] And I was like, "No, I didn't know that."
[00:00:24] And so I looked into it, and it turns out that Go, which is one of the ways that I know
[00:00:28] about this, because there's user, cashier, user-configure, user-hometer, but there's
[00:00:33] no user-stater.
[00:00:34] So I went ahead and did a search and found that issue 68988 on the Go project itself,
[00:00:43] because I was getting ready to make a PR to add user-stater, and I went ahead and did
[00:00:47] a search and I found that.
[00:00:49] And so, and then I wanted to go ahead and view this to see this.
[00:00:53] So let's just look at this really quickly.
[00:00:55] So the Go project is considering adding it, and there, they were noting there's Go actually
[00:01:02] added telemetry a while ago.
[00:01:05] It's a huge debate about whether it would get a lot of bad press about adding telemetry
[00:01:11] data, and this particular issue is related to the telemetry data being in the wrong place.
[00:01:17] And so I'm going to go ahead and read it.
[00:01:18] It says, "My X-T-G config go telemetry directory, config go telemetry is now full of data files
[00:01:25] in violation of X-T-G based directory specification, Blah, which reserves X-T-G home for configuration.
[00:01:33] What did you expect to see?
[00:01:34] I expected to see telemetry data in X-T-G state home instead.
[00:01:38] And then there's the several very instructive comments.
[00:01:39] These are relatively recent.
[00:01:40] August is pretty recent.
[00:01:41] Those from the meeting on this issue.
[00:01:44] So this is cool.
[00:01:45] The Go team knows about this, they've already added it, and it's a good chance that we're
[00:01:49] going to see a user state DER, OS dot user state DER, at some point.
[00:01:55] There hasn't been a PR committed or even considered for this as far as I know.
[00:02:00] But I think this is going to be an important point.
[00:02:02] Now this particular thread is about what to do with the telemetry data and where to put
[00:02:05] it.
[00:02:06] So maybe that's to be still be open to a PR that just adds user state home, which I really
[00:02:14] hope they do add.
[00:02:16] And so here let's go ahead and look at it.
[00:02:18] Hello point out, unfortunately it seems to me that we are not the only offenders searching
[00:02:23] my config finds plenty of data files, the various applications, nevertheless we'd like to be
[00:02:25] good citizens.
[00:02:26] Changing this now would be non-trivial disruptive.
[00:02:29] For example, all our documentation historically talks about the telemetry data being stale.
[00:02:34] It's the advantage of it being a user config DER, blah, blah, blah.
[00:02:40] We're not sure whether there's desirable to separate or not.
[00:02:42] So the answer here is it doesn't look like there's a PR to add user state DER.
[00:02:48] I am going to attempt myself to submit a go PR to the project, which adds user state DER
[00:02:54] so we can get that in 123 or whatever version we're on.
[00:02:58] I personally would love to have that added in its ultra-trivial to write the code to
[00:03:03] look that up.
[00:03:04] So I think that that function could be safely added to the go project whether or not they
[00:03:10] decided to put telemetry in there at all.
[00:03:13] So I just wanted to say that.
[00:03:14] So and again, another apology to the person, it turns out that Neil Vim is ahead of the
[00:03:19] game on this particular issue as this telemetry team has noted that not very many people are
[00:03:25] doing this and most of us don't know about it.
[00:03:28] So I'm making a video so you know.
[00:03:29] So a XDG state DER, US user state DER is a thing.
[00:03:34] Bye.
