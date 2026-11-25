# 😎 Use IRC for Twitch (weechat)

Explains why IRC is used for on-screen chat during live streams, and how Twitch chat's IRC foundation lets viewers join from clients such as WeeChat. Compares IRC clients, including WeeChat, irssi and HexChat, and covers WeeChat setup with a Twitch OAuth token, including the need to keep that token private.

Chapters:
0:00 Why IRC chat is back on screen
1:12 Why YouTube live chat is turned off
1:57 Twitch runs on IRC: use WeeChat
3:02 HexChat and other IRC client options
5:09 Setting up WeeChat with dotfiles and OAuth
6:45 Keeping your Twitch token private
7:22 Why IRC works well for live chat

`#irc #weechat #twitch #terminal #livestreaming #dotfiles #education`

## Category

Science & Technology

## Transcription

[00:00:00] All right, I want to make a quick video about chat about we chat.
[00:00:05] So some of you know that I've been doing videos lately and I've gone back to using chat on
[00:00:09] the screen.
[00:00:10] You go back and look at my live videos.
[00:00:12] So something that's new that I've been doing that is also an old thing that I've been doing
[00:00:16] is I've gone back to having chat on the screen using IRC and this video is about IRC internet
[00:00:22] relay chat, why you should still learn it, why you should use it in 2024 and how you can
[00:00:28] use it to participate from YouTube in particular on my live streams that my marathon live stream
[00:00:34] coding session.
[00:00:35] So I regularly, just to give you some context, I have regularly go back and look at my live
[00:00:40] view.
[00:00:41] I've been regularly streaming yesterday at a 12 hour stream from Twitch where I just
[00:00:44] coded the whole entire time.
[00:00:45] I was coding, I was talking, I was taking breaks, copy breaks, I was walking the dog,
[00:00:50] I was doing all kinds of things and the community was in here having fun in IRC and the IRC was
[00:00:55] on the screen.
[00:00:56] It appears at the bottom of the screen and I'm not going to do that right now because
[00:00:58] I don't want to ruin the video with somebody saying something that gets published there.
[00:01:03] But the reason I do it is because I'm able to watch the screen and I can see all the
[00:01:07] chat as it's happening while I'm writing code or doing whatever and I don't have to multitask
[00:01:12] and go back and forth with OBS and for that reason, I turn off the live chat from YouTube.
[00:01:18] I stream to YouTube even though they cut me off after six hours.
[00:01:22] I still stream to YouTube but the YouTube stuff, the chat is turned off.
[00:01:26] Why?
[00:01:27] Because when it's not turned off inevitably people will be saying things out there that
[00:01:30] I can't see.
[00:01:31] They feel like they're being, you know, not attended to or else they were saying horrible
[00:01:36] things and I don't see it because it's not in front of me.
[00:01:39] So when I'm doing these like just stream for my computer, usually I'm not showing my face.
[00:01:44] Sometimes if I am, it's bubble head of Rob and, you know, so the point of it is that you
[00:01:49] can't participate in the chat and in our community and I won't see what you have to say unless
[00:01:54] you use Twitch, but there's a catch.
[00:01:57] Twitch uses IRC under the hood.
[00:01:59] It's one of the most intelligent design decisions Twitch ever made.
[00:02:02] Twitch decided that, hey, let's not rebuild the chat system.
[00:02:05] Let's use an existing one and so they have a sort of a boiled down, you know, watered
[00:02:09] down version of IRC that they use for Twitch.
[00:02:12] What does that mean?
[00:02:13] That means that you can use things like what I have on the screen here.
[00:02:16] You can use WeChat, WeChat from the terminal and you can actually participate in chat and
[00:02:21] just fire it up.
[00:02:23] In fact, I'm going to go ahead and add the risk of being in trouble.
[00:02:25] IRS, our SSI is horrible.
[00:02:28] Don't use that.
[00:02:29] Use WeChat if you're going to use the terminal based chat.
[00:02:31] Trust me on this one.
[00:02:32] Trust me.
[00:02:33] Unless you want to really, really suffer, don't use anything but WeChat on the IRC.
[00:02:38] That's my recommendation.
[00:02:39] If you want to try to, you know, push the old school IR SSI that we used to use back in
[00:02:45] the 90s, okay, boomer, you use IRSSI, we're all going to use WeChat which is way better.
[00:02:51] If you want to know it's actually this spiritual ancestor of Bitch X, that's the official name
[00:02:57] that is really popular with hackers and others.
[00:02:58] So if you're going to use terminal chat, use WeChat, that's the takeaway.
[00:03:02] If you're not, though, what chat should you use?
[00:03:05] The chat that you should probably use is hex chat and I'm going to go do a search really
[00:03:09] quick for a hex chat.
[00:03:10] Let's see if we can get one here.
[00:03:12] Let's do a hex chat, let's do a search for hex chat and hex chat, let's see, is a discontinued
[00:03:23] internet relay chat client is used and is a fork.
[00:03:27] How come it's discontinued?
[00:03:29] Is hex chat really discontinued?
[00:03:32] I didn't hear that they did that so you just, that's, I just am reading that right now.
[00:03:38] So this is hex chat.
[00:03:39] Look at that, man.
[00:03:41] This continually relay chat, a lot of, and is a fork of X chat, it has the choice to
[00:03:45] say.
[00:03:46] So, so, so should we be using X chat?
[00:03:48] I don't know, I use the terminal.
[00:03:50] Yeah.
[00:03:51] So, I don't know.
[00:03:52] What do you think?
[00:03:53] Let's, let's ask Chloe what she thinks.
[00:03:55] What are the best IRC clients today?
[00:04:01] It's going to say WeChat and IRSSI and then it's going to say, I mean, really if you're
[00:04:06] using IRC, you should be using a terminal, in my opinion.
[00:04:10] But you know, if you're on Windows, you don't have that option.
[00:04:12] So WeChat is still the leader, X chat is still listed pretty high, Kiwi's up there,
[00:04:18] MIRC, what is MIRC, the lounge, what is this one?
[00:04:28] I don't know what that is, but that's, is that a link or an executable?
[00:04:33] Yeah.
[00:04:34] Anyway, so those are the, the chat clients.
[00:04:36] So what I will return to is telling you how to set it up.
[00:04:42] So, so to help me search videos three or four months time.
[00:04:46] This is a video.
[00:04:47] So, yes, I'm recording it.
[00:04:48] So this, this will get a video, this otherwise I'm posting to live.
[00:04:51] Yeah.
[00:04:52] I'm not adding titles to my regular live streams.
[00:04:54] I'm not adding titles ever.
[00:04:56] The only thing that will have a title is something that's actually about the thing that's in
[00:04:59] the title from now on.
[00:05:01] So just, you know, every time I make time, I made a whole video about it.
[00:05:03] So anyway, if you're going back to the X chat, let's, let's go back to the X chat here.
[00:05:09] And so this is how you do it.
[00:05:12] Okay.
[00:05:13] The bottom line, the main thing you need to know, I mean, you're smart people.
[00:05:16] You can figure this out.
[00:05:17] Go in there and configure it.
[00:05:18] This is in the dot template.
[00:05:20] So if you guys know what the dot template is, this is in, this is in github.com/artvxrom/dot-template.
[00:05:26] Under WeChat, there's a setup script in here.
[00:05:28] You can use the setup script if you want.
[00:05:29] If you have bash, this works with the bash for Windows, but the problem is, is it Windows
[00:05:35] is in come with WeChat, there's no way to get it.
[00:05:38] You can't install it using WinGet, same with Tmux, same with W3M.
[00:05:42] And thanks, links can't do that.
[00:05:46] So still use, I don't know if WeChat, or hex chat.
[00:05:49] I used to use hex chat today.
[00:05:50] I just learned that you can't use hex chat because of the thing.
[00:05:53] But the main takeaway here is, see this website right here?
[00:05:56] And I'm not going to click on it.
[00:05:57] But if you go to that OAuth website, that's the same one I use for my IRC streaming.
[00:06:01] I know that it's valid.
[00:06:03] There are a couple of sites that are considered authoritative when it comes to giving you a
[00:06:09] token.
[00:06:10] But what you do is you go there, you click on a thing and you copy and paste that token.
[00:06:14] And then when it prompts you for your token, it will put it into the, into the, into the
[00:06:19] code where it belongs.
[00:06:20] And let me show you where it belongs.
[00:06:21] If you want to send any of these commands, these are all the commands that I have that
[00:06:25] set up the different colors and stuff for WeChat, but you can go in here and you obviously
[00:06:29] have to set your, your user.
[00:06:32] If you set your own user, that will log into you.
[00:06:34] But if you want to set, you can have your username be this and you can have auto join
[00:06:39] the channel.
[00:06:40] Obviously, the channel is RWX Rob, I'm pretty sure.
[00:06:42] So you can put that there and that'll join it.
[00:06:45] And, and, and then this is how you save your password.
[00:06:50] This, this will actually put your, your, this puts your, oh, I can be really careful with
[00:06:54] this.
[00:06:55] I have to be careful not to show my, my configuration for WeChat because this is not an, it's not
[00:06:59] even obfuscated at all.
[00:07:01] It's just a straight up token.
[00:07:04] And there's no way to disable a previous token.
[00:07:07] I mean, other than going into the developer UI and interface on Twitch, I think, and disabling
[00:07:12] a token, I don't think that there's an easy way to do that.
[00:07:17] So, so just be really careful with that token.
[00:07:19] You really don't want to docs that token.
[00:07:22] So once you have WeChat set up, you can come in here, you can participate in the chat.
[00:07:26] It's up all the time.
[00:07:27] It's up 24/7.
[00:07:28] So I have my, I'm regularly in the chat even when I'm not streaming and you can, we can
[00:07:33] use this as kind of a, a place to do live chat.
[00:07:35] I do not live chat and Discord, I don't like it.
[00:07:39] Really, it's only good for other things like being able to post, you know, videos or maybe
[00:07:43] code or something.
[00:07:44] But when it comes to just real time, you know, chatting, like really simple, easy chat, there's
[00:07:48] nothing better than IRC for that, that kind of thing.
[00:07:52] And it works everywhere.
[00:07:53] You can, you can put check lines on your phone too.
[00:07:55] So if you wanted to stay logged into the Twitch community, you can do that.
[00:07:58] You can do the same thing, by the way, if you just go to the website and you click on me
[00:08:03] and you click on the chat button, you can, you know, you can do that as well, but, you
[00:08:10] know, but that, that's harder and it doesn't have history and all that stuff.
[00:08:13] You, when you do it with IRC, you get, you get, you get all that history around so so it
[00:08:18] is true that the people from YouTube who are watching this are like, I don't know how to
[00:08:22] do that.
[00:08:23] That's too much work.
[00:08:24] But I'm just trying to tell you that there is a way for you to participate in the chat.
[00:08:29] And there's going to be a lot of you that are going to see this thing like that's way too
[00:08:32] much hassle.
[00:08:33] I am not doing IRC to chat with Rob while he's in over the shoulder mode.
[00:08:37] We call it, you know, or I'm just, I'm just doing something and everything's muted.
[00:08:40] And a lot of you are not going to care to be here for that.
[00:08:43] If that's, if it's too much of a hassle for you to set up IRC, then just get a Twitch
[00:08:46] account and come on in and join and watch on Twitch or, or, or, or, or chat from Twitch.
[00:08:51] You have to have a Twitch account anyway to use IRC.
[00:08:54] So even if, but if you hate the interface, if you hate the interface and you want to use
[00:08:57] something else and you maybe want IRC open where you're doing something else and you just
[00:09:01] want to have it at the bottom of your screen like I do, then you can do that.
[00:09:04] You can do that with WeChat.
[00:09:05] You can set it up to do that and you can look at my doc files for how to configure that.
[00:09:09] That's all I'm going to say about that.
