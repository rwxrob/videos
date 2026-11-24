# 🚀 Home Lab Evolution of a Balanced Tech Professional

Lays out a gradual, budget-conscious path for building a home lab that exposes a beginner to every major operating system. Steps run from a good router with VPN and an isolated network, to cheap Linux and Windows laptops, a MacBook Pro as a daily driver, and a Proxmox server, then a larger hardware cluster with managed switches, Kubernetes and Slurm. Also covers why non-dogmatic familiarity with Linux, BSD, Windows and macOS matters for a tech career.

Here's how to build a home lab that covers all the bases, gradually including one of every major operating system, a good network router to learn networking, and an eventual Proxmox server to chop up into virtual machines of all shapes and sizes for kinds of work-related scenario testing.

Chapters:
0:00 Intro and goals of the home lab
1:00 Step 1: Get a good router
4:35 Step 2: Cheap Linux laptop
6:50 How the lab actually evolved
8:25 USB sticks and installing multiple operating systems
9:45 Step 3: Windows laptop
10:30 Step 4: Why get a MacBook Pro
13:00 Why know every operating system
14:45 Desktop Linux versus Linux servers
16:15 Proxmox server and virtual machines
18:40 Step 5: Hardware clusters and networking
20:40 The air-gapped lab and what was unnecessary
21:55 Recap, streaming, and meetup advice
24:40 Windows, ARM, and final thoughts

`#homelab #linux #proxmox #macbookpro #networking #openwrt #sysadmin #beginners #windows #freebsd`

## Category

Science & Technology

## Transcription

