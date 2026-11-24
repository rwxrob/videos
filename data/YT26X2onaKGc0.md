# Q: What app do you use to take notes?

Describes a plain-text note-taking workflow built on CommonMark, Pandoc, Vim, Git and GitHub, using a modified Zettelkasten method. Covers the priorities behind it (no lock-in, minimal, searchable with grep or GitHub search), a bash script for creating notes and screenshots, and combining it with paper notes. Encourages writing a personal tool rather than adopting a prescribed one.

-   CommonMark, Pandoc, Vim, Git, GitHub
-   Modified Zettelkasten method
-   Priorities:
    -   Absolute freedom to use any platform (or no platform)
    -   Abhor lock-in
    -   Needs to be minimal and searchable
-   Find your own way (write your own)
-   Focus on minimalism
-   Combined with paper note taking

Related:

-   https://www.youtube.com/c/rwxrob/search?query=Zettelkasten
-   https://github.com/rwxrob/zet/search?q=zettelkasten
-   https://github.com/rwxrob/cmd-zet

Tags:

    #notetaking #zettelkasten #advice



[ZETID:20211025042345]
https://github.com/rwxrob/zet/tree/main/20211025042345

Chapters:
0:00 Tools used for taking notes
1:18 Modified Zettelkasten and where to find it
2:04 Search links for Zettelkasten videos and notes
3:02 The zet repo and bash command
4:32 Priorities: freedom, no lock-in, searchable
5:54 Write your own tool, find your way
7:35 Demo: screenshot note script
9:12 Combining with paper notes
10:13 Minimal and searchable with grep

`#notetaking #zettelkasten #markdown #git #vim #pandoc #bash #minimalism #github #linux`

## Category

Education

## Transcription

