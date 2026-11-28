# Setting Up Ubuntu on WSL2 with WezTerm, Dotfiles, OpenCode, and Claude

Installing Ubuntu under WSL2 and configuring WezTerm, Nerd Fonts, dotfiles, and install scripts, with help from AI agents in OpenCode. Covers WSL file permission and SSH key pitfalls, a cdd function with tab completion, and tmux sessions, with side discussions along the way.

Chapters:
0:00 Installing Ubuntu on WSL
4:10 Unregistering and reinstalling Ubuntu
13:52 Pointing WezTerm at WSL Bash
21:49 Troubleshooting WezTerm font errors
24:16 Installing and configuring Superwhisper
40:28 Installing Nerd Fonts on Windows
51:36 Setting WSL as default terminal profile
55:15 Separate Windows and WSL home directories
59:28 WSL file permissions and SSH keys
1:06:15 Treating WSL as a separate machine
1:11:07 Recap of installing WSL from scratch
1:16:40 Trying to install GitHub CLI
1:18:57 Installing WezTerm with winget
1:25:16 Cloning dotfiles and installing GitHub CLI
1:33:06 GitHub authentication and dotfiles setup
1:39:23 Updating the Ubuntu apt installer script
1:44:17 Installing OpenCode with a script
1:49:14 Adding Claude to OpenCode
1:55:10 Reviewing changes, adding tmux and yq
2:02:24 Choosing distros and desktop Linux
2:08:05 Separating products from companies
2:13:45 Fixing installer and Neovim errors
2:20:07 Signing in to Claude Code
2:24:49 Adding tab completion to cdd
2:39:40 Automating WezTerm and fonts from WSL
2:45:49 WezTerm working with persistent tmux sessions
2:50:06 Fixing locales and the fish screensaver
3:00:35 Plans for a 24/7 stream
3:07:35 Committing changes and opening Windows browsers

`#wsl2 #ubuntu #wezterm #linux #windows #opencode #claudecode #dotfiles #tmux`

## Category

Science & Technology

## Transcription

