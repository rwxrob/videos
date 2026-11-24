# 🟥 Simple Current Topic OBS Overlay

Demonstrates a browser-based OBS overlay that shows the current stream topic, with a logo, link, date and time. Explains how changing the topic also updates the Twitch title, GitHub status and live YouTube title, and how recordings are automatically renamed to a slug of the topic. Walks through the code, the background services, token caching and the setup steps.

Vibe coded simple OBS browser overlay. I use this because I am frequently changing the title of the stream based on topic and make recordings to be uploaded.

- left: logo and link
- right: date and time
- center: current topic

Quick start:

1. Update `index.html` to have your link
2. Update the image
3. Add a browser source in OBS and center
4. Start `service-current_topic` to serve topic to OBS browser overlay
5. Start `service-rename-recording` rename recordings to current topic as slug
6. Change current topic with `topic` command (perhaps aliased to `t`)
7. Optionally record a video for that topic (renames video when stopped)
8. Upload video to YouTube

Chapters:
0:00 Overlay overview and what it updates
1:18 Caveats with YouTube, Twitch and restreams
2:08 Auto-renaming recordings to topic slug
3:00 Setup steps and background services
4:04 Topic server and failed curl demo
5:56 Overlay customization and token caching
7:05 Where to find it and wrap-up

`#obs #streaming #bash #overlay #twitch #youtube #vibecoding #linux #github #livestream #coding #tools`

## Category

Science & Technology

## Transcription

