# Setting Up a New Windows 11 Dev PC: WSL2, Git Bash, VS Code, GitHub CLI and WezTerm

Sets up development tools on a new AMD Windows 11 PC, including VS Code, Git for Windows, GitHub CLI, dotfiles and WezTerm, with WSL installed pending a reboot. Along the way, discusses Windows versus desktop Linux, privacy, teaching web game development, learning C, AI, and applications versus operations career paths.

Chapters:
0:00 New Windows PC introduction
3:05 Home streaming server versus cloud
7:03 Windows Terminal and PC specs
10:40 Dual booting for machine learning
15:04 Home lab and minimalism tradeoffs
20:50 Resizing the Windows Terminal text
23:36 Changing the Windows account username
32:58 PowerShell, Git Bash, or WSL2
41:20 Windows versus desktop Linux for gaming
51:28 Game compatibility layers on a Mac
56:30 Desktop Linux for learning
1:00:40 Privacy in modern computing
1:05:00 Choosing how to install Windows software
1:10:15 Installing WSL and virtualization options
1:15:10 Adding a Gruvbox terminal color scheme
1:23:10 Installing VS Code and GitHub sign-in
1:36:25 The VS Code terminal and PowerShell
1:39:40 Installing Git for Windows
1:48:55 Line endings and other Git options
1:58:00 Git Bash and Gruvbox in VS Code
2:04:20 Installing GitHub CLI with winget
2:13:20 GitHub login and dotfiles setup
2:19:10 Web game development and teaching tracks
2:25:55 Phaser, AI, and developer jobs
2:33:15 Learning C and AI limitations
2:41:58 Applications versus operations career paths
2:44:45 Virtual machines, containers, and WSL2
2:51:40 Installing and configuring WezTerm
3:02:50 Symlink problems under Git Bash
3:23:50 Debugging WezTerm, Claude Code, and recap

`#windows11 #wsl2 #gitbash #vscode #wezterm #git #github #linux #gamedev`

## Category

Science & Technology

## Transcription

