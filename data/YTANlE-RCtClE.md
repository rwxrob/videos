# 🍎 Why the : at the beginning? Shell colon command for redirects and default variables

Explains why a colon appears before a redirect to truncate a file in shell scripts, and compares it with alternatives such as tee, true and removing the file, including the choice to avoid a subshell. Also shows how the colon command can be used with default parameter expansion at the top of a script, so environment variables can override defaults without argument parsing, followed by some ShellCheck troubleshooting.

Chapters:
0:00 What does a bare redirect do
1:09 ShellCheck warning and possible fixes
2:34 The colon command for redirection
3:02 Setting default variables with colon
5:07 Troubleshooting ShellCheck on another machine

`#bash #shellscripting #shellcheck #linux #terminal #commandline #coding #protips #education`

## Category

Education

## Transcription

[00:00:00] Here's a quick video about a very common shell check error using a really common technique
[00:00:07] for truncating a file.
[00:00:10] So the first question I have is pause the video, see if you know the answer.
[00:00:13] So what does this do?
[00:00:15] There's a greater than sign there and it's pointing to temp off, right?
[00:00:19] What does that do?
[00:00:22] What this does is, and people look at this, I've had people open issues on my dot files
[00:00:26] on this program, by the way, on my Y-Y-Y program because they have no idea that I'm using it
[00:00:29] as the filter command from UI.
[00:00:31] They're like, you shouldn't be doing that, T does the same thing.
[00:00:35] I'm like, okay, and the truth is I could, I could replace this with T, but then I would
[00:00:39] have a sub-shell.
[00:00:40] I don't want a sub-shell.
[00:00:41] I want this thing to run without any sub-shell dependencies because they do it all the time.
[00:00:45] That's why it's that way.
[00:00:46] In fact, I should probably write that at some point in there, so I don't get another issue
[00:00:50] in my own dot files.
[00:00:51] By the way, who does that?
[00:00:53] So you're doing it this wrong.
[00:00:56] This is done in the T command, Twitch bot, hey, live coding, what's up?
[00:01:01] So here we go, we've got, so here's the colon thing, so I have a redirect to temp up, and
[00:01:10] it tells me right here, this redirection does more, and it's using the shell check-linter
[00:01:13] in AL, stay tuned, watch another video about that, or join my live stream anytime.
[00:01:17] I'll come and do that, I'm doing, right now we're doing terminal tweaks and fighting about
[00:01:21] all kinds of things.
[00:01:22] It's really fun, though.
[00:01:24] This is just a regular little bin SSH, but to prove that this is also a problem in bash,
[00:01:29] there you go, it's a problem everywhere, right?
[00:01:33] So you need a command here, and there's no less than like five ways to accomplish the
[00:01:37] same thing.
[00:01:38] Could I do this?
[00:01:39] I could do RMSlem10 buff, for sure, I could do that, if it didn't exist, but then I would
[00:01:44] have to redirect standard error, if it doesn't exist, I don't think RMSlem is silent, I don't
[00:01:48] know.
[00:01:49] I mean, I want something easy, this is something I also do in the command line all the time.
[00:01:54] Another thing you could do is you could put a command here.
[00:01:56] So ShellCheck is actually recommending you put true here to do the thing, but I want
[00:02:03] to show you the most powerful technique for doing things that do not have a command that
[00:02:09] is possible in Shell, that's been supported since the very dawn of time.
[00:02:13] This is present in so many advanced Shell scripts, but people who've been around the
[00:02:18] block a lot, so pay attention because you're about to learn a very advanced but very simple
[00:02:22] technique for Shell, that will make you look cool.
[00:02:27] We saw Guardians of the Galaxy 3 the other night, it's my favorite Marvel movie and they're
[00:02:31] like, "Did that look cool?"
[00:02:34] There you go, that's it, that's it.
[00:02:38] A lot of people don't know that colon is a command in all Shells, it's just the beginning
[00:02:44] of time, and so this is a great way to say, "Hey, I want to do something I would normally
[00:02:48] do from the Shell that does not have a command, that fixes it."
[00:02:52] You might want to be asking, "Well, that's kind of stupid, why would you do that?"
[00:02:56] Because it's easy to do, you don't need it on the command line when you're just doing
[00:02:59] things, but let me show you something else.
[00:03:02] So if you CD to install Ubuntu, you can use this technique, actually let me go back to
[00:03:12] my Cates app, Ubuntu, is it over here, did it not have it, oh wait, we're on a Bastion,
[00:03:20] let's go on Bastion, let me find Bastion.
[00:03:23] Let's go back, oh wait, let's do this.
[00:03:28] Alright, let's go to Bastion, we're doing stuff here, so I'm trying to, here we go.
[00:03:35] So here I have a build script that uses this technique for something that's much more valuable.
[00:03:46] This is one of the most, I absolutely love this technique, this is a really common Shell
[00:03:52] technique for making, this is an argument destroyer, and I mean like arguments, I absolutely hate
[00:04:01] passing and parsing arguments in my Shell scripts.
[00:04:04] I hate it, and so does my team.
[00:04:06] My team has hated it too, so we have started doing this.
[00:04:08] In fact, I've showed somebody this and then it ended up showing up as part of our standard
[00:04:13] specification for Cates apps, and what this does is it says, "Hey, I have this thing
[00:04:19] here, there's any time you have some fanciness, like in this case, Bash is setting up what
[00:04:25] the default arguments are," right?
[00:04:27] And so yeah, I can make a whole video just on default arguments in Bash.
[00:04:30] Notice how they're all caps, several video about that, all caps means it comes from the
[00:04:33] outside environment.
[00:04:36] This allows you to overwrite it even though these are already hard-coded as lowercase
[00:04:42] in our system.
[00:04:43] So those have to be, but this means that this is just a really great thing to put at the
[00:04:47] beginning of your Shell script and say, "I want to allow my behavior to be changed by
[00:04:52] changing the environment," and if you work with containers, you know how that works.
[00:04:56] But I also want to set a default.
[00:04:58] So you set the default here, the defaults are all really well declared, and any of these
[00:05:02] things, which Shell Check would immediately scream at me if it were working.
[00:05:07] It's not because it's not on here right now.
[00:05:10] No.
[00:05:11] Yeah, I'll fix that.
[00:05:12] There's a bug.
[00:05:13] Watch my – I have another video about why this is broken, mostly because Shell Check
[00:05:18] is not checking my stuff right now.
[00:05:20] Yeah, it's not – it's not – it's not – I'm going to show you the other ones
[00:05:27] so you can get – you can see Shell Check and complain.
[00:05:33] Okay, it's – we don't have a clone, Kate's app.
[00:05:37] My clone is a function.
[00:05:38] It has to be a function because it changes directories, which you have to do in a function
[00:05:41] not a command because it's a persistent thing.
[00:05:45] Kate's app, Harbor.
[00:05:46] Okay, I'm going to clone this thing.
[00:05:49] Okay, so now we're in the Harbor thing.
[00:05:51] So now we're in the same place we were before.
[00:05:53] Just on a different machine.
[00:05:54] Back on my Mac, my Unix system, or am I?
[00:05:59] Oh, wait, wait, switch – modernize.
[00:06:05] All right, so Bill – all right, so here it is, but I want to show you – hopefully
[00:06:11] Shell Check will yell at me.
[00:06:13] No, it didn't.
[00:06:15] It's supposed to yell at me.
[00:06:17] Why is it not yelling at me?
[00:06:22] Anyway, that was – I was doing it – we've found it on the Redirection thing.
[00:06:29] Let me do just Shell Check.
[00:06:30] I'm sort of intrigued by this now.
[00:06:33] What?
[00:06:34] Shell Check doesn't catch that?
[00:06:39] That's super fascinating.
[00:06:41] I did not know that, but you should do it anyway.
[00:06:44] You should do it.
[00:06:45] You should do that anyway.
[00:06:46] It's an empty command and then – you know what?
[00:06:50] I wonder if it's a Shell thing.
[00:06:54] What the hell?
[00:07:00] I could have swore that was a Shell Check thing.
[00:07:03] I can't believe that's passing Shell Check right now.
[00:07:07] It isn't.
[00:07:08] The other stuff is also not passing it, so this is actually a different problem.
[00:07:11] Yeah, which we're going to fix right now.
[00:07:14] This is because – yeah, here we go.
[00:07:16] So now Shell Check's finding all kinds of stuff.
[00:07:18] All right.
[00:07:19] So there's another video about how to fix that to get that to work.
[00:07:24] And clearly it hasn't been fixed yet on here.
[00:07:27] I'm going to do that.
[00:07:28] But so there you go.
[00:07:30] That shows you the stuff.
[00:07:32] So if I change this back to Bash, yeah, it's fine.
[00:07:37] Interesting.
[00:07:40] This is all – see all these things?
[00:07:42] These are all problems because the syntax is wrong for this particular thing now because
[00:07:47] you see the type down here as a sage.
[00:07:48] It's a separate issue.
[00:07:49] Anyway, this video is about the colon command and how you can use that to do redirection.
[00:07:53] So I'll end the video there.