[00:00:00] So, I was like the third time I made this video, every time I make it I make a mistake.
[00:00:06] So you can see at the top of the screen now it has an overlay, right?
[00:00:10] This is like a called a browser overlay in case you want to, if you're part of one of
[00:00:15] the cool streaming kids, you know what this is?
[00:00:18] This is simple current topic OBS overlay, let's put it at the top there, right?
[00:00:22] Well, this is a thing that a lot of streamers will want, so I'm going to show you how to
[00:00:26] do it and I've I've coded it for the most part.
[00:00:30] But what it does and the reason you want it is it updates and overlay, in this case
[00:00:35] this overlay, but you can make your own overlay doesn't matter and it has a topic, it puts
[00:00:39] the topic there, but it puts it three other places.
[00:00:42] So it puts it, I count wrong, it puts it on Twitch, there he goes, simple current topic
[00:00:48] overlay.
[00:00:49] So anybody watching your Twitch channel right now knows what the topic is and if they're
[00:00:51] flipping through their fire TV or whatever the hell and it changes it on GitHub, so your
[00:00:57] current GitHub status as whatever your current thing, your current topic is and it changes
[00:01:03] the title of your current live stream to YouTube.
[00:01:06] So if you are doing all of them, it doesn't change your Facebook unfortunately.
[00:01:12] I haven't gone through the work to figure that out.
[00:01:14] I am streaming to Facebook right now as well, but those stay the same.
[00:01:18] Now there are a few caveats to think about here, so first of all, YouTube, if I end
[00:01:24] my stream right now, YouTube remembers the last title, Twitch, if I end my stream right
[00:01:31] now, remember in the VOD, remembers the first original title and of course your GitHub status
[00:01:37] is irrelevant.
[00:01:38] So that difference between YouTube and Twitch is pretty significant.
[00:01:43] Your VODs all have whatever they name with.
[00:01:46] One other thing I can't show you is the restreams.
[00:01:48] So like if you're using Restream and you use that to change your titles, nothing I've done
[00:01:52] changes those titles.
[00:01:55] So sometimes I'll put a generic title in there because next time I want to start a stream,
[00:02:00] I'll start with whatever that generic name is, which I know is going to get saved in
[00:02:04] the Twitch VOD for example, but then I'll immediately change it.
[00:02:08] Now something that's really cool is that I'm making a video right now and all I have to
[00:02:13] do is tap on the non-record button or toggle the record button on my stream deck and it
[00:02:19] will automatically rename the name of the last video from the generic ID to the actual
[00:02:28] name, the slug of that title.
[00:02:31] And the thing that's really great about that is then you go in your videos directory and
[00:02:35] drag that or upload it to YouTube and when it sets the title, it actually sets it to
[00:02:40] the slug version of that title so you don't have to do anything else.
[00:02:45] In fact, if you didn't want to slug by it, you could keep it that way and then just add
[00:02:50] in the emoji or whatever else gets pulled out of there.
[00:02:53] But it is nice because those videos that are hanging around, you know which ones they went
[00:02:58] with.
[00:02:59] It's pretty cool.
[00:03:00] So let's get into the code.
[00:03:01] I want to show you the code how it does it really quick and then this video will be done.
[00:03:04] So first of all, there's a logo to the left and the right and then the center is the current
[00:03:09] topic.
[00:03:10] So when I started, you update the index.html which I'll show you.
[00:03:13] You can update the image and add a browser source and OBS and center it.
[00:03:17] That I'm not going to teach you how to do.
[00:03:18] You should know that if you're a streamer already.
[00:03:21] Then you start up a couple services.
[00:03:23] I have the services running in a tab called services because they spit stuff out, you
[00:03:30] know, when they are doing things and it can be kind of annoying.
[00:03:33] But you could set up services to run in a better way than I do.
[00:03:38] I just fire them off with an ampersand at the end so it puts them into the background
[00:03:42] and they're listed under my jobs.
[00:03:44] So if I type jobs right here, if I type jobs, it'll show that I have those services are
[00:03:51] running right.
[00:03:54] And you need both of them.
[00:03:55] You probably could put them both into a single server if you wanted to.
[00:03:57] I have I've coded them really fast so I didn't care.
[00:04:00] The current topic one is necessary for the overlay to get the right thing.
[00:04:06] So the OBS index dot HTML file grabs that line for the topic right here replaced with
[00:04:16] GitHub status, which is an old thing that I've had there forever.
[00:04:23] And I can probably change that.
[00:04:24] But so this topic is updated through this fetch and then this server runs on 8080.
[00:04:29] And if you curl that it's HTTP by the way, one, two, seven dot zero dot one, colon 8080.
[00:04:37] It'll just give you the it'll give you the that I do that right and I do what you seven.
[00:04:45] What am I doing wrong guys?
[00:04:49] Oh, research connection here, failure, what what did I do wrong?
[00:04:58] Something's not right.
[00:05:00] My live demo is not working one, two, seven, pitch.
[00:05:08] I wonder if I have more than one service running on that port.
[00:05:14] I should give me my thing.
[00:05:16] I don't know why it's not showing me my thing.
[00:05:24] It's like every, there is what it takes along.
[00:05:33] I must have two things listening on that port or something.
[00:05:35] I don't know.
[00:05:36] I promise you it works.
[00:05:38] So there is anyway, that's what gets served up and it does serve it up pretty regularly.
[00:05:44] Right.
[00:05:45] Oh, no, that's why because it's only when it's when it's currently requested.
[00:05:49] So anyway, yeah, it'll work.
[00:05:51] So anyway, have a look at that.
[00:05:54] That's what makes this happen.
[00:05:56] Yeah, that's, you know, so that's the end of the overlay.
[00:06:02] If you wanted to change the other stuff in there, you would change like, you know, this
[00:06:09] the link here under bangers, you can change the font.
[00:06:12] I mean, you can do whatever you want with the overlay as a few.
[00:06:15] The time stuff is happening in the top right.
[00:06:18] That's happening from this over here.
[00:06:20] All vibe coded.
[00:06:21] That was all vibe coded and tweaked.
[00:06:25] There are a couple of other programs, cash YT token.
[00:06:29] This took me a long time to write even with vibe coding.
[00:06:32] This actually caches your YouTube token with a refresh token so that that gets used every
[00:06:38] time.
[00:06:39] And it also caches a Twitch token, which will cache, you know, your, your bear token for
[00:06:46] so you can query Twitch with a Twitch command.
[00:06:48] You have to install the Twitch command, JQ, and a bunch of things that it'll tell you
[00:06:54] nicely that you don't have if you don't, if when you try to run it.
[00:06:58] If you're not a technical person, then yeah, it's a little hard.
[00:07:02] But if you are, you know, it's, it's pretty, it's pretty easy to, to set this up.
[00:07:09] And this is all in, they get about com, archivax, Rob, CMD, dash topic.
[00:07:14] So give it a shot.
[00:07:15] Come join me on the stream if you have any problem doing it.
[00:07:17] This is actually a really fun project.
[00:07:19] If you want just a little project to cut your teeth on, uh, I, it's mines in bash and web
[00:07:26] stuff, but you could do it in, you could do it in go or whatever other language you wanted
[00:07:30] to do it.
[00:07:31] So there you go.
