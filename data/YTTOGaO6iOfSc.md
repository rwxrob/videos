# 😎 POSIX or Perl (Banishing Bash)

`#perl #bash #scripting #dotfiles #coding`

## Transcription

[00:00:00] Okay, I may have already made this video, but I'm going to make another one.
[00:00:04] So I keep getting asked why POSIX or PIRL, that's my mantra for 2025.
[00:00:08] POSIX or PIRL, that's the title of the video.
[00:00:11] I'm already talking about this, I'm going to talk about it again because there's a lot
[00:00:13] of new information coming out, so, you know, let's get into it as they say on YouTube.
[00:00:21] The first reason that I'm getting rid of bash is bash and burn me bad.
[00:00:24] I've been using bash as my primary doc files scripting language for four years and, you
[00:00:31] know, gave up POSIX.
[00:00:32] So four years ago, there was videos of this to me.
[00:00:36] Four years ago, everything in my doc files was either PIRL or POSIX.
[00:00:40] And then I found Go, there was a little bit of Node in there for a while.
[00:00:44] And for, you know, command line scripts in my doc files.
[00:00:46] And, you know, as you know, I've been re-going through all my doc files, I'm like, well,
[00:00:51] what do I want to do?
[00:00:52] The only new approach is that I just want to be able to anything that's got get on it
[00:00:54] and pretty much just everywhere, including multi-user, you know, systems that are jump
[00:00:58] boxes for my work and everything, I can use GitHub and I can just do git pull and I can
[00:01:02] get everything down.
[00:01:03] Right?
[00:01:04] So I can pull all the scripts.
[00:01:05] So, and so there's a couple of reasons, so let's first talk about, so let me just kind
[00:01:09] of net out what we're going to talk about.
[00:01:10] We're going to talk about why I'm not using bash anymore.
[00:01:13] In terms of bash, we're going to talk about POSIX and the things that I've complained
[00:01:16] about with POSIX and why I don't agree with those complaints anymore now that we have
[00:01:21] a shell check and thing.
[00:01:22] And the third thing is going to be all the mistakes I made around putting things that
[00:01:26] to go, which don't belong and go and how Pearl fixes all of that.
[00:01:32] And I really want to talk about this.
[00:01:33] I've talked about it a lot already.
[00:01:34] I've written about it a lot.
[00:01:35] If you want to get the details summary, but the bottom line, so the first thing is bash.
[00:01:41] Bash has absolutely abysmally bad regular expression handling.
[00:01:45] If you don't know what I'm talking about, just go try to do any regular expressions in
[00:01:48] bash, you use the double brackets, and then you get the non escaping thing.
[00:01:53] That's how I found out that bash does not do any kind of expansion within double brackets,
[00:01:59] which is cool and safer than POSIX, but it's still, and then the first time I got burned
[00:02:04] by this is I tried to do a pro regular expression in my match, couldn't do it.
[00:02:08] Another thing you couldn't do is you can't do exclamation point tilde, which I could put
[00:02:12] on the screen, but I'm not going to, which says if it doesn't match this regular expression,
[00:02:16] which you can do in Pearl, so you have to put the plus, you know, the negative thing above
[00:02:20] and, and, you know, but it's just not, it's not pretty, it's not pretty at all.
[00:02:25] And, and not to mention the fact that when you try to get those particular fields and
[00:02:28] you, you know, because they're extended regular expressions are not Pearl regular expressions,
[00:02:32] which is define the industry, then you have to put a slash in front of the parenthesis.
[00:02:37] I'm sorry, in front of the, it's not right.
[00:02:40] Yeah, parenthesis in order to get a field.
[00:02:42] And then that field, you have to, in order to use the field someplace else, you don't
[00:02:44] just use dollar one, you can't do that, you can't, you can't do that in bash.
[00:02:50] So you have to actually do bash rematch one, which is this big long ass thing, just to
[00:02:57] get the first field.
[00:02:58] And then you have to do bash rematch, you know, two or three or whatever, it's, it's
[00:03:01] horrible.
[00:03:02] It's absolutely horrible.
[00:03:03] I, I kind of look the other way, I kind of made excuses for it as like, okay, there's
[00:03:07] a lot of other great things about bash, particularly parameter expansion, which we'll get to.
[00:03:12] And the parameter expansion stuff was cool and all, but okay, so the reg X thing just
[00:03:18] doesn't do it, right?
[00:03:19] So, so I found myself reaching for Pearl and, and calling out to a sub shell or something
[00:03:24] like that because it did it properly.
[00:03:26] I mean, that's a mention that bash has no clue about Unicode regular expressions and any
[00:03:32] of the stuff that's been redefined in Pearl to, to match regular expression, to match
[00:03:36] Unicode families.
[00:03:37] And if you don't know what Unicode is, go read about it.
[00:03:40] But if you, if you can't in, in, in Pearl, you can actually use capital P and stuff like
[00:03:45] that to match entire families of Unicode code points.
[00:03:48] And you can't do any of that in bash.
[00:03:50] You can't, you can't do any of that in bash.
[00:03:52] You have to use the stupid POSIX things that are with like the two colons and all that.
[00:03:57] That's horrible.
[00:03:58] It's absolutely horrible that you come from Pearl.
[00:04:00] It's been a pain point, it's been a pain point for the last three years that I've been
[00:04:03] overlooking.
[00:04:04] And quite frankly, that leads me to another pain point, which is a lot of times you just
[00:04:08] want to do a find and replace, right?
[00:04:10] So you can get away with that using parameter expansion.
[00:04:12] Well, that doesn't work in POSIX at all.
[00:04:15] Making everything into lowercase with, you know, a parameter expansion with two commas,
[00:04:19] a parameter expansion with two cares to make it all uppercase.
[00:04:21] These are all things that Pearl has in two characters, LC, UC, and a bunch of these things
[00:04:25] are all covered by Pearl already.
[00:04:27] So the longest order that is the, the only thing, the only thing that bash gets you, the
[00:04:33] only thing that bash gets you is a little bit more power for a shell script on a system
[00:04:38] that's going to default to bash.
[00:04:40] And so if you only, and I write, I regularly write bash for work, even though the, the,
[00:04:46] the installer scripts that I write should be written in Pearl.
[00:04:49] They really should be.
[00:04:50] That's the sweet, sweet spot.
[00:04:51] They're doing a lot of text manipulation, bash is horrible for text manipulation.
[00:04:55] It's absolutely horrible for it.
[00:04:57] I have put bash through all kinds of convoluted things, you know, to, to put it to the test.
[00:05:05] So I can say this very confidently from a place of love for bash and wanting to like
[00:05:10] improve it, but, but it's just no, just, just no.
[00:05:14] And so let me, let me go back to, let me show you.
[00:05:17] So here's, here's my clip program, right?
[00:05:19] And we, we've been doing a, we're doing a whole series of me porting this thing here.
[00:05:24] This code right here, people say that Pearl is hard to read, right?
[00:05:27] They say, Oh, it's like read, write, write once.
[00:05:29] This is bash doing the same thing that Pearl would do, right?
[00:05:32] It's just as dense.
[00:05:34] It's just, it's even harder to read.
[00:05:35] Let's imagine the fact that you only get integer mathematics with bash.
[00:05:40] You don't get, you can't do any actual math here.
[00:05:43] You have to like shell out to BC to get it with Pearl.
[00:05:45] You get it built in, you know, you, not only that, you get binary packability.
[00:05:49] So you can pack an unpack.
[00:05:50] You can use map.
[00:05:51] You can use very functional based programming map grip.
[00:05:54] You can like iterate over thing.
[00:05:55] It's just crazy.
[00:05:56] Let's imagine the fact that Pearl is like one half the side, no, one quarter of the size
[00:06:00] of bash in memory consumption.
[00:06:02] So there's less shelling out.
[00:06:03] And I mean, if you do shell out and you use Pearl as a, as a, as a shell on steroids,
[00:06:08] which is how I use it.
[00:06:09] I don't use it as a Python replacement.
[00:06:11] Um, we actually had somebody report that somebody was saying that Python, that Pearl
[00:06:17] was inspired by Python and it came from Python.
[00:06:19] I thought that was so funny.
[00:06:21] We just heard that the other day.
[00:06:22] Anyway, you can't, you can't do any of this embedded documentation or anything.
[00:06:26] Pearl does all of that automatically, you, you use, use Pearl doc and then you can make
[00:06:29] your Pearl program be its own man page.
[00:06:32] You cannot do that in bash at all.
[00:06:35] This is me trying to do it right here.
[00:06:37] This setting of default values is like crazy, stupid compared to Pearl, compared to Pearl,
[00:06:42] which you can use multiple options and you can have them resolved based on the person
[00:06:45] that it's true, ish, true, you know, true if I, um, and then so, yeah, so that this is,
[00:06:52] this is what we're doing.
[00:06:54] This is a reason.
[00:06:55] I mean, these parameter expansion things are much easier.
[00:06:57] They're actually easier to understand in Pearl.
[00:07:00] So this, I'm just done with bash.
[00:07:02] I tried so hard to love it.
[00:07:04] I really did.
[00:07:05] And I did.
[00:07:06] I became a huge bash fanboy and, um, you know, the whole time, you know, it wasn't until
[00:07:12] I started doing some really serious text manipulation, uh, that I started going, man, this is not
[00:07:17] covering it.
[00:07:18] But here's the worst part.
[00:07:19] And I almost don't want to admit this because because I, I'm actually really, really embarrassed
[00:07:26] by this.
[00:07:27] So you guys know I made Banzai, right?
[00:07:29] I made Banzai.
[00:07:30] I wrote my own command line framework.
[00:07:31] Why did I make it?
[00:07:33] I made it because I wanted command line completion.
[00:07:35] I wanted better documentation.
[00:07:37] I want to command line completion and I want a full blown regular expression parsing and
[00:07:40] all the other things, great things that come with go.
[00:07:43] And I wrote Banzai specifically for one purpose.
[00:07:46] The purpose for bonds initially that is usually purpose for bonsai wasn't to make multi call
[00:07:50] awesome, multi call binaries, you know, akin to busy box and alpine.
[00:07:53] That wasn't the primary reason.
[00:07:54] The primary reason was I wanted to get rid of my 360 shell scripts and put them all into
[00:07:58] one monolith bonsai, uh, thing.
[00:08:01] And that's why I made it.
[00:08:03] Why?
[00:08:04] Because I was using bash.
[00:08:06] You know what's this is, this kind of makes me angry because, you know, I, I, I, the reason
[00:08:11] I did, and I still think that that's a good thing.
[00:08:13] And if you're a hacker and you want to make a root kid or a home kid or something like
[00:08:16] that, if you want a multi call binary, you want a single minus got everything in it,
[00:08:20] great.
[00:08:21] You can use go and go embed its spouses.
[00:08:22] I'm still a huge fan of go.
[00:08:24] But as you can already tell, in fact, I've got another thing here, um, it's called sure
[00:08:29] a shell Pearl go bliss.
[00:08:30] This is in my blogging.
[00:08:31] Go read it.
[00:08:32] Uh, but this, this is really, this is really bliss right here.
[00:08:36] And I, I'm still pro go, but, but the point with my, that I regret about bonsai is I made
[00:08:40] bonsai because I didn't have Pearl.
[00:08:43] And if, if I had had Pearl to do all of the manipulation, everything, I'd be able to
[00:08:47] write 10, 20 scripts a day, which is sometimes what I end up doing.
[00:08:50] I could have, I could have busted those things out without a problem.
[00:08:54] And I, I could never ever have done it that fast and go.
[00:08:57] And if I did, it would have been annoying because I had to redeploy my, my binary and
[00:09:01] all that stuff.
[00:09:02] Whereas I've got a shell script, you just get pulled down from your prox box over here
[00:09:05] and I got the shell script.
[00:09:07] I can't, I can't do that workflow with my compiled go code as cool as it is.
[00:09:13] Because the compiled go code can't just be pulled down on a, I could, I could say binaries
[00:09:18] in my, in my GitHub repo, if I wanted to, I actually did that for a while, but I don't
[00:09:21] want to do that.
[00:09:22] You, do you know what works really well and that kind of scenario with that kind of workflow,
[00:09:27] shell scripts and Python and Pearl and that kind of thing, right?
[00:09:30] So you want to do get pull and, and that kind of thing, right?
[00:09:33] So we're, I'm going to do a whole curse on, on Pearl now, and because, because I've been
[00:09:38] rediscovering how absolutely amazing it is as, as a shell on steroids.
[00:09:42] That's what it is.
[00:09:43] It's way better than bash.
[00:09:45] I'm still using bash as an interactive shell and I'm still using Z shell as an interactive,
[00:09:49] I will consider using Z shells interactive.
[00:09:51] So you know why?
[00:09:52] Because they don't care.
[00:09:53] I don't care anymore.
[00:09:54] All my RC scripts are going to be in POSIX shell.
[00:09:57] They'll work on anything.
[00:09:58] And I have multiples of them because this doesn't matter because I'm planning on pulling
[00:10:02] down the repo using get pull from a master repo.
[00:10:06] That's got all my config and then that, that frees me to make 300, 400, 600 Pearl scripts
[00:10:11] and POSIX scripts.
[00:10:13] I don't care because they're all going to come down instantaneously when I do a get
[00:10:16] pull.
[00:10:17] The reason I made bonsai is because I was not really, I made another video about my conversion
[00:10:22] over this idea of having everything in a, in a repo as opposed to, oh, I've got two or
[00:10:26] three files.
[00:10:27] I got an SCP or FTP over.
[00:10:28] I already did a whole video now.
[00:10:29] I got to watch that, but now that I know that I can, who cares how much stuff is in
[00:10:33] my dot files?
[00:10:34] As long as it's not big ass binary files that are going to bloke my thing out of control,
[00:10:39] then I can get pull my dot files and rebase every once in a while and I can have three,
[00:10:42] 400 scripts in there.
[00:10:43] It doesn't matter.
[00:10:44] And they can build me one liners.
[00:10:46] And I, the, the reason I like this is because when it comes to dot files and when it comes
[00:10:51] to my own personal configuration and writing my own on the fly filters for them and everything
[00:10:55] like that, flexibility is king.
[00:10:58] It's really paramount that I am able to like immediately write something as fast as I'm
[00:11:02] thinking about it and then move on to a thing.
[00:11:04] And I've, I've written like, by over six Twitch, you know, integration scripts just
[00:11:08] tonight that basically, you know, Pearl is the king of glue languages.
[00:11:12] And so I can like pull together JQ, which has been written that I can pull together
[00:11:15] the Twitch API command line tool.
[00:11:17] I can pull together the GH, uh, get up to, I can pull them, get all together and paste
[00:11:21] them together to do, you know, what, what pearls greatest strengths is, is a shell on steroids
[00:11:26] that pulls together, glues together, all the other things.
[00:11:29] And then, and then if I have something that's rudimentary, it becomes shell, positive shell.
[00:11:33] So as soon as I start needing to do extra things, I like reaching for Pearl.
[00:11:38] And as soon as I'm starting to do things that really don't like a lot of external dependencies
[00:11:41] or maybe I want to, you know, run some middleware or stuff or something like that, or I want,
[00:11:46] you know, I want to call binary or I want to make a container out of something.
[00:11:49] Then yeah, go makes a lot of sense.
[00:11:51] The point of it is I would not have spent so much time, uh, I love go, but I would not
[00:11:56] have spent so much time writing go to replace my shell scripts had I had Pearl had had Pearl.
[00:12:02] It would have been Pearl all the way the whole entire time.
[00:12:05] And, and, and quite honestly, I, we're doing this thing where we're like, we're converting
[00:12:09] this bash script to go.
[00:12:11] And I still feel like that's the best choice there because my clips tool can run on windows.
[00:12:16] It can run on anything.
[00:12:17] It can run.
[00:12:18] I'm not talking about windows running shell, it's going to, it can be, it can be run on
[00:12:21] windows, like by itself using PowerShell if you want, that would be a reason to use go.
[00:12:26] It's a really solid reason to use go.
[00:12:28] That is, you know, that was kind of things you don't want for Pearl.
[00:12:30] But, but for my own, for my own bash replacements that are just in my doff files, and by the
[00:12:35] way, I've made other videos about how important it is to not use suffixes on your scripts.
[00:12:40] This is why this is exactly the reason why I have 360 show scripts that have to change.
[00:12:46] And most of those are going to be changed from bash to Pearl.
[00:12:48] If I had dot SH on all of those suffixes and all of those scripts were interacting with
[00:12:53] one another by name, I would be royally broken right now.
[00:12:58] And because I did it right, I followed the unique convention of naming and executable
[00:13:03] whatever nobody cares.
[00:13:04] I'm able to switch around.
[00:13:06] I could, some of the scripts might actually be better as Python and I can switch to script
[00:13:09] and make it Python instead of Pearl or instead of bash, right, I can go back to positive
[00:13:13] shell.
[00:13:14] It doesn't matter because they don't have a suffix.
[00:13:15] So if you are still putting suffixes on the end of your shell scripts, stop, please stop.
[00:13:20] For the good of humanity, you're going to kill the children.
[00:13:24] Don't do it.
[00:13:27] People sent out, uh, send an ock for text manipulation.
[00:13:29] Bash is definitely terrible.
[00:13:31] Bash is terrible for it.
[00:13:32] Set in ock are horrible for text manipulation, absolutely horrible.
[00:13:36] Set dash I and octosh I are not supported.
[00:13:39] They're not POSIX.
[00:13:40] You can't do in place edits.
[00:13:42] The, uh, with ocken said, unless you in grep, even grep, you have to like go out of your
[00:13:48] way to use a Pearl compatible regular expression on something that may or may not be installed.
[00:13:53] If you have Pearl, you have all of that for free for one, fourth, the RAM size consumption.
[00:13:59] This is that blew me away when I saw when I saw that the Pearl execute, the Pearl interpreters
[00:14:04] smaller than ock and we're not talking because it's just dynamically dynamically in libraries.
[00:14:08] It's just, it's fundamentally smaller.
[00:14:11] That blew my mind.
[00:14:12] It's actually blew my mind that people are still, you know, saying bad things and trash
[00:14:15] talking, uh, Pearl and this era.
[00:14:18] So, uh, most platforms, Pearl work anywhere that there's a Git.
[00:14:23] So anywhere that there is a Git, there will be Pearl.
[00:14:25] And one of the really important things I need to tell you, I think I may have said it already,
[00:14:29] but, but the Git project, the Git project announced that in first quarter 2025, they
[00:14:33] are requiring Pearl version 5.26, which is amazing because they're already up to like
[00:14:41] 5.38 on things and so, you know, it's going to be, it's going to be really great to take
[00:14:46] part in that.
[00:14:47] And, and if, if anything, you know, I was always afraid that the Git project was going
[00:14:52] to pull Pearl out of the project and instead they're upgrading it.
[00:14:56] You go bigger.
[00:14:57] And I think it's because they actually realize how amazing it is for text processing.
[00:15:00] There is nothing better on the planet for text processing.
[00:15:04] I swear to God, I will go to my grave on that.
[00:15:06] There is no better language on planet earth for text processing.
[00:15:11] And, and most of systems, DE work and system administration and a large amount of DevOps
[00:15:18] and Kubernetes, YAML, all of that stuff, it's all text processing people.
[00:15:24] It's all Unix.
[00:15:25] It's all text processing.
[00:15:26] And if, if you are not taking advantage of the most powerful text processing language
[00:15:30] on the planet, I don't care how old it is, you're doing yourself a disservice.
[00:15:34] You really are.
[00:15:35] That's all.
[00:15:36] [BLANK_AUDIO]
