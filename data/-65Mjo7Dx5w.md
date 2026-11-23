# 🚀 Install Windows Terminal on Windows 10

If you still have Windows10 (and I know a lot of you do) you will need to install a decent (note the word "decent" not "best") on Windows to do anything actually interesting on your computer. Here's how to get Windows Terminal from the MS App store so you can do other things (until you learn now to get rid of Windows entirely by installing Linux or you get enough money to buy a Unix system aka Mac).

`#windows10 #terminal #tips`

## Transcription

[00:00:00] That's right. I am running Windows in a web browser. I made another video about
[00:00:07] that. If you care to use it, you have to have Proxmox for this. I don't have
[00:00:11] Windows machine working in my house right now. So we are going to use Windows
[00:00:16] running in something called a virtual machine. If you don't know what that is,
[00:00:20] it's exactly what it sounds like. A machine that's running virtually inside
[00:00:24] of another machine. In this case, a Linux machine called Proxmox, which is
[00:00:29] running right behind me here on a separate computer. This entire terminal
[00:00:33] that you're seeing is being sent over the network. This is not something you
[00:00:37] would ever do to play games or anything, but it is something you would do when
[00:00:41] you don't have Windows and you want to show people how to deal with the
[00:00:43] terminal on a Windows 10 machine. So before I continue, just know that most of
[00:00:51] you who are watching this video by now will already have Windows 11 if you have
[00:00:56] Windows. Windows 11 already comes with the terminal, okay? So if you want to know
[00:01:03] how to check for that, you can just go search for it, which is, I think, yeah,
[00:01:10] whoops, I'm mixing up my things here. Oh my god, the keyboards are clashing. So I
[00:01:16] have both spotlight from Mac and I have the search bar from Windows. So surprise,
[00:01:22] surprise, it's the same keystrokes, you know, command space or or Windows space
[00:01:29] depending on your what you have here. So we're going to click down here and we're
[00:01:33] going to type in terminal and you see how it says the command prompt. So this is
[00:01:40] this is the old Windows 10 terminal. Yeah, very blue, like I'm changing. This is
[00:01:46] the ancient terminal, which I happen to know they did a whole thing about this in
[00:01:50] 2010. It was it's 10? No, no, no, no, it was 2014, I think. I watched the whole
[00:01:58] dev conference on this and everything. I weigh too much Microsoft and I would
[00:02:01] care to do. Anyway, so this this terminal is horrible. It's ancient, this is the
[00:02:09] old-school DOS. A lot of people are stuck using this, thank god, they came out
[00:02:13] with a new sexy terminal that actually supports things like, I don't know,
[00:02:18] backspace. So you never ever ever want to use this terminal. There are the
[00:02:25] reason it was so horrible and kept back behind and I kid you not. They gave an
[00:02:28] example of an oil rig refinery in in Alaska that depends on Windows terminal
[00:02:35] being this version and that was just terrified me when I heard it's like, why
[00:02:40] would you tell us that? My whole world has just changed. You're telling me that
[00:02:44] like oil refinder rigs in Alaska are depending on an ancient terminal that's
[00:02:49] not even compliant with ANSI standards from 1986 and it has to use it for some
[00:02:57] sort of automation order for the oil rig to run? It was terrifying. First of all,
[00:03:02] why are you automating based on a dependency for a terminal? I could go on
[00:03:05] and on and on, but it just goes to show if you've ever gone into a bank or an
[00:03:11] airport or seen a big thing. You're like, I don't know, Quintano, like a hotel,
[00:03:17] broken blue screen thing like you saw in 2000 and everything broke. Then you know
[00:03:23] how fragile our world is because of Windows. Well, let's make it a little bit
[00:03:27] less fragile by using an actual good terminal on Windows and that's why I'm
[00:03:35] making this video for you because if you're stuck with Windows 10 and you're a
[00:03:38] beginner and you're so frustrated, this is going to help you. This is why I'm
[00:03:42] making it. If you're on a Mac, you already have a terminal, you can just pop it up
[00:03:45] and you're good. If you're on Linux, you've got Linux. That means you already
[00:03:49] know how to install Linux and none of this is an issue at all. But if you are an
[00:03:53] average person, you don't know any of this and so you're going to, you wouldn't
[00:03:58] even know to start up that and push terminal, right? So we're going to exit
[00:04:00] this to get out of it and now we're going to actually install a real terminal. Now,
[00:04:05] I don't remember how to do this. So it's going to be fun for me to go through it
[00:04:09] again. So you're going to click on the Windows thing I remember and there's
[00:04:13] something about the store here. We're going to go to the store and on the
[00:04:17] Microsoft Store, update now, part of the infrastructure before we need to update
[00:04:19] the store. Okay, fine. This has been all night. It's been this kind of like
[00:04:25] interruption like this. I'm sorry we have to wait. Maybe I should pause the video.
[00:04:30] I'm going to pause the video already. Alright, it came back finally. It took
[00:04:35] forever, like everything. No, I don't want call of duty because I have a life.
[00:04:43] Anyway, we're going to go here and search for terminal. Alright, terminal,
[00:04:52] Windows, look at other people are searching for it too. Ooh, the Windows
[00:04:55] Terminal app. There's the Windows Terminal preview and then there's the
[00:04:58] Windows Terminal app. It used to be the Windows Terminal preview was the thing
[00:05:02] to get because it took like two years of previewing it and it was released out
[00:05:07] of, you know, you could officially use it, but preview was the thing to get and
[00:05:10] not the actual one. I was really, we're going to actually install the real app.
[00:05:13] The Windows Terminal app is a modern, fast, efficient, powerful, productive
[00:05:17] terminal, which is not the default for some reason. So click on this chat. Look,
[00:05:24] there are lots of problems within the Windows Terminal. So I'm just going to
[00:05:26] leave a comment. They're going to leave shit comments down below. They are.
[00:05:30] They're going to leave comments about how horrible Windows Terminal is. It's not as
[00:05:33] fast as this terminal written in Rust or that. Let it be said, I love you. I love
[00:05:38] all you commenters. Don't hate on me. Okay, I am helping the average absolute
[00:05:44] beginner. Please have patience. Okay, I know there's better terminals out there.
[00:05:48] You're going to yell at me about Goastie. You're going to yell at me about
[00:05:51] Lacrity, which all of which I've used. In fact, one of the original creators of
[00:05:54] Lacrity, he was frequently on my stream four years ago and my terminal
[00:06:01] preference is Westerm and I still love it. But it's more of a thing for people
[00:06:06] who already know what they're doing and can, oh, I don't know, edit files from the
[00:06:10] command line, which is not something most people can do that are watching this
[00:06:12] video. So I hope the you commenters down there will go easy on me. Okay, this is
[00:06:17] not the fastest terminal blah, blah, blah. This is just the standard thing on
[00:06:21] Windows and 90% of the people that you work with, this is what they're going to
[00:06:26] use. They're going to use what's on the computer. If that Windows 11, they're
[00:06:28] going to pop them, then I can use this. Most of them, most of these other people,
[00:06:32] they don't even use a terminal. They use putty, which is a way to connect over a
[00:06:35] secure shell to a remote system using and getting a terminal that way. They use
[00:06:39] the terminal built in the putty. This is still regularly done in 2026. I see
[00:06:44] people sharing their screen and using nothing but putty and they are very
[00:06:49] high-paid professionals who have been doing this job for a long time. They don't
[00:06:53] even care about the terminal they use because they're too busy getting work
[00:06:56] done instead of configuring their terminal. So, so there. So, okay, so we're
[00:07:07] going to click on open here. Click on open and we've got our new terminal
[00:07:12] installed. You'll see right away that the default is PowerShell. Unfortunately, the
[00:07:17] default is PowerShell. It doesn't matter. Don't panic, my friends. You don't need
[00:07:23] to use a different shell right now. You can. You can type "pass" and you'll get
[00:07:29] nothing because we haven't installed WSL2. Okay, that's a different video. That's
[00:07:34] good enough for now. All right, you've got a terminal, right? You have a terminal
[00:07:39] installed and you can type things and you can learn how to use the terminal in
[00:07:43] whatever way you want and I'm going to force myself to stop right now because
[00:07:48] I'm going to show you how to put actual Linux on your Windows machine. That's in
[00:07:53] another video.
