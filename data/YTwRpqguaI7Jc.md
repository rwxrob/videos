# 🤦‍♂️ WSL2 secret to opening files and URLS with host apps

Shows how installing xdg-utils and wslu in WSL 2 lets the open command, W3M, Vim's gx and similar tools open URLs and files in Windows host applications. Also explains why this makes WSL 2 a recommended choice over Git Bash or a separate VM for many Windows users, with caveats about past stability problems, followed by chat discussion about WezTerm, terminal emulators, Mac versus Linux and home labs.

To be fair, wslu has existed since 2018. No one ever told me about it depite hundreds of hours of livestreams and some complaining about it. I honestly did not think it was possible until Chloe clued me in. I love my AI.

Chapters:
0:00 The WSL 2 host integration discovery
2:39 Opening URLs and files from WSL 2
6:06 Opening pages from W3M in a browser
8:05 Opening URLs from Vim with gx
10:37 Installing xdg-utils and wslu
13:36 GitHub CLI login and file associations
15:01 Why WSL 2 over Git Bash or VMs
21:09 Chat questions on setup and multiple distros
24:05 Past WSL breakage and Linux desktop alternatives
27:50 WezTerm configuration plans and book updates
31:17 WezTerm, Lua configuration and perpetual publishing
37:46 Why terminal emulators and displays matter
41:00 Mac for development, Proxmox and home labs
43:01 Early days running terminal-only Linux

`#wsl2 #linux #windows #wslu #terminal #wezterm #bash #vim #beginners #protips #education`

## Category

Science & Technology

## Transcription

