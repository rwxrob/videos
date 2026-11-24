# My Window Manager is TMUX

From 2021. I may have changed my mind on some of this.

Argues for using tmux as a sole window manager, demonstrating nested sessions, pane and window splitting, and a status bar in a full-screen terminal. Shows copying a tmux config into a bare Debian Docker container to prove portability, working through several mistakes along the way. Closes by recapping the benefits: a single portable config file, availability on nearly any system including certification exams, and use for monitoring setups.

1.  Configuration centralized and portable in a single file
2.  You can put it on anything.
3.  Can be configured to behave like screen
4.  Extremely powerful and configurable
5.  I avoid plugins because no longer portable
6.  Universally available, even during certification exams
7.  Maintain persistent session after disconnecting
8.  Share session with one or more in real-time

Thanks sponsors, subs, and followers:

* GitHub: https://github.com/sponsors/rwxrob
* Twitch: https://www.twitch.tv/subs/rwxrob 
* Twitter: https://twitter.com/rwxrob
* Discord: https://discord.com/invite/9wydZXY

[ZETID:20210728013938]
https://github.com/rwxrob/zet/tree/main/20210728013938

Chapters:
0:00 Why tmux is my window manager
1:00 Nested tmux and status bars
1:30 Splitting panes and managing windows
2:00 No need for i3 or other WMs
2:40 Portable config and certification exams
3:05 Starting a Debian Docker container
4:00 Copying tmux config into the container
5:40 Troubleshooting config loading and users
9:00 Fixing the symlink problem
10:35 Config working in the container
11:10 Recap of tmux benefits
12:30 Exams, monitoring stations, and persistence

`#tmux #terminal #linux #docker #windowmanager #dotfiles #devops #kubernetes`

## Category

Science & Technology

## Transcription

