# Dangers of CDPATH

Explains why setting CDPATH in a shell rc file can break scripts and AI agents, since cd prints the resolved directory to standard output and may resolve to an unexpected location. Demonstrates the problem in a terminal and shows the fix of setting CDPATH= before cd in scripts, along with a recommendation to avoid CDPATH in rc files and to run shellcheck.

Here's why you should always add CDPATH= when using cd in scripts and probably just not add CDPATH to your rc files despite the convenience.

Chapters:
0:00 What CDPATH does and why it's convenient
1:00 Demo: cd resolving to an unexpected directory
2:05 Why cd prints output and how scripts break
3:25 Using shellcheck to catch shell script errors
4:25 Fix: CDPATH= and the leading dot entry
5:10 Agents failing from extra cd output
7:00 The cd, do work, cd back idiom
8:55 Two takeaways: zero out CDPATH, skip rc

`#bash #cdpath #shell #linux #shellscripting #terminal #shellcheck #aiagents #tips`

## Category

Science & Technology

## Transcription

[00:00:00] to make a quick video about something that I have recommended for a long time called CD-Path
[00:00:06] that has a pretty strong reason to not use it, that I have been hitting since I started using AI,
[00:00:13] and it was AI that actually caught the problem. So what does CD-Path do? CD-Path automatically
[00:00:22] makes your CD command go to one of the directories that's underneath the directory within the CD-Path
[00:00:35] first. And you can already see that there's a bunch of problems with this, right? Because
[00:00:42] it is really, really convenient and nice. So like if you have a repo saying and you're on the top
[00:00:46] level and you do a CD into something under there, it'll go straight to the thing. And because of that,
[00:00:54] let me show you. So like anything in my dot files, so let me tell you why it's a problem,
[00:01:02] and I'll let you decide if you want to keep it. But since I found this problem, I'm kind of
[00:01:06] teetering on not using CD-Path at all anymore and using a fuzzy finder or any number of things
[00:01:12] that people use to change directories. But if I do CD install, you know, you think, oh, hey,
[00:01:19] well, let's see what's in this directory, right? Okay, there's an install directory in the directory.
[00:01:22] So let's go into slash temp. Now, if I do CD install, you'd think like, well, there better be an
[00:01:28] install in this directory, right? Well, no, not if you use CD-Paths. Like a CD and install if
[00:01:34] you're super lazy, and it tells you where it's going. So it'll, it, so when you use CD-Path like
[00:01:41] this, as a safety measure, it deliberately prints out the line of where it resolved to do the CD,
[00:01:48] so you know where you are. And that's because CD-Path is really, really old. It goes back,
[00:01:54] you know, way before these complex, you know, command line prompts. And that means
[00:01:59] that it has to print out where you are. And that is the source of the problem. So if you are using
[00:02:05] any kind of agent that is expecting CD to behave like 99% of other scripts out there, you just CD
[00:02:12] to a thing. And it just goes there. So let me simulate that if I go to slash temp. Now,
[00:02:18] if I do this CD-Path, let's empty out CD-Path and I do CD into install, it'll say I can't see
[00:02:26] install because it tries to resolve it from the current directory as most scripts expect.
[00:02:32] The danger of CD-Path, so this is why I'm teetering on not recommending it at all anymore,
[00:02:38] and maybe recommending against it, is because when you, it's, it's the same thing in a script,
[00:02:46] right? So a lot of people will use CD in a shell script and they'll expect it to resolve
[00:02:52] the current directory and go into that thing. But if, but if the user has set CD-Path,
[00:02:58] CD-Path is at that point, it's kind of an anti-pattern, right? And here's the rub though. So,
[00:03:05] you know, I always wondered, I didn't discover CD-Path until probably five years ago and I've
[00:03:09] been coding my whole life on Linux and stuff. And I suspect that somewhere along the line that CD-Path
[00:03:15] was recommended against, and I haven't talked to my agent or anything about this. So I suspect
[00:03:21] it was probably at one point discouraged from usage because of the danger of this. And by the way,
[00:03:27] if you're at all afraid of writing shell scripts, which by the way, you should be,
[00:03:31] shell scripts are extremely dangerous and they're easy to get wrong, you should pass
[00:03:35] everything through a shell check. And I'm going to make a separate video on how to use AL and just
[00:03:43] general fixtures and linters in general. But these, this is, you should be passing every single thing
[00:03:49] through shell check all the time. And that will, if it gives, you know, if you make an error or
[00:03:54] something, this is what you get when you use that. You get, you get the errors, get called out to
[00:03:58] you right in line. So I will just have a video about it, do that. But the point is, if you're
[00:04:03] afraid of these kinds of things, make sure that you have shell check enabled. So then we want to
[00:04:07] shell check and somebody has CD-Path enabled, you know, it'll potentially catch that. I haven't
[00:04:13] checked it. That's one of the reasons I think it's maybe scary because it technically is doing what,
[00:04:18] you know, shell is designed to do. And that is to CD, you know, into a directory. So with CD-Path
[00:04:25] equals, that's the fix. But if I go to CD-Install without it, with the default CD-Path still here,
[00:04:33] you know, you'll see that's my CD-Path that it resolves to. And those are, of course, very,
[00:04:38] very sick. You gotta make sure you put dot slasher. I have not done that before. I have forgotten to
[00:04:43] put the dot in front of the path. And which is, by the way, you would never put dot slash in an
[00:04:49] actual path. This is just for the CD-Path so that if you have an install in the current directory,
[00:04:54] it does what you expect. Otherwise, it would prioritize stuff that's not even in the current
[00:04:57] directory. Even if you had an installed directory there, it wouldn't find it. So you go to CD-Install
[00:05:03] Now and you get there. So again, notice how when you do this, this, this gets written to stud out.
[00:05:10] And this here gets written to standard output. And I don't have to tell you why that's bad
[00:05:17] if you're a Unix person, right? Because it's being written to standard output.
[00:05:25] If you are capturing the output, so let's say a very common idiom is to
[00:05:32] CD into a directory and then run LS or fine or whatever. So you get stuff in it. I mean,
[00:05:39] it's a contrived example, but you would go into that directory and then you would list all your
[00:05:43] stuff in there and you would capture that into a string and, you know, by redirecting stud out
[00:05:48] into a string or something. And then you would use that, right? Well, this is how I caught the
[00:05:53] problem because I was agent, it was using agents and agents were failing because they were expecting
[00:06:02] the output of CD to not be anything. So they were expecting, they were going into a place and
[00:06:06] then listing, like running LS or something and they were expecting to see or catafile or whatever.
[00:06:10] They were expecting to see that stuff, but then they were getting corrupted because there was an
[00:06:14] extra line getting added to the top of it. And the extra line was being generated by CD itself
[00:06:20] because of CD path. And if I didn't know anything else except for that, that would be reason enough
[00:06:29] to never use CD path and just do the lazy thing and like find your way through and make your own
[00:06:33] Simlink or a fuzzy fighter or any other of the reasons that you want to CD into that directory.
[00:06:40] I thought that I had cleverly found, you know, some years ago, I thought I had cleverly found
[00:06:44] a way to bypass all of that and then just set your CD path and go for it. But now that I know
[00:06:48] that setting the CD path actually affects all scripting, not a fan, just not a fan of it.
[00:06:57] And the thing that's even scarier about this is that the people who do use CD path
[00:07:02] are inadvertently breaking scripts that depend on the idiom of CDing into thing.
[00:07:08] So if you don't want to be burned by even the possibility that somebody has said CD path,
[00:07:16] and in fact, you can make a strong argument that if you're using the coding idiom of
[00:07:22] CDing someplace and then doing something and then going back, and I believe this does not apply
[00:07:28] to like POPD, by the way, I think that's a totally different thing, you know, like, that's a different
[00:07:32] approach. But it's very, very common to CD to someplace, do something, and then CD dash to go
[00:07:38] back out so that you're doing all the operations from that spot and you're capturing that little
[00:07:42] thing. But I would, you can make a really strong argument now that any time that you, any time
[00:07:49] that you ever want to follow this method, which by the way, this is something that the agent wrote,
[00:07:56] right? So you want to go into, I want to CD, and I want to go into the directory name,
[00:08:03] and that matches the same name as this, and you know, and I want to capture that output and put
[00:08:07] it as a source, and then I'm going to create a symbolic link, right? So here is what you want to
[00:08:15] add. So if you use the CD into a thing, do some stuff, and then come back out, if you use that
[00:08:25] bash out that bash idiom, or that shell idiom, you should always, always, always, always air out
[00:08:34] CD path to do it safely. And if you don't do that, then you run into the very small risk that
[00:08:42] somebody is going to use your script or code that has set CD path in the global environment,
[00:08:48] like I have done, and it will screw up the script, and it will be a bug. So, you know, that's the
[00:08:58] takeaway from this. So two messages, if you made it to the end, one, anytime you use the CD idiom of
[00:09:06] CDing into something and doing it and capturing the output, as you see on the screen, always put
[00:09:10] CD path equals blank to zero it out. And number two, don't use CD path in your bash RC is probably
[00:09:18] not worth it. It's not, it's just not worth the risk. So that's the end.