[00:00:00] All right, I'm gonna go ahead and start this recording. It's gonna be a very long recording.
[00:00:06] So I just got a Windows machine. I guess I can show you really quick if you want to see.
[00:00:13] So I got this this Windows machine with an AMD GPU because this is mostly for
[00:00:24] gaming and streaming and I don't care about Nvidia. It's also $500 cheaper. It's the equivalent of an
[00:00:31] Nvidia 5070 Ti. So far I've run every game I care about, Witcher, Overwatch, on ultra settings,
[00:00:42] including GTA. When it comes out, I'll be able to do that even though I'm not interested in GTA.
[00:00:46] I added a new NVMe drive - whoa, where are you? Down there - two terabytes of NVMe, mostly for video storage, clips and stuff.
[00:00:55] There's the actual onboard NVMe storage for a total of three terabytes.
[00:01:00] I have 16 gigabytes of DDR on video RAM, and I think I have 32 total DDR4, I want to say.
[00:01:12] So I got this entire rig with the extra drive, which I added myself for $2,000, which is insane.
[00:01:22] It's an insanely good price for what I got out of it.
[00:01:26] And the reason I got it is because I also added, because it was such a good deal,
[00:01:31] I added a universal power supply over in the corner over there, which I have not cleaned up.
[00:01:36] A quick disclaimer about this beautiful apartment of mine.
[00:01:40] This is my absolutely unorganized studio apartment here in North Carolina, if you haven't known.
[00:01:54] That is the first wide angle that I've published on YouTube of my entire place.
[00:01:58] I have a nice little loft upstairs where I sleep and stuff.
[00:02:04] And I really love this little place.
[00:02:07] I don't mind sharing that I only pay $985 a month for the rent here, which is one of the reasons I got it, because I'm usually moving around so much.
[00:02:18] So it's more important that it have really good Internet and it, you know, it have be safe and cheap in place I can come back to when I'm not traveling around.
[00:02:28] And I still am going to be traveling around.
[00:02:31] Those of you, many of you know, I was it's a little cold, a little chilly in here.
[00:02:35] know, I got a space heater down here, but so, um, so, so, you know, I was nomadic for a while in the
[00:02:42] car and I, on purpose, uh, and I plan to do that again. So I'm going to be doing a lot of, a lot
[00:02:47] of, a lot more bike streams, a lot more IRL streaming. And in the process of that, um, a lot
[00:02:54] more tech streaming too, by the way. So, uh, I've gone through quite a decision-making process over
[00:03:00] the last several weeks with regard to having an apartment because, you know, you save a thousand
[00:03:05] dollars minimum a month when you want to live out of your car and move around. But it comes at a
[00:03:09] great cost. So one of the costs is you have to run a cloud server. So I'm telling you all this
[00:03:14] because I want to give you context about why I'm setting up a brand new computer that I just bought
[00:03:19] on the day before Thanksgiving. So the reason I bought this computer is because primarily I needed
[00:03:27] something at home. I'm not going to lie, I bought it for gaming. I've been really missing gaming,
[00:03:33] actually. I didn't realize how much I was going to start missing gaming until I moved in.
[00:03:38] I'm not a big gamer, obviously. I like running a lot of code. I like doing a lot of tech stuff.
[00:03:44] But after about a full year away from technology and basically demonizing technology and flipping
[00:03:50] people off who who would ask me when the tech streams are coming back um you know i've had a
[00:03:57] moment to kind of rethink it and to kind of add some balance back and that includes adding tech
[00:04:02] streams the beginner boost which is coming i'm hoping to shoot i'm hoping to start the beginner
[00:04:06] boost videos over christmas when i have a lot of extra time so uh those are all just precursors to
[00:04:13] why i need a server i can't do the beginner boost and without having some good streaming stuff
[00:04:19] Right now, I don't have my mic with me, so I gave my mic and all of my streaming, my soundboard, my Behringer, everything to go with my guitar, I gave all of that to my son, Gordon, who also streams, who is sending it back to me so I'll have that on December 3rd and we'll have a higher quality audio and I'll have an actually good mic again.
[00:04:41] So, that leaves me with this brand new computer to set up, and I'm going to go ahead and set that up, and that'll get us a system that we can both do tech streaming from, we can game on, and that I can set up in the corner with a UPS and have it be my IRL main streaming server, which I'm currently paying $90 a month for in the cloud, only to find out that it's not reliable.
[00:05:06] My $90 server in the cloud has been down three times because of reasons that are outside of my power.
[00:05:11] So, you know, I'm willing to take my chances with the UPS and a server in the corner running from my home and save that money, 90 bucks a month, in order to have all the same things that I would normally have if I were in the cloud.
[00:05:28] And so, you know, stay tuned if you want to see all of that.
[00:05:33] I started working on an app some time ago last year called Nomad IRL, which I'm using right now.
[00:05:38] I use it all the time.
[00:05:40] And yeah, it's just been really, really, really good opportunity to do all of that.
[00:05:47] So my biggest risk going into this is if I were to go for like a two-month stay and I have my server running in my house on UPS, if there's a power outage or something, if the system didn't reboot on its own, and I'm still exploring ways to make it reboot on its own, I would still need somebody to come into my home with a key and flip the switch to bring it back up.
[00:06:09] And I've got two people who live locally who I can give a key to who would be willing to do that if I were already going to go on a trip.
[00:06:15] So that is the only, only risk factor.
[00:06:18] Whereas I've been down twice now in the cloud, but I host a GPU server and I had no way to get them to restore it.
[00:06:28] I sent them an email, but I was waiting around for them.
[00:06:31] And I actually probably would have had faster response by calling somebody who lives locally close to me and having them come and open my door and restart the server.
[00:06:40] So those are all reasons that I'm willing to set up a server in my own home and to help other people do that who want to do that.
[00:06:48] So if you are an IRL streamer or you want to be an IRL streamer, please stay tuned because I'm going to be focused on helping medium to small size streamers be able to get started.
[00:06:58] So anyway, let's go back to what it is we need to do on this system.
[00:07:03] So at the moment, I have nothing on this computer.
[00:07:07] I have Chrome, I have some games that I use to test, but I have nothing.
[00:07:10] I have no terminal of any kind.
[00:07:12] I think MS, well, let's take a peek and see.
[00:07:17] Let's switch the scene back.
[00:07:19] Let's see if we have, let's see what we have here.
[00:07:22] I think we have Windows Terminal, I think, comes on it for free.
[00:07:27] It does.
[00:07:28] So Windows 11 comes with the default terminal now, which is really great.
[00:07:33] I hate that it made my name.
[00:07:35] That's not the same.
[00:07:36] So note to self, make sure that you get a good name.
[00:07:44] Go Linux or go home.
[00:07:47] Yeah, no.
[00:07:49] Putting Linux on a machine is a bad idea.
[00:07:52] If you tell someone to put Linux on their machine without asking them what they want
[00:07:57] to do with their machine, you're irresponsible.
[00:08:00] So that's all I'm going to say to that comment.
[00:08:04] Telling a gamer to put Linux on their machine
[00:08:08] and not asking which are the favorite games
[00:08:10] that they're never going to be able to play again--
[00:08:13] yeah, irresponsible.
[00:08:14] I know you guys are just having fun, but--
[00:08:17] what's the specifications?
[00:08:19] The computer is--
[00:08:21] actually, I can pull them all up.
[00:08:24] Let me read it to you, actually, really quickly.
[00:08:26] Let me go get my stuff so that people can know.
[00:08:30] It's a Windows 11 Home 64-bit AMD Ryzen 5 7500X 3D processor, 95 megabytes, level 3 cache,
[00:08:41] ASR Rock B850 M-C motherboard.
[00:08:44] It's a small form factor.
[00:08:46] AMD Radeon RX 9070 XT, 16 gigabytes onboard RAM for GPU, 32 gigabytes DDR5 RAM.
[00:08:55] I got it wrong.
[00:08:56] one terabyte solid-state boot drive, and then another two terabyte NVMe drive that I added,
[00:09:01] integrated 7.1 audio, one gig LAN, Wi-Fi 6, Bluetooth 5, 11 USB ports, one-year 48-hour
[00:09:09] power spec warranty, Windows keyboard and mouse monitors, so separately. So I didn't even open
[00:09:14] the keyboard. I had another keyboard that I'm already using right here. So those are the specs,
[00:09:19] and those will be captured in the transcription of the video, which will be saved at rdbxrob
[00:09:25] slash videos. You can go there for all my videos. All my videos are transcribed and then all my
[00:09:30] videos now have chapters. These are all AI generated. If you want to know how that I did
[00:09:34] all of that and you want to see the scripts I use to generate the automated chapters and I review
[00:09:39] 2,500 videos through AI to help me identify the ones to keep and the ones to get rid of and provide
[00:09:45] searchable transcriptions which can then be crunched with an AI model. If you want to know
[00:09:49] about how to do any of that, please stay tuned to the channel. Please like and subscribe. Please do
[00:09:54] all that stuff. And I'm happy to help you do all of it. It has revolutionized how I create
[00:09:59] educational content or how I can create content in general, because every single thing that I make
[00:10:04] can now be search index. And AI has made that trivial. It took me less than three days to do
[00:10:10] all that. So, you know, I do have videos about how to do that, but mostly it's in the VODs right
[00:10:15] now. I'll go through the whole thing once I get the videos all cleaned up and we can go look at
[00:10:20] that. So to return back to this, so it's an all AMD. Yep. I don't have any NVIDIA on here. So I'm
[00:10:28] a huge fan of AMD. I always have been. You know, people get political about their opinions on that.
[00:10:36] I don't care what your opinion is on that. AMD is better. It has been better for a long time.
[00:10:44] And I mean, I know that they got bought and everything.
[00:10:48] I recommend using Windows 11 Debloat, hybrid box.
[00:10:52] There's a thing called Windows 11 Debloat.
[00:10:54] I did not know about this.
[00:10:58] I thought about making a hybrid box,
[00:10:59] and that's why I originally bought the second NVMe drive
[00:11:02] to put a 1.2 server on there.
[00:11:04] However, that's a Linux reboot, and I've since rethought
[00:11:07] that consideration this year, or just recently, just today.
[00:11:12] The reason I'm not considering an Ubuntu reboot, the only reason, when I got, when I, okay,
[00:11:18] there's two, how much actual am I going to be doing, right? Chris Titus has the Windows tool.
[00:11:26] Chris Titus is the Windows God. I mean, he is like the Windows God. And actually, Chris is one
[00:11:32] of the main reasons I'm okay running Windows. Because Chris has made a big point about being
[00:11:37] okay, running Windows for technical things, especially the fact that I have to have a
[00:11:41] Windows machine if I'm going to help people be able to use a Windows machine to be productive
[00:11:44] at their job, etc. So I have tried very hard to figure out how I'm going to be able to crunch my
[00:11:53] own LLM models, and you cannot do that on Windows. That has to have Linux, right? And I very much
[00:12:01] want to learn how to crunch my own models so i i'm kind of i'm kind of open to suggestions for that
[00:12:09] i am not going to initialize or do anything with my nvme drive my extra drive which is just sitting
[00:12:16] as a raw unformatted drive right now i checked it out in the settings um because because i want
[00:12:24] the option of putting ubuntu on there i do i want the option to be able to put ubuntu on it
[00:12:29] and haven't run PyTorch and there's you can run PyTorch and TensorFlow on AMD GPUs. This is a big
[00:12:36] myth that you can't do this. It turns out you can. I checked all of that out before I bought it
[00:12:40] and so the kind of crunching of data that I want to do I believe can be done on Ubuntu
[00:12:49] PyTorch and if not it might even be able to be done on Windows. Ultimately all I really want to
[00:12:53] do is point any tool at all at all of my content that's stored in one or two repos and my video
[00:12:59] content, which is my transcripts of my video content, and then have that turned into a large
[00:13:04] language model assistant. And I have never done this. I have never done that. I don't know what's
[00:13:09] possible. I know people who have done that, and I don't know what the requirements are for that. So
[00:13:14] I've made it possible that I can actually go back and put Ubuntu on that second NVMe drive. I would
[00:13:25] never have those share the same drive. That's a disaster waiting to happen. And then I could just
[00:13:30] dual boot. So then I could boot into Linux if I wanted to do some really heavy duty crunching.
[00:13:34] But if I do that, if I do that, I'm now troubled because now I lose my opportunity to stream from
[00:13:44] this machine. And if I'm going to use this machine as my central streamer when I'm not
[00:13:49] streaming from the cloud that's a problem because now i can't crunch you know i can't use my machine
[00:13:56] for anything else i'm just it's just going to be sitting there like dedicated to crunching numbers
[00:14:00] and stuff so before i make any decision about what i want to do with returns to language models and
[00:14:08] stuff that went doing all the crunching first of all i need to do a lot of education which is one
[00:14:11] of the reasons i'm doing all this live and the second thing is i i need to really identify what
[00:14:18] I'm going to do to live stream. So my current feeling is that it's better to, especially if I'm
[00:14:25] going to be storing clips and VODs on this machine, I'm going to, you know, I'm going to fill up that
[00:14:29] extra two terabytes just with video content that's been crunched, right? And I need a GPU horsepower
[00:14:36] over here to do video editing and all the things that I have to do with regard to that sort of
[00:14:42] stuff. And that's really, really important that I have that level of horsepower to be able to just
[00:14:48] just do content creation so it might be that i end up uncovering the fact that i really need
[00:14:53] a more dedicated machine uh with more cores maybe some variation on uh an nvidia um uh
[00:15:04] what are they called the the ones that i used to stream from i have a whole bunch of i gave them
[00:15:08] away so yeah it wouldn't be another desktop uh sam altman doesn't get it instead yes so
[00:15:17] So we need to have, we probably need another machine or a device that's designed to do crunching of models.
[00:15:25] And because I don't know any of that, you know, I'll figure that out.
[00:15:29] Yeah, we probably need to get a different kind of CPU, like a Threadripper,
[00:15:33] because it's more about the cores when we do that kind of thing.
[00:15:35] Yeah, we need a totally different CPU setup.
[00:15:39] Yeah, a SAT or NAS for storage.
[00:15:43] I could use the Saturn S for storage at some point, but now we're talking about getting into
[00:15:48] a full-blown home lab situation where I can't take it with me in the car, and I'm still teetering
[00:15:56] on this, so it's irrelevant, I promise. But within the last week, I learned that I need to be here
[00:16:02] for three years because I'm dealing with my teeth and stuff. So up until that moment, I had been
[00:16:10] trying to keep myself mobile so that I can pick up after a year's lease and put all my stuff in a
[00:16:15] car and take off and move someplace else. And as soon as you start adding more stuff, so this, this,
[00:16:20] this, this rig right here was already a big thing. It's like, okay, that's, as of this moment,
[00:16:27] everything that I own will still fit in the car, but it will be very, very tight. I bought, you know,
[00:16:32] I bought this monitor and I bought this computer and this computer will, you know, will go in the
[00:16:38] car if I'm moving to another location, but I won't be able to live out of the car while owning the
[00:16:42] computer. I'd have to go into storage or something. So, you know, I'm teetering on that. Plus, I want
[00:16:49] to follow more of a minimalist lifestyle. I don't want to necessarily get stuff that I don't need,
[00:16:54] like sand storage. You know, network contact storage doesn't make any sense for me because
[00:16:58] I've only got one computer, maybe two, you know. So if I'm going to do any of that kind of thing,
[00:17:04] I probably would be spinning it up in the cloud over GCP or only because that's what we use at
[00:17:10] work. So I want to get good with that. And yeah, so but those are, you know, if I go back, I mean,
[00:17:19] I've had a $25,000 two rack home lab system with three different clusters in it. And, you know,
[00:17:28] I donated that. I donated that to a community college, and I'm not inclined to get back into
[00:17:36] it like that. I just am not. So that's probably enough talk about what my planning is, where I'm
[00:17:47] going with all of this, and I think it's probably time for me to get into, well, where do we go from
[00:17:54] here and let's set up this PC. Let's actually set it up. Let's, what do we need to do? What do
[00:18:00] we need to put on it? And I will go through a summary of that in just a second. I'm going to
[00:18:05] take a quick break and pause. So I suppose I'm taking a little coffee break there. Welcome back
[00:18:12] everybody um so it was like a side conversation about uh people that are they're born to live in
[00:18:23] one spot and with their whole life and have a wonderful lab and everything and people are born
[00:18:28] to wander and i tend to be the latter i have a feeling i like being really cozy but i also
[00:18:34] really really like my adventures and uh and they they don't necessarily go together i think i may
[00:18:40] I found the perfect solution though, an ultra, ultra, ultra, ultra cheap studio that you can
[00:18:45] call home. And then it's cheap enough that you can still afford to fly all over or go wherever
[00:18:51] you want to and come back. So that has, that's my, my current plan. I'm still tentative on it
[00:18:57] because I haven't bought a couch yet. As soon as I buy a couch, as soon as I buy a couch or a table
[00:19:03] to play cards at with my family or any of those things, then, you know, I'm, you know, getting
[00:19:08] cozy and settling. I also wanted my art. I used to have a lot of art. I was married to an artist,
[00:19:13] two artists, actually, and not at the same time. And then, you know, I'd like to have some actual
[00:19:20] art on the walls and, you know, just that wonderful place to come back to. Anyway, so we get back to
[00:19:28] the Windows thing. And what are we talking about here? So the first thing you realize now is that
[00:19:37] windows 11 obviously comes with windows with windows terminal that's what i'm looking at here
[00:19:41] on the screen and that leads to the question do i need linux on my computer
[00:19:50] uh two at the same time yeah no no i was mormon but no so yeah references to marriage conversations
[00:20:02] that kind of stuff you're going to have to come to twitch for this okay if you're watching me on
[00:20:07] YouTube, please come join me in my Twitch community where we get crazy. We have a lot of fun.
[00:20:13] I'm going to go out riding on my bike and we're going to go see all the lights and sights and
[00:20:18] sounds of Charlotte and South Charlotte and hopefully have some fun time there. That stuff
[00:20:24] never lands on YouTube anymore. If it does, it's maybe a clip or two here. If you want to have a
[00:20:31] lot of that casual, unscripted fun with me, please come. And I'm just going to put that one plug
[00:20:36] there. And I'd love to have you. I'd love to have you. I've met a lot of really amazing people that
[00:20:42] way. So anyway, back to, you know, setting up this computer. So I have this Windows computer
[00:20:50] and it's all ready to go and I have a terminal already on it. What else do I need?
[00:20:54] Wink, wink. I think a lot of you know what I'm going to say here.
[00:21:00] Yeah, I think you know what I'm going to say. How do I make the thought bigger?
[00:21:06] It's definitely not plus it's not the same as Mac how you doing Ivan some of
[00:21:18] you are already suggesting it I think that's kind of a trick question a lot
[00:21:24] people already know what the answer is at least they know what I'm gonna say is
[00:21:29] the answer I I cannot stand how small this terminal is it's driving me nuts how
[00:21:36] do I why okay someone help me help me help me control plus I'm pushing control
[00:21:43] and plus oh I swear I tried that I swear you know what I was probably pushing
[00:21:52] negative instead of plus. I stand corrected. What you saw what I was
[00:22:01] pushing? I was pushing Windows with plus? Was it really? I suck. I suck. I'll try it
[00:22:16] there you go. I'm gonna make it really big for you so you can see it on on the
[00:22:23] YouTubes. You got to be able to see it on the YouTubes there. Yeah? How's that?
[00:22:32] Which is nothing. Yes, I know it does nothing. You know what though? I wish they
[00:22:36] would remove, I wish they'd make it so that you could disable the Windows key
[00:22:39] because I'd be playing Witcher and I go to like Roll or Dodge or something and I
[00:22:43] push the Windows key every time. I'm like, what? And then I die. I die because it, like, pulls up
[00:22:51] the stupid Windows thing and pulls me out of the game, and I'm supposed to be dodging a boss,
[00:22:56] and I end up getting eaten alive while I'm waiting to get my game back. Help me, help me,
[00:23:02] Obi-Wan Kenobi. You're my only hope. I have horrible Windows skills.
[00:23:11] Tell me in the comments below, right in the comments, if you have ever been killed because
[00:23:16] you accidentally pushed the Windows key in a game, I want to hear about it so I feel better.
[00:23:21] Or you can just tell me that I suck, which is also fine because it's good for the algorithm.
[00:23:26] All right, friends. Anyway, this is me practicing. Oh, no, I was pasting. Apparently,
[00:23:35] I was pasting that whole time. Oh, there was also an ad break. All right, so
[00:23:40] So, one of the things right away, if you're watching this right now, let me give you a
[00:23:45] warning, okay?
[00:23:46] When you're setting up your Windows machine, and you're answering all this stuff, and you're
[00:23:53] answering what your name is and everything, take the time to figure out how to change
[00:23:59] this.
[00:23:59] So, that is not the username that I wish to have.
[00:24:04] It doesn't matter.
[00:24:05] I have to use it from now on.
[00:24:07] otherwise i have to make a new admin account which i could do i can make a new admin account
[00:24:13] right now but then i would have to install all my games in the new account i would have to set up
[00:24:18] everything over there in the new account so i'm just going to suggest you have one of two options
[00:24:24] here okay one of them is get it right the first time so that when you're going through it figure
[00:24:30] out whatever it takes to get that name to be the right one i don't think you get the option though
[00:24:35] When you get those Windows 11 prompts and it's asking you for your name and all that stuff,
[00:24:38] I don't remember ever seeing something that said, hey, what would you like your username to be?
[00:24:42] Because it's an advanced sort of thing.
[00:24:45] And if there is a way to do that in the comments below, please write it in the comments below.
[00:24:50] But I don't know if there is one.
[00:24:52] So the alternative to that is as soon as you create the account,
[00:24:56] the first thing you do is create a new admin account and set that account up
[00:25:01] and then have this other account be the original one and let it die.
[00:25:04] In fact, you can delete it.
[00:25:06] You can totally delete it once you have another admin account.
[00:25:09] But you have to have another admin account.
[00:25:12] You can't just change the name of your existing account.
[00:25:15] It's not possible.
[00:25:18] As far as I know, I did read something
[00:25:20] that said that you could actually create another admin account
[00:25:23] and then use that admin account to change the name of this account
[00:25:25] while you're logged into that account.
[00:25:29] To change your name, you can use control user account name,
[00:25:32] change your account name.
[00:25:34] That does not work.
[00:25:36] Okay, I'm gonna try it. So everyone's telling me I'm wrong already, which is normal.
[00:25:41] So, can I just... this is supposed to be a dark thing. What the hell?
[00:25:47] This is not dark.
[00:25:50] Y'all, this is not dark.
[00:25:53] Windows 11, Control Panel.
[00:26:03] User accounts
[00:26:05] User accounts
[00:26:08] Account change accounts. I already have that. Remove user account, manage web accounts controls
[00:26:12] User account
[00:26:16] Passive project to make changes to my account in PC settings change your account type
[00:26:21] Manage another account change user account control settings. I mean, I hope I'm wrong. Let's go see
[00:26:27] See I already did this. I opened this and you can't do it
[00:26:33] Managing my accounts, help with your info, switching your account, check to see blah, blah, blah.
[00:26:39] This is a Windows account. This is not. This is a Windows account.
[00:26:46] Yeah, I don't think I was wrong.
[00:26:50] I think you're wrong. So there.
[00:27:00] This is a Microsoft account website and edit your name under your info on the Microsoft account
[00:27:04] Are you telling me I have to go all the way to the Microsoft account just to change my local user account name?
[00:27:09] I'm dubious. I am I am not believing that so I am with your local account instead
[00:27:20] Honestly, I wish I could do that. I really do. I really do
[00:27:30] I don't mean I'm not look I'm not attacking anyone here. I'm just not
[00:27:34] Normally, first of all, I do not want to sign in to Microsoft in front of all of y'all because I do not trust them
[00:27:41] at home
[00:27:43] So I am going to turn that off for a second
[00:27:47] All right, so sign in oh
[00:27:51] It's a good thing I did that
[00:28:00] Yeah.
[00:28:00] Enter my PIN. You can't see, right?
[00:28:05] We're updating our terms. I don't give a shit.
[00:28:14] Uh, stay signed in. Skip having to sign in every time. Yes.
[00:28:19] Um...
[00:28:23] Subscriptions.
[00:28:29] We're going to Storage Game Pass Devices.
[00:28:32] The thing that's funny is there's this other system here
[00:28:37] that I have never used.
[00:28:40] And I'm like, somebody is logging in as me
[00:28:43] and using this system.
[00:28:58] And I don't, honestly, I don't know whose it is.
[00:29:00] I don't want to unlink it yet because it could be my son or daughter's
[00:29:03] or somebody that I was married to once upon a time.
[00:29:05] Does not change the folder name.
[00:29:08] Renewing the folder is a separate, riskier process that can break Windows.
[00:29:11] I'm pretty sure I just said that.
[00:29:13] Okay, so, yeah, I don't see any place here where it can be changed.
[00:29:20] So, all right, so we're going to go back to what I was doing before.
[00:29:25] I was reminded to give this a try in front of everybody, which I don't regret doing.
[00:29:30] If I had been wrong on that, that would have been great.
[00:29:33] So we're going to go back.
[00:29:36] One of the few times I was right.
[00:29:38] All right, so we're going to go back to desktop.
[00:29:41] I mean, if you think about it, it actually does make a lot of sense
[00:29:47] because under the hood, someone is using my Microsoft account on a machine that I don't know
[00:29:56] of. Yes. I have a feeling it's my other streaming system. I have a feeling it's either my other
[00:30:03] streaming system, or it's my ex-wife, or it's my kid. I don't know which. I don't know which,
[00:30:16] so I'm inclined to not deny them yet. I need to ask around and say, hey, what's the name of your
[00:30:24] computer. Because, right? By the way, Rad. My host name is Rad. You know why? I'll give you one guess.
[00:30:36] You should be able to change it in your PowerShell.
[00:30:40] You can definitely change your, you can change your account name. You can't. The problem is it
[00:30:47] doesn't change all the running processes and everything. It's the same. You have to be in
[00:30:54] another. And so according to the research that I did, you have to be in another system with admin
[00:31:02] privileges to properly change the permissions of the system you're running in. And that's been
[00:31:07] true since the dawn of computing, since I've done stuff. Because you're already in the system,
[00:31:13] you can't quite get it to change this thing you're in because you're already in that other system.
[00:31:18] Does that make sense? So then it loses track of the fact. It'll say, oh, somebody's still using
[00:31:22] that account or something. So now that it's more Unix-like, I have a feeling that that's why the
[00:31:28] recommendation is to create it. So the proper steps to change your name are to create another
[00:31:36] account and to log into that account, like log out of Windows, and I'm not going to do that while
[00:31:45] I'm streaming, and then log back into this other account, and then either delete the other account
[00:31:50] or and then reassociate the one that you just logged in as as the one that wants to tie up
[00:31:57] with windows if you want to do that you don't have to do that you can use local local systems
[00:32:01] uh they create a hundred pot account uh malicious traffic would be directed to
[00:32:08] and and it would come back you what you would get rid of it it would keep coming back
[00:32:14] oh my god you had no idea what it's doing no i don't either and it's it's under microsoft as my
[00:32:22] name so but i don't i don't want to kill one of my i have a feeling it's one of my children
[00:32:27] is using it um and if i if i suddenly remove it i you know i i don't know what's going to happen
[00:32:35] there. So, um, anyway, um, based on the name, the name is peace and love. So I don't know.
[00:32:46] It's, it's either my daughter's computer, it's either my daughter's computer or it's my, um,
[00:32:58] It's either my daughter's computer or it's my
[00:33:00] my
[00:33:03] My ex-wife's computer and possibly you know my my stepson, so that's why I'm not gonna I'm not gonna kind of mess with it right now
[00:33:11] Okay, so back to the goal and which is
[00:33:15] To decide if we want to just use this computer to do everything
[00:33:20] Or not and you know
[00:33:25] There are a lot of people Chris Titus included who would say PowerShell is fine. You don't need anything else and
[00:33:33] You know, especially if you're in cybersecurity if you're going to get into cybersecurity understanding learning PowerShell is mandatory
[00:33:42] According to the offensive security
[00:33:45] Courses you have to learn PowerShell because a lot of their hacking and stuff goes through PowerShell. I despise PowerShell
[00:33:51] I can't stand it. I don't think it is it qualifies as a shell at all
[00:33:55] But you know it that's it doesn't really matter you can also run bash on a
[00:34:03] Windows computer as a Windows computer and
[00:34:07] For many many years they did that in my entire eight eight to nine years of running skill stack
[00:34:13] we just would install get bash and
[00:34:17] And we would use that with VS Code,
[00:34:20] because I was usually working with kids.
[00:34:22] And we would use that to do web development stuff.
[00:34:23] And it worked fine.
[00:34:25] And that was actually Windows.
[00:34:27] So every operation that happened, changing permissions,
[00:34:30] everything was happening on the actual Windows file system.
[00:34:34] And then the third option, which I think a lot of you
[00:34:36] know about already, is WSL 2.
[00:34:39] I have had over a decade of experience with WSL
[00:34:44] And unpowered shell is what it should be called.
[00:34:46] That's a funny joke.
[00:34:48] But, yeah, I've had over a decade of experience using WSL2.
[00:34:56] And I've had all the way back to WSL1.
[00:34:59] And I've had varying degrees of experience with it, including having it completely brick my system before.
[00:35:06] That happened live, by the way, in 2020.
[00:35:11] But WSL2 has had a long way to mature, had to come and mature and before we go forward with putting WSL2 on here,
[00:35:19] I want to really briefly categorize the main reasons that I think WSL2 is the reason to go forward.
[00:35:27] The biggest single reason to use WSL2 is that it is an actual Linux kernel, actual Linux.
[00:35:35] It's not emulated. WSL 1 was emulated. It's an actual Linux kernel that runs in some magical way
[00:35:41] as next to the Windows kernel. So that is the number one way. That means it's actually Linux.
[00:35:47] That means it compiles for Linux, everything that runs on its Linux, the same packages work.
[00:35:51] The second biggest reason to use WSL 2, and this is something that I learned very late in the game,
[00:36:00] WSL2, there are operations that will still work because they'll be translated over to Windows.
[00:36:08] For example, from WSL2, you can start command line operations.
[00:36:15] So one of the best reasons to have a shell is you want to open up some application from the shell.
[00:36:20] Let me give you an example of that.
[00:36:22] GitBash is a suggestion.
[00:36:24] And a lot of people use Git Bash.
[00:36:28] Yeah, it helps you learn Bash by learning Git Bash.
[00:36:30] OK.
[00:36:32] It's still-- and that's on a Windows machine.
[00:36:35] It takes no extra resources at all.
[00:36:36] WSL2 consumes a considerable amount
[00:36:38] of additional resources on your machine while it's running.
[00:36:42] So that would be one reason to not do it.
[00:36:44] But one of the number one reasons that I didn't like WSL2
[00:36:47] was for a long time, I thought that it
[00:36:50] was completely separate from Windows.
[00:36:52] So I couldn't do fancy things like firing up something from the shell.
[00:36:58] So one of my favorite things to do from the shell is to integrate graphical things with terminal things.
[00:37:04] Let me give you an example.
[00:37:05] I would be browsing the web really quickly using Lynx or W3M.
[00:37:11] And I would be using a terminal for all of that and scanning through stuff much faster than I would with a web browser.
[00:37:16] I have a whole video on that.
[00:37:18] Please go see that video.
[00:37:19] It's one of my first videos.
[00:37:20] It's a very, very, very popular video about how to browse the web using a text-based-only
[00:37:24] terminal and why you would be crazy enough to do that.
[00:37:26] And occasionally, you would come across a web page that would not be able to display
[00:37:34] without JavaScript or something, and then you would curse it out, and then you would
[00:37:37] proceed to open it with your web browser.
[00:37:39] Well, with links, it's a single key press.
[00:37:42] You press a dot, and what it does is it opens up the graphical web browser for that page.
[00:37:48] But that did not work originally with WSL2, and it works now.
[00:37:54] So I can't remember why, but for some reason, WSL2 has gotten smart enough
[00:38:00] to translate certain commands that relate to the file system
[00:38:06] and to pass over those commands.
[00:38:08] So things like open, like open this file, open this graphic file.
[00:38:13] Another good example would be all of the stuff that you do with GitHub.
[00:38:17] So a lot of times with GitHub, if you use the GitHub command line tool, the GH tool, you'll open it up and you'll say get auth login, and it will give you a code that you need to paste into your web browser, and it will pop open your graphical web browser, and you'll put that stuff in there.
[00:38:31] So if you're doing anything that interacts a lot with OAuth, OAuth has to have a web browser to do anything.
[00:38:42] Because frequently you want to open up a graphical application from your Windows machine, host machine, and if you have a VM, if you have just a Linux VM, it does not do that unless you're running a graphical VM, in which case the entire thing, including all the GUI, is running in the VM, so you better have a beefy computer for that, then it doesn't work.
[00:39:02] But WSL2 and GitBash both have the level of integration with the host operating, Windows
[00:39:10] operating system, that you get the benefits of all that from the shell.
[00:39:13] So that makes it a much more usable, customer, user-friendly, casual system.
[00:39:20] And obviously, when you pick, these decisions are based on the system you want to use to
[00:39:26] work and have for pleasure and for work and not necessarily to serve up your webpages.
[00:39:32] are all the other things you would want to do on a headless, you know, Linux machine in the cloud,
[00:39:36] right? So you want to have access to it, right? I want to be able to spin up a graphic application
[00:39:43] on occasion. Like maybe I want to open up, you know, a sound editor or something like that. And
[00:39:49] with WSL2, you can do that. With Git Bash, you can do that. You cannot do that with a virtual
[00:39:54] machine. You cannot do that with a container without a lot of hassle. You can do it with a
[00:40:00] But you just have to mount every single device all the visuals all the with the Windows card
[00:40:05] They mean the video card everything in order to do it if you want to hand it over like that
[00:40:09] So things like XDG open will actually work
[00:40:13] XDG open under WSL 2 is the same so the equivalent of XDG open which is standard on most Linux systems
[00:40:21] And so by the way, that's an X only application, right?
[00:40:25] So XDG Open only opens X applications, and most modern Linux systems don't use X anymore.
[00:40:32] So they have another version.
[00:40:33] There's a different name for it.
[00:40:36] But it will also open things, right?
[00:40:38] On a Mac, if you use Open, it will open and it will use whatever the standard opener is.
[00:40:43] And I actually have a script called Open that will detect what system you're on, and it
[00:40:47] will open it.
[00:40:48] You know, if it's a URL, it'll open it.
[00:40:50] If it's a GitHub repo, it'll open it.
[00:40:52] You know, and it just, you know, basically does what you want.
[00:40:55] that it keeps you fast um and there are definitely ways of opening a web browser uh on wsl2 so i
[00:41:02] already know that wsl2 got me past that problem because they did it in 2021 back when i was
[00:41:08] streaming really a whole bunch so i'm going to go ahead and go with wsl2 and back then
[00:41:14] i mean i i have videos of me throwing all kinds of shade at wsl2 for doing me wrong
[00:41:21] and everybody convinced me that those weren't problems anymore and so i tried it and i ran
[00:41:25] WSO2 for a solid year without any real issues. So I'm gonna go ahead and try that again. I'm gonna read
[00:41:31] some of the comments from the chat for a second here. I am recording this for YouTube, yes.
[00:41:36] Honestly, apart from gaming, wouldn't you consider installing and using a Linux distribution instead
[00:41:41] of using Windows on a desktop PC? Never. I would never ever recommend to anyone to run Linux as a
[00:41:48] a desktop PC, I believe Windows is vastly superior to Linux in the desktop arena. I mean, there's just
[00:41:57] no comparison to me. After 30 years, though, 35 years of using Linux in any, every different
[00:42:03] possible form, the, the idea of using Linux, the Linux as my desktop graphical gaming and video
[00:42:11] editing system gives me chills. There's no way I would ever use it. Linux has come a long way,
[00:42:18] but it is so bad. It is absolutely disastrously bad for all of the things that people care about.
[00:42:28] They'll say, well, I got it running just fine. Yeah, but how much time did you honestly spend
[00:42:33] trying to get whatever your favorite game is to work? Somebody told me this, and I actually tried
[00:42:40] it. I put a Linux machine on and I needed to play my favorite game at the time was Zwift,
[00:42:44] right? We spent a full day, a full day, at least 13 hours of streaming trying to get Zwift to work
[00:42:52] with any number of the five different, you know, compatibility layers to do it. And all of them
[00:42:59] failed miserably. When we finally got it to work, it was so fragile that if Zwift had an update,
[00:43:05] I would have to go through the whole entire thing again. So y'all may have had much different
[00:43:11] experiences with it than I have, but my personal experience is that I will never, ever put myself
[00:43:18] through that level of pain, suffering, and wasted time. You cannot play Witcher 3 on Stream Deck.
[00:43:25] The end. You cannot play Zwift on a Linux machine. The end. Do you know how much time it took me
[00:43:34] to set up my streaming properly. In fact, when the Primogen, when the Primogen was streaming at
[00:43:39] first and he had screen ripping because he started streaming from Linux and he had all the same
[00:43:43] problems that I knew about that I had to get over. And I sat there and I watched him with 4,000 people
[00:43:48] watching his stream. And I was going, he still has screen ripping because he hasn't changed the
[00:43:53] settings in his NVIDIA driver because he's got the wrong driver. And you play Witcher 3 on your
[00:44:00] Stream Deck after messing with a ton of crap, probably. Yeah. Or you put Stream Deck, did you
[00:44:06] put Stream Deck as your base OS for the whole thing? It's easier now to play games ever from
[00:44:13] Steam. I agree it is. I agree it is. It's definitely much, much easier. It's still not going to be as
[00:44:19] performant and good as running those games on Windows for which they were developed. You will
[00:44:25] never hit parody with that. You'll always hit parody, but the Linux people are constantly
[00:44:32] chasing the stuff that's coming out officially from Windows. Today it's a one click and it
[00:44:39] works. Gaga count and here's launcher and click Witcher free, wait and play and done.
[00:44:43] It really isn't. And I am so tired of Linux people telling me how easy it is and then actually
[00:44:50] testing it and finding out how big a liar they are. I am sick of being lied to by Linux people
[00:44:56] who say, oh, it's so easy. You just have to go do this and this and this. And it never is true. So
[00:45:03] I'm talking to the YouTuber out there who's watching me. I'm giving you permission to tell
[00:45:08] them just you don't want to do it. It's your control. I'm speaking to you. I'm not speaking
[00:45:14] to all the Linux people that are going off in the chat in the comments who are going to tell me,
[00:45:19] oh, it's super easy. There's never been a thing. It's easy. It's like you don't even know which
[00:45:24] version to run. It's like over the last year, there's been probably three different ways to run
[00:45:29] videos, games on Linux, and you have to keep up with all that stuff. You know what you can do
[00:45:33] instead? Just run it on Windows. Just run it on Windows. Just run it on Windows. Just run your
[00:45:41] games on Windows. Use the best tool for the job. The best tool to run any video game is Windows.
[00:45:49] The end. The end. And there's overwhelming evidence of this, including all the releases
[00:45:56] from every single major AAA gaming studio. That's the end of my rant here. I'm telling you,
[00:46:03] if you use the best tool for the job, the best tool for gaming is Linux. The best tool for video
[00:46:08] editing is, I'm sorry, did I say that? I said, somebody's going to clip me on that. That's fine.
[00:46:13] But I said the wrong thing. The best tool for gaming is not Linux. The best tool for gaming
[00:46:19] is Windows. The best tool for sound editing and production and DJing is Mac. The best tool for
[00:46:26] work is a Mac, usually always for the kind of like generally work that you want to do. That's
[00:46:30] why they give Macs to everybody. The best tool for server hosting, for microservices, for Kubernetes,
[00:46:37] for running Slurm is Linux without a desktop. In fact, Linux desktop isn't the best thing
[00:46:43] for any reason at all. The only reason to use Linux desktop, period, is because you don't want
[00:46:50] to say that you're running a Windows machine or a Mac. That's it. And I know this because I lived
[00:46:56] this. I raised my toddlers. I've done this. I've played this game and I am done with this game.
[00:47:02] I made every one of my kids watch Strong Bad in the kitchen on a Linux machine because I
[00:47:09] banished Microsoft and Windows products and Apple products from my home for five to 10 years.
[00:47:15] Well, my family, I have a picture of my first wife winning her first eBay thing using Firefox
[00:47:22] on a Linux machine running as our main family PC. I get it. I get it. I get why people are saying
[00:47:29] that. But managing all of that stuff and having it be compatible with everything that was there,
[00:47:34] I had to give up all the educational software for my kids, and that's why we went back to Windows.
[00:47:39] They had a bunch of CDs that they played.
[00:47:41] Their educational software was really great stuff, and I had to give all of that up because it wouldn't run on Linux.
[00:47:47] All right, there we go.
[00:47:50] So clip it and ship it.
[00:47:52] Somebody's going to clip me saying that, and then I'll just delete the clip and take it down.
[00:47:55] Yeah.
[00:48:02] Yeah, I think that the advantages that people have made by getting all the stuff to run on Linux are really great.
[00:48:07] I also think it's a waste of time.
[00:48:08] Why are you doing that?
[00:48:12] Seriously, why are you spending so much time getting all of these games to run on Linux?
[00:48:16] What's the reason?
[00:48:18] What is the reason?
[00:48:19] Someone please tell me the reason.
[00:48:22] I want to know the reason.
[00:48:28] I legitimately want to know the reason.
[00:48:31] OpenBSD is the best OS as far as I'm concerned, but it doesn't get anything done.
[00:48:35] I just, it's just as a design, it's the best OS as far as I'm concerned.
[00:48:40] Because you can.
[00:48:42] I don't get it.
[00:48:45] If you really press most people, the answer is because they don't want to run a Microsoft
[00:48:51] or an Apple product.
[00:48:52] So if there's only one question you have to answer for yourself if you want to make this
[00:48:58] decision.
[00:48:59] Are you so hateful towards Microsoft and Apple products
[00:49:04] that you refuse to run them in your home
[00:49:06] so that you will suffer in order to run Linux instead?
[00:49:10] Or are you okay with Windows and Mac existing
[00:49:15] and are you willing to run those?
[00:49:17] That's the only decision you need to make.
[00:49:19] That is it.
[00:49:21] That is the only decision.
[00:49:23] Are you okay with Windows and Apple,
[00:49:26] you know, those operating systems existing?
[00:49:29] If you are in the camp that refuses to give them money, and I was for 10 years at least,
[00:49:34] if you're in the camp that wants a refund that's going to go storm the doors of Microsoft
[00:49:39] because you want a refund because they forced you to pay for it even though you didn't want
[00:49:43] it on the machine, if you are that person, then yes, go for it.
[00:49:52] Suffer through Linux.
[00:49:53] Put Arch on everything.
[00:49:54] Go for it.
[00:49:56] I support you.
[00:49:57] I was you.
[00:49:58] But if you no longer give a shit and you just wanted to work fast so you can spend time riding
[00:50:05] your bike, playing your guitar, and spending time with your family instead of fucking with your
[00:50:08] computer, then welcome to my position. Because that's where I am. I don't care. Also, Steam for
[00:50:17] Linux works on its own. Yeah. Do you know how many claims I've had from Linux people that things just
[00:50:22] work and then they don't actually work? For example, the 13 hours I lost trying to get Zwift to work
[00:50:28] and everybody said how easy it was going to be. And every one of those people was wrong. And I
[00:50:32] proved them wrong together while we were all there. And I went, huh, huh, huh. It's like,
[00:50:41] we're going to have to work on that. Yeah. I just spent 12 days, hours of my life proving you wrong
[00:50:47] just so that you could turn around and figure out what you need to test it some more. I don't want
[00:50:52] to be that guy. I don't want to be that guy. I want a least path of resistance. Okay. I think
[00:50:56] we're done on this topic uh yeah to each his own exactly the problem is is there's a lot of people
[00:51:03] who don't believe that they don't believe to each his own they believe to each my way they want to
[00:51:08] make you do it and they want to make you concede that it's better zip was a nightmare let's ask
[00:51:17] cloud to fix it uh they do everything for me yeah you're comparing one game to all the other games
[00:51:22] No, I'm comparing one game that my favorite game would not work, and everybody claimed that it would.
[00:51:28] So, look, if you don't want to have to go through the problem of deciding whether your game works or not,
[00:51:36] and I just had to go through this again, I have to make this point.
[00:51:39] The reason that there is a Windows computer sitting right here today is because on my Mac,
[00:51:44] I ran Crossover, and it was going to ask me to buy it.
[00:51:46] Crossover uses all the same technology that the Linux compatibility stuff uses.
[00:51:51] It's the same exact technology. It's just implemented differently for Mac because Mac
[00:51:56] is Unix under the hood. Okay. So I had, I pulled up, I pulled up steam. I pulled up battle. I pulled
[00:52:02] up battle nets and all of my stuff, overwatch wouldn't work. A classic. Wow. Wouldn't work.
[00:52:08] Witcher wouldn't work. Dota two works because from the beginning that was written for everything.
[00:52:12] Team forces two works fine. But half of my main games that I wanted, weren't going to run at all
[00:52:18] on a Mac. And I said, well, damn, what am I going to do? There's like five different proprietary
[00:52:22] things you can buy out there. So I ended up buying, I ended up buying, almost buying crossover. In
[00:52:28] fact, I was getting, it was running out of sample days to see if I could do it. This is exactly what
[00:52:32] happened. I put, I got Overwatch to work, but Overwatch was lagging like crazy. And it wasn't
[00:52:38] because I was streaming. It was because it had shader issues and it had to pump all this thing.
[00:52:44] I was doing stuff that was not intended by the original creators. And eventually I kind of got
[00:52:49] it to work, but it was still horrible and it was on the lowest settings. Some of it was limited by
[00:52:53] my machine, but most of it was limited by the fact that I was running crossover, right? Because
[00:52:58] Overwatch was not written to run under crossover on a Mac. It was written to run on a Windows
[00:53:02] machine, period. Period. So, you know, and then I went and said, okay, my days were running out.
[00:53:09] And I was like, okay, I've got to run. What am I going to do? I want to have, I want to have
[00:53:13] Witcher work. So let's give Witcher a shot. The entire value of the Witcher 3 game is the immersion
[00:53:20] and the ray tracing and all the amazing stuff that was there. As I pulled Witcher up and I got it to
[00:53:25] run and it would lag out all the time because it has to load the shaders and stuff. And this was
[00:53:29] without anything else running on the machine, nothing. I wasn't streaming or anything. And I
[00:53:33] went in there and I got it to work and I was like looking around and every time he would fade out,
[00:53:37] I would see the little pixels that is in him. And then, and then I looked at him and I tried to set
[00:53:42] the settings up and it was, he looked horrible. I was like, this GPU is horrible. I was like,
[00:53:46] but I know this GPU is decent because I've seen this GPU do other things better. I was like,
[00:53:51] so I tried to tweak the GPU settings. I got it better for a little bit, but then it was lagging
[00:53:55] out. And I was like, okay, this computer is underpowered and it's even more underpowered
[00:54:00] because it's doing it using this crossover thing, but it works more or less. But there's no way I
[00:54:05] would want to sit and watch that whole thing. And there's definitely no way I could have streamed it
[00:54:08] at the same time. Then I knew Christmas was coming up and I was like, okay, because I know that those
[00:54:13] things aren't going to happen and that I can't really technically stream from my Mac and also do
[00:54:19] anything else. I mean, I have proven that can be done as long as this is kind of like coding stuff.
[00:54:24] So I, what did I do? I went ahead, I went ahead and I bought a machine. I bought, I bought this
[00:54:30] killer app machine, machine, which I've already demoed on earlier in the video. You can go back
[00:54:34] can look and I can show you all the specs on the thing. I pull it up and this thing, this computer
[00:54:39] for $2,000 will run every single game that I cared about that I tried was going to use crossover
[00:54:45] with ultra or epic settings, the top settings, including GTA when it comes out. For what? For
[00:54:51] $2,000 and the fact that I left Windows 11 here and I swallowed my pride and I used Windows instead
[00:54:56] of caring about whether I have a Linux machine on my desktop? Why would I ever throw that away?
[00:55:03] Especially since I can have Linux and Windows at the same time without even rebooting.
[00:55:07] I bought an extra NVMe drive, but it wasn't so that I could run Linux desktop.
[00:55:12] It was so that I could run Linux headless, and I could do PyTorch, and I could crunch my machine learning models on there.
[00:55:19] That was the only reason, because I value Linux as an operating system.
[00:55:24] I just don't value Linux desktop.
[00:55:26] I think Linux desktop is a disaster.
[00:55:28] It's a disaster.
[00:55:30] And if you haven't been following the Linux desktop worlds for 35 years like I have,
[00:55:35] then you might not appreciate how big a disaster the Linux desktop graphic world has been.
[00:55:41] It has been so bad.
[00:55:45] From the entire team walking out over the move to CSS for styles under the desktop things
[00:55:53] to the switch between X and whatever the new thing is,
[00:55:58] They have never, ever figured this out, let alone the whole gaming aspect of it.
[00:56:04] And quite honestly, they never will because there are always more things to do.
[00:56:09] And if you want to spend your time fighting and improving X11 and Wayland and wasting your time on graphic desktop applications under that run only under Linux,
[00:56:21] Or then fine, do that.
[00:56:23] But just don't tell people who don't want to do that, that they're less than.
[00:56:29] Don't shame them.
[00:56:30] Don't make them feel bad about themselves.
[00:56:33] It's not that they can't do it.
[00:56:35] It's that they're choosing not to do it.
[00:56:37] And if they're choosing to use a Windows product or an Apple product and you look down on them
[00:56:42] because they're using something that you don't agree with philosophically,
[00:56:45] you're the bad person for judging them.
[00:56:48] Okay, let's move on.
[00:56:51] I'm tired of that. Because I was that guy, by the way. Can I just say this? I confess fully that I was that guy.
[00:56:58] In my 20s, I was that guy. Everybody who didn't use Linux for everything, if you use Windows or Mac,
[00:57:06] you were a part of the system, a problem in the system, and you were tantamount to a MAGA person.
[00:57:12] You were perpetuating this horrible system.
[00:57:18] And in my 40s, I was, not in my 40s, no, I've never been, I have never been so, so, so, so pro Linux desktop.
[00:57:27] No, I've never been, I've never been the guy, no, I ran, I ran Linux desktops, I ran, the closest, I've never been the person who says you should run Linux on your desktop.
[00:57:48] Sometimes you just want to get things done, and sometimes you want to reconfigure and play with Linux.
[00:57:52] So, the last time I'm trying to substantiate that claim and be honest about it,
[00:58:00] because I'm always trying to be honest and authentic with you guys.
[00:58:03] I always am.
[00:58:04] The last time that I said that you should have Linux on your desktop only,
[00:58:10] that I would have told anybody else that, as opposed to me making it as a personal decision,
[00:58:16] was probably, I want to say, back in 2019.
[00:58:26] 2019 was when I started ending that.
[00:58:29] And to be fair, teaching someone to install Linux desktop on a laptop
[00:58:36] is different than recommending that that's what they do at home,
[00:58:42] especially for gaming, okay?
[00:58:44] So there's a subtle difference with that, and I want to be really clear on this.
[00:58:49] I have been, for my school, my first assignment was I gave them a brand new Acer laptop, $300
[00:58:56] or whatever, and I said, go put Linux on it.
[00:58:58] And they would run Linux on it in desktop mode because their purpose wasn't to game.
[00:59:05] Their purpose was to learn Linux.
[00:59:07] And that gave them a terminal for free.
[00:59:09] It gave them the option to look at a different alternative as a desktop.
[00:59:13] And then they would inevitably install six different Linux desktops onto the thing.
[00:59:18] I never once said that they should use that Linux desktop for gaming or for sound engineering or any of those other things.
[00:59:25] I just felt like that was an opportunity, the fastest opportunity for them to get Linux because it was under the hood.
[00:59:32] I'd be, if I were teaching the school today and those machines were available with Windows,
[00:59:38] you know, teaching somebody how to install Linux on a computer is important. It's an important
[00:59:45] skill, but I wouldn't have them, because if they only had the one computer, having them have a
[00:59:50] laptop, you know, having, having a $300 Linux laptop on the side is, is probably better than
[00:59:58] WSL2 under Windows. Because you're getting pure Linux, pure Linux power. And you're getting to
[01:00:05] feel what it's like to have a different desktop. I'm not suggesting you should never do that.
[01:00:10] I'm just suggesting that if you're going to do a Linux desktop, don't make that your primary thing
[01:00:15] unless your purpose is to learn Linux, in which case it's going to be a lot better. So for a
[01:00:21] school environment, it makes a lot of sense. For a school environment, it makes a lot of sense
[01:00:25] because they can't really break it, right?
[01:00:27] Windows can be broken in lots of different ways.
[01:00:29] So they can't really break that, right?
[01:00:32] But they're also not going to want to game on it.
[01:00:35] So that was one of the reasons we did it.
[01:00:36] So anyway, Windows Linux with WSL
[01:00:41] is what most people will want on their actual machine.
[01:00:45] A question coming in.
[01:00:47] What do you think of the private aspect of losing Linux, though?
[01:00:50] Although I think it's kind of like priorities
[01:00:53] this one, pointless analysis of tracking. I think trying to maintain privacy in any form,
[01:00:58] this is coming from a guy, I want to remind you, who in 2020 gave up his smartphones and for a
[01:01:04] year and a half used nothing but flip phones because I was so anti-privacy violation.
[01:01:09] So I'm telling you, I am a privacy advocate, okay? And I'm also telling you that I've given up.
[01:01:16] There's no way to protect your privacy in this world. And if you don't believe me,
[01:01:22] watch the documentaries about spycraft, which talk about anonymity and it being the single
[01:01:28] greatest thing to maintain during modern spycraft. Because you can't hide anymore. You can't do the
[01:01:35] Mission Impossible thing and even put a disguise on and not be identified. With AI, fly cameras,
[01:01:41] and all of the monitoring that's happening every second of the day, all the time, you can't escape
[01:01:46] it. You just, you can't. You cannot escape monitoring. It's always going to be there,
[01:01:51] even if it's from a satellite. So the idea of privacy today is kind of pointless. And I hate
[01:01:58] saying that. But that has been a casualty of modern life. We have sacrificed our privacy as
[01:02:04] humans. I hate saying that. I absolutely hate saying that. It sounds very defeatist. It sounds
[01:02:10] like I've rolled over. And I don't know what to tell you. I don't know what to tell you. I'm
[01:02:17] telling you, you know, my position on AI is complicated as well. This is probably not the
[01:02:23] place to talk about it, but Linux doesn't get you privacy. As soon as you put a browser on there,
[01:02:29] even Firefox, you've lost your anonymity. Brave was caught violating everybody's privacy.
[01:02:37] Firefox was caught violating everybody's privacy. Chromium was caught not maintaining their
[01:02:43] stuff. Chromium was caught not maintaining their stuff. So it was insecure. So this idea of security
[01:02:53] and privacy being greater than Linux, I think is a lie. Yeah. How is Lynx for privacy? Lynx has to
[01:03:01] use cookies to communicate just like everything else. So it sends cookies to everything just in
[01:03:06] order to those websites won't even open. The issue isn't the browser. The issue is the websites that
[01:03:12] require you to hand over your cookies information without them giving you what you want so
[01:03:18] you know those are those are other issues all right i'm gonna i'm gonna take a break after
[01:03:23] that pretty long rant um and we're gonna kind of regroup and when we come back i i promise we'll
[01:03:28] put some stuff on here but i feel like i feel like the rant and the conversation about what
[01:03:33] stuff goes where is important i know we're gonna lose viewers here who think that i'm just full of
[01:03:38] shit. There have been many, many, many people who told me that, you know, I'm out there. I mean,
[01:03:47] I just lost 11 viewers over this issue. For me saying that, don't worry about privacy. And we're
[01:03:55] like, oh my God, I can't believe you said that out loud. Every single Gen Z out there who doesn't
[01:04:00] want to be tracked just left me. And there's really great memes made about them. But they're
[01:04:07] just not being practical. I'm Gen X. I'm very practical. There are a ton of people. The entire
[01:04:13] Gen Z movement is all about privacy and all about we don't do social media anymore and all about
[01:04:21] we're taking everything back, all about we're going analog. It's like a straight up Gen Z movement.
[01:04:27] And so for a Gen X who's always been very practical and been beaten to death into being a realist,
[01:04:35] Nobody wants to hear what I have to say, so here we go.
[01:04:39] All right, so as we go back to configuring the terminal
[01:04:42] and we've decided that we're going to put WSL2 on here,
[01:04:45] I'm still kind of hesitating because there's a certain amount
[01:04:48] of pleasure and just setting up your native Windows stuff.
[01:04:57] Like before you even go down the Linux route,
[01:05:00] like I'm sitting here staring at my PowerShell,
[01:05:03] you know, Windows Terminal and thinking to myself,
[01:05:05] damn, there's a whole bunch of stuff
[01:05:06] that we could already do with just this.
[01:05:08] So the question really is, is it worth my time?
[01:05:11] I already know that I'm gonna use other terminals and stuff,
[01:05:14] but is it worth my time, you know,
[01:05:17] colorizing PowerShell, customizing it,
[01:05:20] putting those customizations in GitHub,
[01:05:23] and all the other stuff that I might do with it, right?
[01:05:27] Is it worth it to install Git Bash versus WSO2,
[01:05:29] which it really isn't because then it will end up,
[01:05:32] the bash command will end up conflicting with WSL2 when you do that.
[01:05:35] When you install WSL2 and you run bash, it will actually fire up WSL2 in a shell.
[01:05:39] And it does not do that if you have WSL2, get bash set up by default.
[01:05:46] You have two bash executables that live in different places,
[01:05:49] and you got to do some magic to make those work, which I don't entirely remember.
[01:05:53] So what I want to do now is there's like five or six Windows Package Managers,
[01:06:01] which is another thing I wanted to talk about.
[01:06:04] There's Chocolaty.
[01:06:05] Chocolaty comes from Scoop, or Scoop comes from Chocolaty.
[01:06:08] And then there's--
[01:06:09] Windows finally has a few decent package managers,
[01:06:12] and you have to kind of pick which one you want
[01:06:14] to use to install Windows packages.
[01:06:17] But the other question that's kind of inside of that
[01:06:18] is, like, how much package management
[01:06:20] am I going to do in Windows, right?
[01:06:23] If I was on my Mac, I would be using
[01:06:25] Brew to install all kinds of stuff,
[01:06:26] because I would be using a bunch of stuff
[01:06:28] from the command line.
[01:06:29] the question is, what do I need on Windows? Okay, so let's do that answer right now. The first thing
[01:06:39] you need on Windows is the games and the web browser and OBS and all of that. So how do you
[01:06:49] install that? Is it possible you could install OBS and, I don't know, you know, Battle.net from
[01:06:57] chocolatey and scoop possibly but why would you do that the path of least resistance my friends
[01:07:05] when dealing with stuff you're going to save the most amount of time using the thing the way the
[01:07:15] tool was designed to be used for most people that means playing games on windows that means
[01:07:22] installing games using the installer you downloaded from the site like Battle.net and using that to
[01:07:30] install. That means installing OBS by going to the website and downloading it and installing it from
[01:07:36] there, even though OBS is probably one of the ones that has parity with package installation because
[01:07:41] it's an open source product. The point is Chrome, you know, could you install it from a package
[01:07:46] manager? You could just go to the website and install it that way. The point is that you have
[01:07:52] to take each single piece of software and ask yourself, how are the most people going to install
[01:07:59] this thing? Because that path is going to be the one that's maintained the most reliably by the
[01:08:06] people who are supporting the product. And I have a little story about this that I want to throw in.
[01:08:10] There are no less than four ways to install a tool for Kubernetes. And I can't remember if it was
[01:08:22] uh, oh no, it was, uh, it was, um, uh, what's it called? It was, uh, Python. Um,
[01:08:32] it was, it was a, it was again, I can't remember. I, it's like, I set up the whole thing and I can't
[01:08:38] remember it now. It was a, it was a Python service to take on all of these, uh, different workbooks,
[01:08:47] you know that you have in python the um you know the all of that stuff and and there were like
[01:08:55] four different ways to install it and i actually went through live like in 2022 i think and i
[01:09:02] installed every one of them and they were all different in this particular case you could look
[01:09:08] at the the the code that resulted after you installed each one and i was able to determine
[01:09:14] that they were not installing the same thing they were i would flatten the installation and this one
[01:09:20] had different configuration values than this one even though all of them were listed on the
[01:09:23] installation page as being you know having parity and it was a lie so the moral of the story is
[01:09:31] find out how the most users do the thing or use the thing and follow that path as much as you can
[01:09:41] to avoid the most friction, conflict, problems, and waste of time. And that lesson in general
[01:09:52] applies across the board. You know, at a macro level, it means running a Windows machine to play
[01:09:57] games. It means running a Linux machine to be your server. Imagine running Windows NT for your
[01:10:04] web server. No, that's the Linux thing, right? Imagine, I don't know, imagine doing Windows or
[01:10:11] Linux for being a DJ. No, you would use a Mac for that. So at a macro level, but also at a micro
[01:10:17] level when it comes to package installation, think about how the thing is going to be used the most
[01:10:23] commonly because that's the thing that's going to be the easiest to stand out with, right?
[01:10:29] Yeah. So I'm going to go ahead and do a WSL install. I happen to know how to do this, but I'm going to make sure that my knowledge is still current because the last time I installed WSL 2 on a Windows machine was a year ago. And, you know, anything in the tech world is moving at the speed of light all the time. So I'm going to go ahead and ask a random Gemini agent, how do I get Linux on a Mac on a Windows machine?
[01:10:57] And I just want to make sure that my understanding hasn't changed too much.
[01:11:01] Yeah, open server.
[01:11:06] So we got some comments about how to install stuff.
[01:11:09] Get Linux on Windows machine is easy.
[01:11:11] WSL install and restart your PC.
[01:11:13] You can follow the step by Microsoft Learn WSL installation.
[01:11:16] Set up your Linux distribution inside Windows.
[01:11:18] Okay, I just don't want to have to do the reboot.
[01:11:27] standard push for running Linux on Windows. Windows subsystem Linux is the best.
[01:11:30] Virtual machines or VM. Yeah, I told you, you can't fire off Windows applications using that method.
[01:11:36] Full installation on dual boot. That requires a reboot machine if you want it. So, not doing dual boot.
[01:11:41] You're rebooting Linux is a horrible recommendation for beginners.
[01:11:48] I used to teach beginners to do that, and I can tell you for a fact that teaching a beginner to dual boot is a very bad idea.
[01:11:57] Either give them a laptop and let them install Linux on it and call it a day and pay an extra 200 bucks for a shitty laptop and put Linux, which we did last year, or, you know, run WSL2 or get a Mac and not put Linux on there at all and put it under a container.
[01:12:12] You like my new keys?
[01:12:19] Okay, fine.
[01:12:19] I don't necessarily like them, but that's okay.
[01:12:22] "Install Linux in a VM." You can't install Linux in a VM because then you can't use anything from the whole system.
[01:12:27] "Reboot is because of installing Hyper-V." Yes. We're going to go ahead and do the WSL install.
[01:12:33] And it won't force me to reboot right away.
[01:12:36] But I'm going to go. Windows 11 probably made this a lot easier than
[01:12:41] 10. So
[01:12:44] the info there is still a boot remaining. Yes.
[01:12:48] "Downloading Windows subsystem for Linux."
[01:12:52] KeyMoo doesn't work.
[01:13:01] KeyMoo is a Linux thing.
[01:13:03] There are a lot of people that normally at this point would recommend running Linux and
[01:13:06] then running Windows under Linux, but yeah, try to run GTA under that.
[01:13:10] Good luck.
[01:13:11] Do you remember the time somebody told me that, "Oh, I can use KVM for all of my virtual
[01:13:21] machine stuff on Linux and then I learned the hard way that it can't split the VM across like
[01:13:27] VMware could. VMware can share the virtualized GPU across multiple VM, but with a VM in the host
[01:13:35] system, guess what can't do that? KVM. KVM requires a dedicated virtual machine. This is, you know,
[01:13:42] Linux black box kind of deep, deep magic stuff that we're talking about, but it was one of those
[01:13:48] times when everybody was telling me, yeah, just use KVM, you don't need VMware. And they were wrong.
[01:13:54] They were all wrong. And I wasted eight hours trying to get it to work. You know what they
[01:13:58] ended up telling me to do? They said, you need to buy another GPU so you can use KVM properly.
[01:14:02] I'm like, how about I just use VMware and split my load across both the GPU,
[01:14:08] running the host system and the GPU of the thing? Because VMware can do that and KVM can't.
[01:14:13] But they didn't know that until we ran into it together. And I had a suspicion about it,
[01:14:17] but I didn't say anything. What I'm giving you permission to do is to do your own research and
[01:14:22] make your own conclusions and to dismiss the absolute. Anytime somebody comes at you very
[01:14:28] absolute about their conclusion, it usually means that you can test it without a problem.
[01:14:34] And that includes from your AI. If you're not testing every strongly worded opinion from your
[01:14:40] AI, you're going to end up very sad. So it's just a good habit to get into, whether it's with people
[01:14:47] or with with products that's just because not just because I'm a grouchy Gen X
[01:14:51] that's just critical thinking make your own conclusions do your own research
[01:14:55] take in opinions and then make your own all right so yeah yes okay so oh the
[01:15:06] rootkits
[01:15:08] Kubernetes records yes okay good that's fine so next we already know we're
[01:15:16] getting a WSL on here, but before we do the reboot, which I'll do after this video is over,
[01:15:22] let's think about what other things we need on here, right? Well, the first thing I need is they
[01:15:27] need a terminal besides this terminal. This terminal is perfectly fine if you want to use it.
[01:15:31] You can change the settings, and I've done this so many times. You can go pick your theme. You have
[01:15:39] dark. I want a dark theme. You can get, oh god, what else do we got? I think if you want to change
[01:15:51] your actual theme, which I have saved in my repo somewhere. Here's a question. Do I want
[01:15:57] Do I want Git on my Windows machine?
[01:16:11] Do I want Git on my Windows machine?
[01:16:27] Never use the .0, yeah.
[01:16:30] Yep, yep, yep.
[01:16:33] Open the JSON file.
[01:16:39] Where's the themes?
[01:16:43] Where's all the themes you can pick from?
[01:16:45] There's...
[01:16:57] Huh.
[01:16:58] It's in the color section.
[01:17:06] Rendering, capability, actions, extensions, appearance.
[01:17:13] Dark, FLS tab.
[01:17:16] Pin.
[01:17:20] The big color scheme tab.
[01:17:23] Hey, Adri, how you doing?
[01:17:26] Um...
[01:17:28] The big color scheme tab.
[01:17:34] Um...
[01:17:38] Um...
[01:17:51] Vintage VS Code Dark.
[01:17:56] Solarize. Oh, I miss Solarize. I made a whole business model after Solarize.
[01:18:05] Solarize is kind of broken though.
[01:18:09] It is. It's kind of broken as a color scheme because it cheats in order to provide those colors.
[01:18:15] We could add a new one though. I'm going to add Groovebox Dark.
[01:18:20] I actually have a Grooveboxdark as one that I can go add.
[01:18:27] I'm going to add it, just in case you want to use this.
[01:18:30] I'm going to go ahead and add this, because I am
[01:18:32] going to use my terminal here, sometimes
[01:18:33] when I don't want to use wasterm.
[01:18:35] So I'm going to go ahead and add it.
[01:18:36] Left two glasses one.
[01:18:42] You know, so I actually think it's in my GitHub,
[01:18:50] Which is one of the reasons I was asking, y'all, y'all, should we put Git on Windows itself?
[01:18:58] Actually, if you're going to put Git on Windows itself, you get Git Bash by default.
[01:19:03] That might have changed with Chocolaty and Scoop and all that jazz, though.
[01:19:09] Does Scoop come on it?
[01:19:11] Actually, if I use any of those things, I'm going to use the Package Manager that comes with Windows.
[01:19:15] GroupX Dark is what I use.
[01:19:18] I love it.
[01:19:18] I'm trying to get it on here.
[01:19:20] And I actually have it in my github, that's what I was asking.
[01:19:26] It's in my .files, rvxrob/dot.
[01:19:32] Take a break Tatsu, take care.
[01:19:37] So at one point I had Grooveboxdark in here with everything else.
[01:19:43] I think I might have gotten rid of it.
[01:19:50] was term got my my fonts my size for everything is so small you guys can't see
[01:20:02] it because yeah I know I know I some place in my dog files I have a I have a
[01:20:13] a leftover Groovebox dark JSON file for Linux,
[01:20:22] actually, for Windows.
[01:20:26] I think it might be in the boost image.
[01:20:30] I think it might be in the boost image.
[01:20:31] Let's go check.
[01:20:33] The boost has docs, beginner, new, shared.
[01:20:36] It's like kind of a one-off.
[01:20:37] It doesn't really make sense to be with everything else.
[01:20:42] So that's why I'm having a hard time finding it.
[01:20:47] Yeah.
[01:20:49] Why does it have six package measures?
[01:20:52] That's a good question.
[01:20:56] Groovebox.
[01:20:58] Let's just see what the internet says.
[01:21:03] Park on Windows.
[01:21:04] OK, this Windows is hygienic.
[01:21:12] I think Git less Windows, yeah, is more proper Windows.
[01:21:18] Yeah.
[01:21:20] Plus, I don't want it to get in the way of Bash and all that stuff.
[01:21:23] I know for a fact that when you install Git from the website,
[01:21:32] the origin of the Git website, it automatically installs MinGW version,
[01:21:38] a tiny MinGW running Git Bash.
[01:21:42] that's how it does it because git cannot run without Perl it can't so it's a number of the
[01:21:49] dependencies that's why it does it that way you're actually running a teeny tiny little linux
[01:21:54] microdistro mget mingw when you're running git bash it's a tiny little environment in order to
[01:22:01] run git that might have changed though they might have compiled git to work for you install it with
[01:22:07] chocolate or something like that and they've gotten around all those dependencies but i don't
[01:22:09] see how because they would have to have a Perl interpreter inside there and a bunch of other
[01:22:14] stuff. So I think git probably doesn't belong on my Windows system. It belongs in WSL, which is a
[01:22:22] Linux system. So yeah. Oh, here we go. That wasn't too hard. Grooveboxdark.json file.
[01:22:31] So we're just going to copy that raw file, copy that, and put that into my PowerShell.
[01:22:41] This, I think, changes it for everything instead of just PowerShell.
[01:22:49] Let's see how we're seeing them. Wait, what?
[01:22:52] Open the JSON file.
[01:22:54] Notepad.
[01:22:57] Notepad.
[01:23:01] Just once, please.
[01:23:02] Oh, shit.
[01:23:03] Command prompt.
[01:23:06] Color schemes, themes.
[01:23:08] Wait, that's like the entire thing.
[01:23:11] This has never been easy.
[01:23:15] VS Code is super easy.
[01:23:16] If you're using VS Code, this is why I said kids do it, because they wanted colors.
[01:23:20] If they go on VS Code, you just drag and drop.
[01:23:23] You drag down, you find the color you want, and it works.
[01:23:25] It's all plugins and stuff.
[01:23:27] It's very, very easy on VS Code.
[01:23:28] It's not so easy on Determinal.
[01:23:31] But you don't need to do it with VS Code.
[01:23:32] I don't know if I want to show people how to install VS Code.
[01:23:42] I love NoPay++.
[01:23:43] This might be a good chance for us to install VS Code.
[01:23:45] I am going to use VS Code on here.
[01:23:47] So let's go ahead and install VS Code.
[01:23:50] Installing VS Code on a Windows machine
[01:23:51] is pretty much mandatory.
[01:23:54] And if you're a beginner and you want to code
[01:23:56] and you don't want to get into all the other stuff,
[01:23:58] VS Code is a really great way, especially if you're young.
[01:24:01] if you're young and you don't want to be hassled by all the rest of it install vs code and install
[01:24:05] git bash you're good to go and i did that for 10 years i taught hundreds and hundreds of people
[01:24:11] using nothing but that including entire after school programs because it was just the easiest
[01:24:18] to set up it was just to set up you can use one yet but i'm not going to use one yet because
[01:24:24] again i'm going to pretend you're a 12 year old in an after school program right so you have windows
[01:24:29] and you want to get coding, so download VS Code for Windows.
[01:24:33] Download VS Code, and this is not an opportunity for everybody to come in here and throw shade at VS Code.
[01:24:41] More than 70% of all developers use VS Code to do their development, including tons of professionals, including those who have PhDs.
[01:24:48] You know how I know? Because they keep asking for the VS Code extensions on our servers at work,
[01:24:53] and they're 40-somethings doing PhD machine learning work.
[01:24:58] So, you know, so I'm going to go ahead and install VS Code.
[01:25:03] If you have Windows and you want to be a developer,
[01:25:06] only because I want to open VS Code instead of Notepad.
[01:25:09] Even though Notepad and No++ are totally fine, totally fine,
[01:25:16] the good ones use Vim on Windows.
[01:25:18] The good ones use Emacs Graphical, right C-Bear?
[01:25:23] I'm sorry, I'm just teasing you a little bit.
[01:25:25] just know enough tech tools to get your job done. Right. And knowing VS Code, knowing how to use
[01:25:32] VS Code on a Windows machine is probably worth having. I definitely will need to pull it up
[01:25:36] during the boost because I'm going to be talking about it a lot. I remembered. See? See where I
[01:25:42] remembered you. Which is not bad, by the way. If you like graphical interfaces, let's see. Open,
[01:25:48] add, open to code with Windows Explorer, context open with code. Yes.
[01:25:53] created the stockpack on, no, install github co-pilot CLI now, oh
[01:25:59] God, as the co-pilot path and downloads about of github and after visual studios installed
[01:26:07] Having github co-pilot CLI is probably a good idea. You use VS code every day, but it's back in, but it's back in Monaco
[01:26:16] But you're talking about your theme, how you doing Talisman?
[01:26:23] VS Code does have Vim binding extensions. The problem is that Vim binding extensions are not
[01:26:30] the same as Vim. The most powerful thing in Vim is the filter command. And if you don't know what
[01:26:34] that is, I have videos on this. So please stay tuned. We'll learn Vim the right way. And I
[01:26:40] actually have a video on that. So you can go look for my video, look for using Vim the right way.
[01:26:45] The most powerful thing about Vim is also the thing the fewest amount of people actually know.
[01:26:50] And that's how to use Vim filters, how to leverage Unix filters within Vim.
[01:26:54] And you cannot do that from VS Code.
[01:26:57] You might be able to use JK or HJKNL to navigate, but that's it.
[01:27:02] And that's not even the beginning of the cool things you can do with Vim.
[01:27:07] So, okay, you can do the simultaneously monitor of editors, of mistakes, and all that great stuff, right?
[01:27:18] Okay, so VimFilters is a phase, right, and it usually comes later.
[01:27:25] Oh, thank you for the cheers.
[01:27:27] Talisman, thank you so much for those cheers, the bits.
[01:27:30] I appreciate that.
[01:27:31] I really do.
[01:27:32] Thank you so much.
[01:27:34] Let's say you use GetBasterVS code.
[01:27:35] What are you using as a terminal mediator?
[01:27:37] I'll show you.
[01:27:38] It uses the built-in terminal automatically.
[01:27:43] Yeah.
[01:27:47] In fact, let's go ahead and set that up.
[01:27:49] Let's go ahead and set up what I would have you set up
[01:27:51] if you were in my after-school program in middle school.
[01:27:55] OK?
[01:27:57] Yeah.
[01:27:59] So do we need GitHub Copilot CLI now?
[01:28:01] Install GitHub Copilot CLI when I first run Copilot.
[01:28:04] Don't add the Copilot extension.
[01:28:06] I do think you should have the Copilot CLI eventually.
[01:28:09] You just don't need it right now.
[01:28:12] I think the first time you're on Copilot is probably better.
[01:28:14] That's a new prompt.
[01:28:15] never seen that before. It does give you a dopamine boost. I agree, statistics. It does.
[01:28:21] Until you try to go do the other things you're used to, and then you get denied. And then you're
[01:28:24] like, argh! That's why I mention it. Because you think you're in VI, which tricks you just enough
[01:28:31] to know that you're in VI, and you try to do the things that you're really used to. And I use
[01:28:35] filters constantly, and all of a sudden, no filters. So anyway, install. We're going to install VS Code.
[01:28:45] Yeah, so, and I've just decided that we're going to actually enable git on here.
[01:28:51] We're going to put git bash on here.
[01:28:52] Again, this is my standard install for any student in a school who I cannot have do anything else.
[01:29:02] And by the way, to do this, they have to have admin access.
[01:29:04] I've had three or four students in after-school programs not be able to install VS Code
[01:29:09] because they didn't have admin rights for their computer.
[01:29:12] But what I'm trying to show you, one of the best things about this is you can actually do game development doing this.
[01:29:19] Just having VS Code.
[01:29:20] You know, I should do some videos on the game development.
[01:29:24] We really should do some videos about fun game development.
[01:29:29] It is so, I really kind of miss it, actually.
[01:29:32] When I was teaching in the school at Skillstack, and I would teach after school programs about game development,
[01:29:38] and you would not believe some of the amazing games people came up with.
[01:29:41] The first thing you do is you install VS code.
[01:29:43] Second thing, you install Git Bash so you can save your stuff on Git.
[01:29:46] But even then, you don't really need it.
[01:29:47] You don't really need to have a GitHub account if you don't want.
[01:29:49] That's even secondary.
[01:29:50] And you have to have Chrome or some web browser you can preview everything in.
[01:29:54] And then you install Pixie, Pixie.js.
[01:29:57] And I'll talk to you about Pixie in a second.
[01:30:01] But it allows you to put this really, really amazing web-based game front end
[01:30:06] that is tantamount to Game Maker.
[01:30:10] And I used GameMaker for three or four years.
[01:30:12] That's what got me started, is I was teaching summer camps about game development with GameMaker.
[01:30:15] And then I moved on to teach Pixie because it was supportive and everything.
[01:30:25] And it was robust enough to handle most of the type of platformer games and things that people want.
[01:30:31] First-person shooters, not first-person, but third-person shooters and stuff.
[01:30:34] So it's actually really fun.
[01:30:36] And for Christmas, I might end up making videos about it.
[01:30:38] I sometimes make videos about doing C, but I think doing game development with Pixie.js would be really, really fun.
[01:30:45] One of the greatest things about Pixie.js game development is that you can just make a game really quickly and that you can actually get a job.
[01:30:53] Because it's all web-based game development, I've known several people to get really great jobs doing miniature banner game development that runs in the browser.
[01:31:04] So people would have an ad, and that ad actually runs.
[01:31:08] The ad is a game.
[01:31:09] It's a miniature game.
[01:31:10] And so they've gotten jobs as niche game developers who are making advertising that is also a game.
[01:31:17] And the number one, in fact, it's one of the reasons I used to sponsor the maker of Pixie.js,
[01:31:23] because he was being sponsored by other advertisers and people
[01:31:29] because they wanted to have these tiny little games that are not going to win any awards,
[01:31:33] but they're just really fun, and they're super easy to make, and you can put them anywhere.
[01:31:36] In fact, I think when we do the Pixie thing, I'll actually, we'll find a game.
[01:31:42] I have a side story about this.
[01:31:44] I had a kid who went on to get a full scholarship for college and everything,
[01:31:48] just an absolutely amazing technologist, self-taught.
[01:31:51] But I taught him how to do the Pixie stuff, and they had to shut down his game during school
[01:31:57] because his game was so popular that it took over.
[01:32:01] Anybody who was sitting at a computer that had web access would go to play the game.
[01:32:05] And he, the game, the principal of the school came to him and said, can you please turn
[01:32:09] this game off during school hours so that we can get people's attention again?
[01:32:15] Because he made this crazy addicting game that has just a dot and a bunch of things
[01:32:20] that's just a platform where you can get around.
[01:32:22] I'll show you the game.
[01:32:23] It's super addictive.
[01:32:24] But you can make those kind of games pretty easily and it's really fun.
[01:32:28] So, and again, all you need for that is VS Code Studio, Chrome, and PixieJS, the end.
[01:32:35] If you want a place to store it and to host your web services, you can do that for free on GitHub.
[01:32:39] So there is still a reason to get GitHub.
[01:32:41] Launch Visual Studio.
[01:32:43] Okay, we're going to go ahead and do this.
[01:32:45] Yeah, that was a fun one, too.
[01:32:49] Oh, wow.
[01:32:51] Welcome to VS Code.
[01:32:53] Sign in to use GitHub Compilot.
[01:32:55] This is new.
[01:32:58] this is new this this actually inspires people to sign up for github okay so I
[01:33:05] really like this and and I just have a problem with this because I had kids that
[01:33:09] were ten nine years old who had to sign up for github and they have the other
[01:33:11] mom approve it because if they're under 13 technically they can't so this is
[01:33:17] really cool so we're gonna go ahead I love that it sends you to get it because
[01:33:23] then you can do your thing and there's my stuff I'm not gonna I'm not gonna do
[01:33:28] this live. At least I'm going to try not to do it live. I'm going to try to not do it live.
[01:33:35] Let's see if that signs me in. Oh, it wants to use my passkey.
[01:33:43] I actually have my passkey. Yeah, I could go put it on.
[01:33:52] Let me get my passkey really quick. I'm going to go ahead and pause the video while I do this,
[01:33:57] But if you don't have a getup account go get one. So this is what a passkey looks like.
[01:34:01] This is a YubiKey. So you plug it in and then you touch both sides of it.
[01:34:05] I strongly recommend people get one.
[01:34:09] No, it's asking me for it.
[01:34:27] Waiting for input, security key, and it's verifying.
[01:34:35] And now I'm in continue.
[01:34:39] So it requires you have physical access.
[01:34:40] Authorize Visual Studio Code.
[01:34:44] That's interesting.
[01:34:45] I've never seen that before.
[01:34:47] I'll show you what I mean by that.
[01:34:49] OK, so I have a couple of organizations.
[01:34:57] That's no big deal.
[01:34:59] No, let's see. Always allow VS Code to open links to this type.
[01:35:06] Yeah.
[01:35:17] Get started. This is interesting.
[01:35:20] Wow, it's like immediately prompting you for all this stuff. You still have to like set this up.
[01:35:26] This is great. VS Code has come a long way.
[01:35:28] Dark 2026, Dark High Contrast. We're gonna add our own here.
[01:35:33] We're gonna do Dark 2026.
[01:35:36] Get started.
[01:35:39] Getting started with VS Code, GitHub Copilot.
[01:35:42] Learn the fundamentals.
[01:35:45] Wow, they've made this very approachable for beginners.
[01:35:49] Look, I still want you to learn the terminal, but if you are just getting into tech,
[01:35:56] Learning VS Code through VS Code, putting it on your computer and getting started this way is a really great way to get started.
[01:36:02] And I've been saying that, I don't know how many times I have to say it.
[01:36:05] I've helped hundreds, at this point maybe a thousand people, at least in person, to learn how to code using VS Code as their first tool.
[01:36:16] I still maintain the terminal is more powerful and you still need to learn it.
[01:36:20] But VS Code is a good start.
[01:36:21] Let me show you why.
[01:36:23] So we have VS Code running here.
[01:36:28] And let me go back here.
[01:36:32] So all right.
[01:36:36] So this VS Code, I wonder if we can turn up this size a little bit.
[01:36:40] Yeah, let's turn up the size a little bit so you guys can see it.
[01:36:45] Yeah.
[01:36:50] All right.
[01:36:51] So, new files, open folders, stuff like that.
[01:36:54] This got me signed in.
[01:36:56] Now, the terminal, you don't know this yet,
[01:37:02] but you can learn how to open a terminal.
[01:37:03] You can say, I think I have the FIDO, I don't remember.
[01:37:08] No, no, I have YubiKey.
[01:37:12] I have a YubiKey, yeah, terminal, there it is.
[01:37:14] Control left bracket, which by the way is,
[01:37:18] if you do it with this hand, you go like this, okay?
[01:37:21] by the way you're going to get you're going to do this a lot with this hand so control
[01:37:24] alt alt tab you should be alt tabbing like this to switch between windows
[01:37:29] really important skill and then you can also control up bracket to get a terminal
[01:37:35] right so control up bracket to get a terminal and uh you know it's using the default it's using
[01:37:43] oh you know what's really cool it's it's using oh my god windows 11 is using the new terminal
[01:37:47] instead of the old one the old cmd terminal this is so fantastic but you see how it defaults to
[01:37:52] powershell so we want to actually change that we don't want it to default to powershell we want it
[01:37:57] to use uh wow they have other ones javascript debug terminal what this is all new that's the
[01:38:05] the old school command prompt but you see that bash is not an option right um and so yeah you
[01:38:12] You can do a lot of stuff here,
[01:38:14] you just can't do basic Linux command.
[01:38:16] A lot of the Linux commands are still the same.
[01:38:17] Ls, pwd, ah, if I can code right.
[01:38:22] What else, echo something.
[01:38:26] Yeah, I mean, you know, is there a file here?
[01:38:31] How about this, touch file.
[01:38:34] Nope, touch is not a command,
[01:38:35] that's the Linux only command, right?
[01:38:36] So we can do this, so we can do echo something,
[01:38:41] something to this file dot txt.
[01:38:46] OK, that works.
[01:38:47] Let's see that cat this file dot txt.
[01:38:50] So yeah, cool.
[01:38:54] So it has a lot of the command line-y sort of things.
[01:38:58] And by the way, all of this was inspired by Unix originally.
[01:39:02] And then Linux came about after that.
[01:39:05] But you can see it's got a lot of it, right?
[01:39:07] And PowerShell's got its own very specific things.
[01:39:09] And if you're going to become a hacker,
[01:39:11] you must learn PowerShell.
[01:39:13] It's mandatory, mandatory, mandatory.
[01:39:16] According to the Fence of Security,
[01:39:17] it's mandatory to learn PowerShell eventually.
[01:39:20] But more importantly, you wanna learn how to be good
[01:39:22] with a real terminal, like a Unix or a Linux terminal.
[01:39:25] And we need to do that, and we don't have that right now.
[01:39:28] We've already installed WSO2,
[01:39:30] but I have to reboot to get that.
[01:39:32] And I'm kind of on the fence right now about that,
[01:39:39] Because if I use WSL2 and I reboot, I'll git bash automatically. I don't have to install git bash.
[01:39:46] I am gonna ask the Gemini AI
[01:39:51] How can I get
[01:39:55] bash in my VSCode
[01:39:58] Terminal without WSL2?
[01:40:03] It's actually it's gonna tell me to use WSL2 and then we'll say oh, but I don't want that git for Windows
[01:40:09] Okay, so Git for Windows includes Git Bash.
[01:40:12] This is what I used for more than a decade.
[01:40:17] Set Bash your default terminal, terminal of default profile.
[01:40:21] Choose Git Bash WSL or Bash from the drop-down that's detected.
[01:40:25] So it does look like you can just distinguish between WSL2 and Git Bash.
[01:40:31] And when we set up WesTerm, which we're also going to do later, we can tell it which one we want.
[01:40:43] The reason I'm pausing here is because if I install Git Bash, I already mentioned earlier,
[01:40:48] I might cause a conflict with the keyword Bash.
[01:40:51] The keyword Bash might result differently.
[01:40:54] The keyword Bash, when you have WSL2, automatically fires up a WSL2 instance and logs you into it.
[01:40:59] When you fire up Bash without that, it runs Git Bash.
[01:41:03] So let's say you don't want to mess around with WSL2.
[01:41:08] You just want VS Code, and you just want Bash,
[01:41:10] and you want to make JavaScript video games, right?
[01:41:13] You can do that.
[01:41:15] And this, by the way, this is what I told you,
[01:41:16] the after-school program.
[01:41:17] We did not install WSL2 on people's computers, right?
[01:41:19] If they had a Windows machine, we did Git Bash the end
[01:41:22] because they just need Chrome.
[01:41:24] Chrome is their runtime engine for the game.
[01:41:27] or, you know, any web browser really. So we're gonna go ahead and install git for
[01:41:33] Windows. So we're going to gitforwindows.org. Welcome to the new awesome. We
[01:41:39] bring the awesome git scm for Windows. Download. It's gonna give you git bash to
[01:41:44] git GUI. Nobody uses this at all. They just use it for git bash. So we're gonna
[01:41:50] to download this and it's going to install. Let's see. So here we go. Git Bash EXE. We're
[01:41:58] going to use the installer as opposed to any fancy package installation, which you might want to use
[01:42:04] if you're a power user later. I'll say yes. And then good new public license. Additional icons
[01:42:13] on the desktop. One is open Git Bash here. Okay. So it's going to add some open Git Bash at that
[01:42:19] location, stuff that you're never going to use because you're just going to do it from VS Code.
[01:42:23] If you're putting Git Bash on a system and you're not installing Docker or WSL2, then you're probably
[01:42:29] just going to be opening it from VS Code. So you really don't need all that, but whatever.
[01:42:33] Check daily for Git on Windows updates. Not really necessary. Add a Git Bash profile. Add a
[01:42:39] Git Bash profile to Windows Terminal. This is new. This is new. This was not a thing before.
[01:42:44] So you can actually click on that now. They've come a long way. This is kind of encouraging.
[01:42:49] Next, use Vim, the ubiquitous text editor, as it gets the fault editor.
[01:42:54] Yes, I'm going to do that.
[01:42:59] Wait, what?
[01:42:59] Okay, so I personally want Vim, but you probably want to use Visual Studio Code.
[01:43:08] I'm guessing you're probably going to want to use Vim.
[01:43:13] I don't even have Vim on the system.
[01:43:14] This is tough.
[01:43:17] Okay, so let's, again, I'm going to tell myself that I am a kid in an after-school program who doesn't even know what Vim is and is never going to use Vim because I just want to make a game in JavaScript.
[01:43:25] If that's you, then you just want to stick with Visual Studio Code.
[01:43:29] That's how you're going to do all your text editing.
[01:43:31] You're not going to use a command line text editor.
[01:43:33] You're not going to become a hacker.
[01:43:34] You're not destined to become an operations person who's using a terminal all the time.
[01:43:39] And that's perfectly fine, by the way.
[01:43:41] There are a lot of people, particularly web developers, who don't care about Vim.
[01:43:44] They just want to edit stuff so they use Vs code.
[01:43:47] So, use VS code as Git's default editor, Sublime Text, that brings me back.
[01:43:56] All right, so we're going to use that.
[01:43:57] These are all new.
[01:43:58] This stuff wasn't in there before.
[01:44:00] This is fun.
[01:44:00] Let Git decide.
[01:44:02] Override the default branch new for name repositories.
[01:44:05] Let Git decide.
[01:44:05] Let Git use this default branch name currently master.
[01:44:08] Override the default branch to be main.
[01:44:11] Yes.
[01:44:12] There's a lot of reasons you want to use main these days.
[01:44:15] Master was kind of frowned upon for years because of racist implications, which I think are absolutely
[01:44:21] stupid. There are a lot of other things in the world that are called master and they don't refer
[01:44:27] to slavery. But for some reason, they got rid of it for that. Look, don't say I'm racist just
[01:44:42] because I don't think everything has to be called master. They also renamed like master and slave
[01:44:47] disk drives. That one maybe was bad. Yeah, that might have needed a name change. I did just see
[01:44:56] somebody, somebody, somebody mentioned it already. So, you know, I just, I get, I get where they're
[01:45:05] coming from. I think master and slave ID just is probably pushing it. And I don't disagree with
[01:45:11] that name change. But it doesn't mean that everything that's got the word master in it
[01:45:14] needs to be changed, right? Your master settings, for example, you know, there's a million usage
[01:45:21] of the term master that are not racist and that don't refer to slavery. And this was
[01:45:25] one of them. There was no idea of a slave repo, right? It was the master repo, the main
[01:45:31] repo, the big one, you know? You know, the master control program, which is still a thing,
[01:45:38] right and you know i i don't know whatever so master of disaster we're going to click next here
[01:45:49] get from the command line also for third-party software this option adds only some minimal get
[01:45:53] wrappers to your path to avoid blah blah blah okay so environment with the optional unix tools
[01:46:00] okay this is what i was this is what i was afraid of you remember i said if i type git or something
[01:46:06] for the command line or bash that it might get in the way of WSL2,
[01:46:09] this is where we're making that decision.
[01:46:11] This option has only some minimal git wrappers to your path
[01:46:14] to avoid cluttering your environment with optional Unix tools.
[01:46:18] You will be able to use git from git bash,
[01:46:22] the command prompt, and the Windows PowerShell,
[01:46:24] as well as any good third-party tools.
[01:46:26] So if you were to put this in there,
[01:46:28] then there are Windows tools like find and sort get overtaken,
[01:46:32] Which is actually really nice. Can I just say, being able to use find on Windows,
[01:46:39] the first time I did that, I was like, yes, chef's kiss. It was like awesome.
[01:46:44] But in this case, I'm going to use WSL2 for that. WSL2 comes with a mounted file system
[01:46:52] that includes everything on your Windows system. So if you want to, you can run a true Linux find
[01:46:59] on your windows file system so we're going to go ahead and do that we're going to click next
[01:47:03] use bundled open ssh the user's ssh that comes with git use an external open ssh this
[01:47:12] needs to the external stages the only reason this would would matter is if you had a different
[01:47:16] configuration file what is ssh is secure shell that's your way of contacting remote systems
[01:47:24] which is how that you access git and github which is probably why this is here because if
[01:47:29] you're going to install git it's very likely you're going to want to use github and you can't
[01:47:33] access github without ssh so so that's why they're asking which one to get we're going to put next
[01:47:40] here uh use the open ssl library server certificates will be validated through ca bundle.crt file
[01:47:47] This is some pretty complicated stuff about how authorization of security access is done.
[01:47:56] Use native Windows security channel library.
[01:47:58] We're going to use the native Windows one.
[01:48:00] This would only be if you wanted to do other fancy Unix things on your system
[01:48:08] and combine their certificates with the ones on Windows, then you might want to do that.
[01:48:13] So it's a very deep Unix kind of thing.
[01:48:18] But if you wanted to practice running your own certificate
[01:48:21] authority, for example, and you wanted
[01:48:24] to put out some root certificates
[01:48:26] that you created so that your web browsers and your SSH
[01:48:30] and everything else would see that as authorized,
[01:48:34] you would have to edit this file, the CA root bundle, CRT file,
[01:48:39] and you'd have to put those root certificates there
[01:48:41] so that you could emulate all of that stuff.
[01:48:44] And I have done that when I've set up containers
[01:48:46] and stuff like that, where if you don't do that
[01:48:49] and you're trying to access these remote systems
[01:48:51] without those certs, they'll show as unauthorized
[01:48:54] or whatever.
[01:48:54] So it's a very edge case, but the Git people
[01:48:59] are thinking about that.
[01:49:02] Check out Windows style, commit unit style endings.
[01:49:05] This is a really big hang up with people that use Git,
[01:49:09] and they get it wrong all the time.
[01:49:11] So the short story is that the terminal--
[01:49:16] everything in the terminal-- a terminal is, of course,
[01:49:18] the black and white thing you type stuff in.
[01:49:20] Everything about the terminal-- it's
[01:49:21] actually called a terminal emulator
[01:49:23] because the original terminals were terminals.
[01:49:25] They were terminals connected to phone lines
[01:49:28] that communicated over a phone with teletext.
[01:49:31] And the teletype machine would actually
[01:49:32] print out the little letters.
[01:49:33] We're going to talk all about that when we get into the terminal
[01:49:36] and we start to learn about it and how to code for it.
[01:49:39] And that includes these legacy ideas of line feed in terms of like one printed line and a carriage return, which are two separate operations.
[01:49:48] One of them pushes the line up, and the other one sets the thing that's printing down to the front.
[01:49:53] And for decades, decades, more than decades, you know, different operating systems and different OS and different terminal emulators read the endings.
[01:50:04] They couldn't figure out how can we emulate a terminal.
[01:50:08] So some of them were very strict, and they said, okay, we're going to send both a carriage
[01:50:11] return and a line feed, because that's exactly what a teletype would send.
[01:50:14] And then a bunch of people said, you know what?
[01:50:16] On these digital terminals, we really don't need this.
[01:50:19] So they drop one or the other, depending on what operating system.
[01:50:23] And that caused problems for years, for years and years and years.
[01:50:27] It was like, because these files get written to text, and those files contain that carriage
[01:50:34] returner line feed in them, which made all of these text files incompatible with other terminal
[01:50:39] emulators. And so Git, when it came around, it had to make a choice. It's like, okay,
[01:50:44] what are we going to put in Git? What's going to actually get saved? Is the file going to be
[01:50:48] Windows only? And for the record, in 2026, 2027, we've already dealt with this, right? Every single
[01:50:55] operating system by default uses carriage returner line feed. This is so hard-coded into our
[01:51:01] existence, that every, Unix is us, us to Unix, but those, those are old, we don't even need those
[01:51:05] anymore. Um, but, but in the, uh, we, the actual protocol for web, any, every single time you pull
[01:51:13] up a webpage, the webpage gets printed as text to the screen and that gets interpreted by our web
[01:51:18] browser. And that text that gets printed out, there had to pick a standard. It uses something
[01:51:23] called HTTP and the hypertext transfer protocol and the text itself, the RFP specification says
[01:51:29] thou shalt have a carriage return and a line feed. Now a lot of web browsers say that's fine
[01:51:35] to not have both, but the very definition of every web page says that thou shalt have a carriage
[01:51:40] return and line feed at the end of every one. So Windows style, it says check out Windows style,
[01:51:46] commit Unix style. Git will convert line feeds to carriage return and line feed when checked out
[01:51:51] text files. When committing text files, carriage return and line feed will be converted to LF
[01:51:58] for cross-platform projects.
[01:52:00] This is a recommended setting for Windows.
[01:52:01] Okay, so this is no longer an issue on Windows.
[01:52:06] On Windows 11, the characters between line feeds
[01:52:09] on the entire operating system are the same as Unix.
[01:52:11] So that's no longer an issue.
[01:52:13] Check out as-is commit Unix-style line endings.
[01:52:17] Git will not perform any conversion when committing text files.
[01:52:20] Carriage between line feed will be converted to line feed only
[01:52:23] for cross-platform projects.
[01:52:25] This is a recommended setting for Unix, core, blah, blah, blah.
[01:52:28] So there you go.
[01:52:30] So at the end of Align, so Unix came along,
[01:52:33] Unix and Linux, they both just used a backslash N,
[01:52:36] Align feed, they got rid of the carriage return.
[01:52:39] So even though this is the de facto standard,
[01:52:43] there might be Windows software out there of any kind
[01:52:47] that might still put a carriage return Align feed
[01:52:49] at the end in our Git, we don't want to save it.
[01:52:53] So the Git specification will put either thing
[01:52:56] into the Git repo, it doesn't matter,
[01:52:57] But this protects us so that the stuff that's being checked out onto the web is interpreted by other Unix systems.
[01:53:05] Let's say somebody wants to check out your work from GitHub on their own Mac or their other system.
[01:53:11] If you didn't do this, they would have all kinds of problems.
[01:53:14] They wouldn't be able to use it.
[01:53:15] So we are going to go ahead and leave that safety check as is,
[01:53:20] even though most of the stuff that we commit from this Windows 11 machine will not have the extra carriage return in there.
[01:53:27] the backslash r um okay so we're going to click next okay the default terminal so min tty is a
[01:53:35] teeny tiny itsy bitsy little windows compatible unix kernel get bash we use min tty as a terminal
[01:53:41] emulator which supports the resize uh resizable window non-rectangular selections and a unicode
[01:53:46] font so uh windows console programs such as interactive python uh must be launched via
[01:53:52] So the only reason this exists is so that Git will work with the stuff that requires terminal
[01:54:01] emulation. But I love that it gives us the option now. It says use Windows default console window.
[01:54:08] Git will use the default console window of Windows CMD, which works well with Win32 console
[01:54:13] programs. Notice it doesn't give us the option to use Windows internal terminal.
[01:54:22] And by the way, this is only, so this project assumes you don't have anything installed, right?
[01:54:29] It doesn't know you have ES code installed.
[01:54:32] It assumes you want to like just fire it up and have a terminal.
[01:54:34] Nobody ever does that, but that's what it's asking.
[01:54:38] So I'm going to use the default.
[01:54:39] Merge commits to combine branches.
[01:54:43] This preserves the history of parallel work.
[01:54:45] Yep.
[01:54:45] Rebase.
[01:54:46] So this is a preference.
[01:54:48] This has to do with Git.
[01:54:51] One of them merges the changes, the other one like completely throws out the other changes
[01:54:57] and then brings them in again with new commit IDs.
[01:55:00] And merge is safer if other people are following your work.
[01:55:04] We're going to go ahead and kick with merge.
[01:55:08] You normally don't have that problem, and not at this level.
[01:55:11] Get a credential manager, use, get cross-platform, get credential managers.
[01:55:17] That's new.
[01:55:20] "Select only for headless environments, SSH only workflows, and custom credential helpers.
[01:55:27] Otherwise, Git will prompt for credentials on every HTTPS operation."
[01:55:30] Okay, so GitHub, when you access a remote repo, you can use SSH or HTTP.
[01:55:43] And by default, you should probably use SSH for everything.
[01:55:48] Git will prompt for credentials on every HTTP OSO operation.
[01:55:51] Select only for headless environments,
[01:55:54] SSH-only workflows, or custom credentials.
[01:55:57] We're using SSH-only.
[01:55:58] We're not using credential manager.
[01:56:00] This would only be if we were gonna use HTTP.
[01:56:02] Why would that be?
[01:56:03] If you were using, if you were in an environment
[01:56:07] where you were behind a firewall
[01:56:11] and the only way to get to GitHub and Git
[01:56:13] would be to use HTTP through a proxy server,
[01:56:17] That would be only HTTP to do authentication and you would want to pick this.
[01:56:20] And I imagine that includes a lot of schools.
[01:56:23] So if you're working in a school environment and you want to be able to have it talk through whatever the proxy server is,
[01:56:31] you might want to leave this on and not use the SSH method.
[01:56:34] Almost no schools allow secure shell traffic to go through their VPN firewalls.
[01:56:40] Almost none.
[01:56:43] So if you're at all related with a school,
[01:56:46] you probably want to leave that on.
[01:56:48] I'm going to click that and there'll be none, no for me.
[01:56:51] Enable file system caching.
[01:56:52] File system data will be read in bulk.
[01:56:55] Enable symbolic links.
[01:56:56] Enable symbolic link requires set symbolic link permissions.
[01:56:58] Please note that existing repositories are unaffected.
[01:57:00] I have a bunch of symbolic links in my files.
[01:57:10] I don't think symbolic links work on Windows, though.
[01:57:12] So for GitBash that's running on Windows only,
[01:57:19] symlinks aren't a thing, period.
[01:57:21] So that would be a no.
[01:57:23] Let's go ahead and install.
[01:57:26] I'm glad we got to talk through that,
[01:57:27] because there's a lot of people that
[01:57:28] are going to want to go through that setup,
[01:57:30] and that's not completely obvious.
[01:57:32] So I will definitely put a bookmark to this entire chapter
[01:57:37] about how to set up Git for Windows.
[01:57:40] Hopefully, that will help other people.
[01:57:43] OK, here we go.
[01:57:46] Complete the setup is finished.
[01:57:47] It's not going to get our computer.
[01:57:48] The application may be launched by selecting
[01:57:49] Install Shortcuts.
[01:57:51] Launch Git Bash.
[01:57:52] So just for the hell of it, watch.
[01:57:54] We're going to launch Git Bash.
[01:57:56] So wait, what?
[01:58:01] Select the app to open this .html file.
[01:58:03] There's no .html file.
[01:58:04] Oh, oh, oh, oh, oh.
[01:58:09] OK, so it's just telling me the version for this.
[01:58:13] So this is what you get by default.
[01:58:17] By default, this is what you get.
[01:58:19] You know, one--
[01:58:21] and you can change all kinds of stuff here.
[01:58:25] You can beautify it and everything.
[01:58:28] Something to note, though, is do you
[01:58:29] see how it's in cUsersRobMu?
[01:58:33] That-- and then this is the whole--
[01:58:34] you haven't learned about terminals yet,
[01:58:36] but that's what that's all about.
[01:58:39] Okay, now compare the same terminal to VSCode.
[01:58:42] So if we run the same thing in VSCode, we can actually restart VSCode.
[01:58:48] It should actually pick up everything.
[01:58:49] Let's go ahead and close the entire VSCode editor.
[01:58:52] And we're going to push the Windows key and type VSCode, actually just code, and enter.
[01:58:58] And then I'll start it up.
[01:58:59] So there's our VSCode.
[01:59:01] And one faster answer to deep thinking.
[01:59:06] No, enter.
[01:59:09] Okay, so it's got a terminal here and now you can see, oops, we should have the
[01:59:17] option to open a git bash there. Now we can open a new shell with git bash. Try
[01:59:23] using copilot, let's see a lie, how about no. Okay, so again, this has got Unix
[01:59:29] commands. Remember the ones before? Touch something, ls -l, you can see the
[01:59:36] something file ls -l something and you can see it there. Oh wow, so the start
[01:59:45] menu is a symbolic link. Actually that's interesting. I didn't realize start
[01:59:49] menu was an actual symbolic link. They must have started enabling symbolic
[01:59:53] links under Windows, like actual ones. Windows 11 has support for actual
[01:59:58] symbolic links. Huh. That is really cool. It's not using Windows based links. That's
[02:00:09] insane. Okay, but I want my Groovebox. So watch how much easier is the Groovebox
[02:00:15] now. I'm gonna go to themes, color theme, Groovebox. Uh-oh. Browse additional color
[02:00:25] themes. Searching for themes. Groovebox. Groovebox Dark. Grooveboxer. This will install the extension.
[02:00:40] Minimal Groovebox theme. Okay. This is scary. Yes, I'm going to trust it.
[02:00:51] I'm installing extension. VS Code has extensions, which this is where VS Code kind of loses its way.
[02:00:55] After you get a few extensions in there, the thing is so slow to start up.
[02:00:58] You just never ever want to stop it from running.
[02:01:02] I'm going to close this window and go back and get that in my new theme.
[02:01:07] Color theme. I should have Groovebox. Dark Grooveboxer.
[02:01:11] So it should have changed.
[02:01:15] This is not Groovebox.
[02:01:18] That is not Groovebox.
[02:01:21] They lied.
[02:01:22] That is not Groombox.
[02:01:25] Xcode Groomboxer, what?
[02:01:32] That is, no, that's not Groombox.
[02:01:36] No.
[02:01:38] Let's see, uh...
[02:01:47] GitHub Corollary Groombox, Groombox.
[02:01:51] Hi, how you doing? Tatsu. We are making a video just so everybody knows.
[02:02:00] Groovebox theme saviors zed. That's horrible. Groovebox dark medium.
[02:02:06] Groovebox medium.
[02:02:11] Okay, install, theme, color theme, group box, medium, does that sound like a group box to you guys?
[02:02:41] That does not look like Groovebox to me.
[02:02:43] What is term?
[02:02:52] This is the Windows Terminal.
[02:02:56] Yeah, I mean, it's not bad, it's just...
[02:03:09] It just doesn't feel like Groovebox to me.
[02:03:11] What's the Groovebox soft?
[02:03:18] Maybe it's not Groovebox dark.
[02:03:26] Oh yeah, that's closer.
[02:03:28] Yeah, this is what I'm used to.
[02:03:30] This is much softer.
[02:03:33] Yeah, this is the one I'm used to.
[02:03:34] Okay, let's stick with that.
[02:03:36] Okay, so we have a terminal.
[02:03:39] we have Linux use the group like standby oh yeah is that a different one I'll have to go look that
[02:03:46] one up and so this one's gonna work for me for now it's listed in my extensions so there's all
[02:03:52] kinds of extensions to all kinds of things for coding but yeah this is where you can come in
[02:03:56] you can start writing code you can right now we're in the home directory and you know I'm not going
[02:04:01] to get into how to use the terminal and what everything means that's going to be for the
[02:04:04] different video. I do not like that the host name, that this, whatever that is.
[02:04:10] This is the host right here. I don't know what that is.
[02:04:21] Something about the host name, but anyway, this entire PS, the whole prompt is managed by my
[02:04:30] my GitHub. Actually, let's do that. Let's, since we're on, we're not on WSL2, let's go ahead and do
[02:04:38] a few things here really quickly, okay? Assuming that you're not going to go with the WSL2 heavier
[02:04:43] route. So let's make a place to put all our repos. So we're going to make a directory called
[02:04:48] repos. Actually, let's do dash P. I wonder if it'll work. It might not work. Repos, gethub.com,
[02:04:58] rvx-rom, OK, and then we can cd into that.
[02:05:04] I just made a video about what set-ovi does.
[02:05:11] You can go look at that.
[02:05:15] cd into there.
[02:05:16] OK, so let's GitHub.
[02:05:18] Do we have the GitHub tool?
[02:05:19] No.
[02:05:20] All right, so we do not have the GitHub command line tool,
[02:05:25] which we might as well go ahead and install.
[02:05:27] This would be something that I would install from Chocolaty
[02:05:31] or from something if I wanted to.
[02:05:35] But it just makes use of GitHub a lot easier.
[02:05:39] And we're going to go find install--
[02:05:46] if you're going to-- this is a slippery slope,
[02:05:48] because the best way to do this would probably
[02:05:51] be to install the command line.
[02:05:54] OK, see how it says use WinGit?
[02:05:57] the reason it's a slippery slope is because now we're like okay we're getting
[02:06:01] into terminal package installation as opposed to going and downloading an
[02:06:04] installer so it's good for you to at least see this so we're gonna say when
[02:06:09] get and we're gonna paste it I just I right-clicked to paste on the terminal
[02:06:14] that's what that does and it's gonna when get when you get is the built-in
[02:06:18] package installer into Windows it's the official thing it's the one you should
[02:06:21] all use you shouldn't use chocolatey you shouldn't use scoop you should use the
[02:06:25] official one for Microsoft because it's less likely to break and stuff. And they've also fully adopted
[02:06:30] this as their installation method, so it's not going to get unsupported. So we're going to do
[02:06:35] Winget install, and that's going to go ahead and ask you, let's actually full screen this so you
[02:06:42] get a better look at it. We don't need this stuff up above here anymore. I'm going to close the
[02:06:47] welcome screen. And this has always annoyed me that you have to like resize the thing. You know,
[02:06:53] you can full screen it but it's not immediately apparent how to do that
[02:06:57] you know are you gonna have it hide the whole thing um you know i don't necessarily want a file
[02:07:06] vs code is designed to be editing a file up here down here you're doing the terminal but if you're
[02:07:09] just using it for terminal stuff kind of annoying right so do you agree to source yes i'm going to
[02:07:16] go ahead and install it i found the cli i'm going to go ahead and download it
[02:07:22] uh yes authorize sorry for the small text i'm running 4k for other reasons obviously so
[02:07:30] let's go ahead and zoom in on this this whole thing i don't know what this chat's about that
[02:07:37] was never there before that's a new thing um all right so now we have the github tool and we're in
[02:07:44] the right place so we're going to do gh3 actually we have to do gh off login this is going to get us
[02:07:51] to login. It might actually pull up some stuff on the screen that I can't show you, so I'm going to
[02:07:58] quickly change, turn this off for just a sec, and go back. I'm going to do jh-auth-login, enter.
[02:08:07] Wait, what? It didn't find the jh tool.
[02:08:14] They say bash -l which gh gh. Wait, what? How come I didn't find it? Do I have to open up a new terminal?
[02:08:25] Let me show you what I'm talking about.
[02:08:30] So for some reason it didn't find it, so I'm going to open a new terminal and see if it finds it this time.
[02:08:38] Oh wait, wait, wait, it's still opening PowerShell terminals.
[02:08:40] We need to change the default terminal, so I'm going to search for our default terminal.
[02:08:49] We need to change the setting for this.
[02:08:52] I don't know how to do it. Settings.
[02:08:56] Command palette.
[02:09:00] Defaults.
[02:09:04] Test profile, select the terminal area.
[02:09:06] git bash. Okay, we want git bash to be the default. Let's kill this one. Dead.
[02:09:11] Go back to the terminal, turn it back on. This guy can die. That's a ps-terminal.
[02:09:18] Trash. Trash. We have the bash one left over. We want a new bash terminal.
[02:09:27] So let's do plus. We have a new bash, which gh. Still no gh.
[02:09:36] That's because it's not finding it in my path, and that's a weird Windows thing.
[02:09:42] That would not be the problem on Mac, and it would not be the problem on Linux.
[02:09:46] So, I don't know what it's saying here.
[02:09:50] Let's see, "Viewer, you get a port request."
[02:09:55] "Goodbye context searching Holo Terminal," yes, that's what we want.
[02:10:00] It's not finding it though.
[02:10:05] I don't know why I stopped finding it.
[02:10:07] Why isn't git in my path after when you get installed?
[02:10:19] When you get installed because your terminal or ID still holds an older snapshot of the environment variable before installation around.
[02:10:28] Quick fixes. Restart your terminal editor. I restarted the terminal, but it didn't work.
[02:10:34] Open PowerShell Command Prompt Windows Terminal.
[02:10:36] It still didn't work.
[02:10:38] Refresh path in the current shell.
[02:10:40] Run the following.
[02:10:43] Get environment variable path system plan
[02:10:46] environment variable variables path user.
[02:10:47] Check where it landed.
[02:10:53] Let's see, reinstall explicitly with ID.
[02:11:00] I did that.
[02:11:02] Source.
[02:11:04] And that's just the wrong the wrong package we're getting completely cleanly run.
[02:11:08] I mean it looked like it ran, right?
[02:11:10] Downloaded the MSI...
[02:11:20] Suggested to verify the installer, and installed it.
[02:11:26] Good old Windows.
[02:11:30] This is all I want to hit. Yeah, this is all going to be a video.
[02:11:33] i'm recording it that's why i'm kind of focused uh clcli releases download v12 via blah blah
[02:11:39] um let's see do you agree to the source agreements yes
[02:11:45] ms source source requires you to view the following agreement before using um
[02:11:51] msa window set with guy slide
[02:12:00] Normally you just rerun your terminal and it's fine, it just did not work.
[02:12:07] Let's try restarting MS code completely, which should not be required.
[02:12:13] Absolutely should not be required.
[02:12:15] Windows key code enter.
[02:12:19] The terminal back, what is this about?
[02:12:26] Oh, look at this.
[02:12:27] ShellIntegration-bash.
[02:12:31] The following, let's see.
[02:12:37] The following extension wants to relaunch the terminal
[02:12:40] to contribute to its environment.
[02:12:41] Git enables the following features.
[02:12:43] Huh.
[02:12:48] How's it going, McNacts?
[02:12:52] So, there, I found it.
[02:12:56] OK, it found it that time.
[02:12:58] So it took VS Code restarting to get the terminal back.
[02:13:02] But now it's found it.
[02:13:04] OK, so now we need to go back where I was telling you before.
[02:13:08] So we can do-- we're going to cd into repos.
[02:13:13] And then you can just tab, tab, tab, tab, tab, tab.
[02:13:17] And we're going to be here.
[02:13:20] OK, so now we can ghrepo clone dot.
[02:13:23] So I have dot files in here.
[02:13:26] Bash on Windows. Yep. Almost. Okay. So, I think I started with GitHub CLI. Please don't get off login. I just ran that. Okay, guys. This is going to dox things. So, I'm going to go turn you off for a second. And you can look at my messy room. Behold.
[02:13:53] Would you like to log in with the web browser? Yes. Would you like to...
[02:13:56] What's your preferred protocol? Yes, SSH.
[02:14:00] Okay, let me show you this really quick.
[02:14:05] So, when you're doing GitHub login, you want GitHub. Do you know the expired tokens and requests with expiring?
[02:14:12] How would you like to authenticate with GitHub? Log in with the web browser. What's your preferred protocol? SSH. This is important.
[02:14:17] Make sure you put SSH.
[02:14:21] Can we hear what keys you're typing?
[02:14:23] No, I know you are. I know you are, but I'm gonna make it so that you can't tell the exact keys.
[02:14:30] Generate a new SSH key to add to your github account. I'm gonna click yes.
[02:14:33] It's gonna make a new key, and then it's gonna dump to the screen
[02:14:37] an eight character thing that I need to paste into the web browser, but I'm gonna
[02:14:42] hide that. You can probably see it in my glasses if you look really close.
[02:14:46] It doesn't matter because it's just a temporary
[02:14:50] authentication string and it says enter a passphrase for ssh key i'm not going to do that
[02:14:55] some people would insist that you do i think that's security theater for the most part
[02:14:59] if you do a passphrase for ssh key you have to type it anytime you do anything with github
[02:15:04] which is annoying unless you set up ssh agent which is also annoying
[02:15:08] title for your ssh key github cli here is your one-time code i'm going to cut and paste that
[02:15:15] and hitting enter to fire up my web browser I'm continuing I'm pasting my
[02:15:21] code in paste and then I'm going to continue authorize the use of github
[02:15:28] to do blah blah yes authorize github congratulations you're all set so your
[02:15:34] device is now authenticated so I'm gonna go back and clear the screen clear and I
[02:15:42] I will show you my screen again.
[02:15:46] All right, so here we are.
[02:15:48] So now we can do things like this, GitHub.
[02:15:56] Wait.
[02:15:58] Wait.
[02:15:59] We did that, get clone dot.
[02:16:07] OK, so this is going to pull down.
[02:16:09] That's still Maria, that's nothing fancy.
[02:16:11] Overbrowser opens, welcome to Internet Explorer.
[02:16:15] Nope, I changed my default already.
[02:16:18] I installed Chrome and changed it to be my default.
[02:16:22] So there is a dot directory.
[02:16:23] Now this is not designed,
[02:16:27] this dot directory is designed for Mac and Linux,
[02:16:30] but it does have some Windows stuff in it.
[02:16:32] I'm actually kind of curious to see
[02:16:35] how well the setup does based on this.
[02:16:39] in these gaming operating system yes I am on the niche gaming operating system
[02:16:43] set up I'm gonna run my setup on this this is a total Hail Mary yeah it didn't
[02:16:49] detect the time zone yeah
[02:16:53] Erica new New York skip not install globe get a releaser get username yeah get
[02:17:09] email. Is it going to drop my thing? Signing, allow signers, SSH. The passphrase has no
[02:17:16] passphrase. Okay, that's fine. So, add a passphrase now. No. Yep. Making sure I didn't dump any keys
[02:17:25] here. Yep. Okay. So, basically, now when I do SSH things, it'll be signed if I were to do things
[02:17:31] right here from GitHub, and now if I execute a new shell, it should pull up my new thing. Yeah,
[02:17:39] so here you can see, here's the old prompt that came with git bash, and this is my new prompt
[02:17:49] that is contained in my bash RC file, which is in another video. I did an entire four-hour video
[02:17:55] going through cleaning up my bash RC file. You have to kind of know what bash is for that. That's
[02:18:00] the shell that's running right now, but if you want to know how I made that prompt work without
[02:18:05] anything extra, anything fancy, that's all shellcode inside of my bash rc file. Go check it out. Make
[02:18:11] sure you like and subscribe. Apparently those are keywords I'm supposed to put in my videos a lot.
[02:18:18] If I put like and subscribe in my keywords a lot, the transcript and the algorithm really likes me
[02:18:23] apparently.
[02:18:24] So I'm going to say it again.
[02:18:27] So here we are.
[02:18:31] We are in here.
[02:18:32] We've got my .files installed.
[02:18:35] There are a lot of VODs on Twitch of me cleaning up
[02:18:38] my .files using AI.
[02:18:40] And you'll have to go there to look at those.
[02:18:42] I'm not going to talk about it right now.
[02:18:44] So here's my lame user ID on this Windows machine,
[02:18:48] which you can change.
[02:18:49] I talked about how to change that earlier in the video.
[02:18:52] And then my host name, which is rad, because Radeon.
[02:18:58] And then I am in the main directory.
[02:19:00] So I am ready to do full-blown development right now
[02:19:03] if I wanted to.
[02:19:05] And I don't have anything on my system
[02:19:07] besides Git Bash and VS Code.
[02:19:11] And so this is all you need if you're
[02:19:15] going to do game development, like web-based game development.
[02:19:18] And so I am going to take a quick little look
[02:19:21] at that right now. So this, if you want to get into really fun JavaScript based HTML5 web development
[02:19:29] of games, you can go look at something called PixieJS. And I spent a lot of time teaching this.
[02:19:39] PixieJS. There's another one. There's also Pix, man, this looks like they've changed it a lot.
[02:19:51] There's also, is it pixel.js?
[02:19:54] That looks different.
[02:19:58] I don't know, it's been over five years since I've done any game development using 3D.
[02:20:07] This looks like they changed the...
[02:20:11] It looks like they changed the master.
[02:20:21] "Multiplatform", "SuperTyperCart".
[02:20:30] I am going to do some game development on the new machine using Pixie.js for fun as a way to teach coding.
[02:20:39] It's actually one of the best ways to use JavaScript, in my opinion.
[02:20:45] And it's actually an employable skill.
[02:20:48] you can you can make playable banners and get a job doing it and they were
[02:20:52] actually if you follow them and you join their discord they regularly post jobs
[02:20:56] doing banner banner game development and it's usually my contract and usually
[02:21:03] it's just simple they just want a little platformer in their banner or they want
[02:21:06] a little shooter in their banner for their ad and these these marketing
[02:21:09] companies with all kinds of money will hire you to make a little game in their
[02:21:12] banner it's it's fun it's really fun and it's plus you can do stuff with your
[02:21:17] friends and things. So that is coming back. As I've said before, I use game development as sort
[02:21:29] of a carrot to teach people coding in general, and I've been doing that since 2012. So I abandoned
[02:21:39] game development as an educational method for a long time. I started using story games to teach
[02:21:45] Python and terminal based games and stuff like that. But just as a summary, most people that
[02:21:55] want to go into graphics, applications development and game development, web and all of that,
[02:21:59] they gravitate towards making these fun games in the web browser. We made
[02:22:05] a full version of Flappy Birds using this. In fact, I can probably find the Flappy Bird code
[02:22:11] if you want to go look for it. That would probably be really fun for us to do a Flappy Bird clone
[02:22:16] together. I've done that a million times and we've had people alternate their version of Flappy Bird
[02:22:21] that will run on your phone and everything as a PWA. So that is really fun. And then we have
[02:22:29] another group of people that are coming to coding for the first time. And they usually are the kind
[02:22:34] of people that want to run their own Minecraft server. They really love the terminal. They tend
[02:22:38] to want to be hackers and operations people they like to learn to code but that's more about learning
[02:22:43] c and the underlying things and in general in fact it was so distinct the separation between
[02:22:50] the personality of the technologists that i would come that i would you know train at skill stack
[02:22:55] that i would literally start them out on two separate tracks and i would say do you kind of
[02:23:00] want to go towards applications development apps or do you want to kind of be you know on the
[02:23:04] the terminal doing ops and so it would be apps or ops and they would make a
[02:23:09] selection and I would split the groups based on that and the apps people would
[02:23:13] would spend time on free go camp or or code combat and they would learn
[02:23:19] JavaScript and then we will make games and flapping birds and stuff and we'd
[02:23:22] spend all our time in the web browser using VS code even though we had get
[02:23:25] bash and we wouldn't focus a lot on you know how to run a Linux system and
[02:23:30] install it and the ops people the first thing they would do is install Linux on
[02:23:34] their laptop and then start running their own stuff. Or they would set up their bash profile
[02:23:38] and set up how to run their own Minecraft server and keep it up in the cloud and all that and do
[02:23:44] hacking. So those are kind of two different tracks. And when it comes to the beginner boost
[02:23:52] that I've done in the past, the beginner boost is something in what I used to call at Skillstack
[02:23:56] when I taught all of this officially was the fundamentals. And so the fundamentals was the
[02:24:04] basis of everything. And the fundamentals, it was a tough decision about what to put in the
[02:24:08] fundamentals. Like, for example, do you teach somebody who wants to be a web developer the
[02:24:13] terminal? Do you teach them Vim, for example? And it became pretty clear early on that a lot
[02:24:20] of the fundamentals are separate between both of those. So one of the things I'm considering going
[02:24:27] forward as I teach all this same stuff online for free, more or less, I'm going to put Udemy
[02:24:33] courses together if you want to support me and have a more organized training path, but also
[02:24:38] there'll be just YouTube videos that are like this, you know, long form videos you can go make
[02:24:41] sense of, is that the two courses are going to be distinct from the very beginning. So like if you
[02:24:48] And the people that are going to be doing the web game development, stuff like that, they're going to go through everything I just did.
[02:24:53] And then all the other people are going to do the stuff that I'm going to do for the rest of the day today.
[02:25:00] And they're going to install Westerm.
[02:25:02] They're going to install WSL2.
[02:25:04] They're going to, you know, get to use with Linux.
[02:25:07] They're going to learn Vim and NeoVim and all of that.
[02:25:11] And so that's, those are the ops people.
[02:25:13] And I used to just sort of shove both of them into the same box, and I realized that that's really not practical.
[02:25:18] Most of the designers and the people that want to stay on the web makes this stuff, they have no desire to live on the terminal.
[02:25:26] They like it, and they'll use it when they have to, but they generally will stick with the bash mappings for the terminal,
[02:25:32] and they'll just use everything for VS Code, and they don't need to learn VI, because they're going to do all their editing in VS Code.
[02:25:39] And then, of course, there's a select group that want to do both, and there's a lot of justification for that as well.
[02:25:47] So, I'm going to go ahead and hit the pause button for a second.
[02:25:51] There is another HTML5 game engine out there that's really popular, and I want to touch on this for a second.
[02:25:59] You can go look at it during the break.
[02:26:01] HTML5 game engine.
[02:26:07] Let's see, HTML5 game engine provide code, blah, blah, blah.
[02:26:09] Phaser, okay, so Phaser's the one that I know the most.
[02:26:15] So there's PixieJS and there's PhaserJS.
[02:26:19] Phaser's the one I know.
[02:26:21] We've done Pixie and Phaser, but it's been so long I cannot remember.
[02:26:30] I wonder if I can actually log in.
[02:26:37] yep there I am I think I have a lifetime membership to this if I remember from
[02:26:42] long ago sound on another prompt box a whole game studio you made the game
[02:26:54] you've always wanted with no code or art no skill you never start from a blank
[02:26:59] prompt. Oh, shit. They've added AI to it. Oh, that's so cool.
[02:27:06] Cozy and Covenant. So this actually kind of changes the stakes here. You could probably make
[02:27:15] the game you want, but being able to read the code and understand it is different. This is why you
[02:27:20] still need to learn to code, people, because you've got to be able to read the code the AI makes for
[02:27:24] you. That shouldn't be obvious. It shouldn't need saying. Yeah, word searches, shoot 'em up,
[02:27:33] farming, sim, real-time strategy. Oh, this is 3D. They've got a 3D engine now? Huh. So yeah,
[02:27:47] a specialist for every part of your game. Holy cow.
[02:27:52] Whoa, this has come so far since I looked at it. I haven't looked at this for five years,
[02:28:02] at least. No, more than that. The last time I looked at this was
[02:28:08] the fifth year of Skillstack. It was when I went to teach for the private school and
[02:28:15] an after-school program, the Woodlawn Expensive Private School, I had all the schools in the area
[02:28:20] were calling me to come teach for them. And I was running my own school at the same time.
[02:28:24] And I taught at Woodlawn. I taught 40 kids in an after-school program.
[02:28:30] And we did this. I want to say that was probably 2018. It was before we moved.
[02:28:37] No, actually, it was after we moved, but it was before COVID. So yeah, it was 2018.
[02:28:44] It becomes unmaintainable without using an AI to maintain it. Absolutely.
[02:28:47] Yeah. You've got to have people that know what the code is doing. Honestly, there are still going
[02:28:56] to be people paid who know what the code is doing. The difference is they're going to need to be
[02:28:59] smarter than they were before. They're going to need to be more experienced. So you need to get
[02:29:03] more deeper knowledge of the thing that you're having AI make for you. It's sort of counterintuitive,
[02:29:09] But it is true to say that AI has basically obliterated junior engineering jobs.
[02:29:17] Active slapper, thank you for the follow.
[02:29:18] It is very true.
[02:29:20] It's true that AI has obliterated junior engineering jobs.
[02:29:25] But it has also sort of made the pay and the relevance and the need for developers,
[02:29:35] architects and engineers who think outside the box and know how the overall system works very
[02:29:40] much in depth, which means that you need to go deeper before you get the job. You'll still get
[02:29:46] the job. You just got to learn more. But the good news is, is that you can use AI to teach you this
[02:29:51] stuff faster than you could have with just a single person that's mentoring you. And you pay
[02:29:56] Claude 20 bucks a month to get the best training you can possibly get. I don't like saying that.
[02:30:03] Last year, I had a very hard time saying that.
[02:30:05] But after going through, a guy was paying me $70 a month for private mentoring.
[02:30:09] And I said, let's try some testing here.
[02:30:12] And I had him test, set up his own program using an AI that I helped him set up and get going.
[02:30:19] And then the AI took over and gave him individual daily exercises based on his schedule and everything.
[02:30:25] At that point, I said, please don't pay me any more money.
[02:30:28] pay the AI the money, and go use the AI and check yourself against what you can find on
[02:30:33] the internet. And if you ever need me to see if the AI is leading you astray about what the things
[02:30:37] you need to learn to master this, let me know. But this is one of those no-brainers for AI.
[02:30:41] The amount of content on the internet upon which AIs are trained about the things that are needed
[02:30:46] to be learned to master a particular skill is far, far greater than almost any individual person
[02:30:52] could ever tell you who doesn't have anything less than 30 or 40 years of experience. And the
[02:30:57] downside of somebody like me is that we have a lot of experience, but we don't have a lot of
[02:31:02] current experience. At least if we have, if those of us who haven't kept up and I've tried my hardest
[02:31:05] to keep up, but I definitely haven't kept up on game development. Can't keep up on it all. Enter
[02:31:10] AI, have it be your help you keep up tool and use that tool to keep your skills fresh and to keep
[02:31:19] you able to tell the AI what to do responsibly and you will have a job forever. Yeah. So you
[02:31:25] definitely need to to go deeper into the skills um so so yeah so phaser is still here pixie js is
[02:31:35] still here i don't know which one's better i think it might be fun to try both uh ever thought about
[02:31:42] teaching low level stuff like c and game deb yeah i talked about uh doing c for christmas uh last
[02:31:47] week we had a tradition one year we followed a tradition where we went through my favorite c book
[02:31:52] and we just learn C from the book for one reason only, to understand how the computer works and to
[02:32:00] understand what's basically going on with C. It's not the KNR book. I hate that book. I despise that
[02:32:07] book. I'm not the only one. I think it's one of the worst books ever made. I don't remember the
[02:32:12] book that I used. It would be irresponsible to say which one it is now. It's probably good for us to
[02:32:16] look for anyone. I believe it was Head for C, actually. A lot of people like the KNR book and
[02:32:22] And it's an element of personal pride that they can say that they like the K&R book.
[02:32:27] It's like, how dare you besmirch K&R?
[02:32:30] And I'm like, no, K&R is...
[02:32:33] I've been teaching people for 25 years.
[02:32:36] And I can tell you from evidence of them telling me that that book is horrible.
[02:32:43] I had one kid almost throw it at me.
[02:32:44] He's like, this is the worst book I've ever seen.
[02:32:46] He's like, this doesn't teach, see?
[02:32:49] And he went on to become a major C developer.
[02:32:52] And look, being good at something or making it doesn't make you a good educator or a good writer.
[02:32:59] Enter your trolling comments in the message below, in the comments below.
[02:33:07] It's more of a historical piece than it's teaching me to over 20.
[02:33:12] Yeah, especially with all the other libraries and stuff that's come out, right?
[02:33:17] And look, you know I appreciate it.
[02:33:20] I really do.
[02:33:21] But that's all I have to say about that.
[02:33:23] All right, time for a break.
[02:33:25] All right, so we're back.
[02:33:29] But before we get back into the terminal and operations stuff,
[02:33:32] there was a little bit of a conversation
[02:33:34] about whether I'm going to be doing C coding again.
[02:33:37] And I've never been a really good C coder.
[02:33:40] I have written code professionally.
[02:33:41] I wrote a fork bomb for IBM officially
[02:33:44] to test some containing code to keep errant processes in line.
[02:33:51] I actually got paid to write a fork bomb in C.
[02:33:54] It was a long time ago.
[02:33:55] And I've done, over Christmas, I've done C stuff.
[02:34:00] But the stuff that we've always done has been,
[02:34:05] the C coding has always been kind of for informational reasons
[02:34:10] and to understand how C works under the hood and everything.
[02:34:14] There are some fun books that we used in the past, but I'm strongly considering using this book.
[02:34:22] So the reasons that I'm looking at Beginning C from Beginner to Pro is, one, it's from A-Press.
[02:34:30] So A-Press does not put out crappy books.
[02:34:35] They're extremely good.
[02:34:37] And I've made videos about why you should never, ever, ever, ever buy a book from Pack Publishing.
[02:34:43] don't want to get there go there but the a press books that come out these are
[02:34:48] super professional and that means it's gone through a lot of editorial vetting
[02:34:53] and all kinds of stuff and the fact that they already mean they're already
[02:34:57] selling they're already set up to sell this to schools so you can tell this is
[02:35:00] a big textbook out there it does take you through the new features of c23 to
[02:35:07] address dedicated functions and it's you know the ebooks like 20 bucks so after
[02:35:16] seeing this I have no desire to get a job in C but if I was ever gonna teach
[02:35:21] C this would be the book I'm gonna use next I've never read it I've never gone
[02:35:24] through it and I think it would be fun to go through together so I'm considering
[02:35:30] maybe doing a stream on that I don't know when it will be I used to be C is
[02:35:35] for Christmas and I would do it over the Christmas holiday, but there's a lot of stuff that we're
[02:35:38] talking about, you know, queuing up. But if you want to go have a look at this book and you would
[02:35:44] want to get into C coding, like why would I code in C, Mr. Rob, in 2027, right? Well, because C is
[02:35:50] back on the table for development for lots of things over other popular languages recently,
[02:35:55] including Go and Rust, because C is the largest code base on the planet. There's just no more
[02:36:01] code written than in C, those code bases need to be maintained and upgraded and used.
[02:36:08] And now with modern AI tools and linting, you can use agents to code in C safely where
[02:36:16] you couldn't do that before.
[02:36:17] You needed to depend on the guardrails of a language that Rust claims, which is a false
[02:36:21] claim, but to have where you can't write memory overflows and stuff like that.
[02:36:28] Understanding C2023, which I don't know anything about it, I think would be extremely educational.
[02:36:35] And, you know, now that the entire Linux kernel has, you know, they found a thousand vulnerabilities with AI in the Linux kernel.
[02:36:45] And I, with AI in the mix right now, I think it's just a matter of time before someone develops a Linux compatible kernel in modern C from scratch.
[02:36:57] maybe you'll be the first one. Who knows? Yeah, I've said many times, the chat is repeating what
[02:37:05] I've said over and over and over about learning C. If you want to understand how computers actually
[02:37:11] work under the hood, you want to understand the science of computers, you must learn C. There's
[02:37:16] just no other language short of assembly. And actually, the best way to do it is to start with
[02:37:22] assembly. And then by the time you get to C, you're really happy about that. And we used to do that
[02:37:27] micro microcontrollers um but that you know is it i don't know that that's going to be an option
[02:37:35] going forward i think just learning c through going this way but writing whatever application
[02:37:39] c is also a very it's still the primary language when it comes to coding on hardware
[02:37:43] um rust is you know making a lot of inroads there as well so it's reading still a good way
[02:37:49] to learn instead of hacking and getting journeys with a i i still think that you should have a
[02:37:54] structure to your learning from somebody who knows what they're talking about. That's why
[02:38:01] I'm compelled to, I'm interested in this book. You cannot trust an AI to cover the caveats and
[02:38:08] the edge cases that are modern because all AIs have been trained off of old stuff. If somebody
[02:38:17] hasn't run into an error with that recently, you know, let me know. But a lot of them, well,
[02:38:22] the latest stuff that they've been trained on is they're more about the volume of stuff that
[02:38:28] they were trained on than what is up and coming and what's the best practice. And AIs are always
[02:38:34] going to be behind on that. They'll get better, but they're always going to be behind because
[02:38:37] the models have to be reorganized based on the most modern things. And what is best is not always
[02:38:44] what's popular. And that is the complete antithesis of how AIs are trained. So I do think
[02:38:52] that people who want to be innovative in the field are going to mix the leadership of experts
[02:39:00] in the field who are not known or are just becoming known with AI, which is really good
[02:39:09] tell you what's the established knowledge on a given topic. So if people are in different ways,
[02:39:17] yeah. Well, AI can organize your learning in a very specific way. But yeah, I do think books
[02:39:24] like that are super important. AI is never going to replace human beings. And I have never more
[02:39:30] confidently been able to say that than now having used AI for a year. You know, until AIs can
[02:39:39] instantaneously consume the best ideas out there from the humans. Now, is it true that AIs are going
[02:39:45] to come up with very informative, edgy ideas that humans can't even think of? Absolutely. They're
[02:39:52] already doing it. But it's also true that humans are going to be able to outthink and outinnovate
[02:39:59] AIs for a long time. And while that's true, you know, which is, you know, the human brain is always
[02:40:07] gonna be able to do things that the that an AI brain can't do but you know so
[02:40:14] there is still you know combining industry expertise with so for example
[02:40:20] the personal experiences of somebody's been lurking 35 years in the field they
[02:40:25] can tell you the subtleties of the interactions between the people that are
[02:40:28] using it and the software systems that need to be developed and stuff and you
[02:40:32] were still a long long long way from an AI having the comprehensive knowledge of
[02:40:37] that same sort of life skill. It would have to have compiled the data from multiple veteran
[02:40:45] engineers who have written the entirety of their experience working in a company in order to even
[02:40:50] know how to talk about those things, which is not happening because those people, I've always said
[02:40:55] this, the more likely you are to hear from somebody, the less likely you are to want to hear what they
[02:41:00] have to say because they've been spending all of their time marketing and putting themselves out
[02:41:05] there and answering Stack Exchange and bumping up their numbers, those are the people who have
[02:41:10] trained AI. The people that maybe are going to tweet every once in a while, like, you really
[02:41:16] should look at this or why, it's because they're really good and they're experts in their field
[02:41:20] because they are spending so much time doing the work. And if you're lucky to get a chance to hear
[02:41:25] from these people, you know, you have an opportunity to beat everybody else because they are, that's
[02:41:31] how I was taught Unix and Linux, people that don't talk about it, people that have been doing it
[02:41:35] forever. So I do not feel that the industry experience is ever going to be supplanted by
[02:41:42] AI. I just don't. And because AIs are unable to synthesize the life experience of veterans
[02:41:52] that are all doing things differently. So all right, so let's move back to away from this
[02:41:58] conversation and back towards what comes next. So earlier I mentioned that when I first start
[02:42:06] teaching people, I realized really early there are people that want to develop applications,
[02:42:11] particularly graphic applications, but mostly kids who want to go into game development and
[02:42:15] web development and all those apps development, apps we'll call it. And then there's the people
[02:42:21] that want to live on the terminal. They want to be hackers. They want to use VI. They want to
[02:42:24] they want to have five processes running at the same time and they maybe want to use AI to do all
[02:42:29] of those things. And those two groups generally don't cross-pollinate, but sometimes they do.
[02:42:34] And right down the middle, that's the SysDE land, that's DevOps land, the people that know how to
[02:42:39] code really well and also do systems operations. And it's worth mentioning that having the skill
[02:42:46] to play in both areas is very valuable. And without planning this, I ended up doing this
[02:42:53] and being able to weather the storm through many, many economic changes, downturns, upturns in the
[02:43:00] world. When there's money, it's all about making new stuff. So applications development becomes
[02:43:04] something new, modernizing the code base, making a new thing. It's all about the new stuff. The
[02:43:08] money is all in apps. And then when the money is short, like when you're going through a depression
[02:43:13] or a recession or something, then it's all about keeping stuff running and maintaining what you
[02:43:18] have. And that's all about ops. And especially good if you have apps that are software applications
[02:43:23] that need to be maintained instead of added to or replaced. And that, so if you can maintain
[02:43:29] code bases, and if you can build systems and maintain and keep existing systems up and running
[02:43:34] in operations, you can go back and forth. Operations people are almost never let go
[02:43:39] because they, no matter what, they've got to keep the thing running. They are keeping the
[02:43:45] engine's running. And all the software applications, those people can go and they can be replaced
[02:43:50] because that software can be replaced unless it's super critical to the bottom line. So
[02:43:54] that's a little bit of career advice if you're trying to decide what to learn.
[02:43:58] So we're about to talk about how to set up my Windows machine to do operations type work.
[02:44:03] Windows lends itself much stronger to applications type work, being the system to use for gaming and
[02:44:12] all of that. Not necessarily if you want to do 3D game development, which we have done. I've done
[02:44:21] Unreal Engine development and played around with that a little bit, but we're not going to do any
[02:44:25] of that now. We're going to go over to operations. How do you make your machine into a great hacker
[02:44:33] machine? Well, the first thing would probably be to install something like VMware, which we need to
[02:44:37] re-evaluated in 2027 because VMware has since gone to crap. Apparently, it's gotten bought out by
[02:44:43] whoever bought them. I don't even know. And it's kind of like died on the vine. So
[02:44:48] I don't know that buying VMware and putting Linux under VMware on your machine is a reliable thing
[02:44:55] in 2027. Broadcom. Yeah, they're the company. So I used to talk a lot about how amazing VMware was.
[02:45:04] I've used it forever. I have a pro license still.
[02:45:08] I don't know that that's true in 2027 and quite honestly,
[02:45:12] I don't want to evaluate whether that's true or not because
[02:45:15] I know for a fact that the most important virtual machine engine to learn
[02:45:20] is KVM, which is the powerhouse behind everything that runs in the cloud
[02:45:27] and everything that is running inside of Kubernetes clusters and other
[02:45:32] clusters that's being GPU enabled to run all kinds of amazing things. So the only virtual machine
[02:45:39] that I want to learn in 2027 is going to be KVM, and that requires Linux. And so that's where I'm
[02:45:49] going to go with it. KVM has a number of limitations versus VMware. It can't, in a, you know,
[02:45:56] customer-facing kind of situation, it can't split a GPU across multiple applications with the host
[02:46:00] system. It has to have a dedicated GPU. I don't know if that's still true. Again, these are all
[02:46:05] operational deep dive details. You probably don't need to know. I don't mean to scare you,
[02:46:09] but they're related because, you know, in the past, in order to get Linux on my computer,
[02:46:16] I would ask myself, how can I get Linux on there? There's four ways you can get Linux on a Windows
[02:46:23] machine. Or you can, it seems like you're getting Linux, right? So Git Bash, I'm going to put that
[02:46:30] under there, although technically you're not getting Linux, right? Git Bash, we already did.
[02:46:34] Git Bash gives you Bash, which feels like Linux. It feels like a terminal, but it's not. It's not
[02:46:40] Linux at all. It's an emulation of the Unix and Linux operating system command line terminal
[02:46:48] on Windows. And in that vein, there's Sigwin and a bunch of other stuff that's really arcane
[02:46:54] and you don't need to do anymore. And those things are definitely an option, but none of them are
[02:47:02] actually Linux. Okay, so we want actual Linux. So the other way to get Linux is through a container.
[02:47:09] So you would put a container engine, and we're not going to talk about the difference between
[02:47:15] containers of virtual machines other than to say literally that one of them is a virtual machine
[02:47:20] that means it has all the devices and everything you would expect on an actual Linux machine and
[02:47:25] the other one is or any machine really it doesn't have to run Linux you can run Windows in a virtual
[02:47:31] machine even on Windows it's a virtual machine that has a CPU and everything and then you have
[02:47:37] containers which are designed to contain an application sometimes an application that looks
[02:47:44] a lot like an operating system, but without its own devices, without its own CPU, without its own
[02:47:49] GPU, without all of that. It mounts those things, but protects you from everything else by
[02:47:54] containerizing all of it. But for all intents and purposes, when you're using the thing,
[02:47:59] it feels like Red Hat Linux, right? You can't put Windows in a container, right? But anything
[02:48:05] you could put into a terminal-based application world can almost all be put in a container.
[02:48:11] Containers are also mandatory learning because they're the way that you contain any application, model, crunching, microservices, and deploy them in an enterprise environment into Kubernetes, even through Podman, Docker, any number of ways.
[02:48:27] That's the way to deploy applications these days is to containerize them and stick them out there because you can run three containers, versions of it, and all that.
[02:48:34] So learning containerization is really great, but again, that's not really an operating system.
[02:48:39] So we have the virtual machine is the real way, right? And among the virtual machines, there's actually one other last remaining virtual machine, which we already talked about at length today. And that is WSL, Windows Subsystem for Linux 2. One was an emulator. It wasn't a real Linux operating system. WSL is.
[02:49:01] And what it is, is it actually is a hypervisor virtual environment that runs on the hardware.
[02:49:08] Windows has made it so that it runs as close to the hardware as you possibly can.
[02:49:13] But it is, so it's virtualized, but it's virtualized so well that it has direct access to things like your GPU and other stuff like that when possible.
[02:49:24] So WSL2 in 2027 is the no-brainer selection.
[02:49:29] I did talk about my frustrations with WSL2 earlier in the video and in other years because
[02:49:35] WSL2 was kind of quirky and weird.
[02:49:38] It didn't really mesh well.
[02:49:39] It would blow up just like any virtual machine sometimes does.
[02:49:42] But and unlike other virtual machines, you can't snap it back, right?
[02:49:47] You can have multiple instances and if they go wrong, you can delete it and then add another
[02:49:52] one.
[02:49:52] But VMware is really great because as you're doing your tweaking and beating it up and
[02:49:58] you'll use virtual machines by the way if you are going to do any sort of
[02:50:03] hacking because that's what you do is you put Windows on there and hack it in a
[02:50:06] safe virtual environment without hacking the actual computer. So learning how to
[02:50:10] use virtual machines is really essential. In fact I think the offensive
[02:50:14] security still requires you to have VMware on a Windows machine in order to
[02:50:18] do the hacking that they teach you. But for our purposes we just want access to
[02:50:23] the closest thing to a Linux machine while still keeping Windows as the
[02:50:27] primary operating system. It's worth mentioning that, yes, you can dual boot,
[02:50:32] and I actually bought a two terabyte NVMe drive so that I can dual boot into
[02:50:38] straight up Linux that can run machine learning models and all that other stuff
[02:50:43] that I would not be able to do under Windows or WSL2 as far as I know, but
[02:50:48] we're we're gonna just stick with WSL2 because that's gonna give me
[02:50:52] everything else that I need. And a lot of WSL 2 has had a long time to mature since the last time
[02:50:59] I used it. And the last time I used it, it worked pretty well for a good year. So I don't expect to
[02:51:04] have any problems with it. To do installation of WSL 2, I already did it, but I'm going to do it
[02:51:09] again. It's a WSL dash dash install. And request operation successful changes will not affect until
[02:51:17] reboot. So when you reboot, it's going to bring back Linux on the hypervisor. And I feel like that
[02:51:26] is going to take another operation. So I'm already ready for us to bring up WSL, but there are a bunch
[02:51:35] of other preparations for the system that I need to do before I do that. So then I'll end this video
[02:51:41] and i'll make another video about setting up wsl so um uh and by the way the setting up of wsl is
[02:51:49] largely what i already did i pulled down my dot files around setup and everything just works
[02:51:54] um then that's got its own video so we are currently running from the terminal inside of
[02:52:00] us code and because we wrapped up our apps kind of setup but now we need to get an actual terminal
[02:52:06] that's not this. Okay, so we need to install something else. And we already used WinTerm to
[02:52:13] install some other stuff. So we're going to actually install WesTerm. And I think we can
[02:52:19] actually just install it directly. I don't know. We're going to try though. WinGet. Actually,
[02:52:24] let's ask my AI. At some point, you're going to need to install OpenCode and Cloud, but we'll do
[02:52:29] as a separate video so let's go search for how do i install was term and uh okay so it's probably
[02:52:41] going to say pre-built binaries brew install western on mac uh we're going to do windows
[02:52:48] winget winget install with wes.westerm okay so winget winget is the standard windows installer
[02:52:54] package and star. Let's see. What did I, what am I missing? Scoop. Install wuz.wuzterm.
[02:53:07] Wuzterm is a terminal written in Rust, which is really fast and amazing.
[02:53:12] Never let it be said that I hate Rust applications. I hate Rust as a language and I hate the Rust
[02:53:20] leadership community. They're a disaster, and you can read all about it and watch other videos about
[02:53:25] it, but everything else is fine. So there are a lot of really great tools made in Rust, and those
[02:53:33] are awesome. So okay, we have Wisterm in here, and I've already got a Wisterm configuration thing. I
[02:53:39] can probably actually run Wisterm from in here. Nope. Okay, let's see. It's a bash. This reloads
[02:53:47] my environment. Let's see if it works. Nope. Nope. It didn't work. I'm really, I'm really like
[02:53:56] crossing the terminals by trying to run Western from here. Yeah. All right. So
[02:54:03] we should be able to run it just from this as I push the Windows key. Wes term. There it is.
[02:54:15] wes app enter all right so here we go all right this happens every time this is because it is
[02:54:27] actually finding my western configuration you won't get this problem the reason i was i was
[02:54:33] hopeful for that what it's doing is it's actually finding my western configuration in my home
[02:54:37] directory which i was hoping for let me show you where that's at so inside of my home directory
[02:54:43] there should be a wasterm.lua file and this is the file if you want to open it
[02:54:52] we can do but open it with VS code and we can open this actually let's do code
[02:55:02] Wait, what? No code. What? All right. I'm just curious. Let's just run VS Code. Oh, I know.
[02:55:22] Okay, so this is actually kind of cool. So I'm opening a terminal in VS Code, but I want to open
[02:55:27] that file for editing, right? So I can actually do, because I'm in the home directory, I can do
[02:55:32] code dot, and that will open this current directory for editing as a project. I can probably also just
[02:55:38] do dot westerm dot lua, isn't it? Do you want to allow entrusted files in Windows? Remember my
[02:55:49] decision open. Okay, so it did open it, so let's close the terminal. So this is my Western
[02:55:57] configuration in VS Code. You're welcome to it. It's in my .files. This is where we're getting
[02:56:05] some problems. And I'm also, I'm going to have my AI help me rewrite this a little bit, but
[02:56:12] this, what I rewrote, I simplified my Western on my Mac, and I made some pretty hard-coded
[02:56:19] things here, like I sim linked to this Westerm, right? And the really great thing about Westerm
[02:56:27] is you can actually have a single configuration file that works with everything. You just have
[02:56:31] to have conditionals in here based on the operating system. And I removed all of those
[02:56:35] things. This default program will obviously have to change. So, you know, and then I have these,
[02:56:43] the other default fonts in here. All of this is stuff that needs to be changed and modified
[02:56:48] to be able to do this, and I am going to need to put OpenCode on here for that.
[02:56:54] I'm not quite certain whether installing OpenCode in Cloud and Cloud Pro is going to be mandatory
[02:57:02] for the people going down the ops path of what I'm going to teach them, but I really feel like
[02:57:06] it is. Last year, using Github Copilot really was mandatory, and I think this year using that
[02:57:17] is mandatory. So I don't want to say this. And I'm kind of hemming and hawing here because
[02:57:30] I'm trying to decide whether that comes as a prerequisite to everything else.
[02:57:33] So WSL2 is already installed. So we have that. We just need to reboot to get it.
[02:57:40] We already have Git Bash because we installed that so that we could have some semblance of
[02:57:47] bash. We installed the GitHub command line tool to Windows, not to WSL2. Those things will have
[02:57:54] to be reinstalled to WSL2 once we get there. But my Western setup is hitting sort of a problem here
[02:58:04] because my configuration file has been made to be Mac only. And I need to change that. That's
[02:58:12] this error message is if I close the error message it'll still run um but I mean it should still
[02:58:19] run where did it go another option is for me to move the western file out of the way for a second
[02:58:24] let's do that so let's move dot west term because you're going to have to come up with your own
[02:58:28] anyway so let's move west from lua to just west term uh dot lua uh off something so uh let's try
[02:58:40] Westerm now and it should pop up without the problem. Yep, okay. This is a very, very boring
[02:58:48] Westerm and you can see that it opened as its default, the command.exe.
[02:58:53] Now I can take a stab at writing the Lua myself to do the conditional to say I want to run bash.
[02:59:10] or I can, we're going to be doing some Westerm configuration here, obviously.
[02:59:18] And let's put the other Westerm back for a second and edit it as some, and I'm
[02:59:24] gonna use VS code to edit it because I, you know, made a big deal about that. I
[02:59:30] don't want to teach you VI yet. Westerm, we will. Westerm.luv. So we're
[02:59:38] going to go ahead and edit this. I wonder if code, let's run that low. Now I could, I could just hand
[02:59:53] this code out. I wonder if Gemini could even help me with this before I get open code on here.
[02:59:59] let's take a look I think we could be rather than doing the the hard path I
[03:00:09] think we could just do bash dot login I wonder if that'll work now remember I
[03:00:15] said though that West term has a if it finds a bash like this it might find the
[03:00:19] wrong bash yeah yeah see it's gonna find the app data windows bash I have a
[03:00:29] feeling that when we do this we're gonna have to put the full path in and we need
[03:00:37] to we're gonna if it there's gonna need to be a section in here that says if the
[03:00:41] OS is Windows then see if there's a WSL to bash on here and if so do that
[03:00:47] otherwise run git bash otherwise fail and say I don't have bash I think that's
[03:00:54] probably going to be the long-term solution to this but I'm going to go
[03:00:58] ahead and save this right now which I don't know how to save because it's
[03:01:01] WS code this here if you change this here you see this little round thing
[03:01:07] that means that it's not auto saving you can turn out of saving under the file
[03:01:11] menu and it will auto save and turn to X so now that got saved automatically
[03:01:15] um you'll see that already that that's going to show that it's out of sync with git and let's
[03:01:22] let's go the whole vs code route here rather than using git command you can go it's probably
[03:01:27] a good time to go add the git extension so we're going to go add the the git extension
[03:01:33] as you get best vs code get ignore
[03:01:44] Wow, there's a lot of extras now.
[03:01:46] It's AVS2 by default, then why isn't it here?
[03:01:50] It's not showing it.
[03:01:54] Because I opened the individual file, right?
[03:02:01] I know why.
[03:02:07] I think this is a symbolic link.
[03:02:11] I'm pretty sure.
[03:02:14] It's not. Interesting. Oh.
[03:02:22] Yeah, I think the reason it's not showing the GIF stuff is not in the gear repo.
[03:02:34] "cdd.inputFilesBestbyToMeanTheDirectory.wav".
[03:02:45] This is interesting.
[03:02:46] All my scripts are not working under Git Bash
[03:02:48] because it's not actual shell.
[03:02:51] All of this stuff needs to be fixed
[03:02:53] to work under Windows.
[03:02:55] Yeah.
[03:03:02] the directory below get which absolutely is there yeah my scripts got some problems on windows I'm
[03:03:10] gonna fix I knew it was one of the reasons I got a Windows machine I wanted my scripts to work on
[03:03:14] everything so I'm pretty sure if I do code space dot it'll reopen a window here oh there's another
[03:03:28] way to make it reuse the same one. It's code dash r dot, I think. Yeah. Did it do it?
[03:03:38] Yeah, it uses your existing session. I don't know what that is. Okay, so this is my Git repo.
[03:03:47] This is probably no, none of the registered source control providers work in restricted mode.
[03:03:54] This is new.
[03:03:55] I've never seen this before.
[03:03:56] You're in restricted mode.
[03:03:59] Coded in the restricted mode.
[03:03:59] Intended for safe code browsing.
[03:04:01] Configure your settings.
[03:04:01] What?
[03:04:02] Security workspace.
[03:04:07] What is this about?
[03:04:09] This is all new.
[03:04:10] Oh, the backup and sync stuff.
[03:04:13] They have a cloud sync now, don't they?
[03:04:15] You used to have to add that.
[03:04:17] That was so annoying.
[03:04:18] You have to set it up with GitHub and do your own syncing.
[03:04:22] You go in here and change all your settings
[03:04:24] and you can't restore them open new window prompt you just didn't trust the workspace
[03:04:37] this without prompting, is we're opening a new git repo in the previous prompt, the
[03:04:54] banner at the top, oh, trust this folder, trust this, oh, trust, I control enter, whoopsie,
[03:05:07] thanks guys okay so there's there's get that's what I normally see yeah I
[03:05:15] normally would have expected to see that so now I'm gonna get repo and I can see
[03:05:19] source control okay so the reason for that's because I'm about to make a ton
[03:05:23] of changes in here. And so, yeah. So, where is it? I think what it did is, I think my Simlink
[03:05:50] isn't real i think we do sim links on windows it actually copies them if i remember right
[03:05:54] no plus plus would have been
[03:05:58] no see i don't have a specific installer for windows setup so i have i have configs for
[03:06:10] the different systems if i go in my config wind west term i'm pretty sure the setup
[03:06:17] is to copy the file and it tried to do a symbolic link but when you do a symbolic link in windows
[03:06:24] in just windows not wsl2 it will copy it will create a copy of the file and so that's what it
[03:06:31] did i have to rerun setup to get it to copy the file again um this is like a default behavior
[03:06:36] for windows which is really weird if you ask me um like let me prove it if i if i change the file
[03:06:47] so here here i am in dot right so i'm in well let's go back home so here i am and if i go edit
[03:06:57] the file uh was term dot lula um if i make a change oh wait i'm in i'm in i keep forgetting
[03:07:10] i'm in code enough i don't have him mode set i'm gonna tell i was gonna get claude i was just
[03:07:16] going to get clotted. That's exactly, you're reading my mind here. But if I change this
[03:07:21] and I save that, so it autosave, right? It won't save this one. Wait, what?
[03:07:32] What is going on? This actually might be really good news.
[03:07:47] Where is this terminal located?
[03:07:49] Wait, how is it doing that?
[03:07:53] Yo
[03:07:58] Oh, I changed setup. I changed setup and not and not and not what's the term, okay
[03:08:14] VI was term
[03:08:17] What I'm trying to show you is that when you do a sim link where the fuck did it go? Oh
[03:08:24] That's because I'm using VI
[03:08:27] cheese
[03:08:29] Again, sorry guys. I'm so sorry. All right, so
[03:08:36] All right, let's let's do the test here
[03:08:39] So I'm editing a file in my home directory not in my repo directory the same file
[03:08:46] not symbolically links and
[03:08:49] So I put something in here, right
[03:08:56] Can I close that so you know if I open up this file it should have the same thing in it if it's linked and
[03:09:09] Uh, and this is admitted in the documentation. I think on Windows was from the...
[03:09:13] Yes, you can.
[03:09:16] I just loaded it. It worked.
[03:09:18] It definitely worked.
[03:09:21] Um...
[03:09:23] So...
[03:09:25] I'm running out of... I'm running out of a mic.
[03:09:30] Let me pause the video for a second, guys.
[03:09:32] I'm running out of mic. I need to add it back.
[03:09:37] Okay, hey, we just got a really great raid from Overgrown Carrot. Go check them out on Twitch.
[03:09:43] See if you can watch them.
[03:09:46] I don't know, what were you guys doing?
[03:09:50] So we're going back to the terminal here. Okay, so here's the web server file.
[03:09:56] So what I'm trying to demonstrate right now is that when we open up the actual file in the .repo that it does not have
[03:10:05] What we want in here so in order to that I have to close the terminal which is there that's I'm doing control
[03:10:11] You're hacking Active Directory nice
[03:10:15] Always great to hear so if you see here this file is does not have the comment that I added and that's because it's in here
[03:10:25] Even though the setup script does a copy when I run the setup script to install my stuff under Windows only
[03:10:33] Using Git Bash, it does a symbolic link. This line right here, rather than creating an actual symbolic link,
[03:10:41] the LN command creates a copy of the file under Windows and Git Bash.
[03:10:47] It's a very annoying, subtle problem.
[03:10:50] And this is, of course, one of the many, many reasons that we're not going to do these kind of things.
[03:10:55] Trucking to install wisdom is a horrible idea, and we've talked about why we're not using that.
[03:11:01] I'm not going to revisit that all over again.
[03:11:03] First of all, you should never use Chocolate or Scoop or anything other than Winget if you're going to use a command line package manager in Windows because that's the official package manager for Windows.
[03:11:13] That's all I'm going to say about that.
[03:11:15] So you can see that the two are not symbolically linked in there.
[03:11:19] And the reason we're talking about this is because there are different, what Lua has, Ubuntu Monitor and Front install.
[03:11:27] If Darwin doesn't have it, go ahead and install it.
[03:11:30] this installer needs to be upgraded. I wrote this installer originally myself last year,
[03:11:35] and I had the cloud help me rewrite it so that it would install a proper Western load file
[03:11:41] under windows and under, you know, but other things have to change, including the Western file
[03:11:48] itself. Okay. So again, we have two of them open. We have the actual one open and says something
[03:11:55] that we hashed. This is the setup file, so let's get rid of that.
[03:12:01] Let's go back to the west terminal file. This is the file in the repo, and it
[03:12:05] still has our git bash prompt, but we don't really want that. The file we really
[03:12:09] want to edit is the one that's actually on the system. So to get to that, I'm
[03:12:14] going to go back to the terminal where I'm already in the system. I'm not under
[03:12:18] repos, github, rbxrob, dot. I'm under the home directory, and this is where the
[03:12:23] active file is being used and I can edit this file here either with VI or with
[03:12:29] code if I wanted to you could do code that was term and that will open up on
[03:12:33] this code so that we can actually edit the file close my terminal quickly so
[03:12:40] this file has something in here we already proved that we were working on
[03:12:44] that file I'm going to go ahead and delete that out and we see that we have
[03:12:48] the batch down here I don't know what else is going to be needed we're probably
[03:12:51] going to need to install the Ubuntu nerd fonts, and that'll need to go into my setup script.
[03:12:55] These are all things that Claude could add for me instantaneously, so I'm on the fence about
[03:12:59] whether I should install Claude first to continue doing that. And yeah, and then we're going to go
[03:13:06] ahead. This, no, this, all this stuff that I'm doing is, is this is, none of this is Windows
[03:13:11] fault. This is all Git Bash and Windows. I haven't used Windows official use Unix because I haven't
[03:13:18] put WSL2 on here yet. I put it on here, but I have to reboot and get it. So right now I'm just
[03:13:23] trying to see if I can get Westerm to install without WSL2. And Westerm has to run with or
[03:13:30] without WSL2. So we're going to get that to work and fix my configuration file, which I've been
[03:13:36] meaning to do. So let's go ahead and see if Westerm will even start. Westerm is installed,
[03:13:43] install it with Winget, and we're gonna see if it pulls up at all. It might
[03:13:51] actually already be up. Nope, we got a couple broken Westerns. Yep, we have we
[03:13:58] have several broken Western files. We have the PowerShell left over. Here's our
[03:14:03] here's our windshields. It says unable to load fonts. Is there anything besides the
[03:14:11] fonts that's not loading. Now this is interesting because on Mac it'll give you
[03:14:14] the font errors but it'll still run with the defaults. So we're going to need
[03:14:21] to add a method of installing the required fonts to my to my setup and yeah
[03:14:35] uh I can probably just do it was I could look up the installer for that and then edit my setup
[03:14:42] script by default to do that or I can have my AI do it I'm kind of kind of struggling I think for
[03:14:53] right now we will go ahead and comment this out this is kind of fun to do in VS Code haven't done
[03:15:01] in a while. I should be able to just say comment. No, copy paste. I don't know what I'm doing. I
[03:15:12] don't use VS code ever. How do you comment out all those lines at once? I should just be able
[03:15:20] to do the thing. Wait, add comment. You kind of want to stop you seeing it. Remove line comment,
[03:15:35] show all commands. Add a line comment, remove line, toggle line comment. Toggle line comment,
[03:15:44] "Hey, I found it! Yay!"
[03:15:46] Alright, so...
[03:15:49] So it commented it out. Now, let's actually try West Term. West Term again.
[03:15:52] I don't know what's up with all these other dead things. We should probably kill them. Close our windows.
[03:15:57] Alright, let's try it again. So let's try West Term.
[03:16:00] See if it'll start without them.
[03:16:04] So...
[03:16:08] It started and then crashed immediately.
[03:16:14] That's not good, just making fun of a DOS today.
[03:16:23] Oh my gosh, oh wait, wait, wait, wait, the Groovebox material thing, maybe that's what's up.
[03:16:35] Maybe it's the default priority thing.
[03:16:41] Let's keep commenting things out until we find it.
[03:16:44] I wonder if it's the login.
[03:16:55] Yeah.
[03:16:59] You have a configure wizard.
[03:17:07] Okay, it's actually running.
[03:17:09] You just can't see it.
[03:17:11] wait what where the hell is it oh it opened these empty command screens
[03:17:22] where are they just hiding
[03:17:26] i don't see them do you see them
[03:17:30] i don't see them
[03:17:39] Cursor exterm terminals
[03:17:41] Huh, let's do this. Let's say
[03:17:48] Let's turn on
[03:18:09] I'll put it in the first window where I like it, filling the laptop screen.
[03:18:14] I'm like slightly inclined to just use Windows Terminal now that they sped it up and not use West Term on Windows.
[03:18:31] Would I be a horrible person if I did that?
[03:18:39] It's already working, it's already configured.
[03:18:50] It's what most people do.
[03:18:57] The reason I don't is because it is slower, it's quite a bit slower, but I don't know
[03:19:01] how much slower, and I don't know if I care.
[03:19:04] Does that make sense?
[03:19:07] So like if I-- let's see.
[03:19:13] So if you type up terminal--
[03:19:15] see, it's petty for remote stuff.
[03:19:24] Ouch.
[03:19:24] Settings, default profile, command prompt,
[03:19:31] Azure Cloud Shell.
[03:19:34] I actually have a profile for this.
[03:19:37] Yeah
[03:19:39] Yeah, a lot of people do that a lot of people in my work do that and I feel sorry for them
[03:19:48] I we did party for eight years at my school
[03:19:50] Mm-hmm ssh through that through WSL is how I do it
[03:19:55] so we need to add a new profile I
[03:19:59] Don't even remember how to add a profile to Windows Terminal
[03:20:07] oh here it is add a new profile a new empty profile a new empty profile profile for
[03:20:19] there is a way to put it in the right place I just don't know how to put it there
[03:20:25] I think I think I actually might have this already listed under my Windows installer
[03:20:37] um install windows to terminal json settings so this is the profile um
[03:20:48] yeah and
[03:20:54] wsl has native containers i did not know that
[03:21:01] So, and it actually, you see, it has to get bashed tight in.
[03:21:09] So, and this is, this is, these are my favorite colors.
[03:21:21] Really?
[03:21:27] So, um, I don't even know where to put that, is the question.
[03:21:36] So, I forgot, I should put that in my setup installer, um, which, again, if I had Claude
[03:21:45] on here, I could do it in one command.
[03:21:46] I don't, though, so I'm doing it the hard way.
[03:21:56] Yeah, WestTerm's not happy.
[03:21:58] I'm seriously thinking about not setting up WestTerm to do all this.
[03:22:01] I don't know.
[03:22:05] It really depends.
[03:22:06] There's a bunch of tests I have to do under Windows.
[03:22:08] In fact, let's do one of those tests right now.
[03:22:12] So if we close, let's see, if we open a new terminal.
[03:22:26] So there's basketball not found.
[03:22:29] Topic not found.
[03:22:39] Oh, that's wrong.
[03:22:56] Clone....
[03:22:58] Wait, what? How come I'm not off anymore?
[03:23:26] Terminate with exit code 1.
[03:23:33] All of these are reasons to get WSL 2,
[03:23:41] which would make all of this easier
[03:23:48] because I wouldn't be as quirky.
[03:23:50] This file has to go someplace.
[03:23:52] I know, I already installed it.
[03:23:56] just have to reboot i didn't want to end the stream first though before that happened so
[03:24:01] i wanted to see how much i could get out of this including installing western um
[03:24:06] so
[03:24:10] what my problem with western is okay let me let me go back to this
[03:24:20] but a problem right now with westerm is that i can actually move it
[03:24:24] i need to get the configuration file out of the way because the configuration file is of course
[03:24:32] uh not designed for windows it's designed for mac mac only actually so when i run westerm
[03:24:41] i was getting errors and i already successfully got westerm to run
[03:24:47] without a configuration file so this is a very boring west term uh that you can run and then you
[03:24:55] can configure it now it's it's already running the wrong things so you know so i'd have to do
[03:25:01] i have to get it to do a bunch of stuff um it's using powershell blah blah blah and it's not
[03:25:09] not running any of this configuration um because it's you know it's it's a different configuration
[03:25:15] file um i mean one of the things that i could do i mean i don't even say it's just powershell
[03:25:25] uh so this is like powershell so it's already going to have a hard time with all that because
[03:25:32] i needed to run bash i guess i could just run bash yeah see so this is what i told you remember
[03:25:38] I told you before about the competing systems. So, you know, since I did the WSL install,
[03:25:44] PowerShell thinks that bash means, hey, go run WSL. But in this case, I want to run Git Bash.
[03:25:50] So it's a different bash. It doesn't resolve the same path. So if I do, you know, this is one of
[03:25:59] the reasons installing Git Bash and WSL at the same time is kind of a problem. I'm glad you got
[03:26:04] chance to see this um in order for me to actually execute bash as from the command line i would have
[03:26:12] to specify which bash to run so one of the things we could do with this is let's go back if we go
[03:26:21] back and we open up this western file again uh which i think is already open for editing osan
[03:26:27] so if i open western lua that'll open a new thing all right so let's go edit this file if if i do
[03:26:36] everything else um let's see mx spawn windows let's let's comment out all of this let's comment
[03:26:46] this out uh there's no fast command for this so
[03:26:57] what is it add line comment control k control c
[03:27:06] toggle line comment control backslash okay whatever control I've never done this
[03:27:17] god damn it control is a slash yeah okay there we go control slash yeah I learned something today
[03:27:27] um audible bell growbacks okay so the one thing we're gonna need is we do need this
[03:27:33] line as a program so let's actually take this out oh boy robert robert what the hell god I hate this
[03:27:47] give me my vi back i want my baby back baby back vi um all right so
[03:27:56] send compose color screen we don't need that either
[03:28:02] um don't need any of this i i want to be really careful because i don't i don't know what things
[03:28:12] are blowing shit up right so
[03:28:14] let's get let's go from here down comment that out
[03:28:23] yeah you can run things in a windows world yep i know isn't that great i found that out too i
[03:28:34] you can actually start graphic programs um you can't do that in a vm obviously well strictly
[03:28:41] speaking, it is a VM. So that's already saved. So we can probably, we just need to rename it.
[03:28:46] All right. So let's rename it
[03:28:50] move Westerm back to dot Westerm Lua. And then we're going to run it.
[03:28:59] We should, hopefully we're going to get bashed this time.
[03:29:08] Okay, so it says you got bad stuff in your config, and then it gave me back this. Okay, so we're getting closer
[03:29:18] All right, so is it because of this line here? Oh
[03:29:30] Yeah, duh
[03:29:34] Derp derpy derp Robert
[03:29:38] Roberts
[03:29:40] All right, so that's now say I couldn't keep that open all right rego where's this term?
[03:29:44] this is a way to know was
[03:29:48] Was term oh it fired up and then immediately closed you see that
[03:29:56] That means you can't find bash
[03:30:00] so
[03:30:03] Huh
[03:30:08] yeah I bet if we change this I bet I can find it now yep power tools yeah yeah I
[03:30:27] mean it's not horrible so we need to we need to go back to getting a terminal
[03:30:34] Which bash? There we go. The question is, can I put this in my bash for seeing how will I find it?
[03:30:40] Or does it have to be Windows-y terminology? You know what I mean?
[03:30:46] This is one of the downsides of working with Windows. So like, I can put that here...
[03:30:51] What?
[03:30:56] Oh my god.
[03:31:01] How do you cut and paste in Windows?
[03:31:03] I just want to cut and paste.
[03:31:08] Control X, is it really?
[03:31:14] Oh, God.
[03:31:17] No, it's not.
[03:31:22] I'm so dumb.
[03:31:33] Ctrl+Shift+X. Are you kidding me?
[03:31:35] Oh, you've got to be kidding me.
[03:31:42] Ahhhh!
[03:31:43] Give me...
[03:31:46] Give me... Is there like a buffer thing?
[03:31:50] Um...
[03:31:53] I'm... I mean, edit...
[03:31:58] Copy, Control + C. How about that?
[03:32:01] Yeah. The question is, here we're...
[03:32:05] Oh, it did it, but it put this stupid control character in there.
[03:32:12] Oh my gosh, can we just not windows right now? Can we just not?
[03:32:18] We're just not windows
[03:32:22] Not only the fact I can't do inserts, it keeps pushing H because I keep trying to VI my
[03:32:28] Oh my god, it works
[03:32:42] Wait, where'd the other stuff go?
[03:32:43] Wait, it got rid of the other stuff though!
[03:32:49] Fedoras, is there to sell? Nice!
[03:32:55] Alright, let's see if that works.
[03:32:59] I do know what I'm doing, I'm just gonna tell you right now.
[03:33:04] Because it's Windows.
[03:33:06] Oh my gosh!
[03:33:08] Unfinished string!
[03:33:12] Is it because I forgot a comma?
[03:33:16] Wait, what?
[03:33:18] Where did my quote go?
[03:33:22] I swear, I swear it had a quote.
[03:33:32] We're getting closer
[03:33:41] Didn't exit clean
[03:33:45] I have to look up in domain local
[03:33:52] Didn't exit cleanly
[03:33:54] Time for me to bail
[03:33:59] I'm bailing
[03:34:02] I spent way too much time on my own time on this.
[03:34:05] I had time for me to spend some of Gemini's time, burn some trees.
[03:34:09] All right.
[03:34:11] What is default program in Wes term for Git Bash on Windows?
[03:34:21] Of course it is.
[03:34:31] Okay. Thank you, AI. You are superior. You are superior to me. I don't deny it.
[03:34:42] All right. So right off the bat,
[03:34:53] Pace.
[03:34:54] Local Western, required Western, got it.
[03:35:00] Config Builder. Wait, what? Config Builder's a thing?
[03:35:05] Have I been doing this the hard way the whole time?
[03:35:10] Oh my gosh, Robert.
[03:35:14] I think I have.
[03:35:17] Cut.
[03:35:23] "Also cut."
[03:35:30] If this works, I'm going to be very sad.
[03:35:35] All right, Western, oh, snap, oh, snap, now I have to slowly add it all back.
[03:35:48] OK, so this is a project for my AI.
[03:35:55] So the last thing I'm going to do today-- what time is it?
[03:35:57] 2 o'clock, 3 o'clock?
[03:35:58] The last thing I'm going to do today
[03:35:59] is I'm going to install Cloud Code Pro and OpenAI,
[03:36:03] because those are mandatory learning for operations
[03:36:07] and probably for applications development.
[03:36:09] So would I have everybody install it?
[03:36:14] No, but I'd have the operations people definitely install it.
[03:36:17] anybody who's going to be on the command line drum roll.
[03:36:19] So the other people, I would have them
[03:36:21] use Copilot inside of VS Code or something.
[03:36:25] Quite honestly, I don't know what I would have them do
[03:36:27] because I haven't looked that far ahead.
[03:36:28] But I definitely know that the people that are going
[03:36:30] to be running wasterm like this are going to need Cloud Code.
[03:36:38] By the way, yeah.
[03:36:43] So this is still running Git Bash, which I find fascinating.
[03:36:48] And this, of course, this is one of the reasons I want Cloud Code.
[03:36:51] I want Cloud Code to create some code for me that's going to--
[03:36:53] I don't know Lua.
[03:36:54] I don't need to know Lua.
[03:36:55] I know enough to read Lua.
[03:36:57] But the Lua that I need to generate is non-trivial.
[03:37:01] I need to have it detect these different things
[03:37:05] and load them by source depending on what stuff is going on.
[03:37:08] I know Lua-- Lua is a great language.
[03:37:10] I know the general idea of Lua.
[03:37:11] Do I want to write that code?
[03:37:12] No, because I can write it with open code in 20 seconds.
[03:37:16] So it's time for me to start getting open code on here.
[03:37:19] And we're going to go ahead and do that.
[03:37:22] So we're going to spend the time doing that
[03:37:23] instead of making syntax errors for the next half an hour.
[03:37:27] How long did it take me?
[03:37:28] And yeah, am I bad?
[03:37:30] You can blame it on human error.
[03:37:32] I don't care if that makes you feel better about yourself
[03:37:35] and being superior.
[03:37:36] But right now, we're just going to do Cloud Code install.
[03:37:39] Now, the bad part about this is that really we should be doing a Cloud Goat install under WSL instead of also installing it under Windows.
[03:37:52] Because then we have a proper Linux environment that's all the, you know, completion, everything's going to be working properly and everything.
[03:38:04] So I think what we've done is we've concluded that we're done with this video.
[03:38:11] So what did we do?
[03:38:14] Let's recap what we did today.
[03:38:15] So we set up this Windows machine to actually do development.
[03:38:21] We gave it a shell.
[03:38:22] We'll get Bash as a shell.
[03:38:24] It's got VS Code.
[03:38:24] It's ready to start doing terminal development.
[03:38:27] And we did install WSL, but we have to reboot to get the actual WSL
[03:38:34] on the command line.
[03:38:36] But we've done everything necessary
[03:38:38] to start development on Windows.
[03:38:40] And this is cool, because it shows you
[03:38:45] the term, the changes we made.
[03:38:46] So if we click on a config setup was term,
[03:38:50] it'll show you the working tree.
[03:38:51] And it will actually show you the lines that were added.
[03:38:54] So we added-- this tells you right here we added an extra line.
[03:38:57] It's actually one of the really cool things
[03:38:58] about Graphic VS Code, which we are not going to use again.
[03:39:01] We'll probably use VS Code for our development
[03:39:04] we do the games because i assume that the only thing people are installed when they're doing
[03:39:08] web game development with phaser or pixie is you know vs code and chrome or whatever their browser
[03:39:14] base is um yeah i have i do all my get stuff it's just no reason to have to remember all those
[03:39:20] commands it's insane um yeah oh absolutely my my bundles patches it writes prs i use it constantly
[03:39:28] for that it's really really really good at that um here's where we get the the installation tree
[03:39:35] so this installer is it's here it already is set up to do darwin uh on mac all i need to do is to
[03:39:41] tell my ai to write a similar section to do an install uh for wsl um for for you know get bash
[03:39:49] configuration uh or to to install under windows on the cell now when i first wrote my installers i
[03:39:57] wrote a bunch of installers that i was having my beginners use and they actually detected the three
[03:40:04] different types of operating systems linux um you know all the distros are largely for me
[03:40:12] ubuntu okay linux is ubuntu uh you can run for our red hat if you want but for me when i teach
[03:40:17] people i teach them ubuntu is generally the best user-friendly linux os i just think that's true
[03:40:26] and then and then and the other one would be mac which which which registers as darwin
[03:40:30] as you can see with uname and then there's wsl which has a different username uname
[03:40:38] and then there is git bash which has also a different new name so there's on windows there's
[03:40:43] two different options that i would always prepare all my installers to use one of them was git bash
[03:40:48] which meant you didn't go for further and install wsl2 and the other one was was just wsl and i
[03:40:55] I need to make a decision right now
[03:40:57] about which one we're going to support.
[03:41:00] So if someone's going to be using my installer
[03:41:02] for the command line, are they going to put WSL2
[03:41:05] on the system, right?
[03:41:06] Or are they not?
[03:41:07] Are they going to skip that and go straight for Git Bash?
[03:41:10] Do I want to support Git Bash in my .files?
[03:41:13] And that's a tough question, because there
[03:41:16] are educators out there that are working with schools
[03:41:18] that still have Windows 10, and they're not
[03:41:20] being able to get Windows 11, and they're not
[03:41:22] going to be able to use WSL2 very
[03:41:24] easily. So they're probably going to be stuck with Git Bash. So that means I might want to create an
[03:41:30] installer that actually works with them as well. So I'm going to spend two seconds seeing what it
[03:41:35] looks like to detect. Yep, there we go. So this is how you detect Git Bash. And I actually have
[03:41:44] code in another project that does that tertiary thing. It detects where you are. Actually, at one
[03:41:51] point, I had it also detecting Segwin, which is a different variation of Unix on Windows.
[03:41:58] So really, it comes down to, in my own personal .files, which are replicated by teachers and
[03:42:07] others, who do I want to support? Yeah, so Git Bash is really the only one. Yeah, so Git Bash
[03:42:17] and WSL2 are really the only ones.
[03:42:18] If I have WSL2, it will say WSL2 when I do a U-name.
[03:42:22] So when I get WSL2 back on here in the next video,
[03:42:27] I'm going to put WSL2 on here.
[03:42:30] I'm going to configure WSL2 fully instead of just using GitBash,
[03:42:35] and then we will customize the code so that GitBash is detected.
[03:42:45] In fact, I'm going to add an issue really quickly using GitHub.
[03:42:49] So issue-- wait.
[03:42:51] I already did a githlogin.
[03:43:00] I don't understand why I didn't remember it.
[03:43:03] Anyway, so I was going to open an issue for the command line,
[03:43:13] Because I want to capture that uname out of there.
[03:43:17] Actually, I can split that with WSL2 once it's loaded.
[03:43:20] I'll just run a terminal that's running Git Bash instead of WSL2.
[03:43:24] Linux Mint.
[03:43:26] Yeah, Linux Mint is awesome.
[03:43:27] Linux Mint is my number one recommendation
[03:43:29] people want desktop Linux.
[03:43:30] It's like rock solid stable.
[03:43:33] Never, ever, ever done me wrong.
[03:43:35] So OK, that's the end of this video.
[03:43:39] I'll be right back.
[03:43:40] I'm going to stop the video.
[03:43:41] I'm going to take a break.
[03:43:43] And I'll go ahead and publish this video right away
[03:43:47] and get the transcription started.
[03:43:48] And then we'll do that.
[03:43:52] OK.
[03:43:52] As far as the live streamers, I'm still going to be live streaming.
[03:43:57] I'm just going to stop the recording video.