[00:00:00] One of the things I get asked all the time is what my window manager is.
[00:00:03] I don't know what this is about people who obsess about window managers and distros and
[00:00:07] stuff.
[00:00:08] It's fine.
[00:00:09] People are just making conversation.
[00:00:10] Rarely, they're judging you based on your choices.
[00:00:13] To me, it doesn't matter.
[00:00:14] My window manager is T-Mucks and doing it as a status bar, I use my T-Mucks status bar.
[00:00:22] As you can see right now, everything that you see on the screen is T-Mucks.
[00:00:26] This is a full-screen, gnome terminal that came with PopOS as my distro.
[00:00:32] I have got a T-Mucks within a T-Mucks.
[00:00:35] This stuff down here is all WeChat.
[00:00:38] This down here is my status bar.
[00:00:39] This is a status update, my pulmonary trauma, and my T-Mucks configuration, which we're going
[00:00:43] to be covering in other videos, so stay tuned.
[00:00:46] Here's my title down here.
[00:00:49] You can't see it, but up here you can see this is a Vim session, and up here you can
[00:00:56] see that I have another T-Mucks status bar.
[00:00:58] As big as I have a T-Mucks within a T-Mucks, and stay tuned, I'll show you how to do that
[00:01:02] safely so that you can actually have two status bars where you can split your screen
[00:01:07] and do all kinds of crazy, amazing things with this.
[00:01:11] What's that?
[00:01:13] Can you use it to preview usage and other things?
[00:01:15] Absolutely.
[00:01:16] I can do all of that from the command line.
[00:01:18] If I wanted to put CPU utilization or anything I wanted to, I could put it in my terminal
[00:01:22] in my status bars of different types, so I could put it up here, or I could make a pane.
[00:01:29] I can do this so I can split a pane over here.
[00:01:31] Easily, I just split that pane in half.
[00:01:34] That's pane management, and then if I want a new window, Control-C, let me turn my skis
[00:01:39] on so you can see everything, but as you can see, I can go back and forth, screen them.
[00:01:44] Mostly plexors, I can split this guy some more, I can make T-matrix here, run, I can put the
[00:01:51] fish in another terminal.
[00:01:53] The point being that I have absolute immediate control over all of my windows and panes.
[00:02:00] People continually say, "You need to learn i3, you're going to learn blah blah blah,"
[00:02:04] and I say, "No, I don't need any of that.
[00:02:06] All I need is T-mocks," because T-mocks gets you everything you need.
[00:02:12] I do everything from the terminal anyway, so there's no need for me to do anything besides
[00:02:16] that.
[00:02:18] It does manage my windows, it matters in my real estate, it manages my panes, it allows
[00:02:23] me to do, I mean, I can do Htop over here if I want to have that thing.
[00:02:27] Sometimes in another window, I'll run my other thing, and by the way, all the bindings that
[00:02:32] I have here are also completely transferable, right?
[00:02:37] So it's like configuration centralized and portable in a single file.
[00:02:45] So you know, your T-mocks config, if I'm doing, I don't know, I'm planning on doing
[00:02:50] the Kubernetes certification, and I know that they have T-mocks, so the odds are I can take
[00:02:54] my T-mocks.com file, stick it on the system along with my BashRC and my VIMRC, and I'm
[00:02:58] good to go.
[00:02:59] I don't care.
[00:03:00] Could I install i3 on there?
[00:03:02] No.
[00:03:03] Could I change my Linux distro?
[00:03:05] No.
[00:03:06] Let's say that I want to just run a Docker container, so let's say I'm going to run like
[00:03:11] the default Docker container, Docker run at, you know, let's like run in a bunch of container,
[00:03:17] right, dash-rm, and let's give it a name, let's do Debian, and what should we call it?
[00:03:27] What is, how do you do name?
[00:03:28] Is it in?
[00:03:29] I think it is something I don't remember.
[00:03:31] So, uh-oh.
[00:03:32] Failure to create the katas, because that shouldn't actually not have found oh wait.
[00:03:36] Uh, I think it's dash-n something, so Debian, is it dash-t?
[00:03:43] Dash-t is the name?
[00:03:45] I thought it was dash-n.
[00:03:47] Is it dash-t?
[00:03:49] What is it, people?
[00:03:55] Uh, I think it's dash-n name.
[00:03:59] I know there's a shortcut.
[00:04:00] Okay, so here we go.
[00:04:01] We're on here, right?
[00:04:02] So, so now I can like, I have my, I have my host here.
[00:04:06] And it didn't seem to work, so we'll just go ahead and use this.
[00:04:10] So, let's say I want to put my t-mux config over here, I want to put my, my t-mux config,
[00:04:14] so Docker copy, uh, this dot t-mux dot comf, and I want to put it on this.
[00:04:24] Yeah.
[00:04:25] Uh, and also structurally, what am I talking about?
[00:04:29] Docker copy.
[00:04:30] Oh wait, where is my t-mux file?
[00:04:32] Did I put it someplace else?
[00:04:34] Oh, there it is, t-mux dot comf to, am I doing it wrong?
[00:04:39] What am I doing wrong?
[00:04:41] Uh, I think I have to put slash there.
[00:04:44] Yeah, there we go.
[00:04:46] So now it's here.
[00:04:48] So over here, I don't have t-mux sudo apt update, um, dammit, apt update, uh, apt install, t-mux,
[00:05:02] yes, I want to install t-mux, let's see how fast this goes.
[00:05:06] I start t-mux over here, and it didn't pull up my, my thing yet, so let's see if it's
[00:05:11] still there.
[00:05:12] Is it there?
[00:05:13] Yep, there it is.
[00:05:15] So where's my home directory root?
[00:05:16] Okay, here we go.
[00:05:17] Move slash t-mux dot comf to dot, and now t-mux, oopsie, get out of that t-mux, and it should
[00:05:26] pick it up.
[00:05:27] It doesn't look like it is.
[00:05:28] I should not pick it up, let me see if I can do it, t-mux, what is it, dash c?
[00:05:34] I got it, I don't remember what it is, I didn't plan this.
[00:05:38] So we talk about, oh, there's no man page, all right, so t-mux, is it dash c dot t-mux
[00:05:48] dot com.
[00:05:49] The point is you can use t-mux under, if I can't get it, you can, you get what I'm saying.
[00:05:53] Use this file directory, we talk about, oh, there we go, set that show me, I know, you
[00:06:02] didn't think you were going to get to see me dock or fail this whole time, did you?
[00:06:06] No, this is file directory, what the, oh wait, sashay, I don't know, I see it right there.
[00:06:14] Maybe I'm doing it wrong.
[00:06:16] I wanted to run with my t-mux, and it's not loading it.
[00:06:18] Come on, load my t-mux, please load it.
[00:06:21] Okay, well, it's loading something, it's loading something.
[00:06:25] I don't think that's the right thing, but it's loading something.
[00:06:28] The point is you can take your configuration with you, and you can change it up, and just
[00:06:34] copy it between dockers, containers, and something like that.
[00:06:38] I don't know, here, let's try this, man, dockers, I don't, I don't have t-mux left, so let's
[00:06:42] try this.
[00:06:43] Man, t-mux, wait, we're going to go into the t-mux account right after this, so, man, t-mux,
[00:06:49] let me go see if I can look up the comp, no, dash C is the shell command, of course, silly
[00:06:55] me, silly me, or is the configuration file.
[00:07:01] By default, t-mux was the configuration file from zctmux.conf, it looks for a user configuration
[00:07:06] file at, does that mean because there's no user over here, is that why, because, because
[00:07:11] it looks like there's one, there, okay, let's just add user u, u pass for u, u, yes, u,
[00:07:24] u, yes, all right, as you dash u, copy root dot t-mux dot dot comf to here.
[00:07:34] First denied, arg, all right, well, let's try this, schmux, schmaud, plus r, it doesn't
[00:07:45] have studio built-in, you have to install studio, yeah, so that's why I'm about doing
[00:07:50] that.
[00:07:51] I know, this is what you get when you get from bareband container, I actually have configured
[00:07:55] containers, but you get the point, cannot operate on a dangling sim link, how are you
[00:07:59] a sim link, you're not a sim link, all right, fine, I'm gonna change this, let's do this,
[00:08:11] yep, let's do this, give me my copy, I'm gonna copy it to slash home slash u, I'm at that,
[00:08:21] and now I can do it, exit t-mux, damn it, oh wait, that's u dash u, t-mux, still isn't
[00:08:30] kidding it, I don't understand why, make it, make it go away, wait, did it, am I using
[00:08:36] the right t-mux file even, you guys like it when I scroll up anyway, don't you, I mean
[00:08:41] that's your favorite thing to watch, no vi, I could use, it's not even here, is that
[00:08:48] there, I think it is, damn it, damn, not even here, I didn't sim link it though, you saw
[00:08:58] that right, did you see that, I did not sim link it, so apps, some Vim minimal, I don't need
[00:09:09] the rest, is it Vim's tiny, is it Vim's tiny, yeah that's it, okay, I could remember, this
[00:09:18] sim link came from the host, u, ls dash j, oh you guys finally cracked it for me, I feel
[00:09:35] so silly, of course it did, it's like trying to link the things that don't exist, I'm 14
[00:09:42] seconds over, can I do it, pommel just shut up for a second, okay, okay, pommel, thank
[00:09:46] you, alright, so cd into dot files, alright, let's do this, so cop, be going to the t-mux,
[00:09:55] the t-mux, uh, doctor, yeah, yeah, thank you, you guys cracked it, this seems more fun that
[00:10:02] way when I screw up, right, you can, the, the, the, the, the, the perils of using symbolic
[00:10:06] links, alright, so docker, copy, dot t-mux, dot comf, to this thing, whatever this is,
[00:10:17] I, I didn't take my name because I got the command wrong, because look, I can't remember
[00:10:21] shit, that's just tell him, alright, so then we do, we do colon slash home slash u, and
[00:10:29] I have a better feeling about this, I just do, I just have a better feeling, els-l, els-l-a,
[00:10:35] oh god, els-l, t-mux, huzzah, there's my t-mux that I know and love, it's got my own things
[00:10:47] here, it's got all my bindings, it can turn my clock on, where's the clock though, there's
[00:10:52] my refresh thingy, anyway, as you can see, you get your t-mux, and, and yes, I had problems
[00:10:59] because other reasons, not because it was hard to get t-mux over there, so hopefully
[00:11:04] that's, that's just helping that can make the case for you to consider using a window
[00:11:09] manager that's just t-mux, and, you know, you can, you can put it on anything, and put
[00:11:16] it on anything, so all, let's just review, configuration centralized and portable is single
[00:11:21] file, you can put it on anything, can be configured to behave like a screen, which has come on
[00:11:32] every system since it's on a time, it's extremely powerful, I cannot even begin to tell you
[00:11:41] how powerful it is, powerful and configurable, even if you don't buy into the plugin stuff,
[00:11:46] which I don't, I, I avoid plugins, because the plugins defeat the whole purpose of having
[00:11:53] a, a, because no longer portable, right, if you, you can use them, right, no longer portable,
[00:12:03] but I personally don't like them, I, I try to stick with the basics, and it's, you know,
[00:12:09] it's universally available, so it, even during certification exams, so, you know, if you're
[00:12:19] working through a web browser, and you can't see what you're working on, and you're having
[00:12:24] to fight with the web browser already, because you're doing a certification test, it's a terminal
[00:12:28] based thing, and you're already using some sort of stupid ass web emulation, you know,
[00:12:33] if you got t-mux in there, it just makes it that much less painful, because you can split
[00:12:37] the screen up and stuff like that, rather than to do whatever, I can't even imagine what you
[00:12:42] would do, which is a single terminal, if you can't, if you can't split the screen, you've
[00:12:45] got to do two things at one time, and you want to check, maybe you want your documentation
[00:12:48] open in one window, which you can, you can do, or you want a man page, or you'll be able
[00:12:51] to something like that, you know, then yeah, you need this, you're not going to open up
[00:12:54] multiple windows, you know, web web terminal tabs in order to check out your different
[00:13:00] things, so there's just a million reasons to make t-mux the only window manager that you
[00:13:06] care about, and I cannot overemphasize that, we're going to still talk about how to configure
[00:13:11] t-mux thing and all that, and I'll move on to different videos about that, but this
[00:13:15] was supposed to be sort of a seamless demo of why you might want to use the t-mux, the
[00:13:19] t-mux window manager, all you have to do is watch me or anybody who uses one for a short
[00:13:24] amount of time to really get a sense of why you might want to pick it up, and I mean,
[00:13:29] you can use it to make your own sort of monitoring station if you're a Kubernetes person, and
[00:13:34] we did, I did this at work the other day, where we had a bunch of things that were watching
[00:13:38] at CD health checks, we had some pings running in other windows, and it was all in this beautiful,
[00:13:42] big split screen console, with no annoying borders in between other than like the one,
[00:13:47] you know, terminal border in between the whole thing, so that's my, that's my argument for
[00:13:52] using t-mux, give it a shot, and we're going to proceed with some other videos about configuration
[00:13:57] and stuff like that, we're going to talk about, oh, persistent sessions, right, I forgot about
[00:14:02] that, so t-mux also allows you to have a persistent session, I'm going to do a different video
[00:14:10] about persistent sessions though, so watch for that.