[00:00:00] all right we're back and we are able to install Ubuntu so I had to do a reboot
[00:00:10] to see if you can be able to run the installer and it kind of killed the
[00:00:14] installer in the middle of the process so you can see all this stuff and so
[00:00:20] let's do this let's say WSL lists online we want to see all of the
[00:00:28] possible things we can install here. And you can see Ubuntu Linux, OpenSUSE. Fun fact, that was one
[00:00:37] of the first ones that I ever installed back in the 90s. It was all in German, I remember, the
[00:00:42] installer, which was Yast, the Yast installer, I think. We have Rocky Linux, which is a Red Hat
[00:00:49] variation. SUSE, again, Enterprise. Kali Linux, that's interesting that Kali is now an option.
[00:00:54] that's cool. Of course, Cali is the hacker in distro, if you don't know.
[00:00:59] OpenSUSE. You like OpenSUSE? Yeah, there is an OpenSUSE. A lot of people like it. A lot of
[00:01:15] Europeans, in my opinion, a lot of Europeans like SUSE. Apparently, a big percentage of the SUSE
[00:01:19] team work for Microsoft. Microsoft is a big, big backer of SUSE there. It runs most of their
[00:01:24] Azure stuff, apparently. That's a rumor. That's something I've heard secondhand, so don't trust me
[00:01:30] on that. But, uh, debien, uh, на русском звучит хорошо. Oh yeah, in Russian it's, in Russian it's
[00:01:39] pretty good. Open Сузья. I don't know. It probably has a word that it is similar to. I don't know
[00:01:46] what Сузья actually means in Russian, so somebody's gonna have to fill me in in the comments below.
[00:01:51] Alma Linux is another another Red Hat variation and know that the creators are not Mormon
[00:01:56] Alma is a is a prophet name from the Mormon Church
[00:02:01] Arts Linux, of course, is Arch Linux. Aurora is another Red Hat. This is an official Red Hat variation
[00:02:08] I don't know what LXR is
[00:02:12] I don't keep up on Linux distros. It's not productive
[00:02:21] Novell, is it open Suzy? Really? I didn't know that.
[00:02:27] Suzy Linux Enterprise. So there you go. Oracle Linux. Never in a million years.
[00:02:34] No, it's not doing it. So I'm going to install Ubuntu. Ubuntu is by far the most user-friendly
[00:02:42] server Australia is. All of my buddies at work, this is what they run at home, even though
[00:02:47] they run Red Hat at work.
[00:02:51] Susie has, I'm sorry, Ubuntu has the biggest following
[00:02:55] among container distros as well.
[00:02:57] So if you're going to build a container,
[00:02:59] usually it's based on Ubuntu or some slummed down
[00:03:01] version of Ubuntu.
[00:03:04] There's a thing called CloudInit that Ubuntu spearheaded
[00:03:08] and has really led the pack in terms
[00:03:12] of configurable distros.
[00:03:14] So that's what I'm going to go with.
[00:03:17] That's what I've always used.
[00:03:20] And so how do I do that?
[00:03:22] Well, let's do this.
[00:03:24] WSL install Ubuntu, which I assume is the latest.
[00:03:26] So I'm going to go ahead and do that.
[00:03:30] Can I create a file that already exists?
[00:03:32] Uh oh.
[00:03:34] Please consider existing file and open a new issue.
[00:03:37] That's very odd.
[00:03:38] Oh, I've already installed it?
[00:03:44] OK.
[00:03:45] Well I didn't know that. I didn't... no I didn't install that already. How do I uninstall it?
[00:03:51] There's no batch completion, so...
[00:04:10] I aborted the install in the middle and it makes me wonder what it would it actually put on
[00:04:15] Okay
[00:04:25] Uninstall is I want a subsystem. Oh, we don't want that
[00:04:28] We don't want that
[00:04:31] Set the faults, partition file and bear
[00:04:34] Mount compact resize
[00:04:40] Set default user. Hmm. I cancel that.
[00:04:44] No, debug shell.
[00:04:51] Okay, so what have we learned? Don't cancel out of the installer.
[00:05:01] Corporate iOS fork of Davian. That's exactly what it is, including all the drivers.
[00:05:07] If you want your Linux distro to actually work,
[00:05:09] the deviant does not work out of the box.
[00:05:13] Not on modern hardware.
[00:05:21] Interesting.
[00:05:37] "There's no uninstall. Do not launch the distro after install. Manage. Move. Set default. Yo, here we go.
[00:05:53] Manage diff distro. Set default user. Memory resize. Huh. Interesting.
[00:06:05] It's a default user distribution.
[00:06:14] I guess you can't get rid of it once you have it on there.
[00:06:22] Yeah, I'm kind of happy I ran into this.
[00:06:26] Yep.
[00:06:28] It makes up for a free software purity.
[00:06:31] Yep.
[00:06:34] Bibbit is absolutely fetishizing free software purity.
[00:06:39] And you can watch the FSF, Linus Torvalds response
[00:06:44] if you want my opinion.
[00:06:48] Let's do the status of assessment update.
[00:06:55] Very interesting, so I already did the install
[00:06:59] and apparently it's already there and it prompted me
[00:07:01] for my default username and all of that stuff.
[00:07:03] So, um, I suspect it's fine.
[00:07:08] List, what other options do I have with list?
[00:07:17] Do I have other options?
[00:07:18] What if I do Ubuntu?
[00:07:23] Huh.
[00:07:27] It's not as pure as Tri-School.
[00:07:33] Hmm. Did not know any of that. Guys, I'm really sorry. Yes. Yes, yes, yes, yes. It's called
[00:07:49] unregister. WSL unregister Ubuntu. I'm going to read and redo it. Nice. WSL list. I don't
[00:07:59] have any. Yay. Okay. Scientific Linux. Yes, that's a good one. WSL lists online. We did
[00:08:10] this already, and we know we want Ubuntu. So in WSL install, oops, install Ubuntu.
[00:08:17] Downloading Ubuntu from the internets. My stream might hiccup here because I'm not cabled
[00:08:26] in yet. My cable's coming. My cable's probably in the... wherever. It's cold outside. Are
[00:08:37] you guys cold? It's 48 degrees and windy outside. I'm still going to go biking, by
[00:08:44] the way. I'm going to get all bundled up and we're going to go biking tonight. So we're
[00:08:51] just killing time while we wait for this. How are you doing, Dedin? You happy to see me back?
[00:08:58] I love you guys, too. I really do. I really am happy to have been reconnecting with all my...
[00:09:06] I didn't realize... You're going to hate this. I didn't realize how much I was going to miss you
[00:09:10] guys. Yeah. I mean, I was sore at missing you just in general, and then I started streaming again.
[00:09:20] Oh, here we go.
[00:09:21] So, you see how it's asking me for that disastrously bad name
[00:09:26] that it picked for me on my Windows machine?
[00:09:27] Very well.
[00:09:29] Do you even realize how big of an impact you've had on my career?
[00:09:31] Oh, see, tell me more of that.
[00:09:34] I need to hear that.
[00:09:35] That makes me want to stream forever.
[00:09:36] Honestly, I've been researching.
[00:09:39] I mean, like, okay, so I knew I had to settle down for a while.
[00:09:42] I'm turning down the volume of cycling.
[00:09:44] I'm not biking five hours a day like I was.
[00:09:47] And I've been thinking, well, what can I do with this time that's positive is going to make an impact on the world?
[00:09:52] I can go back to tech streaming for a while.
[00:09:53] Maybe I can help out a little bit that way.
[00:09:55] And I don't know.
[00:09:57] I really find it satisfying to help people.
[00:10:00] So when I hear about somebody who's been actually helped, which I've heard a lot recently and makes me happy.
[00:10:06] Thank you for that.
[00:10:06] So even if you can just avoid knocking your teeth out in front of a car or something, it's got to survive.
[00:10:16] working in the uk for one of the biggest defense companies what damn son
[00:10:21] protect me if you have to you're like one of the people i put in my very tiny list of
[00:10:28] people i call in to protect me when i get in trouble yeah like i've been people saying like
[00:10:35] how are you so open with everything i was like come at me bro if you knew the connections i have
[00:10:43] With a particular set of skills, I'm like, I'm fine.
[00:10:46] What's your question?
[00:10:54] What's your favorite processor?
[00:10:58] I don't think about it.
[00:11:01] I often don't think about it.
[00:11:04] I don't think about it.
[00:11:09] Why do you think about it?
[00:11:13] do not ever think about what my favorite processors I don't even know what the
[00:11:17] processors are I have come so far past that that time look there was a time
[00:11:23] when I was obsessed with processors and built my own computers and set up air
[00:11:32] cooling and knew what thermal paste to use and I did all of that in 1997
[00:11:43] "Какая твоя любимая я... и... у... у... у... язимост?"
[00:11:50] "Я не знаю, что такое уяз... уязимост."
[00:11:53] "Что значит, иузи-язимост?"
[00:11:56] "M4, M6, AMD."
[00:11:58] "I really don't have a preference."
[00:12:02] "I don't think it's important to have a preference."
[00:12:04] "That's like asking me what my favorite skill saw is."
[00:12:07] "It just depends on what I'm doing."
[00:12:10] "It's the same as asking me what my favorite language is."
[00:12:13] Uyazimist is a vulnerability?
[00:12:19] The WFTP one is a big one, I was talking about that one the other day, yeah, Uyazimist,
[00:12:25] I gotta remember that word, Uyazimist, Uyazimist, Uyazimist, Uyazimist, vendor neutral right
[00:12:31] there.
[00:12:32] No, I'm not trying to just be vendor neutral, I sincerely think that, I actually made a
[00:12:38] a video about this that I recently republished saying my it was called it's called my uh my saw
[00:12:45] is better than your saw or my hammer is better than your hammer спасибо um yeah so anyway what's
[00:12:54] my password gonna be y'all okay by the way first thing first things first this is not this is not
[00:13:06] internet facing, okay? Who gives them a slug so he gets the job done, right? Temple version four.
[00:13:15] Yeah. As a rule for this kind of stuff, I make my passwords really simple,
[00:13:25] mostly so that I never depend on passwords for security. Depending on a password for security
[00:13:32] is a disaster waiting to happen.
[00:13:35] Okay, help us improve Ubuntu.
[00:13:38] Would you like us to spy on you
[00:13:40] to make our distro better?
[00:13:41] That's what platform metrics collection means.
[00:13:46] And I'm like, yeah.
[00:13:49] No, I'm not.
[00:13:50] No, screw you.
[00:13:52] Um.
[00:14:02] mm-hmm oh
[00:14:04] Look at that. That's not a bad default ps prompt
[00:14:10] That's not horrible. Yes, it is. That's disastrously horrible. Oh my god. That's ugly. It's so ugly
[00:14:18] First things first is this now going to pull up when I type bash
[00:14:23] Okay, so as you can see I'm already running bash
[00:14:29] Get get bash. That's what this is, right? Then I run bash again. What happens? Oh, it does the right thing
[00:14:36] Okay, wait, wait, wait, wait. So is that now gonna work from Western? Let's try
[00:14:41] We did Western last time
[00:14:44] We're gonna run Western. Oh
[00:14:46] What bash is it running?
[00:14:49] Which bash?
[00:14:52] Windows app Microsoft Windows app bash. What happens? Oh
[00:14:59] Snap, okay, so when service finding the right thing, okay, therefore my friends
[00:15:05] We can now update
[00:15:08] Western about Lua actually no
[00:15:11] Wait, where are you? Here you are. Okay, so now we can update Western Lua
[00:15:17] to not run up homebrew bin bash
[00:15:20] but
[00:15:23] Actually back actually we changed this
[00:15:27] What's going on? Oh, no, no, no, no, no, no, no. This is the one in .files. Yeah. We need to open the other one. All right. So, let's, uh, let's cd enter to go back home. All right. Now, let's open .westerm, which we already know got screwed up because we minimized it completely because we didn't want to fight with it.
[00:15:53] Oh, okay. And then it opened it in a new file, so here it is.
[00:15:56] We have "westermlue" and ".westermlue".
[00:15:59] "westermlue" is the "get repo" one, which is, you know, going to get fixed.
[00:16:03] This is running this for my default program, my default proggy.
[00:16:07] I'm going to comment this out, oh, which I can do like this, I just found that out.
[00:16:12] Yeah, "control/" is a VS code-ism.
[00:16:17] How do I copy this whole line? Is that a thing? Is that a thing?
[00:16:23] Oh, fart.
[00:16:29] Ad break, sorry.
[00:16:34] How do I copy stuff, y'all?
[00:16:37] I want to copy the whole line and paste it right here.
[00:16:39] How do I do that?
[00:16:44] I'm sure there's a method, I just don't - wait, it's probably under edit.
[00:16:49] Nope, it's not.
[00:16:53] Alright, so...
[00:16:55] Uh...
[00:17:01] Copy, paste
[00:17:05] in the Windows fashion. Okay.
[00:17:07] I'm sorry, that was, like, very painful.
[00:17:09] Now,
[00:17:11] what if I just put
[00:17:13] bash here?
[00:17:17] I know I don't trust this. I'm gonna ask my AI.
[00:17:19] You can judge me. That's totally fine.
[00:17:25] Wes, sell from Westerm on
[00:17:36] twin
[00:17:39] wso2-lv
[00:17:43] Wait, what?
[00:17:47] Wait what? Replace the button with your exact distro.
[00:17:56] Wait what?
[00:18:02] That's it?
[00:18:09] Huh.
[00:18:12] well I'll be I was not expecting that I thought I was expecting me to run a
[00:18:18] specific program it doesn't look like there's even a domain to be run yeah well
[00:18:28] I don't know let's give it a shot western oh it seems to have worked
[00:18:42] Yes, sir-ree, Bob.
[00:18:44] Yeah.
[00:18:48] Linux.
[00:18:51] It says Linux.
[00:18:55] The problem is, is that I can't use that.
[00:19:00] Okay.
[00:19:04] It's now time for me to start using OpenCode.
[00:19:07] So, without further ado,
[00:19:10] Because all these questions I keep asking my stuff, I could be asking open code on Cloud using my $20 a month plan
[00:19:16] and have it actually work on the files rather than me just screwing around.
[00:19:20] However, I cannot abide these colors. I must get rid of them right now.
[00:19:29] Do I want to kill this one? Yes, I do.
[00:19:31] Alright, so what I am going to do next is...
[00:19:41] Something I didn't want to do.
[00:19:43] Well, okay, first things first.
[00:19:48] Well, I don't know what to do here. Select all.
[00:19:58] Copy.
[00:20:04] I don't know how much to do here.
[00:20:10] This is like all of my stuff though, my colors and stuff.
[00:20:17] Western on GUI startup, function, command, blah blah blah.
[00:20:23] Require Western.
[00:20:28] Uh, where's my return?
[00:20:33] Okay.
[00:20:34] Return, audible build, disable, never prompt, default proggy.
[00:20:38] I don't think we need to default primary anymore because we have the domain thing.
[00:21:01] Ruvox material golf
[00:21:03] Do you guys think it's gonna work?
[00:21:09] No, I have no faith. I have zero confidence Robert. All right, I'm gonna try this
[00:21:22] So there
[00:21:26] Was term
[00:21:28] Well, we knew that was coming that one we knew was coming the font size is correct, though
[00:21:34] Now yeah, it's just like totally dead though
[00:21:40] You see it's still running it's just getting me lots of errors
[00:21:45] Yeah
[00:21:49] What is up with these like dead windows?
[00:21:56] Hmm, unable to set font for your WesTerm-ish thing.
[00:22:03] Wait.
[00:22:06] Okay, so this is where setup comes in and all that.
[00:22:14] So, I don't know the best way to install these onto WSL2.
[00:22:23] because I don't know if they need to go into WSL or if they need to go into the Linux font system
[00:22:34] because they're different. You follow me? So like if I, so yeah, let's try this.
[00:22:48] Paste.
[00:22:49] We'll keep Gemini helping me out for a bit.
[00:22:53] West Term is redirected to I have PowerShell, LS, fonts, list system fonts.
[00:22:57] Wait, what?
[00:22:59] Select string about two-- I forgot about this.
[00:23:02] This works on Linux and Mac.
[00:23:04] I've done it.
[00:23:04] I've done it before.
[00:23:07] Ace.
[00:23:08] Yes, yes, yes, yes, yes, yes, yes, yes, yes, yes, yes.
[00:23:11] Paste.
[00:23:11] Oh, damn.
[00:23:16] Rust backtrace.
[00:23:18] rust spotted on an rwx rob stream. Panic. It had a panic. Unable to load the font-specific fonts.
[00:23:31] Wait, what? Select string command not found. Oh, you know why? Because it's not PowerShell.
[00:23:41] No, it's not. It's not PowerShell. So we need to do grep, y'all.
[00:23:49] Hey, Sasha, thank you for that follow-up. Thank you. Thank you. Thank you. So we're gonna do a grep. Oh, damn
[00:23:57] Unload a lot of fun specified better fun
[00:24:04] Direct right
[00:24:16] Wait, what?
[00:24:18] So it's actually trying to find it
[00:24:22] All right, all right, all-powerful AI, how do I install it?
[00:24:31] "Uninstalling Windows, it only has to install WSM"
[00:24:34] "For all Windows on Windows, if you need to install or reinstall the file on Windows, download a bunch of zip"
[00:24:42] "Select the CTF files, right-click and blah"
[00:24:46] I'll do it with some Lua. What's the response?
[00:24:48] Uh, save the file.
[00:24:52] Okay, so, wait. Oh, I need Super Whisperer on here.
[00:24:55] I need a Super Whisperer so I can do this.
[00:24:58] I'm going to do that right now. Sorry for the sidetrack.
[00:25:00] I am too sidetracking to install Super Whisperer.
[00:25:03] Which, I'm sure there's better ones out there, but Super Whisperer is my favorite.
[00:25:08] It better not be Mac only. I'm going to be really sad.
[00:25:15] downloading. Is it downloaded? Where are you? Are you downloaded yet?
[00:25:25] Download. Skip and download. Download for Windows. I don't want to give you my
[00:25:37] username. Oh, I already downloaded it and I didn't need to do that. Gosh darn it!
[00:25:48] Now I have two of them. I'm installing Super Whisperer. Super Whisperer is
[00:25:58] Awesome. There's probably other variations out there, as I said. Mac has
[00:26:07] built-in transcription is pretty good or STTT, speech-to-text. If it's TTS for
[00:26:15] text-to-speech, is it STT for speech-to-text? STT, TTS, STT. It makes sense, right?
[00:26:25] All right, so finish. Run Super Whisperer. Create just after hers. Yes.
[00:26:28] Now, I'm going to have to put my lifelong key in here,
[00:26:33] which I cannot show you. Actually,
[00:26:38] yes, sorry. Continue. Allow microphone access. Yes. Continue.
[00:26:44] Got it. I can't find it.
[00:26:46] Easy Super Whisperer. Got it. Check. Check.
[00:26:50] Continue a lot of pro features. I already have a license put in your license key
[00:26:55] All right, I have to I have to show you I have to go away for a second
[00:27:03] I'm gonna go away. I'll be right back. I promise
[00:27:09] I could just do this so I guess
[00:27:13] You can see my messy room beholds
[00:27:20] Yeah, I'm kind of a sad, pathetic single guy, just so you know.
[00:27:24] If you didn't know that already.
[00:27:28] All right, where is my license, y'all?
[00:27:35] Oh, damn.
[00:27:44] I'm logging into other things.
[00:27:46] Also because I want to copy it.
[00:27:50] I don't remember that stuff. You know what? I have another option here. Well,
[00:28:08] I gotta get this, I have to do this no matter what, so I might as well just go through the
[00:28:13] pain right now. It is rather painful though, because I have to run in, I have to log into
[00:28:17] my email and i don't want to do that in this account so i'm going to try a different account
[00:28:24] temporarily in a separate window
[00:28:28] and we'll go through the login over here which i also have to do
[00:28:35] um
[00:28:38] oh god
[00:28:42] you can't see any of this can you i hope not
[00:28:47] I'm going to cover my glasses so you can't see.
[00:29:15] No, thanks.
[00:29:17] I'm almost back. I can't believe I'm streaming this. I probably shouldn't stream this. Oh, well. Oh, shit.
[00:29:23] Some stuff went through that I didn't want to go through.
[00:29:34] What else am I doing? I'm trying to find Super Whisperer.
[00:29:39] I'll be right back. I promise.
[00:29:43] There it is.
[00:29:45] Are you going to make me type it in?
[00:29:55] Oh, please, no.
[00:29:58] Okay, good.
[00:30:03] All right, so it is, should I do cloud or local?
[00:30:12] I'm going to continue to use cloud on this.
[00:30:15] Uh, first control space to start recording, try the shortcut.
[00:30:22] Um, all right, back, back to the other one.
[00:30:28] I'm going to fill my paste buffer with something else so I don't accidentally, uh, docks that.
[00:30:37] So, Mary, happy Black Friday, y'all.
[00:30:44] I can hear the police cars outside on Black Friday.
[00:30:48] The world collapseth around us.
[00:30:51] All right, so what does it say?
[00:30:54] It says, so we're going to do control space.
[00:30:59] Hello, this is Rob.
[00:31:02] This is my first recording with Supervis, bro.
[00:31:05] Ukrainian speaker wisdom.
[00:31:11] Where is it even getting the mic from?
[00:31:14] Wait, what's loud?
[00:31:18] Could you hear the siren?
[00:31:22] I forget that I don't have voice isolation on, so you can hear everything, right?
[00:31:27] When I test Super Whisperer, wait, what?
[00:31:34] It got louder?
[00:31:35] Oh, my God.
[00:31:44] Why is he getting so hot?
[00:31:45] I'm so sorry, guys.
[00:31:50] Something's really...
[00:32:44] It sounds like it switches inputs.
[00:33:05] I wonder if I need to set the input of SuperWhisperer by default, does that make sense?
[00:33:11] That would explain a lot.
[00:33:17] Check one, two, it's still loud, it's not loud and right.
[00:33:41] Volume, simple classic, off, microphone, system default microphone, oh, that's why, yeah, check,
[00:33:56] check, check, sound recording playing, off, the shortcut I like, by the way, is not control
[00:34:10] space it's left at right alt the right alt key that's my favorite um
[00:34:18] i'm really sorry about that sound being that loud i'm going to do another test here i'm
[00:34:24] going to disable the sound temporarily so i don't blow your ears out
[00:40:10] I think I figured that out.
[00:40:11] Let me just check the input levels again.
[00:40:15] I want to record, I want to record something here.
[00:40:24] Alright, we got it.
[00:40:28] Okay, Whisper, Super Whisper is in the house.
[00:40:31] There was something I was going to go search and I can't remember now.
[00:40:35] Oh.
[00:40:37] Um.
[00:40:40] Uh, Westerm. What were we doing? You guys remember before this?
[00:40:47] Um...
[00:40:49] Did we kill Westerm?
[00:40:59] I can't remember if we killed it.
[00:41:10] yeah we did oh okay okay okay okay I remember now I remember now how can we install
[00:41:27] fonts so that all the Windows users will see it and so that
[00:41:34] that Westerm will see it under WSL2 as well.
[00:41:37] So the Fuzz system went on Windows
[00:41:48] because Westerm renders its videos, its window, and text
[00:41:51] directly on the Windows host.
[00:41:53] It only reads fonts from Windows, not from the side
[00:41:55] of the WSL2 on the Fuzz system.
[00:41:56] Really?
[00:41:58] Install for all users on Windows.
[00:42:01] Extractor, zip code, OK.
[00:42:03] Make Windows fonts visible inside of this of two Linux apps.
[00:42:09] Now see Windows fonts.
[00:42:24] Really?
[00:42:27] I would not have done this.
[00:42:30] Yep.
[00:42:31] The real question is, "Should we make this a PowerShell thing?"
[00:42:35] When I did this last time, when I was trying to set up installers for beginners,
[00:42:41] I was like, "Do we have the installer script be a PowerShell script
[00:42:46] that they run before they install the WSL,
[00:42:48] or do we have all these things be installed with PowerShell, which is by default?"
[00:42:53] I don't believe installing WSL2 is complicated enough
[00:43:00] to require a bunch of PowerShell before WSL2 is installed,
[00:43:05] and then the installers can be written in bash.
[00:43:07] Write me a bash shell script that does all that.
[00:43:13] I don't know how Gemini is gonna do.
[00:44:00] Is there already a Winget for the fonts that I want?
[00:44:30] What?
[00:44:37] It doesn't appear to exist.
[00:44:52] It doesn't appear to exist.
[00:44:57] *sad music*
[00:45:23] Wait, what?
[00:45:25] It says, "Swinket doesn't carry it."
[00:45:29] "The PowerShell NerdFonts is on the fast-down windows."
[00:45:38] Are you sure it's available?
[00:45:40] Huh.
[00:45:45] Are you absolutely sure install NerdFonts is going to work?
[00:45:55] It finishes as a Buntu nerd font.
[00:46:09] Buntu nerd font Mondo.
[00:46:11] Oh, I had this problem before.
[00:46:12] The names didn't match my Western.
[00:46:15] It was a different Buntu font.
[00:46:17] I'll trigger the exact fallback error.
[00:46:24] I saw this here. I saw this here last year.
[00:46:27] It's still found cache open windows.
[00:46:29] What's this all running against blah?
[00:46:33] This is insane.
[00:46:37] That's a lot of extra work for no reason.
[00:46:39] I mean, it is what it is.
[00:46:44] But for a beginner watching this thing,
[00:46:45] you're like, this is way too much work.
[00:46:47] Okay, go ahead and make a shell script
[00:46:54] that installs it using PowerShell only since Winget doesn't work.
[00:47:24] Make it so I can run it from the wso2 bash command line.
[00:47:54] What?
[00:47:59] How has this not been updating this whole time?
[00:48:05] I have it.
[00:48:10] I'm dutifully loading my
[00:48:12] things and it's apparently
[00:48:15] not loading it. Why not?
[00:48:16] Why are you
[00:48:20] no work?
[00:48:23] I don't know what is going on with my charger.
[00:48:25] It's not working.
[00:48:26] Okay, I'll try this one over here.
[00:48:37] I don't...
[00:48:42] My charger...
[00:48:44] It's a stupid Amazon charger.
[00:48:45] It does not work.
[00:48:53] Why are you no-worky?
[00:48:55] Oh my god.
[00:48:59] This is so annoying.
[00:49:00] It's not...
[00:49:09] It's no work.
[00:49:11] It's no work.
[00:49:21] Sorry for putting you through this. I left this in the video, unfortunately.
[00:49:25] I wish I could cut it out.
[00:49:28] My charger does not seem to be working.
[00:49:36] Okay, there it goes.
[00:49:39] I don't know why it didn't do it before.
[00:49:47] I have to buy new ears.
[00:49:52] I'm so sorry guys.
[00:49:54] Did I really blow you away that much?
[00:49:57] I'm so, so sorry.
[00:50:01] I should probably take that out of the video.
[00:50:15] Did I ruin the whole video from that one little piece?
[00:50:18] I'll have my AI take it out somehow.
[00:50:26] Yeah.
[00:50:45] We need a new file, new file.
[00:51:02] I hate that I'm putting .sh on the end of my files, I've promised myself I would never
[00:51:06] to do that. So sorry about that. It's going to get the GitHub nerd fonts. Yep. Pretty basic stuff.
[00:51:28] okay so god that was like with free ai that's already saved let's go run it so
[00:51:36] cdd actually we can use cdd now
[00:51:45] I should have found them.
[00:51:47] Yeah, um, cdd, um, dot.
[00:51:52] I want-- oh, you know what?
[00:51:59] It's still a bash terminal.
[00:52:02] Yep.
[00:52:04] Yes, sir.
[00:52:07] We need to make the new defaults.
[00:52:08] Yeah.
[00:52:13] We need to make the new terminal default.
[00:52:15] ...settings, terminal, default terminal, no, I want to use the, let me just add this,
[00:52:36] Let's see if the name is asked if it's new or shortcase.
[00:52:38] Oh, not about.
[00:52:39] Selected default terminal profile.
[00:52:46] It kind of guessed.
[00:52:46] Prografiles, git, bin, git bash, systemdcd.
[00:52:54] Ubuntu, WSL, Ubuntu, yes.
[00:52:59] Command terminal, select default profile results in an error.
[00:53:02] Object is not extensible.
[00:53:06] it is so works just fine
[00:53:13] uh-huh i do not understand the problem
[00:53:21] what's our profile
[00:53:24] it's right there
[00:53:28] It's like here if I'll turn my profile, how about just bash?
[00:53:40] Oh, I didn't have a problem this time.
[00:53:58] Oh, gosh dang it.
[00:54:28] Wait, what?
[00:54:30] Can someone switch them up and get you to run it backwards?
[00:54:34] This is external, that's the profiles.
[00:54:39] Which term should run on windows?
[00:54:41] What the hell is this?
[00:54:45] No, a random western.
[00:54:47] This is way too much configuration.
[00:54:50] Yeah, I mean, it's fine.
[00:54:58] It should not take this long, but whatever.
[00:55:03] Terminal profile by default WSL.
[00:55:09] We did this already, but it's just not taking.
[00:55:15] Oh, there it worked!
[00:55:17] Why didn't it take the first time?
[00:55:18] Just like everything on Windows, do it twice.
[00:55:22] I don't understand.
[00:55:26] Also, why didn't it run my bash or C?
[00:55:31] Right?
[00:55:35] I think it's because... oh I know what it is. Watch. It's a different home directory.
[00:55:51] Yeah, I forgot about this. Yep.
[00:55:56] So, as safe as this is, this is super important, as safe as it is, WSL has its own idea about
[00:56:12] a home directory that is separate from the bridged home filesystem directory for your
[00:56:20] actual machine. So git bash uses the same directory that has our windows files in it.
[00:56:27] And WSL creates a separate home directory. And you can go into it, but you have to go,
[00:56:36] you have to create a shortcut. In fact, I have a shortcut somewhere to find it
[00:56:39] because it's this convoluted look. If I do pwd here, if I do another one, if I do a bash one,
[00:56:46] Git Bash, right? So now I need to do a pwd, it'll show you. This is in cusers.rvma.rrepos.github.dot, right?
[00:56:53] Wait, first of all, why did it make that as my default home directory?
[00:56:56] That's very odd.
[00:57:01] It's almost like it thinks that's my home directory, which it's not.
[00:57:07] Oh.
[00:57:16] that is really weird when it opened up a new git bash it remembered the directory of my previous
[00:57:20] git bash shell and it put me in there that's very unusual the git bash is kind of weird anyway c uses
[00:57:27] robma okay so that's that's that's that's that one right um but if i if i go to my other shell
[00:57:38] you see that it's home right that's why it doesn't know about it
[00:57:43] it's much much safer and it will actually do symbolic links all the things that i thought
[00:57:48] it would do before that actually includes installing fonts which which it will install in wsl
[00:57:54] um that are probably not going to be visible to west term outside of here
[00:58:02] if that if you follow me so like my installers that i have that install my fonts with west term
[00:58:11] they will work and they will install fonts into WSL2,
[00:58:16] but when I start WesTerm, it won't know where those fonts are.
[00:58:21] Because WesTerm is a Windows thing, not a Linux thing.
[00:58:25] So this is one of those weird things that only happens
[00:58:27] on Windows when you're mixing WSL in two.
[00:58:30] And I almost don't want to try the installer here.
[00:58:39] Another thing, too, is I have to set up GitHub, right?
[00:58:42] It's not going to have GitHub command line tool.
[00:58:45] It doesn't.
[00:58:46] Now, this is one of those cases where if I wanted to,
[00:58:49] I could actually--
[00:58:51] WSL2 is very, very weird.
[00:58:54] So I could actually set up Git and GitHub
[00:58:58] so that they fire from WSL2, but they fire off
[00:59:01] the Windows EXEs instead.
[00:59:03] But the Windows EXEs are designed
[00:59:05] to work with the Windows side of the environment,
[00:59:07] including like carriage return line feed fixes and stuff like that so if i am in wsl2 and i'm using
[00:59:12] wsl2 shell and i use the windows commands to get in github i could end up with inconsistencies that
[00:59:20] don't work with github because of the crossover and that's i believe one of the main reasons that
[00:59:28] they have you put the github stuff i mean they have you use an entirely separate home directory
[00:59:36] And you have to explicitly say, no, I actually want to use something in /mntc or whatever.
[00:59:44] But another really, really important crossover is the use of sshconfig.
[00:59:51] So I made the rather rational choice to use the same sshconfig file for keys and stuff
[01:00:00] on both GitHub, on Windows, and on WSL2, and I thought that I could have the file over there.
[01:00:10] But here's the problem. Any file that exists in WSL2 is world-readable. I wonder if they fixed
[01:00:22] this. This is a major, major, major problem with WSL2. When you're in WSL2, all of the Windows
[01:00:30] files have full permissions and if you know right if you know I'm talking about
[01:00:35] with SSH you see where I'm going with this so like if I go if I go into if I
[01:00:42] go into you what is it you was a C Drive see our rubma what no C Drive what
[01:00:51] What the hell?
[01:00:52] I know there's a C driver, I was just there.
[01:00:57] C user rubma.
[01:00:58] Oh, no, no, no, no, I think it's mount over here.
[01:01:02] Yeah, I think it's mount.
[01:01:04] It's like slash mount C.
[01:01:21] Mount C.
[01:01:21] No, you have to go into
[01:01:27] you have to go into Mount
[01:01:28] MNT
[01:01:30] MNTC
[01:01:31] R
[01:01:34] Rubma
[01:01:36] Wait, what?
[01:01:39] Oh, God.
[01:01:43] Do I have to do the whole thing? I do.
[01:01:50] I have to do...
[01:01:52] Now I remember, this is all coming back.
[01:01:55] And, you know, you have to find out if all the files have been saved in the right place and everything.
[01:02:02] But here's the important part.
[01:02:04] Okay, so if I do an LSHL on .SSH, which I'm not going to show you, right?
[01:02:09] Look at the permissions.
[01:02:11] I need to make a clip just about this.
[01:02:18] is pain in my butt.
[01:02:22] Okay, who knows SSH?
[01:02:26] Raise your hand if you know why this is a problem.
[01:02:29] If you've used SSH in the past,
[01:02:32] why is this a problem?
[01:02:34] And why would it burn me so hard?
[01:02:36] The secret is right here.
[01:02:44] I want to see how many of you actually know
[01:02:46] why this is a problem.
[01:02:48] The secret is right here.
[01:02:50] And this is another reason that you should never, ever do
[01:03:05] anything that faces anywhere close to the internet in your WSL.
[01:03:12] And to me, this is actually a consideration.
[01:03:15] In fact, I don't even know if you can.
[01:03:17] I think WSL is probably guarded by a network VPN of some kind in a firewall in addition to the normal one that Windows comes with.
[01:03:28] And this would be a big reason why.
[01:03:30] If you break in to a WSL instance on a Windows machine, you have full root access to the entire Windows file system.
[01:03:47] without even having admin.
[01:03:48] Let that process for a little bit.
[01:03:53] If you're a hacker,
[01:03:55] and it's right here, right in front of you.
[01:03:58] So the reason this exists is because
[01:04:03] the very complicated, miraculous, frankly,
[01:04:08] file system translation layer
[01:04:10] that they wrote at the kernel level
[01:04:12] between WSL2 and Windows
[01:04:15] Windows has no idea about file permissions at all. It doesn't even attempt to translate
[01:04:25] file permissions between Windows and Linux. And they are two completely separate permissions
[01:04:30] systems. So what WSL2 does is it punts and it gives full carte blanche access to anything
[01:04:42] that is mounted on C: drive to anything in WSL
[01:04:47] without admin access.
[01:04:49] It's really, really important that you understand that.
[01:04:57] Because for starters, the way I discovered this, by the way,
[01:05:01] was on accident when I went--
[01:05:06] logically, I wanted to use SSH to connect
[01:05:09] to a different machine.
[01:05:10] Whether I was using it from Windows or I wanted to use the same keys. I wanted to use the same Github keys
[01:05:16] from
[01:05:18] Windows that I was also or Git Bash or whatever for that and I was also wanting to use them from WSL 2
[01:05:24] And so I said well, I got this key pair here
[01:05:27] I'll just reuse the Github key pair, but the problem is that SSH is smart enough to catch this permissions problem
[01:05:34] And it's and so if you try to run SSH against this key, it won't work
[01:05:39] Because it'll say, no, that's like way, way, way too permissive of a permission on that key file.
[01:05:44] You need to lock it down.
[01:05:46] So the only fix for that is either to copy these exact keys into your home whatever under WSL2 file system.
[01:05:59] But you can't symbolically link them or anything.
[01:06:03] because this isn't like accessing different file system,
[01:06:07] which symbolic links don't mount across file system mounts.
[01:06:10] That's just a given.
[01:06:11] This is a, even if it didn't mount,
[01:06:15] the permissions are totally different over there.
[01:06:17] So that's how they got around it.
[01:06:21] They used a mount point.
[01:06:22] They created a mount point under Linux
[01:06:24] and then they wrote their own mount driver or something
[01:06:27] that basically loads everything with full perms
[01:06:31] on the file system over there.
[01:06:33] So basically, what this says is if you are going to use WSL2, you need to really think about it for the most part as being a separate machine inside of your Windows machine in all ways.
[01:06:50] That means that you are almost never going to be able to share files across systems.
[01:06:59] And even when you think that you can use your terminal text editor to modify a file on the
[01:07:05] Windows side, you might successfully be able to modify that file.
[01:07:11] But because you're operating on the file from the Linux application, you're doing things
[01:07:15] to that file that Windows might not like.
[01:07:20] So it's more important that you think about the file.
[01:07:24] In fact, I have had problems before using WSL2 because when I was using a Git repo,
[01:07:31] I was operating on things that were in a Git repo that was mounted under Windows,
[01:07:36] and I was working on files there, and I went to commit them,
[01:07:41] and they had invisible weird changes in the files that were not, that didn't, they weren't,
[01:07:45] and it wasn't just the control, the carriage returns.
[01:07:48] It was something else.
[01:07:49] And it basically corrupted my files.
[01:07:52] So the important takeaway from this is if you're going to do WSL2, it's one thing to copy the file, right?
[01:08:01] So like if you can try to do that, but it's also really dangerous to do that.
[01:08:06] It's usually always better to put it into a Git repo and Git commit it from one side if you're going to do that sort of thing.
[01:08:13] And then pull it down so Git can do the conversion, not just for the carriage returns, but for lots of other reasons.
[01:08:19] So otherwise, you need to think of it
[01:08:23] as if I'm going to copy this file onto a USB thumb drive,
[01:08:28] and I'm going to copy that file over into this Linux file
[01:08:31] system, because you're going to hit all of the same problems
[01:08:33] that would happen by doing that.
[01:08:37] Set owner at what?
[01:08:38] You can actually fix that one thing.
[01:08:39] Yeah, I'm not interested in doing that.
[01:08:48] That's an interesting fix, but there's no way I'm doing that.
[01:08:53] I think it's just safer to consider the two things separate,
[01:08:56] the two systems very separate.
[01:08:58] The downside-- I mean, let's be real.
[01:09:04] This is only a problem--
[01:09:06] and I mentioned it early on in the video.
[01:09:08] This is only a problem because I set up Git Bash and Windows
[01:09:12] as if I was never going to put WSL2 on this system,
[01:09:14] because that is enough to do development.
[01:09:18] "User system read-only." Yeah. Oh, right. So, you know, yeah, you probably could set that.
[01:09:31] That would be probably wiser. So, yeah, as I said at the beginning of the video,
[01:09:37] there's like two paths for setting up your Windows machine. If you are just going to stay
[01:09:40] with like web development and you're going to use VS code and you want a, you know,
[01:09:47] a richer command line experience, but you don't want to go full on into WSL2,
[01:09:52] installing Git Bash and installing VS Code and then working that way is perfectly fine.
[01:09:58] I ran a school that way, I did after-school programs that way, coding. That's plenty. That's
[01:10:03] plenty good to give to a command line experience that even lets you use Vim if you want, as well
[01:10:10] as using Git and GitHub and all of that along with VS Code. That all by itself is fine. If you
[01:10:17] want to go the other if you want to go the other route then you should start by installing wsl2
[01:10:22] and maybe vs code but even then you don't probably need vs code you you could install vs code if you
[01:10:28] wanted to have that as a terminal and work but most of the most of the stuff you're going to do
[01:10:33] in vs code you probably you probably you know i mean if you're going that route you should probably
[01:10:38] go with a terminal base set or like new of him or something and stick with the terminal and install
[01:10:44] western or something like that and and and you know install get into WSL and stay entirely in
[01:10:53] WSL2 oh thank you for the sub so much both both pre prepper both prep both prep so but and the
[01:11:07] only time you ever have this crossover problem is when you try to do the two together which is what
[01:11:11] i'm doing so i know this is a really long video but i hope that it documents that that kind of
[01:11:17] thing oh that's so great thank you for the resub got 33 months that's insane um so anyway so that
[01:11:28] so that's that's what we're doing here um so if okay so let's pretend there was no vs code in
[01:11:37] fact, let's back up a bit, okay? Let's pretend there's no such thing as VS Code. Let's pretend
[01:11:43] as of this moment, and this will be a chapter, let's pretend that you have a brand new system.
[01:11:48] Let's recap the steps for getting a new Windows computer to act like a Linux computer without
[01:11:55] VS Code, all right? So the first step, in fact, let's close off VS Code because it's kind of in
[01:12:02] away right now. We'll come back to the script install our thing later. And so, yeah. So let's
[01:12:15] actually do this. This will be fun. So step one would be to install, you're going to see my games
[01:12:25] that I like. Step one would be to install WSL 2. And the steps to do that, you would pull up a
[01:12:33] terminal. You just type in terminal from the command line. And your terminal would be just
[01:12:40] a normal PowerShell thing. And you would type WSL dash dash install Ubuntu. Okay. And it will say
[01:12:49] you're not ready to install Ubuntu. That's what it'll say. And then it'll force you to reboot.
[01:12:54] And when you reboot, it will download a bunch of system things, and it will come up again fresh.
[01:13:00] Your computer will be ready for anything, and you pull a terminal up again.
[01:13:04] And the second time you pull the terminal up after the reboot, you go ahead and run WSL install Ubuntu again.
[01:13:12] Or if you want to see which things you want to install, you can say list-online,
[01:13:18] and that will show you all the online versions of Linux that you can install under WSL now that you
[01:13:25] have enabled it with your system and rebooted. That actually enabled the hypervisor, which allows
[01:13:30] WSL to run. So now you're ready to install Ubuntu or whatever. And I strongly recommend Ubuntu
[01:13:36] over the others, but that's your decision. So then it's the same exact command, WSL dash dash
[01:13:43] install Ubuntu. This used to be much harder by the way. And then you just type install and it will
[01:13:49] run you through the steps to do the installation. It'll have you pick a username. It'll have you set
[01:13:54] up your password as passphrase and all of that. Okay. And as soon as you do that, it will dump
[01:14:02] you into it. Right now you can tell I'm running PowerShell from Windows. I'm in Windows land. I'm
[01:14:07] in Linux WSL land. When you want to run WSL, you can either type WSL or you can
[01:14:14] just type bash, in which case it will actually run WSL by default. So then it
[01:14:21] fired, the reason it took a while there is because it had to fire, I had to go
[01:14:26] find bash and run it. I mean, I had to go find Ubuntu Linux and fire up the
[01:14:31] kernel. So all that stuff is running concurrently. If you were to look at your
[01:14:34] resources on your machine, right now you're burning the resources to run a separate virtual
[01:14:38] machine for Ubuntu. And that Ubuntu Linux virtual environment is running at the same time in
[01:14:46] parallel with your Windows kernel. It's kind of amazing because they run simultaneously at the
[01:14:51] same power and level contacting your direct resources. In fact, WSL has access to most of
[01:15:00] the things that you need access to. There are some disadvantages. You can do it, but it's hard
[01:15:07] to get access to a thumb drive, for example. So let's say you have a thumb drive, you have your
[01:15:12] keys on there or something you want to put your thumb drive in. You have to go through a little
[01:15:15] bit of magic for it to make it into WSL2, but you can do that. Originally, that was one of the
[01:15:22] reasons I didn't want to do that. But that is something that you can do. I now have a generic
[01:15:30] prompt. You can tell it put me in my home directory, mountc users arbravma, and I'm going to cd enter
[01:15:37] to go to my home directory. And now you can see I am in the actual Ubuntu home directory. So just
[01:15:44] to recap, there are two home directories once you have WSL2 installed. One of them is your WSL2
[01:15:52] home directory and the other one is your windows home directory and they may not have the same name
[01:15:57] so i asked when i installed ubuntu and it put me in rwx rob and the actual windows directory is
[01:16:03] is mount mntc users robba which you should basically consider a read-only place but it
[01:16:09] does facilitate file copies and stuff like that for things that are compatible like raw files that
[01:16:16] are compatible. If they're not raw compatible, then you're in trouble. Text files can sometimes
[01:16:22] be a problem. So, but now we don't have anything. We don't have a git over here. Oh, wait, we do
[01:16:28] have a git. That's nice. Okay, how about github? We don't have a github. Okay, so we do have git,
[01:16:33] but we don't have github. So, but this is 100% Linux. So, and it's 100% Ubuntu, which means that
[01:16:40] We can install stuff into it that runs under Linux, not under Windows, that's here.
[01:16:47] So I want to have the GitHub thing so I can do my Linux commands to do that.
[01:16:52] The first command that I would do, I want to get GitHub.
[01:16:55] So this is all apps, but this is going to really test me because I haven't done apps
[01:16:59] in a long time.
[01:17:00] So we're going to do apt install GitHub.
[01:17:03] And it's like, nope, couldn't do it.
[01:17:05] Permission denied.
[01:17:06] Oh, no, whatsoever.
[01:17:07] What's going on?
[01:17:08] Are you roots?
[01:17:10] No, I'm not rude.
[01:17:11] OK, sudo-- hey, how you doing, Delegation Flask?
[01:17:15] So I do sudo apt install GitHub.
[01:17:21] These are all Linux commands, which will go over in the boost.
[01:17:24] It's going to ask me to type my password.
[01:17:26] This is my password for my account
[01:17:29] that I set up for my rwxrob account on here.
[01:17:33] And you can probably guess my password.
[01:17:36] It doesn't matter, because this is never
[01:17:37] going to be public facing.
[01:17:40] Um, okay, wait, what? Snap install? No, hell no. Wait, is it YT install now? It's so apt, right?
[01:17:50] You're telling me there's no GH installer? This is why I have, okay, this is why I have an
[01:17:59] installer for the GitHub command line tool. On a Mac, it's brew install. On Windows, it's
[01:18:04] Winget install. On Ubuntu, it's not that. And I refuse to install snaps. I hate snaps.
[01:18:11] I hate snaps. I just don't like them. Um, so...
[01:18:17] I don't know.
[01:18:31] oh i actually have an installer for this so let's do some things wait i need to i need to zoom in
[01:18:41] because this is like way too small wait that's what we were trying to do we were trying to get
[01:18:46] win get on when okay let's get westerm on here first and then we'll we'll fix it up a little bit
[01:18:51] and then then we'll download the dot files this this is a different path of course right so right
[01:18:57] So right now, we're still running under Windows Terminal.
[01:19:01] So we're going to go ahead and install WesTerm.
[01:19:04] We already installed WesTerm using Winget from the command
[01:19:07] line.
[01:19:09] Let's do that again.
[01:19:11] So we're just going to run a terminal.
[01:19:14] Terminal is running the default to PowerShell,
[01:19:18] so this would be exactly what you would have.
[01:19:21] My light got turned off somehow.
[01:19:23] OK, so now let's do winget install wes.westerm.
[01:19:33] And that will get us the westerm terminal, which
[01:19:36] is the terminal that I've already got configured.
[01:19:38] Oh, god.
[01:19:46] Windows search-- you can still do all of this
[01:19:54] in Windows Terminal if you want to.
[01:19:56] You don't have to do this.
[01:19:57] Wes term-- what am I doing wrong?
[01:20:09] Oh, it's already installed.
[01:20:10] Sorry, I missed that little warning there.
[01:20:12] So that would install Wes term.
[01:20:13] And now you can actually run Wes term from here,
[01:20:15] or you can run it from here, wasterm.
[01:20:18] And that'll run this terminal.
[01:20:20] Now, my terminal's got a configuration file on the way.
[01:20:22] And I'm going to remove that file so that I'm
[01:20:24] going to simulate what you would see.
[01:20:26] Let me go ahead and remove that really quick.
[01:20:30] wasterm.lua.
[01:20:32] I'm going to turn that into wasterm.lua.
[01:20:39] And wasterm automatically reloads any time
[01:20:43] there's a configuration file change.
[01:20:45] So that's why it's doing all that because they're actually
[01:20:48] running Westerm processes, which I need to close all.
[01:20:51] All right, so now we can actually do it again.
[01:20:55] Westerm, we're going to run that.
[01:20:58] OK, so this is a very basic Westerm file that's running
[01:21:02] PS4.
[01:21:02] There's nothing particularly fancy about it.
[01:21:05] It's just faster, and there's lots of reasons
[01:21:08] to run Westerm, which is a different thing.
[01:21:10] There's a bunch of installers and managers
[01:21:14] I don't want to consider.
[01:21:15] I'm just using the built-in managers.
[01:21:17] So from now on, I'm just going to use
[01:21:18] WesTerm for everything instead of the built-in Windows
[01:21:22] terminal, which is also fine.
[01:21:24] But I just want to use this one.
[01:21:27] And there's a number of configuration changes
[01:21:30] that need to happen here.
[01:21:33] And I have all of those things in a WesTerm configuration file.
[01:21:37] but um that configuration file is is um you know kind of a kind of a problem uh how you doing
[01:21:47] 11 raiders so we're gonna go ahead and look at that file and try to get it cleaner and try to
[01:21:55] get my groove box and everything back um but you know how do you edit the file before you have an
[01:22:00] an editor, etc. Hey, how you doing? How you doing, HoboBiker? I'm Poshy. Poshyo. I love that.
[01:22:08] Let's see this. Let's say, Woofie Red. How you doing, Auk? So, we're trying to decide whether I
[01:22:18] want to put this into my default directory. So, I already have Western configuration defaults
[01:22:26] set up inside of my dot files so you know i already have a github repo set up for that
[01:22:33] um if i were teaching an absolute beginner at this point i would have them
[01:22:42] and we have to make a decision so do i do i tell you how to make a github file and configure all
[01:22:55] all these terminal stuff or do I tell you to just use this one and come up with your own
[01:22:59] configurations, right? And so right now I would suggest that you go watch another video about
[01:23:08] Westerm, about how to configure Westerm, either from somebody else or from me, rather than waste
[01:23:14] your time here trying to go through everything about how to configure Westerm. So my next goal
[01:23:19] now that I have Westerm running is to set up Westerm to run and to find my fonts and everything
[01:23:25] as if I were on a Linux system.
[01:23:29] So I'm going to go ahead and do that.
[01:23:33] The problem, however, is that when you run Westrom
[01:23:36] from a Windows box, it's not running under WSL2.
[01:23:39] So it doesn't know the things that you would normally do.
[01:23:44] Like if you're on a Linux or a Mac,
[01:23:46] it would actually know where to find the fonts.
[01:23:48] But in this case, we have to install the fonts and stuff
[01:23:51] that we're going to be using, using Windows, right?
[01:23:54] and that's a little hard to do and so we're going to be making uh i'm probably going to be making an
[01:24:02] installer for all that stuff uh tonight uh before we get too much farther along um because my and
[01:24:09] and before we get too much farther along in that i want to install open code and uh i want to install
[01:24:16] cloud code pro so that i can have it help me update my installer file so that it installs the
[01:24:22] the proper files um so we're going to go back we are we are running cmd right now
[01:24:29] and i'm just going to go ahead and execute bash so that we can get into wsl
[01:24:33] um and there we go but we have this like really ugly directory and we're back and
[01:24:39] now we're in the home directory um and western again is always configured through what's in the
[01:24:46] the directory WSL is a must-have on Windows.
[01:24:51] Yeah, we were talking about that earlier.
[01:24:53] Bash-- I've taught after-school programs in the school
[01:24:58] and other things where we just use bash, git bash,
[01:25:02] and we did JavaScript games in the web browser,
[01:25:05] and we just used VS code to do that.
[01:25:07] We didn't learn VIN, we didn't learn WSL2 or any of that.
[01:25:10] So it is possible to do it without it.
[01:25:11] I did it for like 10 or 12 years.
[01:25:13] But at a certain point-- so this part of the video
[01:25:16] has been more about operations and getting that all started up.
[01:25:19] And if you're interested in that kind of thing,
[01:25:21] you already know it, then start with putting in--
[01:25:25] the very first thing you should do
[01:25:27] is-- do you remember doing the games?
[01:25:30] Oh, you might be somebody that I know then.
[01:25:32] So yeah, we're going to go back to making
[01:25:34] Phaser and Pixie games and just using JavaScript
[01:25:39] in the web browser to do all of that.
[01:25:40] And that's actually really fun.
[01:25:41] It's a great way to learn the code about the web and everything.
[01:25:44] But if you want to do more of the operations hacking stuff,
[01:25:46] you need to use WSL and get Linux on there.
[01:25:50] And so here I am.
[01:25:52] I'm stuck in my home directory.
[01:25:53] I have literally nothing in here.
[01:25:55] This is a bare bones Linux install.
[01:25:58] And first of all, I need to get my .files down here.
[01:26:03] So I'm going to go ahead and do a few things by hand
[01:26:05] that I have to do by hand.
[01:26:07] I'm going to go ahead and create.
[01:26:08] I'm going to pull down my .files repo
[01:26:10] so I can at least get the prompts the way I want them.
[01:26:13] And I can eventually add my Groovebox term colors
[01:26:17] to this whole thing.
[01:26:18] So the way I'm going to do that is first make the directory
[01:26:23] repos-- wait, we can do a dash.
[01:26:25] We can do dash P here.
[01:26:27] Repos, github.com, rvx-rob.
[01:26:32] And I can CD into that.
[01:26:35] And we can go ahead and from here--
[01:26:40] yeah, it doesn't have Bluetooth.
[01:26:41] It doesn't have USB mounts.
[01:26:44] You have to be sneaky with that.
[01:26:46] You can put USB in there, but you have to explicitly mount it
[01:26:50] under MNT slash and then go get it that way.
[01:26:53] But you can do it.
[01:26:53] It's just a lot harder.
[01:26:56] And yeah, Bluetooth for things is tough.
[01:26:59] And if you use a YubiKey for anything,
[01:27:05] that kind of thing gets really hard if you're doing WSL2.
[01:27:08] So there's nothing here.
[01:27:09] And normally, I would do GitHub repo clone,
[01:27:13] but I can't because I don't have the GitHub, the gh command
[01:27:16] installed.
[01:27:17] And you can't apparently install it, which I forgot about.
[01:27:23] You can't use the app to install it
[01:27:24] because there's no app installer for it.
[01:27:26] I'm going to make sure my AI is right
[01:27:28] on that particular thing.
[01:27:30] I am.
[01:27:30] I'm going to go ahead and fire up a--
[01:27:33] wait, where's Chrome?
[01:27:35] So we're going to fire up a Chrome.
[01:27:38] And we can say, can I install GitHub CLI into Ubuntu?
[01:27:46] I don't think there is an app to install.
[01:27:48] I think you actually have to run the installer, which is why I wrote one.
[01:27:51] The official repo.
[01:27:54] Yeah, you have to do the whole installer thing.
[01:27:57] So I actually have an installer that does this.
[01:28:00] It's kind of like a reverse situation.
[01:28:03] So I have an installer that does all of that.
[01:28:08] But it's in my .file.
[01:28:09] So I'm just going to use git to get Rabbit.
[01:28:11] But the hard part about this is I'm going to have to do all the auth myself.
[01:28:16] It's like whether you use GitHub to do the auth or you use git by itself to do the auth,
[01:28:20] it's like which one's easier, right?
[01:28:22] It's so much easier to do authentication using the GitHub command line tool.
[01:28:26] But then to get the GitHub command line tool, you have to do all of this, right?
[01:28:30] So I'm going to cut and paste this and just run it.
[01:28:38] Oops, is it not even going to paste?
[01:28:40] That would suck.
[01:28:42] Wait, why isn't it pasting?
[01:28:45] Because it's WesTerm.
[01:28:49] See, Windows Terminal doesn't have this problem.
[01:28:55] Gerald's went over Bluetooth, but he couldn't. Yeah.
[01:29:00] I'm like really souring on WesTerm for Windows.
[01:29:07] There's so many extra setup steps.
[01:29:10] Yeah.
[01:29:14] And I forgot that you can't cut and paste.
[01:29:19] It's not even taking it.
[01:29:23] Which, that's huge.
[01:29:27] If I cannot cut and paste from the host file system into Westerm,
[01:29:33] that's like, that kills it right there for me.
[01:29:37] Just to say, use the Linux Destroyer.
[01:29:40] We covered that already in this video.
[01:29:42] The main reason is running the Linux on desktop is kind of dumb.
[01:29:49] So if you have the money to have two computers,
[01:29:52] yeah, it makes a lot of sense.
[01:29:54] But otherwise, use Linux as your command line thing.
[01:29:58] A lot of people have a Windows machine,
[01:29:59] and that's the only machine they have,
[01:30:01] whether it's before work or because they're a gamer kid
[01:30:03] and they want to play games.
[01:30:05] So that's the reason, the main reason to do it.
[01:30:08] It's the best Linux you can get on a Windows machine.
[01:30:11] However, I'm, as of this moment,
[01:30:14] I am ready to abandon Westerm for Windows.
[01:30:20] Because just the problem that just happened to me right now.
[01:30:27] Yeah.
[01:30:30] Yeah, yeah, yeah, yeah.
[01:30:33] So, I mean, seriously, y'all, okay, so that was a middle click, which is very Unix-like.
[01:30:42] That's very Unix-like.
[01:30:44] It did do it, but it took a middle click.
[01:30:46] Okay, good to know.
[01:30:47] Good to know.
[01:30:49] That's very Unix-like.
[01:30:51] If you're on a Sun OS system, that's what it would do.
[01:30:55] It would be middle clicking.
[01:30:56] It wants me to pseudo-authenticate.
[01:30:59] This is just to local.
[01:31:01] This is just to my local Ubuntu, which is just a very insecure password.
[01:31:05] So, um, so yeah, it's an OS, yeah, it's, it is a very historical thing.
[01:31:17] So that apparently seems to have worked.
[01:31:19] I already know that I have that in my DAW files, but I just don't have my DAW files yet.
[01:31:35] Another thing I could have done is I could have done a read-only git clone, right?
[01:31:41] Let me actually attempt that. I could have done a git clone
[01:31:49] An HTTPS based git clone so github repos you can clone any repo that's readable without having access
[01:31:57] I haven't set up any authentication. So I'm gonna do rwg dot. So
[01:32:02] It was a long time ago. Okay, so that pulled down the dot as a read a read-only directory, right?
[01:32:08] So once I'm inside of here, I can go into my install and
[01:32:17] Because see this is where things get interesting because it's
[01:32:21] a Windows machine
[01:32:27] So so I have Mac installers I said and my Ubuntu if I go into Ubuntu I have an installer for you know
[01:32:35] You see what it does it does basically the same things I just did
[01:32:40] All right
[01:32:44] It's so fucking great.
[01:32:46] Oh, how you doing, Dr. WD?
[01:32:48] Oh, my God.
[01:32:50] It's so good to see you.
[01:32:51] It's so good to see you.
[01:32:53] Thank you for coming.
[01:32:53] Are you guys watching birds?
[01:32:56] Are you guys watching birds and stuff?
[01:32:58] I should pause the stream to talk to you.
[01:33:00] Oh, thank you for coming in.
[01:33:03] If you all don't know who Dr. WD is, you need to go definitely check him out.
[01:33:06] Yeah.
[01:33:11] Yeah, I'm going to go do an IRL bike stream tonight because people are going to be walking
[01:33:17] around downtown and I'm just going to be biking around downtown tonight a little bit later.
[01:33:22] Extracting 100 from beehives.
[01:33:24] What?
[01:33:25] That is so cool.
[01:33:27] It's awesome.
[01:33:27] All right.
[01:33:28] I'm actually recording a video, so thank you for stopping by.
[01:33:31] We're going to go ahead and install.
[01:33:35] I'm going to run my install script and that's going to do the same thing that I would have
[01:33:40] already just done.
[01:33:41] right? And now I have GH. So now I can do the other thing and I'm going to have to turn the
[01:33:47] stream off for this, but I'm going to do a GH auth login. I'm going to do a GH auth login.
[01:33:52] It's my messy room. I just moved into the studio apartment in Charlotte less than a month ago and
[01:33:58] I'm still setting it up. And yeah, this is a new computer box right here. There's my bike hiding
[01:34:05] back there. I don't have anything in this apartment yet. So, okay. So then we're going to do this. I'm
[01:34:12] going to say GH auth login. And that's going to ask me if I want github.com. Yes. Log in with a
[01:34:19] web browser. Yes. Use SSH. Yes. And it's going to say, do you want to make SSH keys? Yes. Enter
[01:34:27] the passphrase. No. And is there a homelab? No. I've had homelabs in the past. The only homelab
[01:34:33] i'm building this time is this box right here which because i want to stay mobile for the most
[01:34:38] part i don't do prox moxa lab i did that last year i had a 25 000 two server rack cluster that
[01:34:46] i donated and i want to stay small so i'm going to do everything either in the cloud on my my cloud
[01:34:53] server or on my server here and and keep it that way title for ssh nothing okay it's like asking me
[01:35:02] copy this stuff here. Actually, I'm super curious to see if it's going to be able to copy this
[01:35:10] within, you know. Oh, look, it couldn't do XTG Open. It couldn't open anything. I had to click
[01:35:18] on it to open it. That's kind of sad, actually. That is sad. That is very sad. Continue. Yeah,
[01:35:27] I've done the HomeLab thing a million times, and now I'm trying to keep things light this
[01:35:32] time. I'm going to use my pass key. I'm going to touch on my security key. I'm using my my YubiKey
[01:35:40] to authenticate. Okay, I'm all authenticated and now I'm logged in so I can go back to showing you
[01:35:50] what I'm doing. Okay, so we're going back here. So go back to the desktop. All right, so here we go.
[01:36:02] We have my Ubuntu is installed.
[01:36:05] I was able to install GitHub using my installer.
[01:36:09] And this is my .files, which I will talk
[01:36:13] about in the Beginner Boost.
[01:36:15] Hey, Jan.
[01:36:15] How you doing, Jan Ganacode?
[01:36:18] And we've got--
[01:36:21] I mean, .
[01:36:22] if you want to go check it out.
[01:36:23] So I am now set up to run my setup here, which sounds like a lot.
[01:36:31] And this actually does some attempts
[01:36:33] to set up WesTerm, assuming it's on a system that can run it.
[01:36:37] But it's actually not.
[01:36:38] So we're going to figure that out.
[01:36:40] So I'm going to run .setup.
[01:36:43] And it picks my time zone.
[01:36:46] It's going to set up my GitHub.files.
[01:36:49] It's going to install my configure stuff.
[01:36:52] It's going to do my SSH configuration.
[01:36:56] It's going to say, do you want to use a passphrase?
[01:36:58] This is so that my get commits are signed.
[01:37:01] This is all enter a new passphrase.
[01:37:04] I don't need to, because I already have one.
[01:37:08] And the same passphrase again.
[01:37:10] And it simlinks my agents and my other configuration files.
[01:37:14] And now I can exec.
[01:37:16] I can run, actually, exec dash l, bash dash l.
[01:37:21] And that will rerun it with my new setup.
[01:37:23] So I think I should have fishies and everything running.
[01:37:26] Nope, I wonder if it's because it's not compatible.
[01:37:31] We checked that your locale settings, oh.
[01:37:35] Setting locale failed, interesting.
[01:37:37] That's a new error.
[01:37:38] This is a new error, this doesn't happen on my other stuff.
[01:37:44] I can't locate a term animation in C.
[01:37:48] I wonder if it's because my fishies
[01:37:50] didn't get installed properly.
[01:37:54] What's up with fishies?
[01:37:55] Therm animation.
[01:38:03] I thought that-- I thought I already had that in there.
[01:38:04] I guess not.
[01:38:06] I wonder if Xmas is going to work.
[01:38:08] Probably not.
[01:38:08] Oh, it did.
[01:38:10] It did.
[01:38:13] So I had my AI make me a screen saver, a text-based animation
[01:38:19] that rotates through a bunch of scenes.
[01:38:22] And it was really fun.
[01:38:23] I made a little video about how to get it if you want it.
[01:38:27] It's a fun little thing.
[01:38:28] Yeah, but we're still using the baseline terminal colors
[01:38:34] because Western with no configuration.
[01:38:37] I do not know if I'm going to get Western configurations
[01:38:40] if I reload it.
[01:38:41] I just don't think I am, actually,
[01:38:47] because we have a lot of configuration
[01:38:49] that we have to do on the host system.
[01:38:52] so um let's go ahead and see if we can work with that a little bit i want to get my western back
[01:38:58] running and then i'll be ready to go and i'll be able to just fire up my terminal and work from
[01:39:02] windows just as if i was working um from my mac um and that's going to involve uh putting some
[01:39:10] files out there um that don't exist so i'm going to go ahead and install cloud code on this as well
[01:39:17] and ClockCodeAgent, and install OpenCode. I think I have a method of installing OpenCode already.
[01:39:23] GitGrab OpenCode. Install all stuff with Brew. Yeah. So there's a bunch of stuff that you can
[01:39:37] install with Brew that you can't install. A lot of the stuff I'm going to also need on Ubuntu that
[01:39:44] that I have not-- I did not keep my Ubuntu installer up to date.
[01:39:48] So I'm going to need to go through and clean
[01:39:50] a bunch of that out up.
[01:39:54] And I'm trying to decide which one I'm
[01:39:56] going to need right off the bat.
[01:39:59] And I think it's probably going to be open code.
[01:40:03] Yeah, so we're going to do apt install.
[01:40:06] Well, let's see what my Ubuntu installer is going
[01:40:09] to install anyway.
[01:40:11] Install-- wait.
[01:40:14] Install most stuff, let's see.
[01:40:19] I want to, I want to install most stuff with app, oh my god, my stuff is so messed up.
[01:40:39] I just want to update, install, nmap, jqpq, pcr, grab, links, make, ruby, python is python3,
[01:40:46] libcurses, build essential, libcurses, enter and purl, bash completion, scopio,
[01:40:52] build a pro-sgress, client, common,
[01:40:55] ftransfer, hpsd, certs, curl, gpg, shellcheck, I don't need gpg anymore.
[01:41:01] Shellcheck, SMMD3, fio, and neomim. Yes, I need all those.
[01:41:09] That's probably, the fact that NeoVim is missing is probably one of the main reasons this is a problem.
[01:41:16] Yeah, you know, I don't know if I have, if my configure script,
[01:41:25] I got it all set up to work with Mac, I just cleaned that all up,
[01:41:31] and now I need to get it to work with Ubuntu, which counts WSL2.
[01:41:34] So, yeah.
[01:41:39] I'm what I'm trying to I'm wondering if I need another installer branch that is designed for Neo for for WSL 2 Ubuntu
[01:41:47] Sorry, there isn't one of those
[01:41:51] so
[01:41:54] App version is the shitty Python version. Is it really I?
[01:41:59] Wonder
[01:42:03] Like you just got added back
[01:42:05] Okay, um
[01:42:09] What do I need first from there?
[01:42:16] We don't want to see to install Western we already did that so we need the fonts, but
[01:42:22] we don't want to install the fonts into the Ubuntu WSL, but we do want them if we're installing
[01:42:28] into an actual Ubuntu desktop.
[01:42:32] So, I'm conflicted by how I organize my installers because the West Term installer under WSL2
[01:42:43] is substantially different.
[01:42:44] I think that the answer is to put that stuff under the Windows directory and to actually
[01:42:58] install it with PowerShell.
[01:43:01] But that would imply pulling down the .files into something on Windows.
[01:43:10] And, yeah, so I'm trying to figure that out.
[01:43:28] Because you can run WebStorm under Linux, but if you run it under Windows, you've got to install the fonts in the host Windows system.
[01:43:34] So that's kind of an issue, right?
[01:43:38] I'm going to pause the video. It's going to be a longer video than I planned on, but we're going to go...
[01:43:46] We need to get into the installer, and I'm going to have the AI help me do this,
[01:43:53] but I need to have it install the WebStorm configuration file in the right place,
[01:43:57] and I need to have it clean up the Westerm configuration file to know what operating system it's on,
[01:44:02] which is one of the biggest advantages of Westerm.
[01:44:04] With Westerm, you can have a single config file that everything can use, Mac, Windows, Linux, and everything,
[01:44:09] and it will just work because it uses Lua as a configuration, which can have business logic in it.
[01:44:17] In other words, it can say, if it's this OS, then do this.
[01:44:19] And so you don't have to manage multiple configurations.
[01:44:22] just have the one and you have it everywhere um which is you know unlike any other solution um
[01:44:28] you know it's one of the reasons i like western is that universality but i lost that
[01:44:33] uh when i uh optimized it for mac recently and i need to add that back so this is becoming a
[01:44:41] video about how to optimize western installation on multiple systems um which i want ai help with
[01:44:48] even though the AI already wrote an installer for me.
[01:44:52] So that means that I need to get Cloud Code on here.
[01:44:54] And I do not have an Ubuntu WSL installer for Cloud Code.
[01:44:59] I don't even know what that looks like.
[01:45:01] I can take a guess to say it's app install open code,
[01:45:09] but apparently not.
[01:45:11] So wait, of course, we have to have sudo.
[01:45:15] Unable to locate package app.
[01:45:17] it's another one of those snap install things. I really don't like snap. I just refuse to do it.
[01:45:24] How do I install OpenCode with APT? And it's going to make another installer. OpenCode does
[01:45:34] not have a dedicated repo. I downloaded a Linux dev package. Are you kidding me?
[01:45:46] studio apt install opencode.dev install the cli via the official script recommended
[01:45:51] okay so this is the installer so um we can do that in fact we did it the other day
[01:46:01] but i'm going to go ahead and make an installer for that um
[01:46:05] for ubuntu and frankly that's that's the same for all of them so
[01:46:16] do I have an open code installer for Mac?
[01:46:19] I think I did this already, right?
[01:46:30] Nope, there it is.
[01:46:31] So Brew does have an installer for open code,
[01:46:35] so we don't need that for Mac.
[01:46:36] That's good.
[01:46:36] So for Ubuntu and Red Hat,
[01:46:43] We can say install open code shebang bnsh.
[01:46:55] I really want my terminal colors, which is a--
[01:47:01] that's a was term thing.
[01:47:03] So there we go.
[01:47:10] so pipe it to bash we could probably write a better one than that but that's fine one line installer
[01:47:21] install open code
[01:47:27] open code all right so
[01:47:32] once we get a open code on here open code has a method of installing
[01:47:39] and using the Cloud Code Pro agent, which will go out.
[01:47:43] I have Cloud Code Pro sub, and it'll go in there,
[01:47:46] and it'll wrap it up, and it'll use that.
[01:47:47] So there we go.
[01:47:51] So yeah, so we can go into--
[01:47:55] it kind of tells where you're at from here.
[01:48:00] And I have an open code config, I think.
[01:48:03] I need to get grab.
[01:48:09] yeah okay so we have other setups and configurations that are here for open
[01:48:17] code and I believe that those were run but I don't know so I'm actually going to
[01:48:29] to run them. All right, so yeah, that just set up all of our same links, which is
[01:48:42] fine. And, yeah, the open code JSON file and everything. CBR, what's up? Are they?
[01:48:55] nice they are very nice they're super nice never be mean to him all right so
[01:49:04] let's do this let's say we need to get open code to help us this is I need to
[01:49:14] make sure cloud code is set up I don't know that it's going to be set up I need
[01:49:22] to reload so I have an alias called reload for that that's you have to
[01:49:28] reload your shell in order to get the new changes every time so that's how you
[01:49:32] do it and OC will get me we'll start a new open code session as you can see my
[01:49:39] open code is already Groovebox themed but my terminal isn't so it's a Windows
[01:49:46] computer yep yep and so we're gonna go ahead and do this fix a base code base I
[01:49:56] don't want use big pic low um let's see how do I add Claude okay I'm gonna use
[01:50:06] whisper for this how do I add Claude code pro
[01:50:16] And, yeah, we can full screen this now.
[01:50:31] You're probably zooming in a little bit.
[01:50:44] All right, so allow it to search the web, yes.
[01:50:49] Yeah, a bunch of the animations are not working
[01:50:58] because the terminal's not configured properly.
[01:51:01] Like this thing here is like a kind of a thing.
[01:51:09] Open conversion, models.
[01:51:11] Configurations, it's using the free models.
[01:51:19] There's a bunch of really decent free models.
[01:51:21] The Claude Sonnet model hasn't been too bad
[01:51:23] for this kind of work.
[01:51:25] Shelf-finished, Shelf-Silly, Home-Claude.
[01:51:29] Welcome in Claude, Home-Thinking.
[01:51:31] Publishing YouTube page, okay, so it says,
[01:51:37] Your .flow is already important to point to it.
[01:51:40] What's missing is the machine local cloud code login
[01:51:43] and the open code connection that it belongs in this repo.
[01:51:48] On this machine, cloud isn't on the path.
[01:51:49] NPM, MPX aren't available here.
[01:51:54] And open code auth list shows no integrations.
[01:51:58] So do this in a terminal.
[01:52:00] Install upgrade cloud code.
[01:52:05] MTM install, blog, cloud update.
[01:52:08] Sign with your pro account.
[01:52:10] Connected to open code.
[01:52:12] Install here, 2.4.
[01:52:14] OK.
[01:52:19] Put all that in a script under the Ubuntu installer.
[01:52:33] I know sit and watch your AI, right?
[01:52:35] And we need to, once we do this,
[01:52:44] we can actually ask it to configure for our wisdom.
[01:52:48] So we could probably ask a big pickle,
[01:52:49] it would probably be fine.
[01:52:51] But we're gonna go ahead and add that.
[01:53:02] We can watch what it's doing.
[01:53:04] This is actually asking you to do a lot
[01:53:08] because it's actually writing code.
[01:53:11] And there's my syntax up there.
[01:53:15] Yep.
[01:53:19] My face is changing color
[01:53:23] because it's like right next to my computer
[01:53:25] that's got the glowing thing.
[01:53:26] One edit, eight thoughts, 10 reads,
[01:53:31] tools. I'll find out how to install layouts conventions. Shell finished Schmoe+X install
[01:53:40] clot agent. It did it. We can actually go review the code. I don't have Tmux in here yet, but
[01:53:51] that's probably fine. SSH passes, check couldn't complete because shell check and
[01:54:01] run DML, demo on our style here.
[01:54:03] Add rum DL to install with APT.
[01:54:15] I could have done that with two or three keystrokes.
[01:54:21] It's actually adding its own--
[01:54:31] It's more than I wanted, which is always dangerous.
[01:54:35] I should be running this under bubble wrap or some sort of container.
[01:54:40] I always say that, but I'm living dangerously, especially with this model.
[01:54:46] Let's go ahead and add another terminal so we can take care and look at all this stuff.
[01:54:53] Bash to get into WSL.
[01:54:57] cd into repos-- wait, cd into dot.
[01:55:10] All right, so yeah, it made a bunch of changes.
[01:55:26] We need to go in the Ubuntu installer.
[01:55:30] All I really needed to do was add it here.
[01:55:32] It added an install runDL.
[01:55:38] I don't think it needed to add this.
[01:55:39] I think this was unnecessary.
[01:55:44] See the sudo apt install deb-- wait, what?
[01:55:51] RunDL doesn't have an install?
[01:55:56] "What is with nothing being an app?"
[01:56:02] "There's so much that's not in the app stuff.
[01:56:10] Why Windows?"
[01:56:11] We've talked about that a million times, but I'll talk to you again, because Windows is
[01:56:16] the most common machine that people have, and I want to do stuff on Windows, and I don't
[01:56:20] want to have to have a separate Linux machine.
[01:56:23] That's the main reason, and I'm not the only one.
[01:56:26] Manual terminal is just a skill, old age.
[01:56:30] Using the terminal manually is going to be--
[01:56:33] it's still a mandatory skill.
[01:56:35] And we're going to talk about it in the boost
[01:56:36] about why it makes you a better user in general.
[01:56:41] I don't have Tmux installed here, so it kind of scares me
[01:56:47] that the run dml doesn't have an apt installer at all.
[01:56:53] It has a .deb file, but that's it.
[01:56:54] You know, that's actually kind of a downside of apt,
[01:57:00] I will admit, because Ubuntu is all about their snaps,
[01:57:04] and snaps are horrible.
[01:57:06] So yeah.
[01:57:08] So yeah, I guess we need an installer.
[01:57:14] Oh, well, now we got it.
[01:57:17] How about Tmux?
[01:57:18] Install all the stuff with apt.
[01:57:19] Is it in there?
[01:57:22] Git for apt-i tmux.
[01:57:24] I think it's in there.
[01:57:25] It's not?
[01:57:25] What?
[01:57:28] Let's do the apt install tmux.
[01:57:43] I need it 'cause I'm like, my muscle memory's like completely screwed up.
[01:57:48] What is up with this stuff here?
[01:57:53] Please check that your locale settings...
[01:57:56] Why...
[01:58:03] Why isn't WSL setting all the locale settings?
[01:58:07] I gotta figure that out.
[01:58:09] Wait, I need Tmux too.
[01:58:12] Okay, so, I left here on stage to check the stops early, run DML aren't installed in the environment.
[01:58:21] I think run DML is here now.
[01:58:27] Run DL. Run DL is a markdown thing.
[01:58:35] JQ is installed.
[01:58:37] Okay.
[01:58:38] Most stuff with apps.
[01:58:42] JQ is here, yeah?
[01:58:44] Okay.
[01:58:45] I'm really curious, sudo apt install JQ, yes.
[01:58:51] Set out WSL and power on Windows machine.
[01:58:58] Yeah, that's a good one to remember.
[01:59:04] Thank you for that, I'm gonna, I'm gonna,
[01:59:06] I added that to my stash,
[01:59:09] So I go back and not forget that in my to-do list.
[01:59:12] OK, so we have JQ on.
[01:59:21] I really want to see which YQ it installs.
[01:59:23] I want to see if they fix that.
[01:59:26] I doubt they did.
[01:59:27] Yeah, it's a Python schnipies.
[01:59:34] I almost said a swear word.
[01:59:37] Yeah, no.
[01:59:38] What is it?
[01:59:42] I don't even have, I don't even have completions up.
[01:59:45] Ugh.
[01:59:46] I hate that the app YQ is so bad.
[01:59:58] Look at this, crap.
[02:00:00] They made this the standard YQ install on Ubuntu.
[02:00:07] It's disastrously bad.
[02:00:10] It's so bad.
[02:00:11] And now I can't get rid of it.
[02:00:14] How do you get rid of stuff?
[02:00:17] I keep trying to use Tmux.
[02:00:18] How do I uninstall YQ using APT?
[02:00:29] Hydrate.
[02:00:29] I have been hydrating.
[02:00:31] Yeah.
[02:00:37] Relink.
[02:00:37] That's, no, that's not it.
[02:00:39] It's on, it's taking shit out for me.
[02:00:53] Install it, but it's all I can do, I can do it.
[02:01:00] But if you add it later, I already have it.
[02:01:07] sudo apt auto remove, sudo apt remove yq, okay.
[02:01:11] sudo
[02:01:14] I want to get that thing out of there, I don't want to give them any credit.
[02:01:21] That thing needs to leave my environment.
[02:01:23] OpenSusie, I'm glad you are Ubuntu.
[02:01:27] Oh, I'm using Ubuntu.
[02:01:29] Why would I not use Ubuntu?
[02:01:36] As soon as he's good, too. Use whatever one you want.
[02:01:38] Yeah, there's a lot of things about Ubuntu I don't like, though,
[02:01:43] and I'm hitting them all right now.
[02:01:44] Yeah, so.
[02:01:47] Yeah.
[02:01:50] It's a necessary evil.
[02:01:55] Unfortunately, it is.
[02:01:56] Everything is Ubuntu or Red Hat.
[02:01:57] Yep, there we go.
[02:02:06] There we go.
[02:02:10] That's what I want.
[02:02:10] My first YQ.
[02:02:18] Yay!
[02:02:19] Okay.
[02:02:20] What else do we need?
[02:02:24] Oh, I need to get Claude Code on here.
[02:02:27] I've tried Arch.
[02:02:28] I've tried Arch tons.
[02:02:30] Why would I use Arch?
[02:02:31] I guess, you know what?
[02:02:36] But I guess for my WSL instance using Arch would be fine.
[02:02:46] The only reason I don't use Arch is because I wrote all these installers for Ubuntu.
[02:02:51] And because I use Ubuntu at work and on most of my servers.
[02:02:57] And most of my work uses Ubuntu in Red Hat.
[02:03:00] That's the reason.
[02:03:01] uses Arch in any professional capacity at all. Name me one company that puts Arch on their
[02:03:09] servers. You can't because there aren't any. They might allow you to use Arch if you want.
[02:03:18] I've been doing a lot of embedded stuff for those SDKs, Mary themselves, very specifically
[02:03:23] version of Deviant or Ubuntu and the SDK stack more or less, so it won't work out. Yeah,
[02:03:29] Which is why I ended up making so many of my own installers, because every single application has a different method of installation.
[02:03:34] And so I ended up just making my own scripts, and it works the best for me long term.
[02:03:40] So that's kind of where I'm at.
[02:03:45] What else? Let's see. There's lots of other stuff here that I don't need.
[02:03:54] every day things just so I certain that's a real yeah, but then you're also assuming that you would use
[02:03:59] You would have a desktop Linux machine, which I already made a big a big thing about I would never run desktop Linux again
[02:04:05] willingly
[02:04:08] Just not just know you say no
[02:04:11] And I don't want to get into that fight again
[02:04:14] I have a lot of really great friends that I respect to lose use Linux desktops
[02:04:18] I use Linux desktop for 15 years and I put Linux desktop on all my computers at school like 25 computers
[02:04:24] and I had taught over a thousand people how to do Linux desktop it's not that I'm against Linux
[02:04:28] desktop for that and for other people I just don't want to go through the pain and suffering
[02:04:32] of Linux desktop ever again um I don't plus I just want to have a single system
[02:04:37] that's the main reason I'm doing it this way um okay so we were in the middle of trying to
[02:04:45] get open cloud on here and it was telling me that I needed to do some cloud installation stuff
[02:04:50] and uh i i think it actually wrote in an open cloud installer and i was i want to expect
[02:04:57] inspect that but first let's install tmux uh studio app install tmux uh creating tmux okay
[02:05:06] uh the following package will automatically be respond okay we're going to exit here
[02:05:11] exit here and we're going to exit here and we are going to reload and run tmux
[02:05:19] there now from here we can do oc and pop open my open code again where i was and now i can
[02:05:29] actually make new windows with tmux so i can do that stuff didn't mind linux as much as desktop
[02:05:37] once I quit using rolling with these scissors just made life hell.
[02:05:41] Yeah. Gives you more control over the hardware components. Probably. I made
[02:05:47] my own arch sub-distro extended off of arch for hacking that ran
[02:05:53] into VM. It was really good for that. So that's the reason I do that.
[02:05:59] Yeah. My choices when it comes to Linux are based on what's going to get me a
[02:06:03] a job and keep me a job. And there's just really no debating that Red Hat dominates the industry
[02:06:10] and Ubuntu secondarily dominates the industry when it comes to Linux. I don't do it out of
[02:06:15] fascination anymore. I do it because of necessity and what's used at work. And it doesn't matter
[02:06:21] what I think about those choices by the world. It doesn't matter. It's irrelevant. But if you
[02:06:28] want to get a job and keep a job, you need to know those things. So he's Manjaro. I loved Manjaro
[02:06:34] until it totally screwed me over. That's how I met Chris Titus, by the way, online. That's when I
[02:06:40] ran across Chris Titus. Chris Titus had a video about Manjaro going totally south on him and
[02:06:45] like destroying all his stuff and everything. So I was watching his video and that's when I discovered
[02:06:51] him. I'd still be running Windows for my desktop if it didn't keep turning stuff back on advertising
[02:06:57] to me in the OS. Okay, I don't like Windows for any of those reasons. There's all the stuff in the
[02:07:03] OS that I hate. Same with Mac. It doesn't matter. If you want to play games, Windows is the thing.
[02:07:08] And I do want to play games and do other things related to that, including streaming,
[02:07:12] which, if you want to use things like stream avatars, then OBS, it's a Windows-only thing.
[02:07:18] so i accept you know my fate um okay so we need to look in our installer
[02:07:27] ubuntu and check out what it's going to do what is i don't want to run it until i check it so
[02:07:32] it wrote a my agent wrote another agent here okay this is neo of him not being happy um
[02:07:39] using list as a string i'm going to copy and paste this to my agent and fix it i'm going to
[02:07:47] I'm gonna have my agent fix this.
[02:07:49] Pasted four lines.
[02:07:54] Linux usually is a better experience out of the box,
[02:08:02] excuse me, than what, Linux desktop?
[02:08:05] Oh, by far.
[02:08:07] Yep, it is now, Windows 11.
[02:08:11] You can say what you want about it.
[02:08:12] It's got a very clean initial user experience.
[02:08:17] I don't like Microsoft. It's not like I'm shilling for them. I'm just telling you my experience.
[02:08:23] It's super important that at some point in your life, I think, that you separate your opinions
[02:08:37] about the companies from which you buy products, their philosophies, the people that work there,
[02:08:46] from their products and I know that that sounds like a stretch for a lot of people
[02:08:52] but I'm telling you after being alive for close to 60 years
[02:08:59] you can't you will go nuts it will destroy your peace of mind if you nitpick at every single
[02:09:09] company that exists about their policies and their philosophies and everything, and you don't
[02:09:16] separate the products from the people that are selling them. I mean, at a certain point, it does
[02:09:22] get a little insane that you're still supporting them and giving them your money. But on the whole,
[02:09:29] if you do that enough, you'll go nuts. You'll go nuts. You'll get really depressed and you won't
[02:09:36] buy anything. I mean, seriously, I tried it and it's just not practical. It's not my fault that
[02:09:44] Apple is a horrible company or that Microsoft is a horrible company. None of that is my fault.
[02:09:51] I just want a job. And I have to work in this world. And I don't, the very fact that I have to
[02:10:01] work for a big corporation in order to exist and have a reasonable wage in order to survive
[02:10:08] is not my fault. I didn't cause that problem, right? Well, why don't you just check out, man,
[02:10:16] and like do your own thing and like live on your own terms? Like, great. I like, you know, to eat
[02:10:22] and I like to buy bicycles and things like that. I can't do that by moving like Ted Kaczynski into
[02:10:30] the mountains and say I give up on all the world. I've tried it. And it's just, I'm just
[02:10:36] telling you, I eat, I detest Chick-fil-A's policies on trans people. I have a trans daughter
[02:10:43] and yet I still eat their chicken. They have the best chicken out there. I feel dirty when
[02:10:50] I do it every time, but I cannot, I cannot stress about every single thing that every
[02:10:58] single company, Patagonia, you know, any of them. I cannot stress about all of those things. All I
[02:11:05] can do is tell them that I don't like this policy about them and blah, blah, blah. And I prefer if
[02:11:10] they did this and this, but I can't, I can't control that. It's not my fault. It's not my fault
[02:11:16] that the person that's in the government right now, I didn't vote for them. I have to live in
[02:11:21] that world. I have to live in that world and I have to survive in that world. And I don't like
[02:11:25] that i have to do that it could be uh cash kosher
[02:11:30] we've got a new meat uh get to bits i just don't know how to prepare it well uh yes our big job is
[02:11:41] it's not he's studying he's studying lives off a donation and he's fine with that but he but he
[02:11:46] has to stay in syperia yeah you know it's there are a lot of people that do that there are a lot
[02:11:52] of people that do. And there are influencers who change their life and they jump around like a
[02:11:59] dancing monkey. How is that different than jumping around like a dancing monkey for a corporation
[02:12:05] that you dislike horribly, but is still paying the bills? You know, we're all prostitutes at
[02:12:12] the end of the day. You know, we are. And I don't, you know, whatever. I'm just sounding like
[02:12:19] Chomsky.
[02:12:20] Shellscape still checks the old files.
[02:12:22] Check it still be completed.
[02:12:23] They are completely completed.
[02:12:29] So fix.
[02:12:33] AutoCommandBuff calls.
[02:12:34] Shellscape keeps the list file system.
[02:12:38] Cause, the Tmux buffer in your auto system
[02:12:40] is a list of arguments with verbose set to four high.
[02:12:41] Vim tries to convert the list.
[02:12:43] Wait.
[02:12:49] you already try to fix that? Just different names and faces. And you know, people will call that
[02:13:00] rationalizing or whatever you want. I don't really care. I don't really care. I'm too old.
[02:13:05] I'm too old to care. I just want a good chicken sandwich. I want to be able to dance.
[02:13:17] You know, it's like I get an unsolicited Patagonia message as soon as I said that.
[02:13:24] And not obsolete.
[02:13:26] Studio app check install.
[02:13:29] I can't install it via app from here.
[02:13:31] Studio dash and true false with interactive authentication as required.
[02:13:34] No, I only wrote install in the email.
[02:13:37] I never ran it.
[02:13:37] Shell finished.
[02:13:38] Okay, so.
[02:13:45] Yeah, let me run it over here.
[02:13:47] All right, so this is what it's doing.
[02:13:51] God, this terminal is horrible.
[02:13:52] The colors are horrible.
[02:13:53] I need to get that fixed right away.
[02:13:57] God, I almost don't even think I need the other.
[02:14:04] Hey, how you doing, trope?
[02:14:07] Cloud code.
[02:14:15] Install, run the, my CI/CD checking is failing.
[02:14:19] Wait, couldn't be used.
[02:14:26] Couldn't be accessed by user apt.
[02:14:30] Download this performance, have access, route, and file, blah, blah, blah.
[02:14:35] What?
[02:14:45] I'm going to have my AI fix all this because I don't want to.
[02:15:00] Bottom line, I'm too lazy.
[02:15:06] I've been streaming for like how many hours?
[02:15:08] I want to go eat food and ride my bike.
[02:15:11] What time is it?
[02:15:13] Maybe go out to dinner. Wouldn't that be fun? Maybe farm life is free Rob. Sheep,
[02:15:23] cows, buffalo. You know what's funny about that? I have a person living in
[02:15:28] Asheville who's doing that very thing. She's running a farm, her own land that
[02:15:32] she bought with goats and llamas and stuff, and she keeps begging me to come
[02:15:36] up there and help her. She's like, "Please, please come up here and help me!"
[02:15:41] "Was America better in the '80s and '90s for early 2000s?
[02:15:48] I cannot compare how I lived here since 2008."
[02:15:52] Yeah, yeah, it was a lot.
[02:15:58] Yeah, it was considerably better.
[02:16:01] In the '80s and '90s, in many ways it was evil, but it wasn't the evil that we are now.
[02:16:09] It wasn't rampant violence, and I'm talking about class-on-class violence.
[02:16:16] And politically, we might have disagreed and stuff, but there was never the level of division
[02:16:22] that we have now.
[02:16:23] And it was the beginning of late-stage capitalism, but it was not this bad.
[02:16:27] Even in the '90s when everybody was really sad and everybody thought that the world was
[02:16:31] ending and stuff like that.
[02:16:33] farming orchards. I would love to do that. I want to, you know, I want to pull a Tolstoy
[02:16:39] and like maybe in confessions when he talks about leaving everything, it's like
[02:16:44] all this stuff is crap. So yeah, what is it saying now? Check now, now fails only on
[02:16:54] he'll check. Okay. So that's still in there. I know that's already in my
[02:17:05] automated installer. For an answer-crisis, always better. Yep. Yeah.
[02:17:15] Yeah. So, yeah. Can you run fire for a pimp?
[02:17:35] Oh, that's what I was going to look up on YouTube.
[02:17:42] I was going to look up how the boomers totally changed.
[02:17:45] I remember.
[02:17:46] I totally forgot that.
[02:17:47] I was going to play that video.
[02:17:48] I can't do it now.
[02:17:50] Go look at the SNL video where there's a bunch of hippies.
[02:17:53] They're like, "You know what?
[02:17:54] In 1985, I think we should have all the money."
[02:18:02] It's really funny.
[02:18:03] to how they totally, totally change.
[02:18:06] Things are getting rough, yes.
[02:18:08] Check paths is one, which changes do I commit?
[02:18:11] Mine only recommended.
[02:18:12] Commit to vim, yes, fix, fix, install,
[02:18:14] cloud agent, install, blah, blah, blah, blah.
[02:18:16] Everything also commits the best for the hard-coded path,
[02:18:19] the QX package edition, and install open code.
[02:18:22] Note the hard-coded artifacts conflict with the repos.
[02:18:30] Keep that generic rule.
[02:18:33] Why are the paths hard-coded?
[02:18:40] Let's see mine for now.
[02:18:49] It's concert showing on SNL, I know, right?
[02:18:55] Yeah.
[02:18:59] like the voice of the millennial generation I swear and he really he's
[02:19:09] just got that whole deadpan delivery what man what are you talking about free
[02:19:17] love what if instead of buying our houses we bought 12
[02:19:29] Absolutely, you've kind of watched this kid, it's just so hilarious.
[02:19:36] Okay, so the VimFix is in, let's try to edit a file and see if it blows up again.
[02:19:48] hey look it didn't blow up and we have we kind of have neo vim is sort of working
[02:19:57] not really though let me we need to get a better terminal thing i need to get okay so now that i
[02:20:07] got clod actually i don't have clods do i have clod oh let's run it install clod agent please
[02:20:14] what the hell
[02:20:16] install the cloud agent
[02:20:19] have you seen
[02:20:25] have you seen
[02:20:26] no no no
[02:20:28] I am not an owned by zshell person
[02:20:30] I despise it
[02:20:31] so do the zshell people
[02:20:32] talk about unnecessary heavy crap
[02:20:36] not to mention zshell itself
[02:20:38] being absolute dog shit
[02:20:40] i hate z shell i hate it i mean it's just no just no i i'm not going to get into it there's a video
[02:20:52] out there that i made somewhere that talks about why i don't like z shell i just really really
[02:20:58] don't like it my biggest complaint about bash is the license sorry i'm not attacking you personally
[02:21:04] please understand this okay i'm not i'm not attacking you personally i just do not like
[02:21:09] they show a good old bash on all the six centuries yeah not to mention it's the
[02:21:15] standard yeah yeah okay so sign in to cloud code with your cloud coder pro
[02:21:21] account if it doesn't open it authorize this with the authorization this is just
[02:21:28] a reference I don't that's not my actual authorization it's something random
[02:21:35] And unless somebody else wants to pay for my cloud code, so no, please don't go out there.
[02:21:40] I'm going to go try it right now, but just in case it dumps something.
[02:21:43] Fish is cool.
[02:21:45] Look, your interactive shell, I really don't care.
[02:21:48] Your interactive shell is what is you.
[02:21:52] You do your own interactive shell.
[02:21:54] That is completely up to you.
[02:21:58] Continue with Google.
[02:22:03] I think I can log in with Google with this.
[02:22:07] Choose an account, this account.
[02:22:09] I think I associated a Google account with this,
[02:22:11] but I cannot remember.
[02:22:14] Continue, access Anthropic, authorize.
[02:22:19] Paste this cloud, and yeah, so this is the one that,
[02:22:24] if you had it, it would be, you'd kind of own me.
[02:22:33] so done install agent is working you can clear that out and clear out my buffer
[02:22:41] I can close this window and I think I can bring you back now
[02:22:50] Okay, the cloud agent is there. You know what I've noticed too? OpenCode is way better at not
[02:23:07] doxing things. GitHub Copilot is horrible. It doxes stuff all the time. In fact, OpenCode will
[02:23:16] tell me, you know, like, oh, but it would be a horrible thing
[02:23:19] for me to put that on the screen.
[02:23:21] It's hard-coded into it somehow.
[02:23:24] CloudAuthStatus says the sign-in ends between blah and blah.
[02:23:29] You need to run CloudCodeAuthLogin again around
[02:23:32] and the InstallerScript handles the check if you rerun it.
[02:23:34] OK.
[02:23:34] Can you switch to the model?
[02:23:41] Let's see if we can switch to the model.
[02:23:44] Yay, we can.
[02:23:46] we can go to sonnet now select a variant how about medium yay so here we go now we can actually do
[02:23:58] the other stuff I wanted to do I don't know why I'm doing that bad Rob all right it's like running
[02:24:04] PWD through AI bad idea Robert status I want to see if there's anything that's not committed
[02:24:12] hard-coded bath breaks like a apt typo install update but it should be studio app get update
[02:24:24] this is true um um yes fix both of those and uh you only installed long as you show on the back
[02:24:40] yeah
[02:24:40] the biggest thing
[02:24:43] that most people
[02:24:44] use for OMOZ show
[02:24:45] is their fancy prompt
[02:24:46] and the completion
[02:24:48] the tab tab
[02:24:49] kind of completion stuff
[02:24:50] and I actually
[02:24:52] made
[02:24:53] a program
[02:24:55] to get rid of
[02:24:56] CD path
[02:24:56] which I use
[02:24:57] CD path is a
[02:24:59] sort of a better way
[02:25:00] to use the OMOZ show
[02:25:00] completion
[02:25:01] and I actually
[02:25:03] made
[02:25:04] I had my AI
[02:25:05] make a thing
[02:25:05] called CD
[02:25:07] CDD
[02:25:08] I really suggest
[02:25:09] you guys go look at it. This is in rwx. Wait, what? Where's my CDD? Oh, it's a thing. It's
[02:25:24] the function.
[02:25:27] So this is my CDD.
[02:25:28] So what's up with all these things?
[02:25:41] OK, so VI and Bash are almost always constants.
[02:25:47] Agreed.
[02:25:50] non-security incident
[02:25:52] To access back-end system is still limited customer accounts. Yeah, that's why I would never use a cloud-based password manager. It's insane
[02:26:01] So what this does is it
[02:26:06] When you CD into something from the current directory on down it automatically traverses your entire directory tree
[02:26:16] Excluding all hidden directories, and if it sees it it caches it and it CDs into it
[02:26:22] And I'm going to add bash completion so that when you do cd
[02:26:29] You can do cd tab tab, and it will give you all the stuff that you've been in recently
[02:26:33] And that can all be done from bash
[02:26:38] Inside of a function that gets loaded with your bash RC, and it's relatively
[02:26:44] Minor amount of code to get you all of that amazing goodness. Now this would take me forever to write myself
[02:26:49] But and then because the first time it does the descent it takes quite a while
[02:26:56] But then when you do it again the next time it remembers where that put with that location was and it gets immediately
[02:27:01] It knows right away and puts it in the cache. So
[02:27:04] You know, it's pretty cool
[02:27:07] It's basically the same thing that a lot of the fuzzy finders and stuff do except for just works, you know, so
[02:27:14] Um, this is in rgbxrob/dot/bin/cdd, or no, no, this isn't in a bin, this is in its own function.
[02:27:22] Um, so, you know, it's in my bash rc.
[02:27:25] Um, I do want to add completion. I don't think you can add tag completion to a function.
[02:27:31] I wonder if it could. Let's ask it. Um, we need to get the terminal colors fixed too.
[02:27:40] yeah yeah me too right um how hard how hard would it be to add tab completion
[02:27:49] for any of the cached entries for the cdd function
[02:28:10] I'd also suggest the last part of each cache path.
[02:28:15] I'll send you to cache that name when you pick it, or CDD would search it again, and
[02:28:19] might find an erase address with the same name.
[02:28:23] Ummm...
[02:28:28] Yeah.
[02:28:29] About a dozen lines after CDD.
[02:28:31] Oh, damn.
[02:28:32] The scriptures that no longer exist, I'd use the loop instead of the casual comp W.
[02:28:38] Names with slashes, entries like, well, it should work since batch doesn't split words.
[02:28:44] What gets suggested? The cache saves that you type, not the dictionary, if you see trace found blah, blah, blah.
[02:28:52] If you'd rather see the real directory names, it could also suggest the last part of each cached path.
[02:29:01] You'd also need to cache that name when you pick it.
[02:29:06] Or cd would search for it again and might find a different directory with the same name.
[02:29:10] Yeah, this would be fun.
[02:29:17] So, I mean, you know, by the way, while we're over here, we can run another session really quick.
[02:29:26] Let's do our Windows installer.
[02:29:31] So we need a configurator for WesTerm that is smarter than this.
[02:29:45] And this needs to be fixed.
[02:29:48] So I'm going to start another agent working over here.
[02:29:50] Limitation is for names and spaces.
[02:29:57] For names with spaces, completion works
[02:30:00] if you stop before the space, such as cdmy.
[02:30:03] It won't catch after you type the escape space, as in blah.
[02:30:07] The app script fixes are also still uncommitted,
[02:30:12] and install open code is still on track.
[02:30:16] Let's try it.
[02:30:17] Wait, why isn't it making a new one?
[02:30:25] All right, so let's try it.
[02:30:28] CD, reload.
[02:30:33] Wait, I think it's not a nutbound 2.
[02:30:52] We're going to project the cds nuts.
[02:30:57] My function only uses bash-built-in-complete,
[02:30:59] so it doesn't need the bash-completion package.
[02:31:01] I'll check what's happening on this machine.
[02:31:03] All right, so we have some stuff to do in here.
[02:31:15] Let's actually start another session in here.
[02:31:18] Expect the string starting with session at session ID.
[02:31:22] Oh, you know why?
[02:31:26] Because it's doing the OC restart thing.
[02:31:29] Reset CCG cache home, so my test--
[02:31:43] wait, what?
[02:31:45] Wait, wait, wait, wait, wait, what?
[02:31:46] This is important.
[02:31:47] XDD cache home.
[02:31:51] So my test added zebra target entry to your real cache.
[02:31:55] The confirm tab works with your existing dot entry.
[02:31:59] Oh, no.
[02:32:00] Tab completion is fixed.
[02:32:02] Run source bash rc.
[02:32:04] NCD tab should work.
[02:32:05] Complete dot.
[02:32:06] The missing package wasn't the cause.
[02:32:07] Bash completion is installed.
[02:32:11] Cause dot is the first root in CDD.
[02:32:14] so cdd saved relative paths. My completion hit any entry whose path didn't exist under her directory.
[02:32:21] Interesting. Pick cd now saves the full path that searches again instead of using the old relative
[02:32:26] directories. This is crazy. Interactive batch session check my tab. My tab test accidentally
[02:32:34] added blah. Nothing is committed. Okay, so let's test it. So reload cdd tab.
[02:32:46] That's the only thing in there.
[02:32:53] What if we made it so when we had completion on it, it actually put the full path to it?
[02:33:04] If I did D, what's it going to go?
[02:33:14] That would be so cool.
[02:33:19] If you type this shortcut, I mean, that's pretty much a Fuzzle Finder at that point.
[02:33:24] Right?
[02:33:31] What if we made it so that if it makes a match on tab
[02:33:35] That is the only match that it replaces
[02:33:43] It with the full path
[02:34:01] this is crazy this AI development is just so out of this world crazy fast at everything
[02:34:15] a shorthand one that passes very long
[02:34:22] yeah well that's the next thing right and then we say can we can we truncate it
[02:34:31] with dot dot dot if it's
[02:34:33] beyond the width of the terminal.
[02:34:34] Right? Which can all
[02:34:37] be checked with TPUT.
[02:34:38] So, yeah.
[02:34:43] Hmm. Okay.
[02:34:51] Well, it doesn't
[02:34:55] have anything right now because I don't have anything.
[02:35:01] Uh-oh, we broke it.
[02:35:05] Holy cow!
[02:35:11] Yeah.
[02:35:25] There's only one thing.
[02:35:31] That's cool.
[02:35:36] All right, we have to test it.
[02:35:40] All right, we need another repo.
[02:35:43] Clone Banzai, yes.
[02:35:49] All right, now, oh, I already put it there.
[02:35:55] Now what, cddbanzai tab, oh, I didn't find it.
[02:36:01] hmm this is not good I broke it so I broke because when I add a new repo I
[02:36:20] can't find it. I just reverted the whole thing. Nothing's been committed.
[02:36:29] Hey, what?
[02:36:49] from your folder dot and slash both cdd bonsai and cdd bons went to blog tab can't find it in
[02:36:56] my test cdd bons tab returned nothing patient windows directories you've already visited with
[02:37:03] cd oh and your cache currently contains only dot that's true that i forgot about that that's thank
[02:37:15] you thank you sonnet uh-huh so i have to do bonsai and it will descend and find it and now it will
[02:37:23] remember so if i do cddb tab it'll go to the right one so your most common directories are
[02:37:30] eventually going to go in there and be seen. Okay, so last thing. If the length of the path
[02:37:50] is longer than the width of the terminal, truncate it so that it fits on one line.
[02:38:02] The hard part about that is that the argument itself is going to have to be
[02:38:11] massaged into the right thing again because it's not just a visual thing, right?
[02:38:19] when the full path won't fit on the line after tab what should happen uh until the then name
[02:38:24] recommended shorten your home folder to tilde if it still doesn't fit just keep the cached name
[02:38:32] which is shown as always something cd can use truncate it with dot dot dot so uh show something
[02:38:39] like blah blah dot dot dot and teach cd how to map it back to where it's supposed to go if the
[02:38:45] If the toothpaste shortened in the same way, it keeps the name instead.
[02:38:50] I like that, but that's like a lot more code.
[02:38:54] That's like a lot more code.
[02:38:55] But who cares?
[02:38:59] I'm not writing it.
[02:39:00] I'm not writing it.
[02:39:03] Make my AI friend write it for me.
[02:39:07] All right.
[02:39:13] Need to have another agent work on something else
[02:39:15] Make the thing no mistakes. Oh, we don't make mistakes. I'll go find them
[02:39:40] No, it should not. Good catch.
[02:39:43] Evalling the name of a directory? Hell, that's so dangerous.
[02:40:07] We need to change the installer and setup so that when WSL is detected
[02:40:13] The configuration file is placed into the proper place
[02:40:21] Even when the setup is run from within a WSL
[02:40:30] location and
[02:40:36] We need to check and install
[02:40:39] the required fonts into the host Windows machine.
[02:40:45] That's a big one. This might be an opus.
[02:40:50] Zoxide. I've had a couple people recommend Zoxide. How you doing, Adri? Good to see ya.
[02:40:58] Slapping a toast wrap and saying it's not going anywhere.
[02:41:06] I was going to go biking tonight, but I don't know, we'll see, horny.
[02:41:24] You're being recorded for the internet, just so you know.
[02:41:26] Just be careful what you say.
[02:41:29] That's all I have to say about that.
[02:41:35] are you? I am really good. I'm really good, yeah. For those of you wondering,
[02:41:44] Adria is my biggest hot tub fan. Everybody knows that it's
[02:41:52] very public. So I did a hot tub stream once, it's kind of a joke, and I ended up
[02:42:00] having a legitimate fan come out of that. So, this goes to show there's hope for
[02:42:08] everybody out there. So, let's see a WSL config western setup now puts the
[02:42:19] config on Windows side and it sells the font in Windows. I ran it twice on this
[02:42:23] machine from the repo inside WSL. What? First run, it copied the config to blah and installed the
[02:42:33] Buntu Monitor Fund. Second run, it found... See, this is what I'm talking about. OpenCode does
[02:42:37] things without asking, which is super dangerous. Some machine learning is trying to approach me
[02:42:43] today. Pixel, that must have been a full-court press because Seabayer had somebody approach
[02:42:48] them too. You're the second person who's told me that in the stream. I hate that I'm using sports
[02:42:56] metaphors, but I was raised by sports fans, so I don't even know what that is, really.
[02:43:01] So, second run. It found both already in place and changed nothing. Checks Westerm Ellis fonts
[02:43:10] on Windows now loads the regular and mono versions of the font, so check passes. This is why I knew
[02:43:15] if I had loaded my agent up, it would work better.
[02:43:17] They tell me, nah, I'm good.
[02:43:20] Be nice to them, though, because they think your soul is in peril
[02:43:23] and you're going to burn in hell.
[02:43:25] So, you know, if you didn't warn your neighbor
[02:43:31] and you thought that was going to happen,
[02:43:33] you'd be a worse person, right?
[02:43:37] I have to keep telling people this because you understand,
[02:43:41] These people honestly think in their brain that if you do not accept the gospel and they
[02:43:48] come by your place, that you may have rejected the one opportunity you had to learn the true
[02:43:56] gospel.
[02:43:56] And therefore, you know, you might not make it to heaven.
[02:44:01] So, you know, if the Russians were invading or the Nazis or whoever you want to hate on,
[02:44:09] If they were invading and you didn't warn your neighbor that their house was about to be invaded, then, you know, who's a bad person?
[02:44:17] So, anyway.
[02:44:18] Yeah, if you put up a no soliciting sign, they will definitely stop coming by.
[02:44:22] Yeah, or supposed to, anyway.
[02:44:24] I didn't open a Western window, and I didn't test to change it.
[02:44:31] Okay.
[02:44:31] Well, that's very interesting.
[02:44:39] Can we make the default shell to be WSL Bash instead of Bash if WSL is detected?
[02:45:03] I don't know. I don't know how to talk.
[02:45:09] Sort of like Florida
[02:45:11] My last change you should already do this. On Windows it runs
[02:45:15] WSL - - - which starts your default distro's default shell
[02:45:21] Cool
[02:45:23] I'll check that it really is bashing that the Windows copy is current
[02:45:26] What service currently running an open tab to keep you open shop? Quit it completely and reopen it, especially blah blah blah
[02:45:35] It's easier defaults of this distro and currently it's done, but you're only on. Okay
[02:45:39] "That sounds really great. I should be able to do this y'all and actually come
[02:45:47] back to everything because I use tmux for everything. That's one of the main
[02:45:49] reasons to use tmux because it keeps everything running in the background so
[02:45:53] you can restart your terminal shell and do all kinds of stuff. I can even run it
[02:45:56] in a different terminal application completely and still not lose any of my
[02:45:59] work or any of my agents." People talk all the time, "Why are you using tmux? It's a
[02:46:04] waste just to make different tabs. That's why. Okay. So let me give you an example of this. I'm
[02:46:11] about to detach. I'm going to literally shut my terminal down in the middle. Like, oh my gosh,
[02:46:17] you're going to kill all of this stuff. Yes. I want to kill this tab and all containing pains.
[02:46:23] No, I don't want that. I want to kill the tab, but I don't want to kill the pains.
[02:46:33] it should not kill the pains. This is because it's integrated with Tmux. This might actually be bad.
[02:46:39] We're going to find out. I kind of need to find out anyway. So now we're going to run West Term again.
[02:46:45] West Term. Oh!
[02:46:49] Yo, it just worked. And it got my nerd fonts and everything. It even used the proper proportions
[02:47:00] and zoom level that I set up on my Mac.
[02:47:03] It's exactly the same as on my Mac.
[02:47:05] Holy cow!
[02:47:08] And it ran bash.
[02:47:09] You've got to be kidding me.
[02:47:12] I am flabbergasted by that.
[02:47:22] And Western.Lua is here.
[02:47:29] This is the same Western.Lua.
[02:47:32] I can't believe that!
[02:47:43] It fixed everything! Look at all the code it wrote!
[02:47:47] It wrote a ton of code, y'all.
[02:47:53] It's a little bit too dark.
[02:47:58] If it's on...
[02:48:00] We live in the future, friends. This is insane.
[02:48:06] Insane!
[02:48:10] Wait.
[02:48:12] And my Tmuxes are all still there.
[02:48:14] What? Just... what?
[02:48:18] What? What is going... this is insane.
[02:48:23] Oh my gosh.
[02:48:28] I've done everything I had outlined to do today. Time for me to go ride my bike. What time is it?
[02:48:33] It's 6:30. It's kind of late. I still kind of want to ride it though. Should we go ride? Should we go ride anyway?
[02:48:41] I've been sitting here for so long.
[02:48:47] Look at how fast it is. This is because Western. Look at how fast it updates.
[02:48:58] It's rust. Yeah, oh, oh, oh, oh, oh, wait, we gotta try it. Sunset. No. What is sunset? Anyway.
[02:49:20] Since it's cycling over Utah. What is all that crap in there?
[02:49:24] Oh, it had an emoji in it at one point, which you can't understand because I'm on WSL.
[02:49:31] Keep the legs moving.
[02:49:34] Yeah, I probably should. I probably should go ride it for a bit. Just ride downtown.
[02:49:42] I have to really bundle up though. It's cold out there.
[02:49:45] Yeah.
[02:49:50] I can probably bundle up enough to do that.
[02:49:53] Okay, so let's wrap this up.
[02:49:56] Bonsai.
[02:50:00] Is there a bin directory in here?
[02:50:06] Commands.
[02:50:20] Sunrise. Watch your eyes. Wait, what?
[02:50:26] Wait, what?
[02:50:33] How come it's... oh, never mind. Let me check something.
[02:50:45] Go... wait.
[02:50:50] Let's go install now
[02:50:52] Install go
[02:51:04] Hey, I want you
[02:51:07] No, I want to install go and I go over these sir
[02:51:12] So you have to install go wait
[02:51:20] "Install Mac"
[02:51:24] Wait, what? Can we install Neo here?
[02:51:30] Some of the stuff I want in both places
[02:51:34] "It's called up for Thanksgiving." It does.
[02:51:39] Oh, there's my group box terminal file. I was looking for that. That's the Mac
[02:51:48] Goombux terminal. Anyway, it should go under config actually.
[02:51:52] Yeah, our term two stuff should go under there as well.
[02:51:57] Do I have any install goes in here?
[02:52:17] I do
[02:52:19] Why is that under bin?
[02:52:26] Perl. That's because I don't have Perl installed.
[02:52:45] Yeah
[02:52:47] Oh
[02:52:56] Do CD to enter a directory name exit runs a command last committed
[02:53:00] Vastor C does this too so the download or repo and archive message forward to run code
[02:53:04] This the cause is that ps puts the directory name into ps2 one. Yes, expands it and runs it. Yeah, that's true
[02:53:15] really the same, it's probably also a risk.
[02:53:17] That's bad.
[02:53:23] We should probably fix the PS1 security problem first.
[02:53:45] Yeah, well, what was I going to do?
[02:53:50] I'm going to run a new, I'm going to run a new, I'll see, open code, what's new 2.24,
[02:54:04] glsb6, open code onboarding, okie dokie.
[02:54:09] Um, um, I need to fix that and say, I'll start with the install.
[02:54:23] I'll go to the script and your local setup to say, I'll put it shows to some problems.
[02:54:28] JQ isn't using JQ.
[02:54:30] Yep.
[02:54:32] This is true.
[02:54:39] Uh, that was just about... oh, yeah.
[02:54:42] Uh, West Term.
[02:54:45] What's up, West Term?
[02:54:49] West Term on Windows now explicitly opens episode bash as a login shell.
[02:54:54] Uh, which is fine.
[02:54:59] I wonder if it should do that.
[02:55:03] Because Kali uses Z shell by default.
[02:55:09] I mean this is my west term, so yeah, I run setup which updates to Windows config and save previous one.
[02:55:18] Cool.
[02:55:21] Wynt, how you doing buddy?
[02:55:25] What's the goal on this project? The goal, the first goal on the project was to get
[02:55:31] Linux back running on my Windows machine.
[02:55:36] And I have that, that's done now.
[02:55:38] So I'm just cleaning up some stuff,
[02:55:40] some configuration stuff that's kind of left over.
[02:55:43] But I'm more or less done with the project for today.
[02:55:45] I have two really long videos that are gonna go up
[02:55:49] with chapters and everything on the YouTube.
[02:55:52] Which reminds me, I need to pull down the videos
[02:55:55] and start transcribing them very soon here.
[02:55:59] So I just sent back from WSL on the same option.
[02:56:02] started a login shell on home. I didn't open any Western wanted to check it
[02:56:08] there. Western is currently running and open tabs will keep it current. Quit it
[02:56:14] completely and reopen it. Especially if you started it before the config file
[02:56:21] existed. If you still don't get WSL Bash, tell me. This is your default WSL
[02:56:27] which is currently ubuntu you're only one no okay so this other problem
[02:56:39] sudo locale locale gen blah if it says isn't found run sudo app install
[02:56:46] locales first the apps installer already had uncommitted changes but this
[02:56:56] machine only has the C and CUTF locales. I added locales and locale gen to install
[02:57:02] most stuff with API. Good AI. I haven't read anything with sudo. If it says local gen do
[02:57:10] that. Okay let's go get that. Actually I can just do this. Copy that. Copy that.
[02:57:25] Paste, enter, generation complete, complete.
[02:57:35] I think we can get fishies now, dammit.
[02:57:48] That's actually, I know what to install there, it's already there.
[02:57:53] No libcurse is Perl, that seems to work.
[02:58:18] I need to add the C-Pan Dependencies for the Phishies program from Mac as well.
[02:58:24] You just hang out at home and check out videos on C++. Oh, yeah, that'd be fun.
[02:58:36] Yeah, I'm just yeah, I'm just getting ready for a bunch of tech streams coming up in December.
[02:58:42] Uh, clinker for the savings. It's not bad, man.
[02:58:48] Like, Sonnet is not too damn bad. And given how much money you're saving, just for 20 bucks a month,
[02:58:54] I've gotten so much more done with it. Of course, I'm not really pushing it, you know?
[02:58:59] If I'm gonna push it, like, when I start to do Nomad IRL, I'm gonna go to Opus for all that.
[02:59:03] So, I can Neon for 20 hours straight. Me? Oh, you are.
[02:59:18] That's cool
[02:59:20] I need to add CPAN dependencies with a fishy program. Yeah, other fixes banner banner neo watch cow on the same command bug
[02:59:28] I guess this I'll go the banner fishes which links to banner neo
[02:59:31] Banner font banner fishies
[02:59:36] Watch out cities cows say unfortunate
[02:59:39] Yeah
[02:59:44] This is cool, so
[02:59:48] It went to "Install Fishies", "Install", "Install the Fishies"
[03:00:07] Christmas, the Christmas thing worked.
[03:00:16] So you can make some videos yourself for fear of actually wearing it so you don't forget
[03:00:21] you have it when you're in the toilet, like I have done many times.
[03:00:26] Fishies are back.
[03:00:28] Cup fable satisfaction.
[03:00:35] Fishies are back.
[03:00:36] The fishies are back.
[03:00:39] Very happy little fishies.
[03:00:41] Let's full screen them.
[03:00:44] screen fishies. The fishies are back. There's my RWX fishy courtesy of, what's his name? My SAP
[03:00:57] friend. Um, like, what should we just leave the fishies on? Well, okay. So I have a server on now.
[03:01:10] So I am going to make a 24/7
[03:01:16] Rwx clips and fishies and music channel.
[03:01:22] I'm planning on making that and
[03:01:25] It will run even when I'm not streaming, but it'll probably all be on this channel.
[03:01:33] So I don't want to make a separate channel. I'm gonna keep it all on the same one, but
[03:01:40] So the way things are going because of the server and because I have a UPC and it's going
[03:01:45] to be doing everything, it's going to be on all the time, there definitely will be a you
[03:01:52] can run what music genre you want.
[03:01:54] You can pick which Spotify playlist you want to play.
[03:01:56] And then when I actually come in to stream content, I will make it separate.
[03:02:09] So that, you know, we have that possibility.
[03:02:12] Yeah.
[03:02:18] Because I'm definitely going for the 24-7.
[03:02:24] Because I found out that to qualify for partner,
[03:02:27] you're not penalized for doing 24-7 streams anymore.
[03:02:31] To request songs, you'll definitely be using channel points for that.
[03:02:37] And I already have that.
[03:02:39] That's all built into Nomad.
[03:02:40] Nomad has got what are called, what is it, priority points?
[03:02:46] And it's a combination of bits, chat reputation, rep, and everything.
[03:02:54] Yeah, it's going to be 24-7.
[03:02:57] So the RWX channel will be 24-7.
[03:03:00] RWX Rob will be 24-7.
[03:03:05] And I mean, I had it running 24-7 for a long time, and a lot of people complained because
[03:03:12] they're like, oh, it's just fishies and music or whatever.
[03:03:14] But I've always felt that that was valuable because they can come in and they can chat
[03:03:20] with each other or say a thing, you know, other people can hang out if they want.
[03:03:23] They can just stop by and see if anybody's got any questions.
[03:03:26] They can use it kind of like the Discord channel.
[03:03:28] And I mean, there's a lot of people who are already doing this, and you see 24-7 clips
[03:03:35] now is getting really popular is the 86 people that are doing it so and and twitch itself has
[03:03:40] really calmed down on the whole 24 7 sort of idea uh that stuff was in his own ego i don't know what
[03:03:49] that means um the guy that said that that yeah that that i was like being whatever yeah that
[03:04:02] The guy is so strange, by the way.
[03:04:03] Yeah, he's a DJ now.
[03:04:06] Yeah, I've rated him before, so that's kind of like water under the ridge mostly.
[03:04:10] Get it?
[03:04:11] Fishies?
[03:04:11] Oh, shit.
[03:04:14] This is all going into the video.
[03:04:15] I've got to stop talking now.
[03:04:16] We can't talk about that stuff.
[03:04:18] That's all going into YouTube.
[03:04:21] I forgot to make it.
[03:04:22] But this is all going into the YouTube video.
[03:04:23] So, yeah, I'm definitely going to do a 24-7 stream.
[03:04:31] But it's going to be more than just fishies.
[03:04:33] It's going to be tech tips.
[03:04:37] It's going to be clips.
[03:04:39] It's going to be kind of like a channel.
[03:04:42] So you guys will be able to control it.
[03:04:44] If you're tired of the fishies, you can change it to Christmas.
[03:04:47] You can watch the Christmas stuff.
[03:04:50] If you want to change the music to the Christmas playlist, you can do it.
[03:04:54] You know, to a certain degree.
[03:05:00] You're only going to be able to play playlists that I approve, though, because I don't want
[03:05:04] people to put bad playlists on that or inappropriate for Twitch.
[03:05:09] Plus, it's also kind of a, I mean, the fact that we're just playing music like that is
[03:05:14] already kind of on the edge.
[03:05:16] And one of the things that I will have to do to make this work is I'm going to have
[03:05:22] to dynamically change the category.
[03:05:24] So like if you put music on, if you decide to change it to music, I have to change the
[03:05:30] category to DJ.
[03:05:31] And then the DJ category is more or less acceptable to stream Spotify music.
[03:05:40] Everybody on Twitch does it, whether it's official or not.
[03:05:43] Everybody does it.
[03:05:44] So, you know, and because I'm not streaming to YouTube, that's also a thing.
[03:05:49] I can't, I might actually end up making a safe list of YouTube videos that you guys can watch
[03:05:55] that'll pull up, but you'd have to, it'd have to be pre-approved. And so, you know, you can say,
[03:06:02] hey, I want to, this is the YouTube videos that I'm allowing people to watch today or whatever.
[03:06:05] And so, you know, I mean, I think it's kind of a fun little project to do that because,
[03:06:14] And Twitch is really the only place you can do that.
[03:06:16] Maybe kick, but you really can't do it any place besides that.
[03:06:21] And a percentage of this is going to be educational content and stuff like that.
[03:06:28] Another reason I'm trying to do this is approve videos when I'm offline.
[03:06:34] Yeah, absolutely.
[03:06:35] If I was offline or if I had mods in here and they wanted to control,
[03:06:38] I will definitely be helping the mods do that.
[03:06:42] but you know I have to really trust the mods to do that sort of thing the real question is is that
[03:06:48] when I do start producing actual IRL content you know am I going to just do it on the channel and
[03:06:55] generally speaking it'll probably be a bring the stream down and then bring it back up sort of
[03:06:59] situation because there's so many opportunities to watch clips during an IRL stream for example
[03:07:06] That I don't feel it necessary to have another channel while I'm live that's 24/7 and a lot of people have that
[03:07:13] Multi-device control room to orchestrate teams of 100 coding agents
[03:07:19] Well, the other thing too is I was actually going to set up my cameras and stuff
[03:07:24] It's actually move right when it's getting cold the summer downtown I will be killer content. Yeah
[03:07:30] Summer IRL is great, but it also is winter is also really great
[03:07:35] and we went down there over halloween that was a really great iro content yeah it was really fun
[03:07:39] so i think i think we're wrapping up the end of this video we we have successfully got linux
[03:07:45] working with all my favorite little tools here uh banner fishes and everything has been ported
[03:07:52] watch how these cows say unfortunate i didn't add those to the fishes in star
[03:07:56] um nothing is committed yet uh banner fonts banner fishes also shows a manny figlet okay
[03:08:03] so push uh what we have i'm going to go ahead and push that so far
[03:08:09] uh i'm glad it works i think it's committed yet if you want west term
[03:08:15] let's see uncommitted pushes so it's it's creating pushes to to get up for me using
[03:08:21] the getup command and uh it's already one uncommitted push the commits worked uh jh
[03:08:30] logged in but git isn't set up for the city to use that login i'll use wait what uh five commits
[03:08:38] one up including the one you hadn't pushed yet uh set up western on windows add fishes in open
[03:08:45] code future pushes get playing keep hps uh run gh i'll set up git switch to ssh oh interesting
[03:08:53] this needs your ssh key added to the github login we don't have that yet
[03:08:58] not just for signing i didn't check that okay fine i'll need to set it get later but that's
[03:09:03] that's fine so this stuff is all up there if you want any of the stuff that i worked on today
[03:09:07] it's all in rwx rob slash dot and um i don't know if you know about this but you can actually open
[03:09:14] that with github github repo view dash w oh this is the thing i was afraid of
[03:09:25] At WSL2 you cannot open browsers. I know you can do this. I just don't know how. I'm gonna ask my AI how it does it.
[03:09:31] I know it can be done because I've done it.
[03:09:34] This is actually one of the benefits of WSL is you can actually run web programs.
[03:09:40] You can run graphic programs from WSL2 on Windows and it will run the Windows programs.
[03:09:46] So you can like dynamically kick off graphic programs using arguments and input from WSL2.
[03:09:54] Found on Linux programs, I'll check what's available and how bin open handles it. Yeah
[03:09:59] So it figured it out
[03:10:04] It just did it it actually my agent just did it
[03:10:09] My agent just opened graphics applications. This is exactly why I wanted this
[03:10:15] Because I wanted to say to my agent go open my YouTube channel and blah blah blah and have it do it
[03:10:22] It's just like I have a Linux machine
[03:10:24] which is super cool.
[03:10:26] All right, so, let's see, jsprouse.
[03:10:31] I fixed the config bash for standard WSL
[03:10:33] if browser isn't set and xdg_open isn't installed
[03:10:36] and it has Windows URL handle.
[03:10:37] I tested it with GitHub Freefall add.
[03:10:41] Reload your settings, source jsprouse.
[03:10:44] I haven't committed.
[03:10:45] It fixed the entire thing for me
[03:10:48] because we live in the future.
[03:10:52] I'm just so blown away by it.
[03:10:55] It's insane how amazing it is.
[03:10:58] I have a lot of other things that I need to add
[03:11:02] to help me with, including saving my OBS settings
[03:11:04] so I don't lose them.
[03:11:05] I use the plane to get push,
[03:11:08] fill the same login error.
[03:11:09] Commit a push, blah, blah, blah,
[03:11:10] open your eyes, blah, blah, blah, check, pass.
[03:11:12] Get up, set up, get.
[03:11:15] So I use your jhlogin for push only.
[03:11:19] So I have this happening.
[03:11:21] run this one, skid auth setup -kit. I'll run that after this video is over.
[03:11:27] I do have a smart assistant pretty much working for me all the time. So now I can do this.
[03:11:32] I can do a reload, and this should actually work. Yep, there we go. So this is the git
[03:11:41] repo which I was telling you about. Please drop me a star if you go to my repos and you
[03:11:47] like them, please drop me a star. If you want, you can drop me a sponsorship, but
[03:11:52] that's up to you. I promise it'll be more useful later. Right now it's just a
[03:11:57] bunch of fun stuff that I'm working on. And we've even had other contributors.
[03:12:01] We've had other people suggest things that I needed to add. So yeah, there are
[03:12:09] not part of that set of Capset Fortunes OBS. So the OBS stuff needs to
[03:12:14] copied over for sure. You still need that. Core dependencies. I mean look at look at the stuff
[03:12:20] it added. If I go back to the commit history, I want you to see this. So every single commit that
[03:12:29] was made has got like full comments and everything. So open URLs in web browser with WSL. It actually
[03:12:37] added that line whoa browser equals run dll exe url dot blah blah what if you don't have xdg open
[03:12:46] and run i would never have guessed that never i would never have gotten that run dll 32 is your
[03:12:54] browser i would never have gotten that that's 100 ai did that they get all ai gets all the credit
[03:13:02] for them. So that is going to be it for me today, y'all. I couldn't be happier with all of this
[03:13:13] stuff working. I can tell that there's a bright future. It's just a matter of being able to play
[03:13:19] my clips now. Yep, I'll be able to play XDG clips pretty soon, and we'll get all those other fun
[03:13:26] thing is running.
[03:13:28] So I'm going to go ahead and sign off.
[03:13:30] And I don't know who we're going to go raid here.
[03:13:33] I don't even have a Twitch running right now.
[03:13:37] But I'm going to end the video.
[03:13:40] So stop recording.
