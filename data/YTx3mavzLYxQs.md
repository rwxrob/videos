# 🤷🏻‍♂️ "How are BSD UNIX and Linux different?"

Compares BSD and Linux as separate Unix-like operating systems that evolved independently, covering where BSD is used, its resistance to change, and its role as the basis of macOS Darwin. Highlights Linux containers (LXC) as the major practical difference, and advises beginners that learning Linux and POSIX commands transfers to BSD and other Unixes.

Chapters:
0:00 BSD and Linux are not the same
1:58 Where BSD is used and its culture
3:30 BSD as the basis of macOS Darwin
6:25 Independent origins of BSD and Linux
9:05 LXC, Docker and containers on Linux
10:25 BSD jails and the micro VM shift
11:40 Where each system is used today
12:45 Should beginners learn BSD?
13:35 Other Unixes and the vi surprise
15:26 How the author first heard of Linux
16:26 Takeaway: Unix and Linux knowledge transfers

`#bsd #linux #unix #freebsd #containers #lxc #macos #posix #beginners #education #learning`

## Category

Education

## Transcription

[00:00:00] So what is the difference between free BSD and Linux?
[00:00:06] You know, that's what people have been asking.
[00:00:08] And the question is a big one to answer.
[00:00:14] They're not at all the same thing.
[00:00:18] They're both Unix-E, Unix-like operating systems.
[00:00:22] They're both absolutely operating systems and so much so,
[00:00:26] and they're both committed to open source
[00:00:28] and free software and all that stuff.
[00:00:30] So much so that at the recent Southeast Linux Fest,
[00:00:34] the free BSD people were there,
[00:00:36] the open free BSD people were there
[00:00:39] with the Linux conference,
[00:00:41] even though BSD is not Linux.
[00:00:45] If there's one thing you take away from this,
[00:00:46] just know that.
[00:00:47] In fact, there's a little bit of animosity
[00:00:49] in some circles between the BSD people and the Linux people.
[00:00:53] Mostly from the BSD people towards the Linux people,
[00:00:58] BSD people have usually nothing good to say
[00:01:00] about the Linux project and the bloat
[00:01:03] that I'm using their terms.
[00:01:05] And actually, if you want a really good person
[00:01:09] to ask about BSD who spent a significant amount of time
[00:01:13] embedded in the BSD community
[00:01:15] and developing core things for it,
[00:01:17] please make sure to follow Last_Miles Dennis,
[00:01:23] our Canadian friend,
[00:01:24] who is one of the greatest, in my opinion,
[00:01:28] one of the greatest technologies of all time
[00:01:29] is his Twitch channel is definitely not suitable for work.
[00:01:33] You would not want young children to watch it,
[00:01:35] but, you know, or religious people
[00:01:40] may be offended by his manner.
[00:01:43] I'm not, I think he's amazing
[00:01:44] and I regularly raid him and he regularly raids me.
[00:01:48] But if you want to know about, you know,
[00:01:50] all things, you know, OGC and BSD, please make sure you talk
[00:01:55] to a BSD expert, which is not me.
[00:01:58] I'm actually really intrigued by BSD.
[00:02:00] I like to use it a lot.
[00:02:01] You see a lot of BSD pop up in systems
[00:02:04] that require a lot of reliability.
[00:02:07] You see BSD inside of router software
[00:02:11] and, you know, router software and more router software
[00:02:19] because anything that has a high degree
[00:02:21] of demand for security is really there.
[00:02:25] And so that, I mean, that's pretty much it.
[00:02:27] And that's where you're gonna see BSD.
[00:02:30] The downsides of BSD are generally that
[00:02:34] they do not like a lot of change.
[00:02:37] In fact, you really to justify, as I hear it,
[00:02:40] as I hear it, if you want to get something added
[00:02:42] to the BSD kernel, you gotta fight really, really hard
[00:02:45] to get anything in there.
[00:02:46] And that's why security people, conscious people,
[00:02:49] tend to like BSD.
[00:02:51] They are very, very, very resistant to change.
[00:02:54] They will change.
[00:02:55] They're, it's not like they don't like improvement,
[00:02:57] but they will not improve something
[00:02:59] or make it better just because, right?
[00:03:02] BSD does come, usually have a POSIX-based tools,
[00:03:08] which include the VI program as opposed to them
[00:03:13] or something you can install them on it.
[00:03:15] But, you know, if you don't know the difference
[00:03:17] between POSIX and non- POSIX systems,
[00:03:21] probably worth a video, watching a video
[00:03:23] about what that difference is.
[00:03:24] But BSD is very, very focused on POSIX Unix.
[00:03:28] I think it's important to say as well,
[00:03:30] but before we leave the BSD topic that BSD is a,
[00:03:36] the basis of Darwin, which is,
[00:03:39] for a long time actually, when you looked at the,
[00:03:43] you name dash A to see what, you know,
[00:03:45] the system type wasn't everything on a Mac,
[00:03:48] like the one I'm streaming from right now,
[00:03:49] you would see that it was BSD,
[00:03:52] and it would report as being a BSD system.
[00:03:54] And that's because jobs took BSD,
[00:03:58] all the free software from BSD,
[00:04:00] and put it into, you know,
[00:04:03] put it into the next cubes at first,
[00:04:09] and then eventually into all Mac intoches.
[00:04:11] In fact, I remember it was a little quick story.
[00:04:13] I remember interviewing for a position at IBM,
[00:04:17] and the guy giving me the interview was a young guy,
[00:04:19] and he was, he said, "What do you think of Mac?"
[00:04:21] That was actually his first question.
[00:04:22] I thought it was weird.
[00:04:24] And it turns out, it's a long story.
[00:04:26] But he wanted to get a Mac,
[00:04:31] and he wanted to make sure he didn't okay hiring somebody
[00:04:33] who wasn't okay with getting a Mac for IBM.
[00:04:37] And IBM had just kind of warmed up to using Macs
[00:04:39] and adopting Macs, and even though they were
[00:04:41] big power PC people forever.
[00:04:44] And anyways, so they go ahead,
[00:04:45] and I told him, I said, "Well, you know,
[00:04:48] "it's good for normal users,
[00:04:51] "but it's in terms of developers,
[00:04:53] "and so by general, for for Linux."
[00:04:54] He goes, "You know that it's BSD now, right?"
[00:04:56] And I said, "No, I did not know that."
[00:04:58] That was how I learned that Mac had switched over to BSD,
[00:05:01] it was actually in a job interview.
[00:05:05] And he said, "Well," he said, "Would you be knowing
[00:05:07] "that it's Unix is BSD under the hook?
[00:05:09] "Would you be okay having a Mac?"
[00:05:10] I said, "Absolutely."
[00:05:11] In fact, I'm gonna go think about buying one right now.
[00:05:14] And Darwin then, they proceeded to do a lot of commits.
[00:05:18] It turns out, I regularly criticize Apple
[00:05:21] for not giving back to the community.
[00:05:23] It turns out they have been, but it's just been very quiet.
[00:05:26] I still think that it's a little bit, you know,
[00:05:29] I don't know, sus that you can't ask the average Apple user,
[00:05:34] do you know that you're using a BSD Unix system
[00:05:38] and they don't know that, they don't need to know that.
[00:05:40] But you know, at the same time, the premise of Apple
[00:05:43] is the user shouldn't have to know anything
[00:05:45] about their system, they should just know
[00:05:46] how to use their system, that includes the file system,
[00:05:48] by the way, I have an entire story about someone
[00:05:51] I tried to teach web development to who couldn't understand
[00:05:55] hierarchical things such as URLs,
[00:05:58] and I tried to relate it to the hierarchical file system
[00:06:00] that no idea was talking about, because Mac
[00:06:02] has completely hidden hierarchical file systems
[00:06:05] from the average user.
[00:06:06] Point being that Apple doesn't wear on their sleeve
[00:06:10] that they're Unix, and maybe that's okay.
[00:06:13] Apple has paid a lot of money to become the official,
[00:06:19] they become the official largest Unix distribution
[00:06:22] in the world built off of in XCUBE and everything.
[00:06:25] So how does that differ from Linux?
[00:06:27] I mean, that's almost just a what is BSD kind of talk,
[00:06:31] but how does it differ from Linux?
[00:06:33] So the two actually came about
[00:06:35] in completely different areas.
[00:06:37] Linus Torvalds is famously quoted as saying
[00:06:39] if he had known that BSD existed, he might not have made,
[00:06:44] you know, started his macrokernel project,
[00:06:47] which was an improvement on Linux,
[00:06:48] which his professor had made in Finland.
[00:06:52] So Linus Torvalds who made Linux didn't know
[00:06:57] that there was this other effort for BSD happening
[00:06:59] at the same time to make a free version of Unix.
[00:07:02] And at the time, I think it was AT&T Unix,
[00:07:06] it cost, you know, something like $2,000 per seat.
[00:07:11] You name still says Darwin, did not know that.
[00:07:13] Oh, does it say Darwin now?
[00:07:15] I think it, yeah.
[00:07:16] Anyway, so the point is that these two free versions
[00:07:23] of Unix evolved independently of one another.
[00:07:28] To be fair, I'm not sure how many of the commands,
[00:07:33] the GNU Linux, you know, that's where the GNU
[00:07:35] from GNU Linux comes from, Stalman in the gang.
[00:07:37] Stalman met Linus Torvalds,
[00:07:38] 'cause Torvalds was busy doing the kernel.
[00:07:41] And then, you know, he ended up,
[00:07:43] Torvalds ended up saying, fine,
[00:07:45] let's just use all of your utilities,
[00:07:48] that included a bunch of stuff, including, you know,
[00:07:51] I think Bash and LS and, you know,
[00:07:53] all the commands that were designed
[00:07:55] to be Unix equivalents came from the GNU project.
[00:07:58] And I think some of those made it into the BSD project,
[00:08:01] but I'm not sure.
[00:08:03] While it is true that you can compile them,
[00:08:06] a lot of those projects were both,
[00:08:08] especially today in static, you know, compilation mode.
[00:08:11] But at the time, you were dealing
[00:08:14] with different dynamically linked libraries and stuff,
[00:08:16] and BSD had an entirely different set of libraries,
[00:08:22] BSD libraries and stuff from the ones that were used for Linux.
[00:08:27] There were probably with some crossover, I'm not,
[00:08:28] I don't know, that would be a question for, probably for Dennis,
[00:08:33] but my understanding is that the baseline systems
[00:08:37] were sort of, the libraries were incompatible.
[00:08:40] So you ended up getting these two ecosystems.
[00:08:42] That means you get two versions of PS,
[00:08:44] you get two versions of MECTER,
[00:08:45] you get two versions of, you know, even EMACs
[00:08:48] and things that Stalman actually wrote.
[00:08:51] But in 2024, that gap has largely been, you know,
[00:08:57] made small, but there is one very, very significant difference
[00:09:03] between BSD and Linux.
[00:09:05] And if you take nothing away from this video,
[00:09:08] the people who waited to watch the whole video
[00:09:09] are gonna get the most value out of this information right now.
[00:09:13] Linux created LXC.
[00:09:17] LXC stands for Linux Containers.
[00:09:21] And Docker is largely, you know, pretty icing
[00:09:27] on the cake of LXC.
[00:09:29] It makes LXC approachable by common people.
[00:09:32] That's people, you know, Linux gurus out there,
[00:09:37] they got no love for Docker, even more so now
[00:09:40] since Docker's kind of, you know, done the stupid things.
[00:09:42] But Docker at the time was largely just a bunch of utilities
[00:09:48] and happy commands on top of LXC.
[00:09:55] And the hardcore people were like,
[00:09:56] why can't you just use LXC?
[00:09:58] You know, it's like, I use LXC by the way.
[00:10:01] I don't even use Docker or Podman.
[00:10:02] I use LXC, you know, because I am so, you know, OG, so boss.
[00:10:06] And, but the bicycle overheating the screen
[00:10:09] is disabling three seconds.
[00:10:10] Oh, well, so I guess it's getting hot in here.
[00:10:13] So it's probably time to end this video,
[00:10:15] but the LXC part of it was the distinction
[00:10:20] because LXC became the basis of all modern containers.
[00:10:25] People in VSD world love to say
[00:10:26] that they have these things called jails,
[00:10:28] which is their own implementation of a container architecture.
[00:10:31] No one is using it.
[00:10:32] I have never even heard anybody for fun or profit using those.
[00:10:38] And I'm not poking holes.
[00:10:40] I've talked with Dennis very specifically said, Dennis,
[00:10:42] you know what we need?
[00:10:43] We need a translation layer between LXC
[00:10:46] so that we can run containers on VSD
[00:10:48] because as soon as you can run containers on VSD,
[00:10:51] the world of containerization may open up.
[00:10:52] But people that run, you know,
[00:10:54] the whole movement away from containers
[00:10:56] and sort of toward micro VMs is kind of interesting.
[00:10:59] If you don't know what a micro VM is,
[00:11:00] you don't know what a VM is, a virtual machine,
[00:11:02] you don't know what a container is.
[00:11:03] There's different videos for that.
[00:11:05] But the point is is that, you know,
[00:11:08] the ability to like have an Amazon cloud server
[00:11:11] and click on a couple buttons and have it just pop up,
[00:11:13] which is enabled by virtual machines and containers,
[00:11:16] that kind of thing.
[00:11:18] Kubernetes is all about containers.
[00:11:20] And if you haven't heard about Kubernetes yet,
[00:11:21] you will eventually.
[00:11:23] If you haven't heard about Docker yet, you will.
[00:11:24] Those technologies fundamentally depend on Linux.
[00:11:27] They are at the core Linux technologies.
[00:11:30] You cannot have a container.
[00:11:33] That includes Docker on the desktop
[00:11:35] or Podman on the desktop.
[00:11:36] Those run micro VMs running Linux
[00:11:38] so that you can get LXC.
[00:11:40] The biggest distinction between BSD and Linux is LXC,
[00:11:44] in my opinion, from a pragmatic perspective.
[00:11:48] From a perspective of like,
[00:11:49] why would I want to learn one or the other?
[00:11:51] Of course, Linux has got much, much more, you know,
[00:11:57] adoption in the industry by people
[00:11:58] that are doing all kinds of things.
[00:12:00] You're never ever gonna find somebody gaming on BSD
[00:12:02] that's kind of silly.
[00:12:03] I mean, if you find somebody, please let me know.
[00:12:05] But, you know, this whole movement,
[00:12:07] Linux is much more in the user space
[00:12:10] and BSD is very solidly in that.
[00:12:12] Let's make the smallest possible, most awesomest hardware.
[00:12:17] So computer engineers love BSD.
[00:12:20] People who make routers love BSD,
[00:12:21] people who make internet of things kind of devices,
[00:12:25] they love BSD.
[00:12:26] And they tend to avoid Linux
[00:12:28] because it's so much better kernel.
[00:12:31] I mean, that's changing, but that's largely,
[00:12:33] that's largely the takeaway.
[00:12:34] Should you learn both of them?
[00:12:37] The feature belongs to unicernels, I tend to agree.
[00:12:40] Should you learn BSD as a part of your beginning learning?
[00:12:45] And the answer is no.
[00:12:46] You are going to kind of buy osmosis, get it,
[00:12:51] by learning, you know, when you learn Linux,
[00:12:56] especially if you learn it from somebody who tells you
[00:12:58] not to use -p on maker because it's not POSIX compliant,
[00:13:02] which is going to be how I do it.
[00:13:04] Then you're going to learn the commands and stuff
[00:13:08] that will also, from a practical user perspective,
[00:13:10] that will work on BSD.
[00:13:13] But we are not going to do any BSD work in the beginner boost.
[00:13:16] And it's largely a waste of your time
[00:13:18] if you're a beginner trying to get into the industry.
[00:13:20] Unless you're going to become a computer engineer,
[00:13:21] if you specifically know you want to go
[00:13:23] for computer engineering, in which case,
[00:13:25] you got to learn Linux anyway.
[00:13:26] So the boost is still relevant.
[00:13:28] But after the boost, you would want to layer on more knowledge
[00:13:31] and you'd want to make sure you understood BSD.
[00:13:33] And other UNICs, is that a thing?
[00:13:36] UNIX is right, AIX, Solaris, you know, these HP UX,
[00:13:41] I don't even know if that's out there.
[00:13:44] SCO, there are a bunch of other UNICs operating systems.
[00:13:47] And, you know, a lot of Linux people on the internet
[00:13:49] don't even know that there are other systems.
[00:13:53] In fact, I won't mention him,
[00:13:55] but I remember one Twitch streamer being told
[00:13:58] that they had to take over a bunch of AIX UNIX systems
[00:14:01] at work from a bunch of old people,
[00:14:03] old parts like me are older than me who are retiring.
[00:14:07] And he goes, yeah, I went to go edit a file
[00:14:08] and there's this thing called V.
[00:14:12] That's a true story.
[00:14:13] And I saw him say that I laughed.
[00:14:16] I laughed out loud at my desk.
[00:14:17] I was just having so much more of that.
[00:14:19] And they're a fantastic person.
[00:14:21] They're such a good person
[00:14:22] and they're so willing to learn new things.
[00:14:24] And, I mean, they didn't even know that VI predated VIM.
[00:14:29] They don't only know VIM, their whole life.
[00:14:31] That's all they'd ever known because they grew up on Linux.
[00:14:33] And there's nothing wrong with that.
[00:14:35] It's just, to a guy like me, that was a little comical.
[00:14:37] It was like, yeah, what's this V thing?
[00:14:39] It doesn't have like all these things I wanted from my VIM.
[00:14:42] And so, knowing the difference,
[00:14:45] and, but rest assured that if you're doing
[00:14:48] the beginner boost with me,
[00:14:50] every single thing we do when we do the beginner boost
[00:14:53] is based on understanding the general.
[00:14:55] In fact, I've struggled with what to name it.
[00:14:57] Whether we should name it Unix terminal,
[00:14:59] or the Linux terminal, or get good with Linux,
[00:15:01] or get good with Unix, or get good with Starnix,
[00:15:03] or whatever, right?
[00:15:04] Because all the stuff you're learning in the boost
[00:15:06] is relevant to all the Unix's,
[00:15:09] other than the containerized stuff, right?
[00:15:11] Which we'll learn at the very end.
[00:15:12] Every other thing will work on BSD, or AIS, or Solaris.
[00:15:16] And I dare say, there's a lot of learning
[00:15:19] that you could potentially do here on YouTube,
[00:15:21] or on Twitch, that does not do that.
[00:15:24] It's very Linux-specific.
[00:15:26] But because I have such a strong background
[00:15:28] in Unix in general, in fact, it was my fun story.
[00:15:32] My mentor, Joey, when I was first getting into all this stuff,
[00:15:35] my first experience with all of this stuff
[00:15:37] was a Son OS machine.
[00:15:39] And I actually said to Joey, I said, man,
[00:15:42] I wish I could get Son OS at home.
[00:15:43] It'd be so great for me to learn it.
[00:15:44] And he said, and I quote, well, you could always use Linux.
[00:15:49] And I said, what's Linux?
[00:15:50] I'll never forget that moment.
[00:15:53] I remember the room I was in.
[00:15:55] And that was the first time I heard that Linux existed
[00:15:57] in something like '90s, something.
[00:15:59] I don't know what, mid '90s.
[00:16:01] And I went home and I kicked the PowerPC.
[00:16:06] I had a PowerPC Mac, and I installed mock Linux
[00:16:10] and struggled through all that to get that to work.
[00:16:13] Had I known about BSD, I might have given it a shot,
[00:16:16] but Joey recommended Linux.
[00:16:17] I don't know what Joey even thought about BSD.
[00:16:19] If Joey had mentioned BSD, I probably
[00:16:22] would have installed BSD, but I'm not even sure how mature
[00:16:25] it was at the time.
[00:16:26] So the takeaway is, it is important that you know what it is,
[00:16:29] so you can talk about it, you can know the distinctions.
[00:16:32] But if you learn Unix and Linux correctly,
[00:16:35] then your knowledge is going to translate between the two
[00:16:38] and you don't need to sweat about, sweat it right now,
[00:16:40] unless you're going to become a specialist later on.
[00:16:42] But at the beginning stages, don't freak out about it.
[00:16:45] That's it.
[00:16:47] That's the end of that video.
[00:16:48] Now I need to turn the stop button, or stop recording.
[00:16:52] How is that?
[00:16:53] Let's get some music.