[00:00:00] What I have to use to take notes so I'm actually answer this a lot of other times and the answer
[00:00:06] You might think the answer is pandoc vi and get and and that would be partially true
[00:00:11] So I kind of got to tell you it's not emax. God. No fucking hate me max
[00:00:16] That's gonna get me banned from YouTube for saying that that early, but you said emax and I had to say
[00:00:23] If you like emax fine, I don't that's all I have to say about that
[00:00:27] Pandoc I have no hate for people who want to use it
[00:00:31] and get
[00:00:33] get get
[00:00:36] github
[00:00:37] Okay, so that these are the primary tools that I use to take notes
[00:00:43] But and I do it in common mark
[00:00:48] So I write in common mark
[00:00:50] Church to me max love. I know you guys got church to me was that's fine. I have so many friends good good respected friends
[00:00:56] You use emax. I don't I think you max is a waste of time. I think it's a waste of time
[00:01:02] And I'm I you access a relevance for me. So I don't use it people say usually is or no
[00:01:07] First of all, I have to install it to use it. I don't want to do that
[00:01:11] Yeah, and too much of so so this is this is how I take those I I use this little cast and method and you can see
[00:01:18] There's lots of other videos on them. I'm gonna write it about it now. I use this little kid modified little cast and method
[00:01:25] So I use a modified
[00:01:28] As I and there's there's time again, there's videos on this. I've done a lot of stuff on this effect. Let me give it to you
[00:01:34] so if you go vids
[00:01:36] zetal costin
[00:01:38] there and
[00:01:40] And that should give to a hit. Let me see if it does
[00:01:45] does it
[00:01:47] Oh, I think I I spelled it wrong. Damn it. Why did my spell right? I'm so stupid
[00:01:54] I I'm a little bit tired tonight. I can't believe I did that. I can't believe I did that
[00:02:01] Okay, so
[00:02:04] There you go. Do you have one or more? Okay, so here's here's the search for that
[00:02:10] It's in the twitch chat. I'll put it in my references
[00:02:13] And this link this will give you all the videos I made about this if you if you want to
[00:02:18] search my actual
[00:02:21] Put under related here. Okay, so you'll this will be in the show notes. It's okay sure because you want to know
[00:02:27] So this this here will give you all of my videos about zetal castin and this one here
[00:02:35] will give you
[00:02:38] All of my my notes about zetal castin
[00:02:41] Okay
[00:02:42] So and the reason I'm doing this is for for that reason. This is using github to search
[00:02:48] So mind-ton taking about this github and the reason for that is because it gets stored
[00:02:55] It gets you know, I mean I don't have to tell you it's you know
[00:02:59] Let me show you this is a CD and a z
[00:03:02] open
[00:03:04] This is gonna open up the zetal castin repo
[00:03:07] And and you can read all about I'm not gonna go I'm gonna talk at all about what is it'll castin is here
[00:03:12] This is where I dump my knowledge as it happens
[00:03:14] Some of them have titles some don't
[00:03:17] Some they've got rebase and after some drama and stuff, so
[00:03:22] Yeah, people don't agree with me. So they troll me
[00:03:26] And yeah, so this is this stuff sell here. I got a little bit mad. There's some more things there
[00:03:31] You can just go read him. This is my own personal take on on zetal castin. You can make your own take
[00:03:36] There's I made another video about a guy
[00:03:39] Specifically who has actually ripped on this idea and done his own so there's an actually another there's a command that I use
[00:03:47] Then I've been maintaining calls that it's a bash script right now and
[00:03:51] This bash script is not done. It's a constant work in progress, which I plan on building into something more major
[00:03:59] Little bit later and putting into a project I call memoirs named after the god my mirror god of knowledge
[00:04:07] which will be part of my
[00:04:09] Community community manager stuff as well. So it's all tied together like you know the posting of of searches
[00:04:16] You know and the chat all going into central location
[00:04:18] I want to make a central essential for hub for all that played around with lots of different names
[00:04:23] But right now it'll probably be a mimic memoirs community manager and that'll include as little castin and a zet tool or something
[00:04:29] So that's that's how I take notes
[00:04:32] The so that my priorities are and you might have different priorities. This is what I'm telling you. So my priorities are
[00:04:41] Our prior primarily
[00:04:45] absolute
[00:04:49] Freedom to use any platform or no platform. I
[00:04:56] would never
[00:04:59] Do anything that caused me to
[00:05:03] Buy a product or even use an open source product that had to be used. I'm not into that
[00:05:09] And so by doing this as github and common mark and pandoc in this kind of way I can I can render my knowledge in any
[00:05:16] Number of ways when I need to I can search it anyway
[00:05:18] I want because it's text-based so I can write text searches in one grep man
[00:05:22] I don't have to build a whole engine if it's on github. It's already got it
[00:05:28] You know, I don't I'm not gonna mention other note-taking systems by name as much as possible because I I know people really like them
[00:05:34] But I would just really really warn you I
[00:05:39] mean, I absolutely abhor lock-in and there are a lot of
[00:05:47] They're
[00:05:48] Right there are just way too many even open source things that try to lock you in
[00:05:54] You're writing your own zut tool. I think that you should I think that most people should come up with their own tool
[00:06:00] So that's my recommendation. My recommendation is for you to find everyone does things slightly differently
[00:06:07] We all have different brains. There's nothing this is genuine. I agree with me on this
[00:06:10] Usually, you know, I'm like one best way kind of guy, but she's like now. There's no best way, you know
[00:06:15] she doesn't say that but
[00:06:17] the point I'm trying to make is you know find your own way and
[00:06:21] And and I you know my I think that you know, you're still waiting on a binary treat. Oh
[00:06:30] Yeah, well
[00:06:32] See, I'm not yeah, I'm I'm actually gonna or I talk are you talking about the the
[00:06:39] We're talking about are you talking about the no tree the no tree stuff. Yeah, I never finished that tutorial series
[00:06:44] I started and I stopped it. I didn't do anything. I
[00:06:48] Did I definitely need to do more with it? I haven't
[00:06:52] So, you know find your own way
[00:06:54] Write your own if there's if there's one project that I feel like everybody could get behind if they want to get into coding
[00:07:02] Is it's that now and this is where because you know a lot of the gooey world doesn't agree with my method because I'm using the terminal
[00:07:09] I'm using a text-based browser like why aren't you using word or this or that or you know?
[00:07:14] And and I just don't feel it needed they think I mean
[00:07:18] There's a lot of these tools that have like abilities to clip things and all that stuff and combine it all together
[00:07:23] It's so overly complex. It's like why do you need that?
[00:07:26] I just need maybe a picture and a note to remind me about something
[00:07:29] I don't need all the extra stuff. So I like focus on minimalism. I
[00:07:35] Actually built my own snap next let me show you a Zed
[00:07:39] Titles I built my own snap shot or so so here I watch I'll show you so I can do Zed
[00:07:47] Snap wait screenshot zet screenshot. It says go take a screenshot. Okay. I'll take a screenshot here
[00:07:54] We go and then I press enter
[00:07:57] And then it adds it I'll say I'll put random screenshot it created it created it inspected the image for its dimensions
[00:08:05] And then made this this this this common mark file and now it's committed to my get up
[00:08:13] zet zet
[00:08:14] Titles and now I listed it as a figure
[00:08:18] Did I say yes, maybe I didn't oh
[00:08:22] Boy what happened did I screw it up? Oh I did
[00:08:27] Looks like that one didn't take well. I was trying to say you can go open these up though. So
[00:08:32] Set open and yeah, this is all scripted with bash you can do it however you want. This is a
[00:08:40] There's a random screen shot of somebody using a mouse, you know
[00:08:43] I when I want to a clip or something. I want it kind of generically saved and kind of a not content management system
[00:08:51] And you know, I don't I don't really go beyond that
[00:08:56] For that kind of thing so so that's that's my method
[00:09:00] And I don't know my mind didn't say I think it's not saving because I'm in the middle recording
[00:09:04] I have to go fit might be a bug a really cool thing is when you run into a bug like that you can fix it, right?
[00:09:09] So if you don't feel like you're capable of writing your own system
[00:09:12] That's fine. The really cool thing is is that my system means that I can take paper notes, too
[00:09:17] So I have a ton of paper notes that are the same exact format is as my written format
[00:09:23] And I just have to copy them over and then I just cross them out in my book
[00:09:26] So so I know it's not there sometimes it's better to get away from the screen to do my best thinking so so that's that's that's my method of
[00:09:34] No taking so combined with, you know, paper
[00:09:40] Paper note taking and I think there's something magical about paper note taking it
[00:09:45] So just because I'm old I know a lot of people to say that because they're too old and they don't want to use new things
[00:09:49] But obviously I just scripted a whole entire new thing here of my own. So it's not about the technology
[00:09:55] It's about it's about the nature of learning and I when I'm walking around and I have some paper take notes on or
[00:10:01] something to record into
[00:10:03] I find my way myself doing better better. No taking that way. So that's that's my method
[00:10:08] and
[00:10:10] You know everybody has to find their own way
[00:10:13] But again, I
[00:10:14] My main priority is I do not want to be locked in
[00:10:18] it needs
[00:10:20] needs
[00:10:22] To be minimal and searchable. I can write a complex search using nothing would grip
[00:10:30] So
[00:10:33] That's why I like it and a lot of people don't know what grip is so their priority would be different, right?
[00:10:37] They might use a different tool
[00:10:39] That's all
[00:10:42] Let's see. I've always rewrite things memorize. Absolutely. I love you. Good. Yeah the repetition. Mm-hmm
[00:10:48] note
[00:10:49] taking
[00:10:51] Zettole cast and what else are we putting here?
[00:10:55] Advice I guess that's not really advice. I it's just as what it is
[00:10:59] But yeah, you might get some ideas to go have a look at that and make your own decisions. That's all I'm saying about that
