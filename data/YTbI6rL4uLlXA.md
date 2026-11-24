# 💩 Install Windows10 in Proxmox

Sometimes you have to use Windows 💩 because you are helping people who one have it or don't yet know how to get rid of it by installing Linux or don't have the money to buy a Unix system (aka Mac).

`#proxmox #windows10 #tips`

## Transcription

[00:00:00] All right, I'm making a video about how to run Windows in Proxmox and why you would
[00:00:04] want to do that.
[00:00:05] First of all, let's answer why.
[00:00:08] Sometimes you need Windows.
[00:00:09] I'm not going to play a video game on it, I'm not going to do anything else.
[00:00:15] In the old days, I would run something like VMware and I would create a new virtual machine
[00:00:19] and then I would run Windows on my computer at speed.
[00:00:24] Oh god, here we go.
[00:00:26] And that's spine.
[00:00:28] You can totally do that.
[00:00:29] You can tell VMware and VMware, Fusion or whatever, and if you need Windows all the
[00:00:34] time for performance, you should probably just get a Windows machine.
[00:00:39] They're not that expensive, they're like $300.
[00:00:43] And the second reason to do it would be you need applications and so you just want to
[00:00:47] run them quickly, but if you need them all the time, then yeah, you might want to get
[00:00:52] something like VMware, Fusion or VMware, and then have that and then just all the image
[00:00:56] there.
[00:00:57] But the process is largely the same.
[00:00:59] In my case, I just want to Windows around every once in a while so that I can see how
[00:01:04] something is done in this particular case.
[00:01:06] I did this because I wanted to set up the terminal on Windows 10 so that I can make
[00:01:11] a video about how to set up the terminal on Windows 10 if you're a brand new person
[00:01:17] and you have an old computer that's got Windows and you don't want to install Linux because
[00:01:20] you're not good enough yet and you just want to get good on the terminal and start coding
[00:01:24] right away.
[00:01:25] Windows 11 comes to the byte of fault.
[00:01:27] So this is one of those educations where I really don't want to dedicate any amount
[00:01:31] of time to Windows.
[00:01:32] I just want to get one going fast.
[00:01:34] So you go to Microsoft.com, ENUS, software dash download, Windows 10 ISO, there's a bunch
[00:01:41] of them there.
[00:01:42] And if you forget this, you can ask the AI, it'll help you figure it out.
[00:01:45] You can go to the Windows 10 or 11, I download 64-bit, which is pretty much all computers
[00:01:50] these days, and it gives you a URL when you set this up.
[00:01:55] And then you can right click on it and you can say, "Copy link address," and then you
[00:02:00] can go into your Proxmox and you go to your local LVM home and you look up your local
[00:02:06] storage and you click on ISO images and Proxmox and you find where to download it from.
[00:02:13] Click on "Download" from URL, put the URL in your paste, query the URL and it will put
[00:02:19] the image there.
[00:02:20] Click "Download" and wait about, what was it, 20 minutes to download the URL.
[00:02:25] And then you'll get an ISO in your Proxmox listing of images so that you can boot up
[00:02:30] an image.
[00:02:32] In my case, you do the normal thing, create a new one, you know, we're going to tell
[00:02:38] it what the image is in a second, oh, I clicked on the wrong thing, that's an LXD container,
[00:02:46] we don't want that, derp, okay, home name, I called mine software shit.
[00:02:54] Cuse, no, nevermind.
[00:02:59] And then it would click on the OS, ISO image, you now can click from here, you can go click
[00:03:02] your Windows thing and fill in the rest of the blanks.
[00:03:06] So let's finish those up, I've already created mine but I'm going to show you the settings
[00:03:11] that I set up to make one.
[00:03:13] So I did mine software shit and then I went next, I'll do the whole thing without doing
[00:03:21] it.
[00:03:22] And Windows, how many windows, ISO image, physical disks, no, you have to make sure to
[00:03:26] change this Microsoft Windows version 10 right there, no vert, IO driver needed, next disk.
[00:03:35] You need, I'm sorry, you need, you just do the default graphics card, which is a fake
[00:03:40] graphics card, you don't need a big one to do what we're doing without playing games
[00:03:44] or anything.
[00:03:46] Machines all the defaults, default to default, chemo agent, yes, that will give you VM utilization
[00:03:52] of stuff in your Proxmox stuff once you install it, you still need to install it but you can
[00:03:56] do that disk.
[00:03:58] So then you go regular disk size, you need at least 40 gigabytes of RAM of disk but
[00:04:04] I'm going to go ahead and give it 60.
[00:04:07] So I get mine 60, the rest is fine, you don't need anything different on bandwidth, click
[00:04:13] next, memory, you need at least eight gigabytes of RAM, at least.
[00:04:20] So oh wait, this is course, sorry, so you need four cores to run windows, period.
[00:04:24] So four cores, a regular type, and then next, and then we're going to do memory, and we're
[00:04:31] going to do eight gigabytes, which is eight one, what is it, eight one, four, four, eight
[00:04:36] one, nine two, so eight one, nine two, and that's your RAM.
[00:04:42] Next, you can just use the regular VLAN stuff, you don't need to mess with this, this will
[00:04:47] give your windows machine network connectivity, so that you can actually, you know, remote
[00:04:52] connect to it, remote desktop, whatever you want to, so that you can actually control
[00:04:56] it while it's running from your server, just like you would any other way, and it's always
[00:05:00] available to you.
[00:05:01] It's actually available to you anywhere in the house and you don't have to like, you
[00:05:05] know, be on the Mac or that's got, you know, the Linux machine that's got VMware running
[00:05:09] on it, whatever.
[00:05:10] So you go on next, you confirm all this stuff here's what it looks like, I am not going
[00:05:14] to do that because I already did that.
[00:05:16] So then when that happens, you go up and you boot it, and you'll get, you can go ahead
[00:05:22] and start it, this one's actually running, so I'm going to stop this one, so I can run
[00:05:30] it from scratch, you can see what happens when it looks like when you're running with
[00:05:33] it.
[00:05:34] Yeah, I drive you, I stream all the time these days.
[00:05:36] So let me, I'm trying to turn this all the way off so you can see what it looks like when
[00:05:39] it starts up.
[00:05:40] So here it is in my list, I can click on this, you can double click on it, or you can just
[00:05:44] right click whatever, if you double click it'll give you a terminal, and you'll get kind of
[00:05:51] a thing, click on start now, and it'll boot up proxmox bios, and it'll have this little
[00:05:58] blinky thing that blinks at intervals different than normal, that's how you know that it's
[00:06:04] not stuck, or watch, see how it kind of gets fast and then slow.
[00:06:10] There it goes, it's going to get, I promise it's going to work.
[00:06:12] I sat here, I was like, oh no, it's not working, typical Windows behavior.
[00:06:17] So yeah, I stream a lot actually.
[00:06:21] So you saw how it resizes the thing, that because it's still doing stuff.
[00:06:26] Okay, it was like, it was like blinking fast again, and now it's blinking slow again.
[00:06:30] Here we go, so Windows is coming, I promise, I hope, I hope it's coming.
[00:06:41] Why is it taking so long, because Windows, I'm scared, okay, yay, yay, it didn't make
[00:06:48] me a liar.
[00:06:49] Alright, so Kimo software shoots, booting up the familiar Windows, you know what's actually
[00:06:55] kind of nice about this, it's actually faster, so this is a typical Windows setup, I mean
[00:06:59] I've been doing this for years, Windows 10 setup, so English, US, next, install now,
[00:07:06] I just said repair computer, no, we're not doing that, needed some jeopardy music, I know.
[00:07:14] Oh no, activation, you're, if you're re-installing Windows, let's see, if there's the first time
[00:07:21] of selling Windows, the product key should be the confirmation, the product key looks
[00:07:26] like this, if you're re-installing Windows, select the product key, copy the Windows
[00:07:29] and blah blah blah, I don't have a product key, okay fine, it's like okay, whatever.
[00:07:40] Windows 10 home, no, we want to go all out, we want Windows 10 pro, yeah, pro pro work
[00:07:48] stations, God, which one do I want, which one's better, I don't even know, we need Windows
[00:07:54] 10 pro, next, I want to do next here, I accept the terms without reading them, upgrade, custom
[00:08:06] install only, ooh, files and settings are thing, upgraded, keep the files and applications,
[00:08:12] and whatever, that's the default, the upgrade option isn't available, if you start your
[00:08:16] computer using Windows installation media, well then why the hell did you give me the
[00:08:20] option, oh God, I hate Windows, the nice group of policy, this is me suffering through Windows
[00:08:32] installation, I accept the terms, do you accept my terms as a question, okay there we go, this
[00:08:41] is zero allocated space, free space here, I'm scared, I'm scared mommy, hold me, should
[00:08:56] we format the drive, okay next, copying Windows files, okay, cross your fingers, here we go,
[00:09:06] let's see if it actually works, get ready, getting Windows files ready, why is it 0%,
[00:09:14] can I not give it enough cores, is it struggling, you can actually see what it's doing behind
[00:09:20] here, you can see it's like showing this cool, it's showing you how much CPU it's using,
[00:09:26] oh look, it's only using 40% of its CPUs, but memory, oh my gosh, look at this, memory
[00:09:31] is like pegged, memory is pegged people, memory's being pegged, you know what I like
[00:09:39] about this, this is something I just realized about doing an approximate, that you don't
[00:09:43] get anywhere, you get performance statistics, so it was kind of an unexpected benefit, because
[00:09:51] when you're doing stuff in Windows, you're usually sitting around waiting to know if
[00:09:54] it's something's actually happening, if it's never ever, ever gonna come back, well I just
[00:09:59] realized that's actually a really good thing about doing it in Proxox, because if you're
[00:10:04] doing it in Proxox, you can monitor the performance while it's doing it, and you can make sure
[00:10:08] it's actually doing something, if your CPU's good at zero, or it gets hung or something,
[00:10:12] and you ran out of RAM, then you know you crashed in some way, I am a fan, I am a fan
[00:10:20] of this idea, so getting files ready for installation, 81%, and we can look at disk IO
[00:10:26] I imagine, where's disk IO, is disk IO not getting reported, that would be even better,
[00:10:32] because then it could show writing to disk, it doesn't have IPs yet because it's not set
[00:10:36] up and it doesn't have the chemo agent on it, you won't get IPs until you get, that's
[00:10:40] your addresses on the network, and then what else, yeah, summary test history hardware,
[00:10:49] CPU utilization, network traffic, I bet you just down below, yeah, disk IO, here it is,
[00:10:57] oh look at that disk IO got pegged, disk IO read writes are like insanely high right
[00:11:02] now, as they should be, because we're getting ready to install, okay, we're on the next
[00:11:07] thing, installing updates, and then finishing up, education is the best Windows version,
[00:11:16] is it, why, I wish I had picked it now, I'm sad, and I'm sad that I didn't pick it,
[00:11:26] I picked Pro for some reason, well now you can know, the more you know, I need to put
[00:11:33] my stuff, oh my gosh, things are happening, it rebooted the computer, that's a computer
[00:11:39] reboot, although it didn't actually reboot my computer, thank god, you know what else
[00:11:44] I like about doing this, it doesn't affect my current streaming machine, I really like
[00:11:50] that, it affects so much so, I kind of want to uninstall fusion completely, enterprise
[00:11:59] IT also does a different license, did not know that, lacks ads and some bundled software
[00:12:06] that enterprises did not know that either, thank you for letting me know, I'll probably
[00:12:11] give that a shot next time, getting ready, getting ready for the Windows experience,
[00:12:21] so I picked the wrong one, where were you when I was setting it up, I mean, chop chop
[00:12:25] here, people, LTSC is another great one, but some facts, some software needs yes, chop
[00:12:34] chop, alright Windows, come on, you can do it baby, with all only four cores, I believe
[00:12:40] in you, look at how pegged memory is, it's such a pig, such a pig, this is why when people
[00:12:48] run like, wait what, VMware Fusion can die, you can die, buy, go away now, get off my computer,
[00:13:04] why are you still there, go away, is it running in the background, maybe VMware Fusion, I lost
[00:13:12] my window, now I'm scared, you know what, it doesn't matter because I can reconnect
[00:13:18] through the console, yeah, that's what's cool about this whole endeavor, there's my software
[00:13:24] shit right here, oh I have two of them, I have two of them, which one is it, nope that's
[00:13:31] not the one, close window, I gotta go find my other one, where is it, oh, there we go,
[00:13:40] oh no, something happened, I looked away and I got a black screen, okay it was just rebooting
[00:13:47] all again, but this is windows, this is windows, one of those fancy activators, yeah, activator,
[00:14:02] activate, why am I running version 8.x instead of the latest 9.4 build, of what, windows
[00:14:14] VMware or Mac, what are you talking about, VMware, this is an ancient version of VMware,
[00:14:25] yeah, Proxmox, because this is a version of Proxmox I had on my server from when I moved
[00:14:34] and I haven't updated it because I'm too afraid, have you gone through the upgrade, have you
[00:14:40] gone through the upgrade from 8.2 to 9, are all my images gonna stay, if I do that, can
[00:14:46] I do the in-place upgrade and I have everything like, go to bad, okay, yes, the US is correct,
[00:14:57] then what, the US, yes, the US, Irish, no, US, what do you want a second keyword layout,
[00:15:05] no, this is 10, you know why it's 10, because I'm trying to show people how to put a terminal
[00:15:13] on 10, because they still have 10, this is the last year I'm doing this, because I just
[00:15:18] found out windows 11 comes with the new Microsoft new hotness terminal, it comes with it, it
[00:15:24] comes with windows 11, you can't say no, it's on it automatically, so that is the reason,
[00:15:29] the whole point of this is because if you must know, I mean this is making a video about
[00:15:33] windows and prox mocks, that's what this video is about, but the reason I have this video,
[00:15:37] it needs to make this video is because there's still a need to run windows 10 occasionally,
[00:15:43] and you know, to see if you, the software you make works on windows 10, like for example,
[00:15:48] I plan on compiling some educational software that I want to work on windows 10, which
[00:15:53] a lot of, you know, and schools are still on and stuff, so that's it, is windows, we can
[00:15:59] get a thing on 10, yes, I know that for a fact, you have to install it, but it definitely
[00:16:03] is a thing, yeah, I've used WinGet a lot, I've actually installed Linux on, I put XP
[00:16:12] on, you can actually download XP and run it, you can, if you want to have a retro experience,
[00:16:18] you can go back and run XP just exactly the same way in prox mocks like this, which is
[00:16:24] super nice, and so WinGet and Chocolatey, that's what I get, that's what I get every
[00:16:28] time, I get WinGet and Chocolatey the package manager, but this, but you know, beginners
[00:16:32] are not going to know to do that, so, you know, I'm going to, I'm not going to show beginners
[00:16:37] how to use the package manager or their software installer, that comes next, they should learn
[00:16:42] that later, set up for personal use, yes, next, then install, yeah, the only reason I'm doing
[00:16:50] this is to show people how to get started on windows, you don't have the ability to install
[00:16:54] and run Linux, and it's going to give them exposure into using a Linux terminal, and
[00:16:59] then they're going to immediately say, how do I put Linux on my machine? And the next
[00:17:04] answer is, buy a $200 laptop from Best Buy or targets, and then install Linux, proceed
[00:17:12] to install Linux, but that's only after they invested the time to know they want to do
[00:17:17] that, not everybody's going to want to do that, I know that I hate to break it to you,
[00:17:21] but not everybody's going to want to do this, let's add your account, no, about no, I want
[00:17:27] an offline account, thank you very much, you should not be able to choose that, sign in
[00:17:33] and enjoy the full range of Microsoft apps and services, I want the limited experience,
[00:17:38] please, who's going to use this PC, Rob, use an online account, how about no, create a
[00:17:47] super memorable password, password, let's see if it even catches it, confirm here a super
[00:17:56] secret password, do you want to see it? Okay, next security question, one of three, why?
[00:18:12] What is your first pet's name? I don't know, what is your first pet's name, I don't have
[00:18:20] a pet, chuckles, sir, Christian too, what is your childhood nickname, chuckles, so good
[00:18:33] to catch his name, what is the first name of your oldest cousin, you guessed it, chuckles,
[00:18:43] okay, so just a moment, I think at 11 you have to hack the install, I said I let you
[00:18:49] do that, I know, right, they won't even let you do it now, but if you have 11 it's because
[00:18:54] you already have 11, you didn't willingly put it on your computer, I've never met a single
[00:19:01] person who willingly installed Windows 11, get the location of everything, no, I'm sorry,
[00:19:07] it's more there, did I just 16, no, no, no, I don't want your, no, no, I don't want any
[00:19:16] of that, except local accounts, yeah, local accounts are nearly impossible to get, right?
[00:19:24] Limit your custom, let it customize, how about not skip, is your apologies for swearing when
[00:19:31] the VM is named that, the VM name is named, oh I did not apologize without one though,
[00:19:38] that's just factual, so it's not really a swear word, it's a scientific term for Windows.
[00:19:44] Hi, we're getting everything ready for you, really, that's nice, if I go ask for the server
[00:19:54] card, you should try that, right, this may take several minutes, why, why must it take
[00:20:01] several minutes, did I not give you enough cores, did you not like my questions, do you
[00:20:07] have something against clowns, please make it stop, please make it stop, oh my gosh,
[00:20:21] I hope this is the thumbnail, don't turn off your PC or what, you dare me to turn my
[00:20:32] PC off, I could turn my PC off in the middle just to mess with it, yeah, I've always wanted
[00:20:39] to do that, and now because it's just a VM, it's like okay, I'll restart, so there, because
[00:20:45] nobody cares, like, people, people like, you know, like dads installing Windows on their
[00:20:50] computer for the first time or something for their kids, and they're like, oh no, it's
[00:20:53] just gonna ruin my computer, maybe you have to sleep 300 in there, so it looks like they're
[00:20:58] actually doing something, have you actually done that, bro, oh wait, we can tell him it's
[00:21:07] doing something, look, all I was doing is consuming RAM unnecessarily, there was no disc riding
[00:21:14] happening during that time, absolute plot line disc riding, they're just like screwing
[00:21:19] with us, seriously there wasn't even any network traffic, what the heck, so that, oh, I changed
[00:21:31] it, okay, continue, I, nobody ever knows, well, okay, there was no CPU activity, no network
[00:21:42] activity, and no disc activity, and yet it made me wait the whole entire time, that is
[00:21:50] pretty telling, we just proved, it's a sleep 3000, continue, they just wanted to look like
[00:22:03] they're installing the Verdeio driver ISO, oh wait, I don't think I have a Verdeio, oh,
[00:22:12] I didn't put the Verdeio away, do I need a Verdeio driver, am I gonna be in trouble?
[00:22:18] I'm not using Libert at all, if I don't have Libert in my trouble, I chose not to install
[00:22:25] it, am I gonna regret that decision?
[00:22:27] I'm a little worried, you're making me worried, is this something I don't like to, I cannot,
[00:22:32] I cannot contact switch between the actual, you can set it to do that, I know you can.
[00:22:36] Sign interesting data, how about not, start without your data, oh my flash bang, I'm so
[00:22:41] sorry people, it'll perform a hard size better, hmm, I don't care how well it performs, continue
[00:22:49] without Google data, what, I didn't know you could do this, that's new, I didn't used
[00:22:54] that, out make it in our experience, no, make your Microsoft experience more useful, more
[00:23:02] useful to you, learn more, no, confirm and start browsing, God they lie, they lie so much,
[00:23:10] so much lying, so much lying, express yourself by customizing Microsoft Edge, how about no
[00:23:18] or I find dark mode?
[00:23:22] Next, get to the sites you love right from the task bar, finish, get out of my, oh great,
[00:23:30] and we're greeted by wonderful, live conservative news feeds that we can't control, oh my God,
[00:23:42] oh my God, please remind me that, why do I have to be reminded that the world is shit
[00:23:49] right now, when has it not been shit is the question, right, corporations, stocks are
[00:23:56] convinced, how about no, I don't want this, I want this to leave me, why is this stored
[00:24:03] on my page by the, oh my God, are you kidding me, how do I get rid of it, what is this, trending
[00:24:11] now Joe Biden, you kind of a Murray, I don't care about any of this, oh okay, up here, it's
[00:24:18] up here somewhere, people, people, calm down Rob, calm down, they just installed Edge,
[00:24:25] that's all, takes 10 seconds, close Edge, yes okay, we made it, all right, we have windows
[00:24:33] now, now let's actually install the tournament, which should be a separate video, but I'm going
[00:24:38] to put it in here anyway, nah, nah, nah.
