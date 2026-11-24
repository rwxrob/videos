# 🤪 "Color Terminals are Juvenile"

Discusses Rob Pike's view that color in the terminal is juvenile and argues the opposite. Tells a story of spotting a misplaced configuration parameter in an SSH config file on a production jump host because it appeared in red, which avoided a broken SSH service restart.

Terminal color could save your life. 🤪 I have a story about that.

Chapters:
0:00 Intro and Rob Pike's view on color
0:55 Retro terminals and why the idea is outdated
1:43 Setting up the SSH config story
2:26 Red text reveals the wrong config
2:55 Why color saved the jump host

`#terminal #linux #ssh #unix #devops #sysadmin #commandline #robpike #colors #stories`

## Category

Education

## Transcription

[00:00:00] Colors of juvenile colors of juvenile you do do do do do do do do do do do do do okay this is
[00:00:07] sunrise by the way it's in my bonzai project you want to go find it bonzai b-o-n-z-a-i but
[00:00:12] let's talk a little bit let's put the fishies back and talk about colors in the terminals so
[00:00:17] rob pike has been quoted as saying that color in the terminal I think is juvenile and you know I
[00:00:27] love rob pike I mean he was a it was a big contributor was a little kid at bell labs with
[00:00:31] ten Thompson when Ken invented unix he invented plan 9 and go and Unicode he was when emojis
[00:00:38] wouldn't exist without him which is kind of ironic because he really fairly does not like
[00:00:44] color in the terminal and I was just I just had a visit for one of my favorite favorite
[00:00:48] friends last miles Dennis another streamer who you know like another one of my bestest
[00:00:55] people that I work with and I have a friend at work who is his terminals putty with amber
[00:01:01] you know and back and back I was old and I'm old enough to remember when if you had an
[00:01:04] amber you know terminal you were you know cool and you go back and look at retro terminal
[00:01:10] videos that I've done because I actually really like retro terminals but this this notion that
[00:01:15] color in the terminal is bad is just really old and busted it's an old idea and I want
[00:01:22] to share an idea I want to share an example of of how this was a problem and I'm actually
[00:01:28] going to make I'm going to make it into a I'm going to make it into a an object lesson
[00:01:35] so I actually will go check my SSH config all right so I went once upon a time I walked
[00:01:43] along into the system I was like what's going on here and stuff's not right and there was
[00:01:48] a misconfiguration by one of our system administrators who uses an amount of chrome monitor a terminal
[00:01:54] emulator and they had the like the wrong thing in here right the the wrong thing and and in
[00:02:02] my terminal see how that's that's white and it's not you know whatever I host host name
[00:02:10] or you know it didn't have the color so the point I'm trying to make is that I came across
[00:02:14] this production system that had been edited by hand by an admin which already you should
[00:02:20] probably not be doing these days with CHCD and all that and and I was just in there and
[00:02:26] and I it was really clear to me that they had added the wrong thing to that what they
[00:02:31] ended up doing is they added a configuration parameter to the client SSH config file which
[00:02:39] is very easy to confuse with the server configuration file and as soon as I open it it was immediate
[00:02:44] obviously because it was in big red letters in this particular terminal and I saw that
[00:02:49] it didn't belong there right away and the reason I saw it was because of color and if
[00:02:55] you didn't have color you wouldn't see that it was wrong there's no shell check there's
[00:02:59] nothing you could run it through to know that you had the right configurations you just
[00:03:02] have to restart your server and have it break and thank God that server that's SSH server
[00:03:06] didn't this was this was on a massive like multi a jump host which had you know hundreds
[00:03:12] thousands of people connecting all the time if that server had been restarted or that server
[00:03:16] SSH process have been restarted it would have broken the SSH statement and it wouldn't
[00:03:19] have worked anymore so I was in there completely randomly I can't even remember why and I saw
[00:03:26] that it was wrong and I corrected it so that it was in the right file and it was because
[00:03:31] of color that I was able to save the day without anybody even knowing it I did mention it to
[00:03:37] them now in the nicest way possible.