[00:00:00] maybe you already knew this but I didn't and my AI did I asked my AI Chloe is
[00:00:07] there any way to open a URL or a file or a video from inside inside of WSL 2
[00:00:14] this has been among of my biggest complaints since the dawn of time is it
[00:00:19] WSL 2 is a virtual machine embedded inside Windows it does have knowledge of
[00:00:25] Windows it has knowledge of the file system and it has some magic that it
[00:00:29] does so they're just kind of a special VM in that it's got it's aware of the
[00:00:34] host OS more more than VMware would be those of you who know me know that up
[00:00:40] until this moment I have been recommending people install VMware
[00:00:44] virtual box or Podman onto their Windows machines in order to get a Linux
[00:00:48] experience when they need one and those of you also know that I've been pro and
[00:00:54] con pro and con against WSL for years I've gone back and forth you can see
[00:00:58] video of me saying it was the next Linux desktop and now you then you've seen me
[00:01:02] like pulling the rest of my hair out because it blew up on me and but I'm
[00:01:07] here to tell you that after discovering what I just found that I'm gonna show
[00:01:11] you I cannot ever ever recommend anybody use anything but WSL 2 on Windows in
[00:01:20] fact the only thing that I know for sure I don't even know this for sure now
[00:01:26] my whole universe has been shaken by this discovery it's very likely that not
[00:01:30] being able to use the USB stick or a UB key from WSL 2 which has been a big you
[00:01:35] know it's been a reason not use it because you can't plug in your past key
[00:01:39] or something like that you want to have a drive or something I mean that has been
[00:01:43] annoying before but the biggest annoyance has been that there hasn't been the
[00:01:46] ability to script things that interact with your host OS at one point those of
[00:01:52] you're watching know that I seriously thought about writing a daemon that would
[00:01:58] run some a service that would run on Windows that would answer the request
[00:02:02] over the network the tiny little network inside your computer so that
[00:02:05] your encapsulated virtual machine containing WSL could communicate with it
[00:02:09] and do simple things like play a video clip or open a web browser all of the
[00:02:15] things that people who have a host OS want to do that's like all the things
[00:02:19] they want to write one of the simplest things is something very basic GH off
[00:02:24] login right you want to use the get up tool you want to run the login thing and
[00:02:28] you get it asked you says would you like can I open up a web browser and now you
[00:02:33] can with WSL 2 until today you couldn't do that so let me show you what I mean
[00:02:39] first of all I'm going to show you what you can do and how to make it work in
[00:02:43] WSL 2 so the first thing is what you're looking at right now this is a bare
[00:02:49] bones terminal this is this is the terminal that starts up it's a
[00:02:53] command line terminal that starts up it's really really really basic it's the
[00:02:57] one that starts up when you start WSL so like when you type WSL down here in the
[00:03:02] search bar it's the thing that pops up right it's super simple obviously we're
[00:03:07] gonna integrate this with was term and a bunch of other magic later but for
[00:03:12] right now this I just wanted to show just out of the box that this works
[00:03:17] perfectly so the the second thing of this to know is that there's a command
[00:03:22] called open and those of you who have used Linux or Mac are familiar with this
[00:03:26] right so and we're gonna I'm gonna show you how to put the open tool on there
[00:03:31] but what it does is it it tries to figure out what it is you're trying to
[00:03:35] open and then it opens it let me give you the first example I'm gonna open my
[00:03:39] books website using the open command from the command line it's gonna bend in a
[00:03:43] script or anything I'm just gonna hit enter here oops enter am I still on it I
[00:03:50] might have timed out my BNC connection let me make sure I'm here it's not it's
[00:03:55] not doing it maybe it's happy right now one more time okay there we go so you
[00:04:03] click enter and in it you can see that it opened up the web browser on my
[00:04:08] machine I've got you know stuff but this is the book right you know if you go to
[00:04:11] the book you can read about it here I added a new book by the way which is
[00:04:15] probably going to get changed into terminal about them but more on that
[00:04:19] later so so there you go so now you can actually use this and that is really
[00:04:27] important what why did it freeze my frozen okay well I'm still gonna keep
[00:04:34] recording here even though my I think I might be freezing into it so what did
[00:04:39] that just do that open to thing now let's let's try this again with something
[00:04:41] else let's just open this read me file right what does it do it opens the
[00:04:48] associated editor in this case I have got I've got VS code installed so it
[00:04:55] associated the text file with VS code and so it opened that up right now here's
[00:05:00] here's another crazy thing I actually think let me go ahead and close this one
[00:05:05] out I mean it looks like it's it's got a little bit let's I'm just curious to
[00:05:09] see if it'll actually do code code code is a native Windows command that opens
[00:05:15] the VS code editor I haven't tried this yet I don't know if it's gonna work but
[00:05:19] I'd really want to see if it will okay so it says the host everything was not
[00:05:23] found unless of host you want to allow it anyway I'm gonna say yes allow oh my
[00:05:29] gosh yes I trust the authors so what that means is that VS code has just
[00:05:38] opened from WSL 2 the takeaway from this is very simple the VS the WSL 2
[00:05:45] integration with the native Windows system is now complete so you can
[00:05:53] interact with applications and open them in any way that you care to really
[00:05:57] including playing sound files and stuff which I haven't tried I'm sure that'll
[00:06:00] work just fine by doing this by by doing this this sort of thing so to those of
[00:06:06] you who are like who like to have your own dog files in your own scripts that
[00:06:09] play video clips or they pull up your favorite website or more importantly let
[00:06:13] me show you this one this is a really important one in fact I'm gonna just
[00:06:16] try to do it right in front of you so you do apt install W3M W3M and or links
[00:06:22] you know text-based browsing one of the best advantages of a text-based browsing
[00:06:26] situation is that you can browse at the speed of the terminal to get to what
[00:06:30] you want to get to and then when you get to the thing you want if it's got some
[00:06:35] graphics or JavaScript capability in it you tap the comma key and it opens the
[00:06:39] graphic browser because you need that to see that has not worked in WSL 2 until
[00:06:45] now until now you can do it so so let me try it so W3M so I should be able to
[00:06:52] just browse let's go to github.io.com or to be extra I think you have to have
[00:06:57] HTTPS in there maybe not okay so here we are we're on the site and let's just
[00:07:03] pretend I want to open this site in my graphic browser let's try it with a
[00:07:07] comma will it work or not it doesn't look like it's opening it in the browser I
[00:07:14] think I'm have to remap it actually oh it did it did it it did it and and when
[00:07:20] just in W3M it's it's capital M to open up to open up the page in a
[00:07:25] graphic browser and as you saw it just worked it just worked this is huge because
[00:07:33] let me try let me show you this again so you can I want you to process what this
[00:07:36] means so this means with W3M with no custom configuration at all I can use a
[00:07:41] text-based browser and go the speed terminal velocity I can work at terminal
[00:07:45] velocity until I get to the page that I want to see and then when I want to see
[00:07:49] the page it graphically I can do in this case the default is shift capital M so
[00:07:55] I actually have that map to comma because that's what links uses and as you can
[00:07:59] see it opens up your web browser right away this this is phenomenally huge for
[00:08:05] people who want to work at terminal velocity this means you can do t-mux this
[00:08:10] means that when you're like editing a file so like this is another thing let's
[00:08:14] try this so like let's install VIM so you do apt install VIM we could do neo
[00:08:19] VIM or VIM it doesn't matter so let me show you a lot of people don't know about
[00:08:23] this right so so you know you'll be editing a file and let's put a URL in
[00:08:28] here HTTPS as colon slash get up dot com or the x-rob slash whatever all right so
[00:08:38] there is a URL right a lot of people don't know that out of the box VIM
[00:08:41] supports GX so GX will so it will open any URL that you are within with the
[00:08:48] graphic browser so what do GX is it gonna work oh my gosh it works it works it just
[00:08:56] opened the browser wall from my VIM session I opened my browser to read the
[00:09:01] URL while I was editing the file I mean that is so stinking cool that it I mean
[00:09:12] for there's a few people out there that just they their jobs just drop to the
[00:09:16] ground because you have never been able to do this in WSL 2 before you've never
[00:09:20] been able to you've always been relegated to copying and pasting the URL and then
[00:09:26] putting it back on there and and then you know go into the thing and you've
[00:09:31] been saying I don't want to use a terminal I got to go copy and paste the
[00:09:34] URL to get my graphics browser to open up not anymore not anymore you can just
[00:09:40] you can just integrate it directly with WSL 2 this is huge this is 100% Linux on
[00:09:47] Windows with the least amount of overhead because it's using WSL 2
[00:09:51] versus a VM that you install it is a VM it's just a VM optimized for Windows that
[00:09:56] has permanent permanent integration with your host system for everything that means
[00:10:05] that all of your file type associations are already known about if you open
[00:10:09] sound if you open a movie you want to make that cool clip clip player
[00:10:12] automatically it will do it somebody did say that it could do it somebody did
[00:10:17] say in YouTube they're claiming that they told me this they did say it could do
[00:10:20] it and I was like so I asked my AI today I was like okay let's see if this is
[00:10:24] true I pulled up WSL 2 to see if it could be done and it couldn't be done and then
[00:10:29] I asked my AI I said hey can this be done and they said yes but this is what you
[00:10:33] have to install and this is what nobody has told me so far so I'm going to tell
[00:10:37] you so you know it's pretty easy but the first thing you have to do is you have
[00:10:42] to sudo apt apt update of course I'm gonna do it anyway just so you can have the
[00:10:47] steps sudo apt up great apt update sudo apt
[00:10:51] sudo apt install and then we'll go ahead and we'll install xdg utils so this is
[00:11:01] what has open in it right it's the same one that's used on Linux Linux
[00:11:05] desktops it's exactly the same software which is really great for me because all
[00:11:09] of my documentation about how to do things is a lot simpler now because
[00:11:12] everything that I document for Linux is directly the same now for Windows which
[00:11:17] blows my mind a little bit it doesn't really blows my mind so so now the next
[00:11:24] thing to do is you have to install something called WSLU sudo apt install
[00:11:32] WSL University apparently something like I don't know and then whoops I gotta
[00:11:40] type correctly install WSLU all right so it's already there and then as soon as
[00:11:48] you have those things on there you can create a file and you can test it just
[00:11:52] the way we have already in the video let's see try it oh by the way the first
[00:11:57] time you do it it asked permission it asked you for permission hey this
[00:12:01] program wants to do such and such to WSLU dollar and I think it's trying to
[00:12:06] mount the file system and you have to say yes you have to grant permission I
[00:12:10] forgot about that step so make sure you do that but other than that
[00:12:15] everything is fine and that's really it for this video that's just those two
[00:12:20] packages that is it that is all you need to install and after that it works and
[00:12:25] you know it I'm so blown away by this if my apologies to anybody who's tried to
[00:12:30] tell me I could do this the whole time I don't know how long WSLU has been a
[00:12:33] thing I do not know how long WSLU has been a thing I do not know it could have
[00:12:39] been around since the dawn of time and I didn't know I've been streaming for four
[00:12:43] years and at least a year and a half of that I streamed with WSL on Windows and
[00:12:47] nobody told me about this they did see my WSLU melt completely and because my
[00:12:55] computer's fan to go through the roof so I'm a little scared of WSLU I'll tell you
[00:13:00] that right now I'm still scared of WSLU VMware has never done that to me but with
[00:13:06] VMware now in the clutches of Broadcom and with VMware unable to integrate
[00:13:12] directly the way I just showed you with the whole system the clear decision for
[00:13:17] most people going with Windows I would think would be to use WSLU people I've
[00:13:21] been telling me use WSLU all this time and I've been pushing back for the last
[00:13:24] three weeks saying no it's gonna blow up on everybody you can't use your USB
[00:13:28] devices and you can't open anything it has no integration and that last point
[00:13:32] the main point that you don't have system integration to open up files and
[00:13:36] stuff is now gone so the other one I want to show you is the GH off login I'm
[00:13:41] not gonna do it but make sure you try this when you do GH off login it actually
[00:13:45] opens your browser and it authenticates and it keeps going on for you which for
[00:13:49] me is great because now the beginners don't have that extra step of like you
[00:13:53] know you still have to cut and paste the number but you don't it you don't have
[00:13:57] to go open the browser by yourself it'll actually open it for you so it does it
[00:14:02] quite equaries the internal file type associations looks and it transfers them
[00:14:06] over and it tells your host system what kind of file is being opened so that
[00:14:11] means it knows about opening URLs it knows about opening sound files it knows
[00:14:15] about opening any type of file so as long as your host systems default you
[00:14:19] know applications have been said accordingly it'll open it up which is
[00:14:24] pretty damn cool in fact I'm kind of tempted to try other things like like
[00:14:28] my Zwift file right like so I might be able to manage like my Zwift file or my
[00:14:33] Zwift my game configurations or or my you know my pandoc you know books or my
[00:14:38] PDF or there's one right the one of the things I haven't been able to do I I
[00:14:42] generate PDFs all the time writing books right I've been writing these books I've
[00:14:47] been generating PDFs on WSL and I've been they have a USB connect now and they
[00:14:53] have what does that you may also use USB devices just not seamlessly VMware
[00:14:56] okay so so apparently there's also a USB thing I'll do a separate video on that
[00:15:01] but the decision is very clear here use WSL 2 even with the risk and I admit it's
[00:15:07] a small risk even with the risk of it screwing up your system and blowing up
[00:15:13] which it has done on me twice in fact people took bets to say how long it would
[00:15:18] last before I was anti WSL because they knew it would eventually blow up but if
[00:15:22] you're a beginner I mean to install you know how hard it was to me to install WSL
[00:15:26] I started a command terminal and I typed WSL space - - install and it
[00:15:32] installed by itself and it installed by itself and it prompted me and said what
[00:15:37] username would you like to use and what password you like to use and then it
[00:15:40] said you need to reboot I rebooted and it put WSL 2 downloaded a bunch you got
[00:15:45] it all set up and dropped me right into the terminal that was it that was it
[00:15:50] my friends so short of under sort of setting up was termed to use WSL 2 which
[00:15:55] I am now going to do for the default dot template repo that I've been putting in
[00:16:00] the book this also means obviously that several hours of the beginner boost that
[00:16:04] we did for the holiday boost are now related you know gone because we're
[00:16:08] gonna we're gonna replace Git Bash on Windows with WSL 2 there is no M-SIS
[00:16:12] there is no SIG win there is no Git Bash there is no VMware there is no
[00:16:18] pod man there is only one true desktop Linux for Windows in my mind as of this
[00:16:25] moment and that is WSL 2 and you know I have been actively aware of my you know
[00:16:35] frustrating need to change my mind when I come into new information and I have
[00:16:40] that information confirmed for me and this information is now overwhelming that
[00:16:45] this this is very very easy for most beginners what is even more important than
[00:16:50] that and I've always known this is that WSL 2 is the officially supported
[00:16:56] Microsoft way to run Linux on Windows so if you if you're down with using
[00:17:00] wind yet because that's the new official package manager for Windows then why
[00:17:04] would you not be down with using the official Linux way to put Linux on
[00:17:08] Windows why is that important if you are running a school district or if you're
[00:17:13] running a coding club or you're running any of those things the the amount of
[00:17:17] friction you're going to get by using WSL 2 on a Windows system is almost
[00:17:22] nothing other than knowing how to set up hypervisors and making sure that set up
[00:17:26] which you know is a little bit of extra setup but not that much you know it's
[00:17:32] not going to be hard it's not going to be hard to convince people in IT even in
[00:17:37] public school system to use WSL 2 because that's what Microsoft supports and the
[00:17:42] one thing that decision makers and IT care about who are overworked and under
[00:17:47] paid is is Microsoft going to support it and you might not like Microsoft
[00:17:52] especially if they are supporting a Linux distribution but if you're a
[00:17:55] decision maker in one of these organizations and you want the least
[00:17:58] amount of friction and the least amount of extra work to come around using WSL 2
[00:18:03] might very well be the answer I do think get bash is pretty damn close but
[00:18:08] by putting WSL 2 on there you get everything you just saw me use W3M you
[00:18:13] cannot install W3M on Windows period it doesn't exist you can't install it on
[00:18:19] Windows the only way to get W3M for text based browsing the only way to get
[00:18:23] t-mucks people the only way to get t-mucks at all on Windows is to install
[00:18:29] Linux or in some fashion which means you either install the old school boom or
[00:18:34] Sigwin the new school MCIS 2 which is basically Sigwin for millennials or you
[00:18:41] install WSL 2 and you get all that stuff for free because it is Linux in every
[00:18:47] other way it's exactly like Linux that means all your package management is
[00:18:50] good you know if you saw MCIS 2 you have to learn Pac-Man for God's sakes why
[00:18:55] would you do that when you could install WSL 2 and have apt you could use
[00:19:00] actually out for pills for the same thing you're gonna do if you had a
[00:19:03] container or some other thing it is a no-brainer and to all of you are they gonna
[00:19:07] say in the comments I told you so please say I told you so please say it I love
[00:19:12] it when you say I told you so because so when you say you know what when you
[00:19:18] start to tell me things like hey I tried to tell you that you know when you do
[00:19:23] say these things I's not like I ignore you I hear you but I need to get fully
[00:19:27] full confirmation and in this case my AI confirmed it she goes oh yeah you can
[00:19:32] do that here let me show you and she gave me three commands that need or two
[00:19:35] commands necessary to get it to work and immediately try them and it worked and
[00:19:39] I pretty much blew up on IRC which by the way I invite you to come in I am now in
[00:19:44] IRC all day pretty much in Twitch IRC so it's basically if you don't know how to
[00:19:49] use IRC learn how to use it learn how to use it with Twitch come join us I am
[00:19:54] in there all day every day while I'm working I'm sitting in there in IRC chat
[00:19:58] and even though I'm not screaming as I am today so please come join us in the
[00:20:03] IRC we'd love to have you and no I'm not gonna have a Libra or whatever because
[00:20:07] IRC is already available on Twitch and I know it's not the real IRC I don't care
[00:20:13] it's the accounts are validated they've already been pre-piltered and that is
[00:20:17] the only IRC I'm gonna be using for now so you know you can save the comment on
[00:20:22] that one once the video so breaks again it will come back to get bash I very
[00:20:27] much might now you can play it Rob it's a unique system I actually can play it's
[00:20:34] a unique system the first time I can play one of my clips from Windows and say
[00:20:38] it's a unique system I am so doing that I am so doing that I'm just responding
[00:20:44] so some chats here maybe I'll keep that in the video let me read some of the
[00:20:47] comments from YouTube so youtubers says yeah I told you yeah okay could you
[00:20:52] technically so too for the initial set of process and then run your home free
[00:20:55] teaching code absolutely that's exactly what we're doing Tony Anthony that's
[00:20:58] exactly what we're doing open Windows Explorer look for Linux node you will see
[00:21:02] a mounted file system for each let's see what does it say you'll see a
[00:21:09] amount of file system for each district you have installed in WSL nice I did not
[00:21:13] have to install anything to get WSL to for Windows integration it just worked
[00:21:18] you're talking about file system integration you're talking about file
[00:21:21] system integration right no I you can't you can't do the open command without it
[00:21:26] in fact I have it in my terminal let me show you okay so somebody is
[00:21:32] suggesting that it just worked out of the box and I didn't have to install
[00:21:35] those things and that is factually incorrect and I'm going to tell you what
[00:21:39] I had to do to make it work so when I first ran xdg open I ran the open
[00:21:45] command and god it's it's already hanging it's already hanging on me I
[00:21:51] cannot even get the terminal display and please tell me it's not gonna hang
[00:21:55] more yeah watch this happen while I'm making the video this is this is just
[00:22:00] user error I'm running VNC guys this is that's the problem here the problem here
[00:22:04] is that I'm running VNC and it probably timed out so let me do WSL again and by
[00:22:11] the way you when you can eventually have it so when you type bash it'll type it'll
[00:22:15] be you know it'll pull up or was term or whatever so I had to open anyone it
[00:22:19] looks like my time my other one out what I'm trying to tell you is that when I
[00:22:22] did open the first time it it listed all the things that it tried to open which
[00:22:27] is really cool including W3M and links and everything and it failed because it
[00:22:32] none of those things could open the thing in question and when I put that
[00:22:37] when I installed WSL you on it was able to open everything without a problem and
[00:22:43] it just it just prompted me for that and it went from there so I don't know if
[00:22:50] there's something else I'm missing there but I'm just telling you my
[00:22:53] experience so for your next trick use the WSL util to install additional and
[00:22:59] alternate Linux distros in WSL yeah I've done that many many times back in my
[00:23:03] WSL two days I had a whole bunch of different Linux distros and I was
[00:23:08] running them switching between them and all of that and that's cool and all but
[00:23:13] because they're separate VMs and you can even have a run at the same time you
[00:23:16] have a memory I am not interested in that and if you're a beginner if you're a
[00:23:20] beginner I suggest you just stick with the Ubuntu image and and do WSL install
[00:23:26] with a default Ubuntu image I I would not suggest pushing WSL's too much at
[00:23:31] this point especially given my experience with it blowing up on me
[00:23:36] twice so what I would I'm kind of scared about even recommending WSL to at
[00:23:41] this moment because as soon as I do it's gonna something's gonna go wrong right
[00:23:45] but so far so good so and you know the benefits clearly outweigh the negatives
[00:23:50] at this time so so so you know people are suggesting like trying all the
[00:23:55] different distros or anything maybe yeah maybe you should do that but but not
[00:23:58] yet right so right now just just get a stable get a stable Unix system on your
[00:24:04] Windows machine or in this case Linux system right and then you can always
[00:24:09] okay yes side by sentence yes it's really a feeling it's exactly what
[00:24:13] Microsoft was aiming for in developing WSL too yes I know it was I know that
[00:24:17] this is what Microsoft was going for and and there are there's literally video
[00:24:23] evidence of me I'm gonna put it in the chat if you go search my videos you will
[00:24:28] see me you know who poo poorang WSL when I first got it to work and I was
[00:24:35] working I mean not just when I first got to work when I got to do some of these
[00:24:37] other things I want to do two and three years ago and then everything went
[00:24:42] sour so I'm scared I'm I'm not gonna lie I'm scared it blew up so I know that the
[00:24:49] microside case so the statement from a commenter in YouTube is that Microsoft
[00:24:54] this is exactly the elation that they're going for and I know that the team
[00:24:58] wants this and I have wanted to back that team up ever since the beginning I
[00:25:03] have if there's one thing I want to see succeed over air at Microsoft it's the
[00:25:08] Linux team we want to see the Linux team at Microsoft win we want to see them get
[00:25:12] adopted we want to see them have a lot of success and it brought great pain to
[00:25:16] me to have to say you know WSL is not the Linux distro of 2022 like I said it
[00:25:24] was the desktop distro you know the biggest Linux distro of all time or you
[00:25:28] know of 2022 which is what I said and it turned out that it blew up on me right
[00:25:32] after that and I was mad I was mad at myself I was mad at and Microsoft and I
[00:25:36] it wasn't anger at the team I wanted to support the team I really did but I you
[00:25:41] know I was I was totally made a fool of because I trusted it and I'm a little
[00:25:46] worried right now that by trusting it again and having you trust it and
[00:25:50] rewriting my book so that everybody who reads my book trusted is gonna have this
[00:25:58] so if Microsoft if you're watching this there's a lot on the line here for me
[00:26:02] now I know you don't care your big-ass company you know who cares about this
[00:26:06] little youtuber old man boomer and his book in the kids he's trying to help but
[00:26:11] I'm telling you right now don't disappoint me I'm speaking to Microsoft
[00:26:15] please please don't disappoint me like well you have to you're running it on an
[00:26:19] old system you're gonna have to upgrade windows you're gonna have to run a new
[00:26:22] windows if you're gonna do this you got to run the latest windows we can't
[00:26:25] promise that we're so to is gonna work on the windows that you're running which
[00:26:28] is hell I don't even know what it is because my hardware won't even run your
[00:26:31] new windows Microsoft I'm scared I'm not gonna lie I'm scared because they they
[00:26:39] could have just pulled of you so support and say sorry your computer is no
[00:26:42] longer support you need to buy a new computer in order to run windows and if
[00:26:46] that happens I'll go back to my other position was if you want to do terminal
[00:26:49] velocity put Linux on your windows hardware and kick windows out of there
[00:26:54] I still think that's better look I've said a lot of bad things about Linux
[00:26:59] desktop in the last year and a half I still think it's better than Windows
[00:27:03] with WSL I still think it's better than Windows with WSL the only reason in
[00:27:10] terminal velocity the book and I'm the other book I'm writing my number one
[00:27:13] recommendation to people who have a Windows machine and Intel machine is
[00:27:16] going to be installed Linux desktop the end if you have that option if you don't
[00:27:21] have the option the next best option is WSL 2 and by don't have the option if
[00:27:26] you want to play your video games and you also want to become a code mage right
[00:27:31] WSL 2 is the option for you it really is it's the option for you and you know if
[00:27:38] that doesn't work and we could always use VMware the problem with VMware is you
[00:27:41] lose all the tight integration it's not there at all you can use your USB sticks
[00:27:45] but you don't get the tight integration all right so let's I'm like reading
[00:27:50] some more here let's see get bash is great but if you have to leave it alone
[00:27:56] it's just you just use it forget don't monkey with it yeah you're talking about
[00:28:00] doc type integration yes worst case scenario devositude is everything get
[00:28:04] bash for bash and was term best case scenario was term opens to WSL 2 that's
[00:28:10] what it will do so by the end of the night tonight my dot files configuration
[00:28:16] as as well as my Wes term configuration and my dot template configuration that
[00:28:22] I talked about already in the holiday bat boost will now open up WSL 2's bash
[00:28:28] instead instead of get bash now I could write some code in there that detects
[00:28:34] which one you have I might attempt that I might attempt that that's the really
[00:28:39] great thing about Wes term is it's it's the configuration is written in Lua so
[00:28:43] I can actually detect which bash you have I can progressively enhance and I can
[00:28:48] say look if I if you have you know WSL 2 installed will run that bash when you
[00:28:53] start up your Wes term otherwise when you start up Wes term will start up
[00:28:57] whatever other bash you have maybe the bash and program files so and and that's
[00:29:02] honest to God that's probably the right way to go with the Wes term
[00:29:05] configuration that I'm writing because I mean I still want people to have the
[00:29:10] option to put in get bash on there if they don't want to use WSL 2 and that
[00:29:13] the way they can pick which one they want and either of them will work with
[00:29:17] Wes term which I still recommend everybody get it just it completely drops
[00:29:21] Windows terminal preview in terms of performance and flexibility and
[00:29:26] configuration so I'm still really solidly behind Wes term doing all this so
[00:29:30] that that changes those configuration files will happen and I will obviously
[00:29:34] I'll have to redo the holiday boost videos about that the video booth series
[00:29:40] the holiday booth series by the way is one big long playlist right now you just
[00:29:43] have to work through it and watch the little thing I will eventually make
[00:29:48] segmented pieces of videos that go with the book they will not be considered
[00:29:55] holiday boost material they will be you know co coexisting I suppose videos
[00:30:02] that go with the book and my plan is to have a permanent playlist that is
[00:30:07] directly referenced in the book and the book directly references the videos and
[00:30:12] so the videos directly reference the book and so you have simultaneously you
[00:30:15] have a video that goes with that section of the book at all times and then that
[00:30:20] playlist will be constantly in sync so those of you who are looking for a
[00:30:24] specific video on a specific topic that is coming it's just I got to finish the
[00:30:30] book first and and then we'll do that so rather than not make a series at all I
[00:30:35] went ahead and did the holiday boost but just like every other boost we've ever
[00:30:39] done stuff changes in the middle and that has happened to me since 2013 in 2013
[00:30:45] and I started skill stack every single time we go down a path something new comes
[00:30:50] out or something new happens and we have to adapt we have to adapt and we have to
[00:30:55] change and we have to assess whether it's gonna work or not sometimes we have to
[00:30:59] change our mind back to the original thing but that's been a natural part of
[00:31:02] this whole boosted mentoring kind of idea since I started skill stack so I
[00:31:07] can't I can't promise you things aren't gonna change again it's just it's always
[00:31:10] been that way so so let's see and then when you get back to the worst case scenario
[00:31:16] you could argue familiarity with Linux commands later on yes sometimes I
[00:31:20] install another just recently because I temporarily screwed up your main one yeah
[00:31:22] running WCL 2 on 2010 vintage machine nice Windows terminal is really great but
[00:31:29] cross-pop from was terms even better that's good to hear you say that because I
[00:31:33] know that you know you've been really you know watching that whole space and
[00:31:38] it's good that I'm I'm a newbie it was term I've used was from only for one
[00:31:43] week and I have never used a better terminal in my life it is it is so
[00:31:47] amazing and and I'm continuing to to to pursue that the the the lua
[00:31:54] configuration is just so great for an educator like me because I can make a
[00:31:59] single terminal configuration that works on any operating system at all and it
[00:32:06] finds what to run and it runs the best thing it does the best possible thing
[00:32:09] you can do that's not possible with alacrity with Tom or anything it has
[00:32:13] thermal-based configuration in fact I am such a fan of of executable
[00:32:18] configuration of you know that now in lua whether it be neo-vam or lua that
[00:32:24] when something when I come across a new application whose configuration follows
[00:32:28] lua I'm immediately impressed and I'm like yes yes more please yes more of
[00:32:34] that please more please stop my search for Windows terminal alternatives it
[00:32:38] didn't exist I know it's because it's just it's constantly evolving right this
[00:32:42] is why this is why I haven't made a book in the past I have to go rewrite these
[00:32:46] sections of the book because something new is coming up so you know I call this
[00:32:49] book I call it perpetual publishing because these books that I'm publishing
[00:32:53] you know when I finally get to a point like for like two seconds where I can
[00:32:58] publish a printed version and put it on Amazon it'll immediately be out of date
[00:33:02] and this is why I don't do books I have been an educator and and interested in
[00:33:06] helping other people learn for more than 20 years and I've always hated books
[00:33:10] why because they always get out of date and then you have to fight with teaching
[00:33:14] people the new things and you have to constantly so unless you have a
[00:33:17] perpetual publishing model which I've currently and kind of invented for
[00:33:20] myself then there's no way to keep up there's no way to keep up Western is a
[00:33:26] hot reloading your config oh my god isn't it amazing a lack of you had to
[00:33:29] activate hot reloading your config but now Western does it automatically out of
[00:33:33] the box which is just so crazy awesome so yeah there are some issues with both
[00:33:38] WSL and that got they got bash we got me through like I said it didn't work for
[00:33:42] me having WSL installed and it screwed up with your bash I mean it it well well
[00:33:49] we're gonna hit them we're gonna hit those right so can you solve it WSL via
[00:33:53] West term yes you can you absolutely can't all your terminals doing is just
[00:33:58] getting you what you're using there right so you can you can do it from
[00:34:02] PowerShell or whatever right but we're actually gonna go through the steps to
[00:34:06] install was term after I write him in the book if you want to sit around I mean
[00:34:11] this video is kind of long now but if you want to sit around with me while I
[00:34:15] figure this out and I rewrite the book please join us on the live stream and
[00:34:18] and you can watch me do that to those of you who have struggled I mean
[00:34:22] yesterday yesterday's boost at the end of it was was somewhat problematic because
[00:34:28] we had a lot of people who had tried to do some of the extra stuff in their
[00:34:32] terminal right and they had kind of shot themselves in the foot because it was
[00:34:37] just get bash and didn't have the other things and there was term wasn't wasn't
[00:34:40] doing what they expected and that is large is gonna go away now because it's
[00:34:46] just gonna be installed WSL to activate the command line opening things like we
[00:34:52] did install those two things and in fact you know that actually it's not even
[00:35:00] that it's just do that and open up the GH tool what I want to know is where are
[00:35:05] we gonna write the West term we have to figure out where to what where to write
[00:35:08] the West term configuration in git bash so that we can open a terminal from
[00:35:14] there but I but I I'm pretty sure we'll figure that out and it's not that hard
[00:35:17] because one thing I do know is that WSL 2 file system mounts are on our
[00:35:23] accessible I mean the whole system is mount file system is accessible to the WSL 2
[00:35:29] system that's that's been since the beginning of WSL 2 WSL one had kind of
[00:35:33] an emulation layer the problem Western doesn't play nice with opacity if it's
[00:35:37] not the main program that has GPU control so you can't maximize the video in
[00:35:42] Western with opacity see the only problem Western doesn't play nice with
[00:35:47] opacity if it's not the main program that has GPU control oh wow that's
[00:35:55] interesting because it's it's used to being a GPU thing right well it will be
[00:36:02] the main program it's not like we're running it under WSL there's a good
[00:36:08] issue in it I I don't think that it's gonna be a problem but I'm not prepared
[00:36:15] to say that yet so stay tuned WSL 3 so a solid and wind 11 by default really
[00:36:21] that doesn't have a bun to win it already I didn't know that I haven't got
[00:36:26] when I mean I knew Windows 11 did a lot of that but I wasn't sure nobody pays
[00:36:30] for Windows anymore at least someone pays for Windows one of my gripes is
[00:36:35] that ghosty is there config especially since they aren't official docs yet if
[00:36:39] they if ghosty doesn't have lua config I don't want to even look at it I'm not
[00:36:42] I'm not at all interested at all I'm not I I'm not it's such a no-brainer to have
[00:36:48] lua config now in fact I am seriously thinking about adding lua
[00:36:53] configuration into bonsai as as a sub module because having having default
[00:36:59] lua configuration integrated into bonsai for to create any bonsai branch any
[00:37:04] bonsai command branch that you made having it have automatic lua configuration
[00:37:09] built-in have a persistent driver that uses lua oh my lord that would be so
[00:37:14] awesome has a lot of security applause it having a having a programming language
[00:37:20] as a configuration file does have security applause for sure but not if you
[00:37:23] have control of the program right not not if you have control of the
[00:37:27] configuration file it's no it's no less secure than SSH using an SSH config file
[00:37:32] it's not because you have control if somebody else were passing in the
[00:37:38] configuration or if you're querying some external source tainted source first up
[00:37:42] in the configuration and yeah but you don't do that
[00:37:46] and there just needs to be installed the business on sales of a bunch of yeah
[00:37:50] WSL space - install install of a bunch of and that's what I wanted to do for
[00:37:54] beginners I want beginners to have a bunch of server that that is the hands
[00:37:59] down the vanilla standard in servers lua can hold arbitrary scripts yes yes it
[00:38:07] can let's see it's not a programming problem it's a quality of light problem
[00:38:12] like sometimes it's extremely much well if I'll tell you this the one of the
[00:38:16] reasons to use WES term is for all that fast GPU color support and if it turns
[00:38:20] out that WSL 2 stops WES term from being as impressive that's definitely a
[00:38:25] consideration
[00:38:28] oh yeah yes it kind of is let's see what else we got how a terminal emulator is
[00:38:40] important they're all the same they're absolutely not the same and if you don't
[00:38:47] realize the difference you definitely will if you're just looking at a terminal
[00:38:51] that's fine if you I'm telling you when you spend a 15 hours in front of a
[00:38:55] terminal and you've integrated color things in your terminal and you're doing
[00:38:59] a lot of like n-bim pop-up completion stuff like that that little lag time
[00:39:04] because you don't have GPU acceleration becomes extremely noticeable but it
[00:39:09] takes somebody who codes 15 hours a day to know so a lot of people that are new
[00:39:14] to this they're not going to understand the difference and I promise you you
[00:39:16] talk to any veterans they they will tell you they're one of the reasons I got a
[00:39:20] Mac the very first reasons I got a Mac a long time ago was because because I am
[00:39:24] spending 12 to 15 hours staring at a computer all day and the the I know it
[00:39:29] doesn't seem like it but when you spend that much time the the ergonomics of
[00:39:34] looking at a screen that has the the crispest resolution possible actually
[00:39:39] matters it makes your eyes have less ice strain you guys think I'm it's like
[00:39:43] sit in front just to get a sense of this sit in front of a screen that's just
[00:39:48] white it's got black text on white and stare at that for six hours and then you
[00:39:52] tell me if you don't want to change it because the aesthetics of what you're
[00:39:56] doing and what you're staring at all day matter if that's what you're doing if
[00:40:00] you're a knowledge warrior and you're doing it all day every day and your job
[00:40:03] is staring at this thing it does matter even a tiny little advantage like a
[00:40:07] 4k screen when there was no 4k screens before which Mac had before
[00:40:11] anybody else or you know a GPU accelerated Western screen or the
[00:40:15] absolutely crystal clear crisp this is not Western but the really you know clear
[00:40:21] crisp fonts that exist when you're using the nerd font on a bunch of nerd font
[00:40:26] on on Western it's just absolutely overwhelmingly different and you know I
[00:40:31] compare it got just just looking at the same stuff you go back to my other
[00:40:35] videos from before even from four three four years ago and you're looking at me
[00:40:39] using a really GPU accelerated alacrity or nome terminal and you compare to
[00:40:43] Western even today and you can totally see the difference and it's you know so
[00:40:47] so is it necessary probably not you know and I'm listening to Dennis Dennis is
[00:40:54] probably I mean last miles you know he works on his black and white son OS
[00:40:57] you know and and you know he's he's like you're full of it right and and that's
[00:41:02] fine but I I'm you know it's 2024 and there are modern terminals and I think
[00:41:07] you should definitely look at them I still think Mac OS is better than then
[00:41:12] Windows with with WSO 2 buy a landslide by a landslide I think buying a Mac
[00:41:19] machine and BSD Mac machine for development is overwhelmingly better
[00:41:24] than a Windows machine with WSO 2 overwhelmingly I still think it's an
[00:41:30] overwhelming difference over even a if you want a dollar laptop running running
[00:41:35] you know or even a thousand dollar laptop running running Linux on the
[00:41:38] desktop I there's no comparison to me between a Mac and and that and there's
[00:41:45] got a lot of people are going to disagree and they're going to say you're just a
[00:41:47] show for Apple and stuff that's fine you do you if that's what you think you
[00:41:50] can say that but I my experience is that it's been absolutely different and not
[00:41:57] not to mention the fact that my work literally issued Macs officially to us
[00:42:01] for work and that was it so yeah I am gonna do the proximal expects actually
[00:42:08] I'm gonna do a whole proximal video I don't know if it's gonna be tonight or
[00:42:14] tomorrow but I'm gonna rebuild Kubernetes on my proximal machine there is Chris
[00:42:20] there is an entire video there's a 12 hour video I don't know where it is but
[00:42:25] there is a 12 hour video of me setting proximal up and going through all the
[00:42:29] home lab in its specs so and there is a book coming there is a book coming home
[00:42:35] lab in it it's called Linux home lab in it and it is that book if I start
[00:42:40] writing stuff in there that's where I'll put those specs for you because that
[00:42:43] that book is going to be entirely about setting up a proximal home server for
[00:42:47] your home lab on YouTube yep mm-hmm I don't remember the one you might have to
[00:42:52] search it's really hard to find stuff between there and skill stack you might
[00:42:56] find it but especially for devs too bad it's not cheap yeah they're not cheap I'm
[00:43:01] not gonna I'm not saying that right yes it can install Linux anything yeah installing
[00:43:07] Linux on a Mac would just be I've done it I'd my first Linux was installed on a
[00:43:12] power PC in 1997 six yeah that's that's a true story I was
[00:43:21] terminal only baby yeah he couldn't run any graphics there was no support for
[00:43:26] any graphics drivers at all it was that was tough I was using MUT for all my
[00:43:34] email and IRC for all my communications and links for all my web browsing I had
[00:43:38] no graphics I took over the family home computer and I booted this thing on
[00:43:45] there I gave up need for speed I had a steering wheel and everything I gave it
[00:43:48] all up I gave it all up people tell me like oh you're an apple shield and how
[00:43:53] could you possibly call yourself links for something I threw a hundred and fifty
[00:43:58] dollar race you know set thrust master and all my favorite video games and the
[00:44:05] entire family's home computer accessibility to a graphic desktop on our
[00:44:10] Mac power PC while I had young children in the garbage so that I can run Linux in
[00:44:16] the terminal only like an OG boss I don't want to hear your shit about not
[00:44:22] knowing Linux probably time for me to stop making this video I'm gonna push
[00:44:27] stop on the video now
