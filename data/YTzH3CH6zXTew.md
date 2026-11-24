# Do NOT Use Vim Pane Splitting (Use TMUX Instead)

From 2021. I may have changed my mind on some of this.

Argues against learning Vim pane splitting, since a terminal multiplexer like tmux or screen manages screen space in any application and over any system. Demonstrates copying and pasting text between a browser, a Vim session and a shell using tmux copy mode without touching the mouse.

Vim pane splitting limits you do using only Vim to manage your windows. That is not the Unix way. Multiplexers are designed for that specific purpose. Save yourself the hassle of learning Vim panes. You never need them, ever.

Chapters:
0:00 Why skip Vim pane splitting
0:53 Use a multiplexer for screen management
2:12 Copy and paste with the mouse
3:03 Copy and paste with tmux copy mode
3:57 Copying multiple lines across systems

`#vim #tmux #terminal #linux #unix #productivity #commandline`

## Category

Education

## Transcription

[00:00:00] quick video here before I go for the day. I constantly hear about this from everybody.
[00:00:08] Yes, it absolutely will. So people are always saying how cool VIM is because of pain splitting
[00:00:14] and they use it to chop up their screen and I'm not going to even get into how to do that. You
[00:00:21] guys can go do it if you want. You actually sort of have to learn it if you're going to do help.
[00:00:26] So like if you look for the help within VIM and you get stuck on something, you have to be able
[00:00:30] to close that pain out and go back to the other one. And so you can't escape learning it if you're
[00:00:35] learning VIMMA. All right, not VI. So there's a number of reasons not to learn pain splitting.
[00:00:43] In fact, you don't ever need to learn pain splitting. I can't remember how to do it. I never use it.
[00:00:48] I haven't used it in 25, 30 years and it's not because I'm an old guy. Let me tell you why.
[00:00:53] It's not practical. When you split using VIM, you are tied to using VIM for your screen management.
[00:01:00] And that is not what VIMMA is for. VIMMA is not meant to manage your pains to manage your screens.
[00:01:07] What is? Tmox screen. There's a number of other utilities that are already designed to manage
[00:01:14] your screen real estate for you and they work anywhere. They work anywhere. They work on everything.
[00:01:20] They split the screen and they have methods for copying and pasting between two different
[00:01:25] applications, not to mention between an editing session and your command line. I use this constantly
[00:01:31] instead of my mouse when you don't have a mouse. So getting good with Tmox is far more important
[00:01:38] than learning how to split the pain with them. In fact, I would strongly encourage you to never
[00:01:42] learn how to do it because you don't need it. I'm going to demonstrate. For example, another thing
[00:01:51] too is, and I agree with prime agent on this particular point, I find myself using pain splitting
[00:02:00] less and less these days and using window splitting, which is a separate video about screen and Tmox
[00:02:07] that we'll do. But assuming you know what those things are, then you already know what can be done
[00:02:12] there. Let's say I'm going to do links. I want to look up something. I want to say,
[00:02:19] "How do I do Hello World in Shell?" I'm going to go look on the internet and I'm going to go say,
[00:02:26] "Here it is." Let's go look at it. How do I do Hello World in Shell? I'm looking down for some code.
[00:02:36] It's probably not going to show me because it's so stinking easy. I'm just trying to make a point here.
[00:02:43] It's not even going to be here. I tried it. What would we want to copy over from here?
[00:02:50] There we go. Here's some right here. I'm using my mouse for now. You can use your mouse if you want
[00:02:56] and just copy and paste it so you can go, "Okay, Echo Hello World." Copy, come over to this other
[00:03:00] window and paste. That works. If you learn to use Tmox, you can do the same thing
[00:03:08] from here. You can say, "I can do control A. What is it? Left, right bracket. You can go down
[00:03:15] here. You can hit space to start it. You go over here. You can use positioning stuff with VI. I'm
[00:03:21] not, but you can do that. Hit enter. Then I can switch back over here and I can do right bracket
[00:03:28] and I can paste it and hit enter. I just copy and paste it between two applications that have
[00:03:33] nothing to do with VI or VIM. If you learn VI and maybe you've got a container running over here.
[00:03:42] Maybe you're doing an editing session. I don't know. You're running on Busybox and you're editing
[00:03:49] some session over here. Tmp foo and something over here. Not only could you not split the VI
[00:03:57] pane at all because it's VI, but you can't get that shortly using your mouse. By the way,
[00:04:05] sometimes you have multiple lines of stuff. You've got all this stuff here and I want to
[00:04:11] copy that over. The mouse is not the best thing for that, particularly not here. Then you go up to
[00:04:17] the top and you'll say, "Okay, I want to copy it." This is also a problem, but I can zoom in on it.
[00:04:24] I zoom in on it and then in Tmux. You can't do this with panes. I'm going to select this.
[00:04:30] I'm going to hit space. I'm going to go grab it all. Hit enter. I'm going to unzoom. I'm going to go
[00:04:35] over here. This is a completely separate file on a separate system. I'm going to go paste it and
[00:04:40] don't forget to insert paste, which we'll talk about some other day. Now I can control a BAM
[00:04:47] and now I've got it pasted there. I hadn't even touched my mouse. My fingers haven't even left
[00:04:50] home row. That's far better than learning how to split with BAM. That applies across systems,
[00:04:59] across network boundaries, across everything else. That's the end of that video.
