# How to Learn Vim Quickly and Correctly [20210422163108]

Learn Vi and Vim like you would create a container, in overlays. First learn just plain vi. Then layer Vim on top of that. Then add NeoVim (if you so desire, I do not. I hate NeoVim because it is useless and brain dead at its core). Using a Docker container to do vimtutor is one easy way to get started. And do not forget https://rwx.gg/visurvive for the essentials.

## Transcription

[00:00:00] So, here's a video about how to learn VIM correctly.
[00:00:03] There's a lot of opinions about what editors you learn, how you should learn it, and all
[00:00:07] this stuff.
[00:00:08] And I must have done at least 10 videos on VIM at this point.
[00:00:11] But I wanted to make one that's recently updated that shows how I believe you can practice
[00:00:16] learning VIM the right way as quickly as possible using real computers and real Linux as opposed
[00:00:23] to any number of other pretend things that are out there.
[00:00:27] I won't go into why I think using the actual tool is important, it should be obvious.
[00:00:34] So how do you do that?
[00:00:35] Well, the first thing is everything I do on these streams on these videos is assuming
[00:00:40] you have Docker installed.
[00:00:42] So whether you've got Linux installed already and you've got Docker or you've installed
[00:00:45] Docker on your Windows machine or you've installed Docker on your Mac, it doesn't matter.
[00:00:49] This is everything that I do now is assuming you have Docker because if you don't have
[00:00:52] Docker, you are missing out on one of the most powerful opportunities for development.
[00:00:58] And this is one of these side effects of the asset benefit from having Docker already on
[00:01:03] your system.
[00:01:04] So assuming you've installed Docker, this is all you have to do to set yourself up to
[00:01:08] practice using VIM.
[00:01:10] So you can run Docker, run, and you can run any computer that you want to.
[00:01:16] If you want to do art, you can, and we're going to do IT to keep it so it's an interactive
[00:01:21] problem.
[00:01:22] And then we're going to run whatever operating system you want.
[00:01:25] So if you want a true VI experience, which I suggest you might want to try at some point,
[00:01:33] you might want to try busy blocks, but we're not quite ready for that yet.
[00:01:38] But what's if you want to get a standard VIM, then I would suggest using Debian or Ubuntu
[00:01:47] or Arch Linux, if you want, they're all the same.
[00:01:53] They have different package managers or Fedora, right?
[00:01:56] So the operating system doesn't matter.
[00:01:57] To pick your operating system of your, you like the package manager that you like, I'm
[00:02:01] going to use Debian, and then just run it.
[00:02:05] Now all of these, by default, will start up a shell, so you don't have to worry about
[00:02:08] that.
[00:02:09] And this downloaded the image, which I already had there, and it started up a computer,
[00:02:13] a container that is running its root, which is fine, you don't care why, because it's
[00:02:18] a container.
[00:02:19] If you want to use Arch Mode, you can use whatever you want.
[00:02:23] But so here's some of the problems right here.
[00:02:25] You're going to go try to run VI.
[00:02:26] It's going to be like, I don't know where VI is, and you're going to do VIM, it's like
[00:02:29] it's been there.
[00:02:30] No.
[00:02:31] How about Nano?
[00:02:32] Is that there?
[00:02:33] No.
[00:02:34] How about Emacs?
[00:02:35] Is that there?
[00:02:36] No.
[00:02:37] So one of the reasons I like to use containers for this stuff is because it gives you practice
[00:02:39] in how to install every time you do it.
[00:02:41] You're not obviously not going to have to do this every time, but this is what you need
[00:02:44] to do.
[00:02:45] So anytime, so if you're using an app system, you're going to say apt install, sorry, apt
[00:02:52] upgrade, and this is date, update.
[00:02:56] And so after you do the app update, if that succeeds, then do the next thing, it's called
[00:03:00] short circuit logic, apt update and apt install.
[00:03:06] And now this is different if you're up door, archlinics, obviously, or Susie or whatever,
[00:03:11] apt install VIM.
[00:03:14] And that will get you everything for VIM.
[00:03:17] So it said you want to continue, yes.
[00:03:20] So if you install the standard VIM packages, they all include a program called VIM Tutor.
[00:03:26] And you can run VIM Tutor right there, and you can do VIM Tutor immediately.
[00:03:30] Okay.
[00:03:31] VIM Tutor is, it's dated, it's written by a bunch of college kids, it didn't really
[00:03:36] know how to use VIM VIM, it's got a lot of problems.
[00:03:39] I plan on replacing VIM Tutor with an image so that you'll be able to do, stay tuned,
[00:03:44] I snuck, not right now, but eventually you'll be able to do Docker run, artifacts, Rob slash
[00:03:52] VIM lab, and it will take you through all the different things you can do with VIM,
[00:03:58] including command line magic integration that is not covered anywhere else.
[00:04:04] So that's coming, but if you want to just use all the standard stuff that's already
[00:04:08] there without my custom container, you can go here and follow the steps and do what it
[00:04:12] says.
[00:04:13] You don't need to worry about messing your system up or anything because you're on a
[00:04:15] system that's been developed, or you don't need to worry about adding a new user or not
[00:04:19] doing his route.
[00:04:20] At some point you want to do that, but for right now you really don't care, you just
[00:04:23] want to learn VIM.
[00:04:24] And this thing's going to get thrown away immediately afterwards anyway.
[00:04:28] And if you don't want it to be, this one isn't sorry, if you, and then when you want
[00:04:32] to come back to it.
[00:04:33] When you're, like, if you're in the middle of the session, right, you already know about
[00:04:36] all these things about Docker, but the easiest way, and this is going to be hard for you
[00:04:39] to remember, but if you do control PQ, that will detach from, from control PQ will detach
[00:04:45] from your running container.
[00:04:47] And you'll see that it's still there.
[00:04:49] Happy as a cloud.
[00:04:50] That's right.
[00:04:51] Running here.
[00:04:52] We didn't give it a name.
[00:04:53] So just remember to note the name.
[00:04:54] There's dreamy Herman.
[00:04:55] And if you want to go back to it, you can just do Docker attach, dreamy Herman or this
[00:05:00] or whatever, and you can go back in there and you can pick up right where you left off.
[00:05:04] In fact, you could even be in the middle of editing a file, the VIM tutor, and it will
[00:05:11] remember.
[00:05:12] So if you do control a, whoops, sorry, you might have to get crazy here.
[00:05:18] Yeah.
[00:05:19] So it went ahead and it escaped you.
[00:05:21] It didn't clear.
[00:05:22] You didn't clear your screen up.
[00:05:23] So clear your screen.
[00:05:25] But if you, if you want to go back to it again, you get what I said before, attach again.
[00:05:30] It's right where you left off.
[00:05:31] Still there.
[00:05:32] Still running there in the background.
[00:05:33] So that's the beauty of Docker.
[00:05:34] You can come back to it, work on any time you want.
[00:05:37] You can, you can do this entire VIM tutor thing in the car.
[00:05:39] You don't have to be logged into some remote system.
[00:05:40] All those advantages of go if, if however, you want, the reason I'm going to make my own
[00:05:46] container for this and don't have it yet, I'll do another video when I do, but is, is
[00:05:49] there is a site that I have, have summarized the absolute bare essentials you need to know.
[00:05:56] It's called V.I. survive at, and what this is, is just a drop dead simple introduction
[00:06:06] to VIM that assumes that you're using the arrow keys when you first start out and there's,
[00:06:11] there's only one reason for that.
[00:06:13] So you don't have to use nano or some other editor.
[00:06:17] Believe it or not, V.I. is actually a VIM.
[00:06:20] When you allow the arrow keys, it's actually simpler to use the nano.
[00:06:24] I just blows my mind that this was not considered when they made a decision to make nano the
[00:06:28] default on so many systems, which is, it's not the truth in, in the container world.
[00:06:33] But, so this is all you need to learn.
[00:06:36] This is something to print this out and put it on your desk, you know, print it with an
[00:06:39] actual printer and put it like in your, on a card.
[00:06:42] And that's it.
[00:06:43] You just need to know how to exit, of course, go without saving.
[00:06:46] And there's many, many, many other ways to do all these fancy things.
[00:06:50] Kind of escape, you're probably wanting to control the bracket, things like that, but,
[00:06:55] but just to survive, this is all you need.
[00:06:58] And then when you need to take it up a notch, you can do that and you can go, I don't, there's,
[00:07:03] I don't have a reliable link, so I'm not going to mention right now, but V.I.
[00:07:06] survive will always be there.
[00:07:08] So you can go to V.I. survive and you can learn to survive.
[00:07:12] And again, the V.I. purists like yell at me and I would have yelled at me for doing the
[00:07:18] arrows, but the reason that I had the arrows is so, for example, I have, so I was going
[00:07:22] to edit my V.I. see, I have, I have blocked my ability to use arrows because I want to
[00:07:32] get good and not use the arrows.
[00:07:33] And there's lots of reasons for that, but mostly you don't want to be going like this
[00:07:36] all the time all day.
[00:07:37] You just want to like stay focused.
[00:07:40] If you want to get rid of those arrows, by the way, here's the arrow keys and I'll go
[00:07:45] ahead and send this for fun to you.
[00:07:46] You can add this to your V.I. see if you're, you're probably a beginner, so you don't
[00:07:49] mean that.
[00:07:50] Going through your V.I. see and customizing them is a different video, right now you're
[00:07:53] just trying to get good enough so you can even edit anything.
[00:07:56] So just stick with survive and pull the container down, but for the rest of you, if you would
[00:08:01] like, here is, here is how to lock down your arrow keys.
[00:08:06] So if you're a more advanced user and you want to lock that down, you can go, you can go
[00:08:10] take care of that.
[00:08:12] So yeah, it's going to be really, which one is syntax error?
[00:08:17] Oh, I have a syntax error.
[00:08:19] Apparently, I feel so bad.
[00:08:24] This looks like my eke still has got a problem.
[00:08:26] Anyway, so this has been a video about how to get going with V.I.
[00:08:31] There are lots of other things out there.
[00:08:33] I've decided to not even mention any of them.
[00:08:36] The most, the best possible way for you to use them is to use them.
[00:08:42] So do it, you know, oh, it's a stop container.
[00:08:45] Let's go start it back up, this is not, nobody needs panic here.
[00:08:50] And now we can reattach Dreamy Herman, suicide of him, what nukes of system when you touch
[00:08:59] arrow keys, blocking, blocking the arrow keys.
[00:09:02] Yeah, if you want to, if you want to block those arrow keys, if you want to block the
[00:09:07] arrow keys, you can go, you can go look at my MRC.
[00:09:10] So that's all in my dot files, you can go read through there, look for the stuff that
[00:09:16] has Vim in it, and let's talk about MRC.
[00:09:19] When you do, when you learn Vim, stick with, there's a couple, the complaints as you go
[00:09:22] through, and I'm going to tell you I'm going to improve this, is why I'm going to make
[00:09:25] my own container.
[00:09:26] I've long been frustrated by the fact that Vim tutor teaches you Vimisms that don't
[00:09:32] work in V.I., which V.I. is the editor that came before Vim.
[00:09:37] And that's not a problem normally.
[00:09:38] Unless you get on a tiny little container, like Busybox, it only comes with V.I., it
[00:09:42] doesn't come with Vim, or you get on, you know, V.S.D. system that doesn't come with
[00:09:46] Vim, it comes with V.I.
[00:09:48] And that can, can trip you up, you know, things like you, that you think are fine are, that
[00:09:54] are taught in a Vim tutor are wrong, and they won't work.
[00:09:57] Now, that's fine if you've got Vim, but I don't, I don't think you should become dependent
[00:10:00] on Vim until you've learned the other way first, and then if you want to do that, that's
[00:10:05] fine.
[00:10:06] So, you at least know that you're making a choice to use something that you can't use
[00:10:09] on another computer, as opposed to not knowing and being surprised, and when it's a very,
[00:10:13] you know, in opportune time, and you're like, "Stuck, and you can't edit anything."
[00:10:17] So, I am making two containers that train you in how to use just V.I., and by the way,
[00:10:27] if you want to do that, there is no tutor for it, there is no high school point.
[00:10:33] There is no tutor for it, the j-command of Vim exclusive, no, it's not, no, and by the
[00:10:42] way, if you want to know, if, oh, the join, the capital join, if you, if you want to know
[00:10:48] how to do, what I want to say, please, okay, I'm blocked the use of the arrow keys, made
[00:10:59] in learning to be as a Macheuser, hopefully, yeah, that will help you.
[00:11:04] So, one of the things that I was going to tell you, how can I quickly jump to the end
[00:11:09] of the line and edit mode in Vim, there's lots of ways.
[00:11:12] My favorite is capital A, because I'm usually adding something to the end of the line.
[00:11:17] So, you know, attempt foo, and so, usually, I want to add something to the end of the
[00:11:23] line, I'm capital A, it's my favorite.
[00:11:27] So, notice down here, I'm doing a lot of control left bracket, that's because control left bracket
[00:11:31] is what is easier for me to hit than escape.
[00:11:34] I do have my caps lock mapped to escape, which I'll do in another video, I don't, I used
[00:11:40] to be against that, I think that's totally fine now.
[00:11:44] But yeah, so, control A is the best, if you, if you just want to go to the end, it's a
[00:11:47] dollar sign, but that doesn't, it doesn't, it doesn't, it doesn't insert anything.
[00:11:51] By the way, some of these things that I just told you are not covered in the Vim tutor,
[00:11:55] so start with the Vim tutor, don't be frustrated, know this stuff's going to come in addition
[00:11:59] to it, and I, and I'll get you guys a container that teaches you everything about them slowly.
[00:12:06] If you are a purist, and you do not want to learn anything except for Vi, there is no
[00:12:10] tutor for Vi, I mean, and then you might want to do something different, you might want
[00:12:16] to try a container, so let's make a new container, so Docker run, it, I'm going to run, you can
[00:12:23] either run a BusyBox container, okay, which, which comes with BusyBox comes with only
[00:12:31] Vi, so there is no Vi Vim, there's, there's Vi, and that's it, and there's no Vim tutor,
[00:12:40] so Vim, Vi, there's no Vim tutor, no tutor at all, so if you want, if you want to edit
[00:12:47] files, which, by the way, this is when I realized that, that arrow keys are actually supported
[00:12:53] by Vi now, they weren't before, but they are, they're supported by Vi, so you still need
[00:12:57] to disable them if you want to do that, all of that I'll put in the, in the, in the tutor
[00:13:02] container at some point, so stay tuned on that, but if you want to learn that, you can
[00:13:05] do that, another way to test without getting a container at all is to install, so let's
[00:13:11] do another one, let's run, I don't know, let's see, run it, let's do, I don't know, let's
[00:13:23] do WN, WN again, and this time let's give it a name, we'll call it NVI, and, oops, did
[00:13:36] you get wrong? Oh, I always forget, I think this has to go first, right? WN, yeah, there
[00:13:46] we go, so, so, now we have to do this, apt install, apt update, and apt install NVI, so
[00:13:58] NVI is, is another pure VI, this is the VI that comes on VSD Unix, if you know about that,
[00:14:08] and it, it's got lots of, it's, it's bug for bug, exactly compatible with the original
[00:14:17] VI, so, temp, blah, or whatever, but again, there's no, so this one, this, I mean, this
[00:14:24] is how I, this is how I, this is, I use NVI all the time, I'm not Neo VIM by the way,
[00:14:28] I, I, I cannot stress enough not to start with Neo VIM, if you want to use Neo VIM later
[00:14:32] on, fine, just, I hate it, but don't use it first, okay, Neo VIM can really mess you
[00:14:39] up, because it's got a lot of stuff in it that is not supported across the board, so,
[00:14:44] you know, just to that, so this is, this is NVI, I don't think NVI puts, because there
[00:14:55] is, it's not, it's not VI tutor, there's no such thing as VI tutor, which is why I need
[00:14:59] to make one, because there isn't one, it's kind of annoying, there's nothing to train
[00:15:05] you in VI, and then, you know, in kind of a multi-staged way, teach you, layer, you know,
[00:15:12] do an overlay of VIM skills on top of that, and then do an overlay, man VI is the tutor,
[00:15:20] it's not even man on here, I think I have to install the docs, is that bad if I have
[00:15:26] to start with VI, no, I think it's fine, most people do that skill point, and people start
[00:15:31] out with VIM because that's what's on the system, I'm just gonna, I'm just gonna argue
[00:15:35] that, that I believe there's a better way to learn, I think you should learn VI first,
[00:15:40] and then layer on VIM on top of that, and then that way, if you encounter a, a, a V system
[00:15:47] as Orchardheimer called it when he first encountered it, I love the Orchardheimer's one
[00:15:51] of my favorite streamers, and he was forced to use VI at work, and there are some phenomenally
[00:15:56] awesome streams of him having used VIM as old life, and never knowing that it was even
[00:16:01] a VI, he called it V, and, and he was, he did not know what to do, it was kind of fun
[00:16:07] to watch, because he did not know V, he did not know VI, he only learned VIM, and, and
[00:16:14] it was, it was, it was really funny, so, so for that reason, I suggest learning VI first,
[00:16:21] but there's nothing other, but stay tuned, I'll get you guys a container that does that,
[00:16:24] that's one of the most important skills to learn, hands down, if not the most important
[00:16:28] skill is how to use the VI editor on any system, because it's most likely going to be the
[00:16:34] editor on the system, besides Ed, and we could have a fun talk about that.