[00:00:00] Alright, quick video about the evolution of your home lab.
[00:00:06] This is a very opinionated video.
[00:00:09] I welcome your opinions in the comments as well.
[00:00:11] Be nice and this is not necessarily based on how my history of learning Linux came to
[00:00:18] be.
[00:00:19] I will talk about that at the end if you want to pass it over to that, what I actually
[00:00:22] did.
[00:00:23] But this is my recommendation to you as an absolute noob who wants to get into tech and
[00:00:29] wants to slowly and gradually incur the cost of a new home lab.
[00:00:33] This is the primary considerations of this video are cost for an absolute beginner.
[00:00:40] Assuming you're in school, you don't have a job, you're a server or whatever and you
[00:00:44] need to be aware of the cost of all the stuff that you're buying.
[00:00:49] The second main concern here is that you have exposure to as many types of things that
[00:00:55] you will encounter in the tech world.
[00:00:58] For that reason, there are things in here that Linux purists are going to really gristle
[00:01:04] on.
[00:01:05] They're going to get really angry.
[00:01:07] And I don't care.
[00:01:08] This is not for them.
[00:01:09] This is for you.
[00:01:10] This is for a beginner who's trying to get into tech and have a well-balanced, non-dogmatic
[00:01:15] opinion of the world, which is not 90% of YouTube.
[00:01:20] So the very first thing that you need to have is a good router, a good one.
[00:01:27] This thing is probably going to cost you $150, if not more, which is interesting because
[00:01:32] some of the routers cost more than an entry-level laptop, which we'll get into.
[00:01:36] I have a NICU or Nighthawk.
[00:01:38] I have it bridged.
[00:01:40] I have it running open WRT.
[00:01:44] Don't worry if you don't know what you're getting.
[00:01:47] Get a router that has, and we'll make a separate video about routers, picking routers.
[00:01:53] I have separate videos about every one of these pieces.
[00:01:55] So this is kind of the overview that brings them all together.
[00:01:58] I'll try to link the videos to those other things in the description eventually.
[00:02:03] But get a good router.
[00:02:05] So a lot of you are like, "Do I need a router?
[00:02:06] I can just use the one at home."
[00:02:07] That's what I'm doing.
[00:02:08] I'm using mine at home.
[00:02:09] But it's causing problems because I can't go onto the router and I can't set IP addresses
[00:02:15] and I can't see what's happening.
[00:02:20] I can't log into my network from outside, you know, at home.
[00:02:24] I can't.
[00:02:25] It's called a VPN.
[00:02:26] You can be in a hotel.
[00:02:27] And if you do it right, you can make it so that your laptops down here are as if they
[00:02:32] are at home.
[00:02:33] But that only happens if you buy a higher end router.
[00:02:36] I'm talking about a higher end gaming router, which you probably want anyway.
[00:02:39] I'm talking about a higher end gaming router that has the capacity to do the other things
[00:02:44] you want to do, such as being bridged and having some sort of VPN and open WRT and things
[00:02:51] like an open access to that.
[00:02:54] So invest in a good router.
[00:02:57] The thing that's great about that is that you can move around to any apartment and pretty
[00:03:01] much every apartment complex these days has automatic included Wi-Fi.
[00:03:05] And they almost always have a CAT6 cable that you can plug into the wall or check.
[00:03:10] My two of mine are dead.
[00:03:12] I found out the hard way.
[00:03:13] I had to have them come fix them.
[00:03:15] Because nobody uses that.
[00:03:16] They just use them to bought Wi-Fi.
[00:03:18] But you can actually plug this fancy router of yours into that and then you can do something
[00:03:23] super cool.
[00:03:24] You can have an entire safe network in a DMZ, a demilitarized zone that runs there.
[00:03:32] So you can experiment with all kinds of really fun things like ARP storming and all the stuff
[00:03:38] that would take down all the other devices on your home network.
[00:03:42] I do have a funny story about that about a kid who ran a denial of service attack against
[00:03:47] this entire home network.
[00:03:49] And it had to come and set up the firearms and the wires out of the walls because he did
[00:03:54] that sort of thing on his home network with all his smart devices in his big rich house.
[00:03:59] Bad idea.
[00:04:00] So if you get a fancy router, then you can plug that in and everything that connects
[00:04:05] to that router through wires or Wi-Fi is off of the network, of the other network.
[00:04:13] So this is the cheapest, easiest, simplest way to protect your household from your experimentations
[00:04:20] with your network.
[00:04:21] Okay.
[00:04:22] So that's the first thing you need.
[00:04:23] You need to get one of those.
[00:04:24] If you don't have that, you don't have the money for that right away and you just want
[00:04:26] to go straight to a laptop.
[00:04:28] You can do that and just use the laptop from the house.
[00:04:30] But eventually you're going to probably want to invest in one of those.
[00:04:34] All right.
[00:04:35] So the next, yeah, there are a lot open to VRT, Gleenette routers are really awesome.
[00:04:39] We'll talk about routers as a separate video.
[00:04:42] The second thing you need is if you're going to, I'm not talking about, you know, your
[00:04:46] gaming interests and your homework for school and all of that.
[00:04:51] That's outside of the scope of these decisions, right?
[00:04:54] So you need a Linux laptop and I did a whole video about this this morning.
[00:04:59] You need a laptop that you can throw away under $300 in 2026, used to be under 200, but
[00:05:04] whatever.
[00:05:05] You need a laptop that you can break, that you can experiment with.
[00:05:09] You can throw new operating system on every two seconds and it's not going to impact your
[00:05:13] life in any way.
[00:05:14] It's going to allow you to be really flexible and to really test out new things.
[00:05:19] You can try arch by the way.
[00:05:21] So you know, you can do all those fun things on that laptop.
[00:05:24] That is the most essential part of your core learning about Linux and Windows and desk
[00:05:30] tops and all of that.
[00:05:31] Now, I would suggest you also get a second one because they're cheap enough.
[00:05:36] And by the way, you can find these usually, these don't have to be something that you buy.
[00:05:40] You can, you know, I bought both of those things for under $600, right?
[00:05:44] But you can usually find these things out there, right?
[00:05:48] You can find them out in the wild.
[00:05:50] You can go ask your family at Thanksgiving, hey, does anybody got an old laptop?
[00:05:53] They don't use anymore.
[00:05:54] Oh, yeah, we have one that our taxes are on them.
[00:05:56] We never got rid of it.
[00:05:57] Can you wipe it for me?
[00:05:58] Yeah.
[00:05:59] Okay.
[00:06:00] So you do that and you get a pre-lapse up.
[00:06:01] You put Linux on there and you don't care how powerful it is because all you're doing is
[00:06:04] practicing setting it up.
[00:06:06] In fact, sometimes older hardware is the best to use because it'll work better with Linux
[00:06:10] because Linux is usually lags behind on the latest and greatest and it doesn't have as
[00:06:15] much security with UEFI on the BIOS.
[00:06:17] There's lots of reasons that old hardware works really fine and wonderful on Linux.
[00:06:21] In fact, you can breathe new life into old hardware by bringing, you know, kicking Windows
[00:06:26] off of there.
[00:06:27] I kicked Windows XP off of a computer and put a bare-blown Linux server and it's just
[00:06:32] on it.
[00:06:33] Minecraft servers on the thing.
[00:06:35] It was amazing.
[00:06:36] It was way more powerful than a Raspberry Pi.
[00:06:37] It was free and it was sitting at somebody's garage.
[00:06:40] Okay.
[00:06:41] So this is where I'm going to segue and I'm going to tell you how I did it.
[00:06:46] Okay.
[00:06:47] When I learned all of this stuff, I had the family computers, I had the kids gaming computers.
[00:06:51] I was obsessed with Linux.
[00:06:52] I put Linux on everything eventually.
[00:06:53] I made my kids use Linux.
[00:06:55] I was like, "There will be no Windows in this household."
[00:06:57] That's how serious I was in my 20s and 30s.
[00:07:00] Not that guy anymore.
[00:07:01] But at the time, and they grew up watching Strongbad on Red Hat Linux, I think, or Fedora Linux.
[00:07:10] So I would buy really cheap computers and I would put my wife winning her first eBay
[00:07:17] bid and she was running on a Linux computer.
[00:07:20] I have a picture of her like doing a little victory dance and anyway, so I just have good
[00:07:27] memories of the area.
[00:07:28] I ran my own mail server at home, I learned about a send mail, which ended up helping
[00:07:33] me get it.
[00:07:34] They didn't have anybody at work to do it.
[00:07:36] So I became the postmaster for the send mail process for the job I was on.
[00:07:40] All of the experimentation through, first time I ever caught a hacker was on all of
[00:07:46] this old computers.
[00:07:47] And one of the computers I've told the story, I had a guy gave me goes, "Hey, I got this
[00:07:51] old one and his cat had slept in and it smelled like CapEx, but that server was fine."
[00:07:57] So I have this polished approach, this one, two, three approach for you, but you can replace
[00:08:03] steps two and three with, or you can supplement steps two and three with random computers
[00:08:09] out there on the internet.
[00:08:10] You can go on eBay and get computers for 60 bucks and put Linux on there and be good
[00:08:15] to go.
[00:08:16] You can go to, you can get, at one point I had a garage, I had like eight or nine different
[00:08:21] computers in there and they were all running a different version of Linux.
[00:08:25] That's the first time I got hacked, by the way, because I didn't break, I didn't run
[00:08:28] bestie on a box and I registered a domain, which is when hackers troll you is when you
[00:08:34] register a domain and sure enough they were in on the first day because I hadn't patched
[00:08:39] anything.
[00:08:40] So lots of stories there, but all you need to know if you want to be simple about this
[00:08:45] is invest, you know, at least $300, if you need to, get a really, really entry, I can
[00:08:51] break it laptop and then buy some really cheap USB sticks.
[00:08:56] I did not mention this in the video, but make sure you see the blue there.
[00:08:59] Make sure you get USB 3, it'll make your life better and it'll go faster.
[00:09:04] You got to be careful though, because on some of those older PCs, they don't do USB 3.
[00:09:08] So if you're okay with a little bit of slowness, buy yourself some like $5 USB 2's that will
[00:09:15] work with your grandma's old computer, you just put Linux on, right, that these will
[00:09:19] not work with that.
[00:09:21] So I don't believe they'll work anyway, I've never tried it.
[00:09:24] So you need one or two or three of these.
[00:09:27] I have a, I have a little pouch that's got them all in it.
[00:09:32] There are more efficient ways to do this, but this is the, this is, this is the gold
[00:09:35] standard because this will never go wrong.
[00:09:38] There's a cool little thing where you can do where you put all the images in a single
[00:09:42] USB.
[00:09:43] It doesn't always work.
[00:09:44] That's all I'm going to tell you.
[00:09:45] It doesn't always work, but what always works is, is imaging, you know, putting Linux
[00:09:49] on this, putting Windows 10 on this, putting Windows 11 on this, putting FreeBSD on another
[00:09:54] one.
[00:09:55] And you have a little happy little thing and you like open it up, you got all your operating
[00:09:58] systems right there and you just pick up an operating system saying, what operating system
[00:10:02] will I have today?
[00:10:03] And then you put that operating system on there.
[00:10:05] So I put Linux here in steps two and three and three is Windows, but it doesn't have
[00:10:10] to be right.
[00:10:11] You can, you can run one Linux laptop, it can be red hat.
[00:10:15] Maybe you don't want, you don't want that to be more stable.
[00:10:17] You don't want to be re-imaging all the time.
[00:10:19] Your other one, you can put Windows 10 on, you can put Windows 11, you can practice using
[00:10:22] FreeBSD and do all of that cool stuff with BSD, which is Unix, not Linux, which is a good
[00:10:29] segue into step four.
[00:10:31] And this is the one I'm going to get the most crap about in the comments.
[00:10:35] I am recommending that everybody who is going to enter into the technology field get a MacBook
[00:10:41] Pro.
[00:10:42] I despise Apple, but I have the Apple ecosystem, I use Moblin for my streaming.
[00:10:48] There are certain things that you have to accept in life, it's like I either, I can either
[00:10:53] like destroy my productivity and my ability to perform in the world by, you know, sticking
[00:10:58] to my principles and never buying anything from any company I disagree with, which is
[00:11:01] pretty much every single company if you look deep enough.
[00:11:04] Or you can do that.
[00:11:05] And I'm not going to talk anymore about that.
[00:11:08] My entire team runs off MacBook Pros and they are top of the line tech professionals
[00:11:13] who hate Apple and believe in open source, but they still use a MacBook Pro.
[00:11:18] MacBook Pros are official Unix systems.
[00:11:21] They are Unix predates Linux by more than a decade.
[00:11:25] So Unix has a big lead on Linux and I made videos about this.
[00:11:30] I stand by them.
[00:11:31] Unix is a superior operating system for at the operating system level, but it's got a lot
[00:11:36] of problems.
[00:11:37] Like, for example, you can't run containers on Unix.
[00:11:40] You can run jails, but not containers.
[00:11:42] You can't, you have to have Linux to run LXC containers.
[00:11:45] So the entire enterprise world runs off containers right now, right?
[00:11:49] So you have to have containers.
[00:11:52] And if you invest the money and you save up your money to get it back with Pro, now you've
[00:11:56] got something you can use at school.
[00:11:57] You've got something that you can DJ with, which I do.
[00:12:00] You can, something you can livestream reliably with, which is what I'm livestream with right
[00:12:04] now.
[00:12:05] You have something that you can minimally game on if you want.
[00:12:08] I don't, but you can.
[00:12:10] And you can, you can do all of the things that can become your daily driver.
[00:12:15] And I strongly recommend that your first expensive daily driver computer be a MacBook
[00:12:20] Pro.
[00:12:21] And this is coming from a guy who did not allow anything but Linux at his house for
[00:12:26] the first 10 years of his marriage.
[00:12:28] I am very much an open source advocate to the point where I agree with it, but so consider
[00:12:35] this.
[00:12:36] If for no other reason, then you have every single operating system represented in your
[00:12:41] home lab from the beginning.
[00:12:43] Why would you need that?
[00:12:44] Well, because you don't want to be an operating system bigot, you're going to be expected
[00:12:49] to perform on all types of operating systems.
[00:12:52] If you go to somebody handed you a Windows machine and you don't even know where to go
[00:12:55] to set the settings or anything because you've never even seen it before, that's an irresponsible
[00:13:00] technologist in my opinion.
[00:13:02] That is somebody who I would not hire.
[00:13:05] If you, if you are so hell bent on using only Linux that you've never used a Windows machine
[00:13:10] and wouldn't use one if I were going to give you one at work or you would not help your
[00:13:15] grandmother or somebody work on their Windows machine to get it fixed and get it working.
[00:13:18] If you're hell that hell bent, then this video is not for you.
[00:13:21] This video is for people who want to be well-rounded, non-dogmatic technologists who provide value
[00:13:28] for their companies and their families.
[00:13:30] And those people need to know all of it.
[00:13:33] They don't need to fight about which Linux to throw.
[00:13:36] They can, but that's not their main goal.
[00:13:39] So the main goal is to have one of everything so that you can get good with everything.
[00:13:43] You have a Linux box, you have a BSD box, you have a Windows box, Mac Pros, or BSD UNIX.
[00:13:50] But you could also have BSD on your laptop or your extra computer that you got from your
[00:13:55] friend.
[00:13:56] Maybe you got a PowerPC computer.
[00:13:58] You can practice using PowerPC Linux and make Dennis very happy, it's an inside joke.
[00:14:05] So you know, you can't get Solaris, unfortunately, you could if you had the money, but there
[00:14:09] are other systems out there that you might want to add to your life, to your collection
[00:14:13] of skills.
[00:14:15] But having a Linux laptop gives you desktop skills with Linux, which I've made arguments
[00:14:19] about necessarily needing.
[00:14:21] But it is, desktop Linux is very problematic and it continues to fail for people.
[00:14:27] Just this week, I had a good friend on stream, my Bellum, who could not get his sound drivers
[00:14:32] to work.
[00:14:33] He's 26 on the most stable distribution of Linux.
[00:14:36] There is Linux Mint and he still couldn't get his Linux driver, so this is not user error.
[00:14:41] This is because Linux desktop is a moving target.
[00:14:44] That's very annoying.
[00:14:46] So that is why you need to do Papa West, totally black screen, my machine.
[00:14:51] So you don't want, I don't, like I'm going to get so beat up by this.
[00:14:57] I personally don't think you want Linux as your daily driver.
[00:15:01] I did use Unix as my daily driver for 10 years while I worked at IBM, I use Winora.
[00:15:06] If you do that, make sure you know how to administer it and then you can keep it solid.
[00:15:10] MacBook Pros as a daily driver will never do you wrong.
[00:15:14] I swear to God, knock on wood.
[00:15:16] I have never had a MacBook Pro ever do me wrong, ever.
[00:15:20] I've had the screens break, that's a different problem, but so anyway, I've spent way too
[00:15:25] much time on two, three, and four, right?
[00:15:28] Do you guys agree?
[00:15:29] Maybe not.
[00:15:30] If you do agree, put it in the comments, if you do agree, tell me why.
[00:15:33] If you don't think it's necessary to know Linux, Windows, and Mac, and understand all
[00:15:38] of them, then you don't make your case.
[00:15:41] I'll hear you out, but I think everybody hearing this should make that decision.
[00:15:47] Now you're starting to get serious, right?
[00:15:49] So now you're starting to, Linux does not normally run as a laptop.
[00:15:53] If you want to get a job with Linux, then you don't care about Linux desktop, what you
[00:15:57] care about is running Linux on a server.
[00:16:00] That means you connect to the server and you put your container engine on there, you put
[00:16:04] Kubernetes, and Slurm, and a Minecraft, or maybe a TF2 server, whatever you want, but
[00:16:10] you've got to get good setting up Linux on a server.
[00:16:14] So that's where the whole garage lab comes in, right?
[00:16:18] But if you don't want to do the garage lab thing and make those into servers, which you
[00:16:21] can also do, probably the most efficient way, is to get a big server like this.
[00:16:26] Mine happens to be an HP Z640.
[00:16:28] I hate HPs or laptops, but HPs for enterprise hardware are pretty good.
[00:16:36] You know, there's other brands out there, but you can get an HP Z640 for $800 to $700.
[00:16:42] I'll make a whole video on that I have, actually, and then you can chop it up using technology
[00:16:46] called Proxmox, which I will actually add here.
[00:16:52] There's other technologies to do this, but we're going to put, we're going to call those
[00:16:58] Proxmox here, and we'll make this one, let me make it white.
[00:17:02] All right, so Proxmox is just the easiest way to chop up a single machine into lots
[00:17:08] of little tiny machines.
[00:17:10] That's what's represented here.
[00:17:11] You'll need a cheap console for this, like, I don't know, like a $100 television to plug
[00:17:17] into it.
[00:17:18] It doesn't need to be a high-end 4K monitor, it just needs something to see the text on
[00:17:24] the console and get that connected there and do make that good.
[00:17:29] So, this is currently my Proxmox server right now, and I'll just show you really quick.
[00:17:36] You know, you have all these little machines on here, including one, which is rather weird.
[00:17:42] Check this one out, yep, that's right, that's a Windows machine, my friends, that's a Windows
[00:17:49] machine running on, and Windows on a virtual machine on Proxmox.
[00:17:56] Now, I've come to conclude that this is not the best way to have Windows in your environment
[00:18:02] for testing because it's a virtual machine and not a real machine, which, the reason
[00:18:06] I did it was because I wanted to set up a container engine on here, and I had all kinds
[00:18:11] of problems with that because it's a virtual machine, and containers usually work better
[00:18:16] when they're on hardware, not always, but you know, that's just generally a thing.
[00:18:20] But so, yeah, I've got Windows running in Proxmox here.
[00:18:23] I also got a bunch of other Linux machines, and you can set those all together, and there's
[00:18:28] a separate video about my breaking lab lab, and speaking of labs, you don't have to go
[00:18:38] big, but I'll end this by going big, I've got to get on my other meeting.
[00:18:42] So the last step of this is you want to start actually doing things on hardware, right?
[00:18:47] So now you're starting to buy a little tiny, Optiplex computers, they cost like $150 bucks,
[00:18:52] and they're these little servers, they're designed to be servers, they're mini computers.
[00:18:56] At one point, I had 16 Mac minis running Linux because I had them left over, and you put
[00:19:01] all these things together, when you start doing this, you're starting to talk about
[00:19:04] buying a server tower, I've had two of them, like at the same time, you're talking about
[00:19:11] a higher power demand, you're talking about, but to do this, you get to learn, you buy
[00:19:16] yourself a managed switch, or a VLAN switch, you start to learn about networking, about
[00:19:22] how to do management intelligence, and get really into the hardware architecture role,
[00:19:28] and this is architected like this to have three control planes, and then have a cluster
[00:19:33] here of Kubernetes items, we can also have it double as Slurm, I had actually two Kubernetes
[00:19:38] clusters running on hardware, and there's just no better way to model an enterprise
[00:19:44] environment than that, in fact my development server, when I had it running like that, my
[00:19:48] development cluster was better than the development cluster, we have it at work, but it cost me
[00:19:54] in time, power, space, moving it around, and just the overall hassle of keeping it running
[00:20:02] and up and all the time, but I learned a ton in doing that, so I, since that time since
[00:20:08] I am bouncing around apartments and leaning out of my car these days, on occasion, you
[00:20:12] know, to go climb or whatever, I now have maxed out at step five, because everything I need
[00:20:19] to do, you know, you just saw, you know, I pop up, I need to, you know, cut up a whole
[00:20:25] bunch of virtual machines running Slurm, and I can emulate my work environment using Slurm,
[00:20:30] even though these machines don't have GPUs, so that I can actually, you know, simulate
[00:20:37] my work environment, and if you want to get super crazy, this is my actual conceptual
[00:20:43] air gap home knob network, it was $25,000 of leftover hardware from my company that I
[00:20:47] used to run, and I donated all of this, but I had a complete air gap network with two
[00:20:53] full networks, I had an open sense router that was just, you know, distributing the two,
[00:20:58] I had, I had two clusters, this was a GPU cluster that was running old Trident computers
[00:21:03] that had GPUs in them that I could use for machine learning simulation, and then I had
[00:21:08] this Kubernetes cluster down here, I had a managed switch and an unmanaged switch, managed
[00:21:14] switch means that you can, you can get power on over ethernet, I had a Raspberry Pi cluster
[00:21:19] with a whole bunch of stuff in there, and I didn't use any of it, it was really fun
[00:21:23] building it all and everything, but I ended up donating all of the community college,
[00:21:28] because they didn't need it, I didn't need it for my job, I need it, it was really fun
[00:21:31] to build it and everything, but I didn't, I really didn't need it, I also included in
[00:21:36] here my IRL streaming stuff, my IRL streaming with my justinata, which is not, I don't use
[00:21:41] that anymore, I use a, I use an Orange Pi plus, and, and so, you know, and then I had,
[00:21:48] I had the central, central access system, but if you want to get really into our networking
[00:21:53] architecture and stuff, then you might want to go crazy like this, but I'm telling you
[00:21:57] right now, you don't need to, the first thing you need is a, is a reliable good router, so
[00:22:02] you can, you know, access your stuff in a consistent way and build up your network,
[00:22:06] and then you need a Linux laptop, maybe a Windows 10 laptop or an Arch Linux laptop,
[00:22:11] maybe a Red Hat, two laptops to mess around with, you get for free, or you buy for super
[00:22:17] cheap on sale at Target or, or Walmart, wherever, and then eventually you work up to getting
[00:22:22] a MacBook Pro, you learn Unix, you use that as your daily driver, you take that to all
[00:22:26] your meetups, if you want to take your Linux laptop to the meetup instead of MacBook Pro
[00:22:30] fine, again, these things don't have to be powerful, your laptops don't have to be
[00:22:34] powerful, your MacBook Pro kind of needs to be powerful, you want to start streaming,
[00:22:37] which I encourage you to do, streaming is the best way to get a job, I got my current job
[00:22:41] from Twitch, somebody that I met on Twitch, it's not a Twitch job, it's a company you
[00:22:44] would not guess, but I got a job through Twitch and live streaming, I strongly encourage you
[00:22:49] start doing that, and an MacBook Pro is the fastest way to get into live streaming and
[00:22:53] everything else you want to do as a tech professional, and then if you want to not be derided at
[00:22:59] the Linux meetup, you can take your Linux laptop to the meetup and then like, oh, look
[00:23:03] at your tiny little Linux laptop, I'm like, yeah, that's because I'm on an approximate
[00:23:06] server with like 55, 55 individual, you know, I got ARCH, I got ARCH in there, and I got
[00:23:12] my some B, a little bit of BSD in there, and you know, I got some Red Hat and everything,
[00:23:16] so yeah, my laptop's just, it's just a console, man, it's just a console, bro, it's just,
[00:23:22] you know, it gets the job done, yeah, Tmux is my window manager, I don't fight over i3
[00:23:28] or anything like that, I just live on the terminal, yo.
[00:23:33] That's how you hold face in a Linux meetup, because you just tell them that, and by the
[00:23:36] way, that's how hackers do it too, right, any good hacker doesn't hack from their laptop,
[00:23:41] they hack from a cute computer that's like 7 or 10 or 20 hops away, because that's actually
[00:23:48] something in the movies, it's real, you know, it's so far away that they don't deal with
[00:23:53] it, right, so they go far, far away, and then they hack from that computer that it's not
[00:23:59] even theirs, it's a computer that they hacked, so you know, if you, if you show up at a Linux
[00:24:05] meetup with a laptop, Linux laptop that's underpowered, anybody that judges you is just judging
[00:24:10] themselves really, except for showing up at the, at the offensive security windows, what's it
[00:24:18] called, Windows, what is it called, Windows exploit development camp, in which case you
[00:24:26] must have, and I kid you not, a Windows 10 computer that can run 8 VMs simultaneously,
[00:24:33] because the goal of that training is Windows hacking.
[00:24:36] Another reason to have Windows 10 and Windows 11 around is if you want to hack, how you're
[00:24:39] going to hack it, if you don't have a copy of it, you can, you can sort of hack a VM,
[00:24:45] but it's actually, you know, it's, and you do learn to hack a VMs, but actually having
[00:24:50] the one on hardware, it's also kind of useful, so, especially since you can kick it off immediately
[00:24:55] and put Linux, there are, Linux back on there, because it's an Intel box, by the way, all
[00:25:00] of these things are Intel, and instead of ARM except for the MacBook Pro, the MacBook
[00:25:05] Pro will be ARM, and that's okay, that's okay because you're not going to be doing, you're
[00:25:10] going to be making containers on it, you're going to be making containers on your Proxmox
[00:25:14] box, or you're going to be making containers on your Linux laptop, or God forbid, your
[00:25:18] Windows laptop, that's how you're going to do it.
[00:25:21] This is the evolution of a home lab, this is that I recommend, it's not even the evolution
[00:25:25] that I followed, mine was a lot of hodgepodge come, you know, get the free stuff I can
[00:25:30] get, I still, you can still do that, but I wanted to provide a guide in a video that
[00:25:36] kind of helps you put parameters around what you need, because you're going to get so many
[00:25:42] opinions about how to get going with Linux and the tech community and everything, I've
[00:25:46] given you my opinion, take it with a grain of salt, make your own decisions, and go give
[00:25:52] it a shot.
