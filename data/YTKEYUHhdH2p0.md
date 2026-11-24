# 🚀 Tech Career Beginner Boost 2026 - Day 2

Covers managing a personal skill stack by listing skills and scoring them for proficiency and relevance, and how just-in-time learning with AI changes keeping up with technology. Walks through building a Markdown knowledge base on GitHub, including committing, the web editor, and previewing Markdown. Sets up the Beginner Boost container with Podman and the default Mac terminal.

Managing your "skilstak" to know what to learn and where you are, then keep your knowledge organized in a GitHub Flavored Markdown (GFM) knowledge base on GitHub.

Chapters:
0:00 Intro and Beginner Boost updates
8:01 Recap of last week and Know Thyself
15:23 Managing your skill stack
17:32 The story behind the skill stack
26:42 Avoiding overwhelm with a skill list
39:40 Relevance scores and self-assessment
46:25 Separating relevance from target values
1:09:30 Just-in-time learning with AI
1:27:41 Building a knowledge base
1:30:19 GitHub repo and committing changes
1:41:52 Markdown tables and previews
1:58:27 Editing notes on github.dev
2:03:43 Organizing notes and file naming
2:17:50 Blogging platforms and the boost container
2:22:41 Setting up the Beginner Boost container
2:36:41 Using the default Mac terminal
2:43:15 Switching to Podman
2:57:47 Running the container and terminal defaults
3:12:04 Wrap-up

`#careeradvice #markdown #github #beginners #skillstack #podman #learntocode #terminal #techjobs #mentoring #tips`

## Category

Education

## Transcription

[00:00:00] Okay, so if you suffered through the first day video with my cold and and all these long
[00:00:05] pauses and everything, just know that this video is going to be a little bit better.
[00:00:10] It's, you know, we're still going to be meandering around just like we always do for
[00:00:14] the next three hours.
[00:00:15] But the first thing is it probably won't be three hours long because I know have a pause
[00:00:20] button.
[00:00:21] I'm also recording it, which means that the quality of the video will be higher than the
[00:00:26] live stream.
[00:00:27] The first stream is traditionally not very good.
[00:00:31] And I noticed that when I was reviewing the video, I went back and it was, it was more
[00:00:34] grainy and stuff than I would have liked.
[00:00:36] So I am simultaneously recording this entire video and will upload it to the YouTube, a
[00:00:43] little bit of administrative stuff before we get going on day two that I have changed
[00:00:48] based on feedback and based on everything here.
[00:00:50] So first of all, this is simultaneously being streamed to YouTube, Facebook and Twitch,
[00:00:58] you know, so join me in any of those places.
[00:01:00] There's really no preference about where you go, you know, honestly, it does not matter.
[00:01:08] It does not matter where you come from there.
[00:01:12] Here's the YouTube version of it.
[00:01:14] I have pinned the boost links into both Twitch and YouTube so you can go there and click
[00:01:19] on the boost repo and the boost website, GitHub repo, which is kind of a website for those
[00:01:26] who don't know what I'm talking about.
[00:01:29] And that's it.
[00:01:30] But I did want to talk really quickly about the actual web page, which I have been frantically
[00:01:35] catching up on YouTube, first to address where all the other old videos went.
[00:01:41] So I talked about this briefly before I repeat it.
[00:01:44] I unpublished most of my videos, 1100 videos or so a while ago, mostly because they were
[00:01:52] irrelevance and old and I have since been slowly going through them and reorganizing them.
[00:01:59] And there, this has been a constant source of frustration for me and other people because
[00:02:04] I streamed to the same YouTube channel.
[00:02:07] So just let me speak about this a little bit.
[00:02:08] This is not fully organized, but these main categories at the top will eventually be work
[00:02:16] helping, like helping others projects, which is like any of these little projects I do.
[00:02:25] Adventures are exploring, you know, going outdoors, IRL, like I did last night at philosophy
[00:02:30] and spirituality, mental health, that kind of thing.
[00:02:34] And then probably one called random, which I don't even know if I'm going to have that.
[00:02:40] There's a number of videos like last night I did a bunch, I did like a three hour cozy
[00:02:43] coding and conversation stream and it didn't get posted anywhere.
[00:02:48] And I don't know that it needs to be posted anywhere.
[00:02:51] Those are very, very informal, they're really silly, sometimes I joke about whether I should
[00:02:57] even put those on YouTube because they're pretty cringe, I swear in them, I make sex
[00:03:04] jokes.
[00:03:07] And so I don't know if I want to have a dedicated playlist with that and there's going to be
[00:03:10] at least one person in the audience going, "Oh yeah, that's the one I want.
[00:03:13] I want to subscribe to that playlist."
[00:03:14] Which brings me to the point, so the point of this is that, like, where's your tech content?
[00:03:19] Oh, where's your IRL content?
[00:03:21] It's all there.
[00:03:22] It's all going to the same place.
[00:03:24] I have tried so many times to separate it out to with no success, it's super hard to
[00:03:28] do that and promote it.
[00:03:31] That also means that when you're watching Twitch, you're going to see a lot of clips
[00:03:33] that are going to come from both worlds.
[00:03:38] And that's just me.
[00:03:39] I talk about tech when I'm out for bike rides and then I talk about rock climbing while
[00:03:44] I'm in the middle of a tech stream.
[00:03:46] Those are just me.
[00:03:47] This is my channel.
[00:03:48] It's about me.
[00:03:49] So the point of it is, is if you don't care, let's say, about rock climbing or biking,
[00:03:56] all you want to do is become a really good SISTI engineer.
[00:03:59] You can subscribe to the co-working playlist, you can go to the playlist to subscribe to
[00:04:05] that playlist and get notified for that.
[00:04:07] I mean, it's a playlist specifically.
[00:04:09] And then you won't get, you will get notified every time I make a video, but you can kind
[00:04:14] of isolate it if you want, right?
[00:04:15] And then you can only see the things that are related.
[00:04:18] So that's enough about that.
[00:04:20] I did want to put that out there though.
[00:04:21] So thank you for being there.
[00:04:23] I am going to explain all of that again in a video that is my first time or you came
[00:04:30] to my channel video kind of thing.
[00:04:32] But that's going to drastically improve the amount of time I can turn around things.
[00:04:37] And I don't know if people have noticed, but last night I made, I think, five videos based
[00:04:43] on the new system.
[00:04:45] And it's making me much more prolific I made, how to try to transition to a SISTI career
[00:04:48] this morning.
[00:04:49] That's a 40 minute video, a simple current topic, OBS overlay, how to make this overlay
[00:04:55] that I made that's got the title, a discussion about cloud versus Chloe, which GPT to use,
[00:05:04] and which license should I use, system dynamics from being on a team, a SISTI team, and living
[00:05:10] in balanced life.
[00:05:11] I made all those videos yesterday.
[00:05:13] So it's going to, you know, I produce a lot of content now that I've got everything kind
[00:05:18] of dialed in.
[00:05:19] And if you want to see all of them, that's the place to go.
[00:05:22] But if you just care about the beginner boost or bonzai or something, you know, just subscribe
[00:05:26] to the playlist.
[00:05:27] And I will promise you this, I will put everything here on the playlist.
[00:05:31] Another thing I want to strongly, strongly invite you to do, make as many comments, positive
[00:05:36] questions, even negative as you can on these videos so that other people will learn about
[00:05:42] them.
[00:05:43] The more that you engage with these videos, the more you'll be promoting other people
[00:05:49] finding them who have the same questions.
[00:05:51] This is why one of the primary reasons I do not have a Discord, because by putting the
[00:05:56] dialogue about the subject matter around the video on YouTube, then other people can participate
[00:06:02] who are not going to know about the Discord.
[00:06:05] So, and just as a reminder, if you go to the beginner boost, which is linked in the chat,
[00:06:11] if you go to the beginner boost, and you have questions that are not really suitable for
[00:06:17] a comment on a video, or they're longer-winded, you can go to the boost and you can click
[00:06:23] on discussions.
[00:06:25] And this is permanent, and it goes with the boost, and it's permanent, which means that
[00:06:29] it lives on.
[00:06:30] So, it's also more or less moderated, much better than any Discord server ever would
[00:06:36] be.
[00:06:37] So, this is why I don't have Discord, and we've had a lot of really great participation
[00:06:43] here.
[00:06:44] We've already had people post-seeking jobs and other thing.
[00:06:49] Job care conferences, we've had a few people comment there.
[00:06:51] I would really love for a lot of people to post their personal job pairs here, because
[00:06:56] I feel like that's a really, really big per step, and I kind of want to put those on the
[00:06:59] calendar to go visit.
[00:07:01] In fact, if we have an Art of X con, it will be at a national job fair.
[00:07:06] Not TwitchCon.
[00:07:07] I mean, I'll probably still go to TwitchCon, but it needs to be a national job fair, like
[00:07:12] where they're offering jobs.
[00:07:14] And I can meet with a bunch of you from the beginner boost, and we can all, like, put
[00:07:19] our best dress on and walk around and, you know, go look at what the jobs are available,
[00:07:25] and I can help you find what job you might want to get.
[00:07:29] I really want to do this.
[00:07:31] So, please, please, please, whether it's in Europe or it's in America, we're looking for
[00:07:35] national job pairs, ones that have substantial companies with one goal, to hire you.
[00:07:43] Not to, like, tell you about their cool technology and sell you stuff, but to actually hire you.
[00:07:48] And these are becoming harder and harder to find.
[00:07:50] When I was in Oregon, I was surprised how easy it was to find one.
[00:07:53] They had one every year, and it was so helpful.
[00:07:56] And I met lots of people.
[00:07:57] I would come out of the way with that with lots and lots of contacts.
[00:08:01] And this is a good segue into the boost from last week, which was largely based on, you
[00:08:06] know, the conversation about what does it mean to be a technologist, what are the jobs
[00:08:11] in the thing, what are the companies, how do you prepare, hopefully you did your homework,
[00:08:15] and you kind of did some thinking about what you want to do with your life.
[00:08:19] And, you know, really give that some thought, and then find where those companies are so
[00:08:24] you can talk to them, so you can ask them, you know, what do they do, what do they want
[00:08:28] to do.
[00:08:29] And by the way, I made the video, the, what was it, the transitioning to a SISTI career.
[00:08:37] It was specifically somebody from our group who asked the question, "I am a SIST admin.
[00:08:42] I want to be a SISTI.
[00:08:44] Tell me what I need to do."
[00:08:45] I mean, help me understand that based on the same kind of challenge I gave everyone else
[00:08:50] to, you know, go do that.
[00:08:52] Go reach out to people who do the job that you think you might want to do and figure
[00:08:56] that out.
[00:08:57] So, that was the takeaway from the first boost.
[00:09:00] I might end up redoing those three hours.
[00:09:03] It was, it's actually torture watching it because I am really sick in that video.
[00:09:07] And I did it anyway because, because I had, it's just absolutely disgusting.
[00:09:13] I'm like, blowing my nose and everything, so embarrassed.
[00:09:17] But you know, it's, that's, if I would teach you environmentally in person, I would be
[00:09:22] doing that.
[00:09:23] So, speaking of which, I'm very happy to announce, I'm not going to put say any names, but I'm
[00:09:27] now mentoring a few people in person based on sponsorships in my, on GitHub.
[00:09:35] If you don't like this whole thing and you want more hands-on attention, I do that.
[00:09:41] I'm not gripping for it.
[00:09:43] It's just the first year I've done it and it's starting to work out well.
[00:09:46] We'll be doing our first meetings next week hopefully.
[00:09:49] And I'll be meeting with people one-on-one for an hour, you know, depending on how, how
[00:09:55] they subscribe or how they, how they sponsor.
[00:09:57] So, if you do want hands-on instruction and you want, you know, four hours of my time
[00:10:03] per month, which is 240, you know, you can do that.
[00:10:06] And, but it's, again, you're going to be in charge of your own learning.
[00:10:08] I'm just going to be your mentor.
[00:10:10] So that's why it's a good deal as opposed to, you know, 600 or 700, which you would
[00:10:15] pay to finish a Kubernetes course or something.
[00:10:19] All right.
[00:10:20] Enough talking about academic admin and all of that.
[00:10:23] Let's get into it.
[00:10:24] Oh, yeah.
[00:10:25] I said that.
[00:10:26] I actually did say that.
[00:10:28] Let's go ahead.
[00:10:29] I'm going to go ahead and answer questions from the chat for a second.
[00:10:34] Okay.
[00:10:35] All right.
[00:10:44] Being the most watch.
[00:10:45] It would be awkward to have the playlist of the random stuff being the watch most watch.
[00:10:52] That's like a private little Reddit, right?
[00:10:55] That's a better location than it'd be sick.
[00:10:57] Yeah.
[00:10:59] This guy is awesome.
[00:11:00] Oh, Karma, that's very nice.
[00:11:03] CyberLonka says, "I'm going to make Kubernetes videos and such, again, in upcoming videos."
[00:11:09] Yes.
[00:11:10] I will be doing Kubernetes stuff, but not a part of the beginner boost.
[00:11:13] Okay.
[00:11:14] So we covered Kubernetes.
[00:11:15] This is a good, that's a good segue into what we are going to cover and what we're not
[00:11:18] going to cover in the boost.
[00:11:19] And that is linked in the overview, which you can go to either from the website, just
[00:11:24] follow that link, or I'm going to open it up here in Markdown.
[00:11:29] So the opening of the beginner boost is understanding the tech industry, the culture lifestyle,
[00:11:34] the companies and the jobs involved.
[00:11:36] That was largely covered last week.
[00:11:39] So we did that.
[00:11:41] And could we have done it better?
[00:11:43] Yes.
[00:11:44] And always to tell you what you need to know and not tell you the knowledge, it's like
[00:11:50] to tell you what you need to go figure out.
[00:11:53] And we did that.
[00:11:54] We did that last time.
[00:11:55] So we spent three hours of that.
[00:11:56] I'm not going to rehash that.
[00:12:00] And again, we spent a large amount of time on know thyself.
[00:12:04] I did add something to know thyself.
[00:12:06] I'm getting to your question and I promise about Kubernetes.
[00:12:10] The know thyself thing is super important and I did update a lot after I thought about
[00:12:17] it a lot.
[00:12:18] I did a live a balanced life.
[00:12:20] I added a video called living a balanced life that is related to the content from last week,
[00:12:25] which was not referenced in last week's content.
[00:12:28] So that's a new video.
[00:12:30] I might actually put that in the beginner boost series for this.
[00:12:35] The fact that I probably should do that right now, make sure that gets watched.
[00:12:42] Because one of the things that I realized I'd forgotten to cover was basic human's needs,
[00:12:48] Mav's love's needs, you know, you can't ask yourself what you want to be and know thyself
[00:12:54] until you've got food on the table and you've got shelter.
[00:12:58] And I was recently reminded of this.
[00:13:00] That was a very hard video for me to make because I shared a rough story that I ended
[00:13:05] with.
[00:13:06] Thank God, because I couldn't really make it through the video after that.
[00:13:10] So please make sure you go watch that video.
[00:13:11] It's a pretty long one, but it's called finding balance in life and it talks about all of
[00:13:18] that.
[00:13:19] Right?
[00:13:20] You've got to do that before you can get to the stuff that we covered Saturday or Sunday.
[00:13:24] You know, what do you like to do?
[00:13:28] Are you naturally good at, what are your challenges and all these, you know, happy, happy day,
[00:13:33] you know, top of the Mav's love's pyramid self actualization kind of questions.
[00:13:38] You know, you don't have that luxury if you're trying to feed yourself.
[00:13:42] So a lot of people that are watching this video, a fair amount of them are going to be trying
[00:13:47] to figure out how to pay the rent.
[00:13:50] And they have to do that before they can feel comfortable enough for the dopamine to flow
[00:13:54] and really cause the creative, you know, learning to happen.
[00:13:59] You can't learn when you're stressed.
[00:14:01] You just can't.
[00:14:02] It's one of the reasons traditional education fails so hard is because it's got you constantly
[00:14:07] stressed as opposed to increasing dopamine and flow and the stuff in your brain that
[00:14:13] makes you there.
[00:14:14] And fight or flight does enable you to act really well if you're well trained, but it's
[00:14:20] not a good place to be when you need to learn something.
[00:14:24] So anyway, put that there.
[00:14:25] Put that out there.
[00:14:27] So back to the overview.
[00:14:31] Discover your ideal job and the companies that need it.
[00:14:35] This is again something that we talked about last week.
[00:14:37] I'm going to repeat this process really quickly.
[00:14:40] Eventually, there'll be a little blurb here for that.
[00:14:43] But it means talking to people once you kind of know what you want to do, finding those
[00:14:47] jobs that have those things and then those companies specifically, those companies that
[00:14:52] do it.
[00:14:53] Some of the job pairs come in and then mapping, you know, asking them, figuring everything
[00:14:58] out you can from them about what is needed.
[00:15:01] So to do a system job, you need to know how to program and go.
[00:15:05] The end.
[00:15:06] Right.
[00:15:07] There's a lot of other stuff that needs to be done, but what are those things specifically?
[00:15:11] And that brings you to something we haven't talked about yet, which is managing your skill
[00:15:17] stack, which is a word that I used to name my company in 2013 because I kind of happened
[00:15:23] upon it, this process of managing your skill stack.
[00:15:27] You can't create your skill stack until you know kind of where you're trying to go what
[00:15:31] skills you are going to go for and stuff.
[00:15:34] But I'm going to start with that today because it's going to directly flow into the do I
[00:15:43] need to learn Kubernetes.
[00:15:46] So learn what your ideal job requires and prove how you can do it.
[00:15:50] So I'm going to go ahead and start with the skill stack process.
[00:15:55] And this is you know, TM, RWX, Rob, it really isn't like, skill stack, it's like, right,
[00:16:07] what's in your skill stack?
[00:16:10] No, let's see, it's not really know your skill stack.
[00:16:14] It's kind of an ongoing process.
[00:16:15] I'm trying to figure out how to say it, it needs to do a lot.
[00:16:22] Yeah, I run a company running, I'm running mentoring.
[00:16:25] I started a company in 2013, you can go see all the minivan and everything, there's videos
[00:16:29] on it, stuff I've been doing this for years.
[00:16:32] I've mentored over a thousand people at this point.
[00:16:35] So personally, like that's how I do it, I do it like one on one, one on two, the most
[00:16:42] one on eight.
[00:16:44] I don't do big massive things, why I don't really play nice with the whole online medium
[00:16:49] because it's not my style.
[00:16:54] Because everybody learns differently, manage skillstack.md.
[00:17:00] Okay, so what is a skill stack?
[00:17:04] Manage your skill stack.
[00:17:10] Now you see me, if I write in all caps, it's usually going to refer, either all caps are
[00:17:14] all lower, it's usually referring to the company that I started that matches that name.
[00:17:20] I deliberately typed it weird because I wanted it to be unique and easy to find.
[00:17:25] So the story, I'm going to tell you the story, I'm a storyteller, so if you don't like stories,
[00:17:28] I'm sorry.
[00:17:30] We are boosting, yes.
[00:17:32] So I'm going to tell you the story of the skill stack.
[00:17:35] So I was working at IBM and I hated it.
[00:17:38] I was picking out needles in a haystack, memory leaks for level two support, particularly.
[00:17:45] And I had a horrible manager that just didn't respect me at all.
[00:17:50] And the light of the day was I had to write this really big Perl module to integrate ES6i,
[00:17:57] VMware stuff with an Italian team and that's why I got to meet with them into our little
[00:18:03] checks that would check for compliance and whether stuff was working or not.
[00:18:08] But that work kind of faded.
[00:18:11] And so all I was doing was just dealing with customers that were pissed off, enterprise
[00:18:17] level customers that were on level two, so they were angry and their software wasn't
[00:18:21] working.
[00:18:22] And I was trying to find bugs.
[00:18:24] And in addition to that, the whole entire piece that I was managing was software that
[00:18:29] tattle-tailed on enterprises that were not paying enough because they were putting this
[00:18:34] table software on machines that had more CPUs than they were paying for.
[00:18:39] I mean, seriously, I don't think you could have designed a job that I would have hated
[00:18:43] more.
[00:18:45] And it really kind of occurred to me that I was like, "How the hell did I get here?"
[00:18:51] I was divorced, I was unhappy, I had tried to do more with my life and ended up divorced
[00:18:58] instead.
[00:18:59] I tried to get into education and through a series of really unfortunate events, I ended
[00:19:04] up getting divorced and before I even started Skillstack or any of that.
[00:19:11] And so I was newly married, I was happy, but I still hated this job.
[00:19:18] I wanted out of it so bad because even though I was making relatively good money, which
[00:19:22] I found out later I wasn't, I was making relatively poor money, but I was still around.
[00:19:26] Everybody else had been fired.
[00:19:28] And I did enjoy the stuff I had done before that, right?
[00:19:31] So I was like, "What the hell happened?
[00:19:34] Like what happened to my career?
[00:19:36] Why all of a sudden my career felt like it was happening to me as opposed to I had this
[00:19:41] kind of like Billy Crystal, you know, city slickers moment."
[00:19:44] I was like, "I want to do my job better.
[00:19:46] I don't want to be here anymore.
[00:19:48] I want to either find a better job."
[00:19:50] And so I started looking around.
[00:19:51] I actually had an exchange with my manager, which in that day, that very day, I started
[00:19:56] I said about to find a new job because I hated that manager so badly.
[00:20:01] I would have done anything on planet Earth to get away from that manager, absolutely
[00:20:06] horrible human being.
[00:20:09] And I don't want to do all of that.
[00:20:12] So what did I do?
[00:20:13] I sat there in my front room and I was like, "Well, I don't even know how good I am anymore."
[00:20:19] And you know, there was this really good job in education, making educational software that
[00:20:25] came up.
[00:20:26] And that was a point because you need to go through this.
[00:20:28] You guys need to do this too when I'm about to tell you.
[00:20:31] So I was like, "What do I do here?"
[00:20:34] And actually, I'm going to tell you a massive, massive failure that I had.
[00:20:38] I just decided to start interviewing.
[00:20:41] So because, you know, in the past when I was at Nike, you know, I was like, "Top of my
[00:20:44] game.
[00:20:45] I could interview anywhere and get a job."
[00:20:46] And I was doing all kinds of great stuff and I was really ambitious and everything.
[00:20:50] But I had kind of let my career happen to me for a while.
[00:20:53] I hadn't really kept up.
[00:20:54] I didn't know what rest was.
[00:20:56] I mean, I couldn't articulate what it was.
[00:20:58] I knew JSON and Java, but I didn't really know.
[00:21:02] I didn't deal with it every day.
[00:21:03] I wasn't a web dev.
[00:21:04] I had been Nike's fucking webmaster and now I couldn't even deal with JavaScript because
[00:21:08] I had been dealing with C code and assembly and low level things, you know.
[00:21:13] My skill set had totally changed.
[00:21:15] And here I was wanting to go into education and particularly education software because
[00:21:21] I had started an education software company in college and I really loved it and I want
[00:21:25] to do this.
[00:21:26] So I can learn anything.
[00:21:27] I'm smart, you know.
[00:21:28] And I thought, "Okay.
[00:21:29] I'll interview."
[00:21:30] So I did.
[00:21:31] I interviewed and I had this interview with this web developer, a young kid.
[00:21:37] I mean, he was really young and he was like, "Okay.
[00:21:39] We're going to go do this together.
[00:21:40] We're all going to go do this thing."
[00:21:41] So your first assignment is parse this JSON thing.
[00:21:45] This should be really easy.
[00:21:46] Just, you know, just want to give you something easy and just get a sense of what you can
[00:21:48] do.
[00:21:49] So he asked me to parse JSON.
[00:21:51] You guys don't know what JSON is?
[00:21:53] JSON is structured data, data that can be chopped apart into pieces and used.
[00:21:57] And the answer was JSON.parse.
[00:22:02] But I had not coded any JavaScript since it was invented and I was there.
[00:22:07] I coded the first JavaScript when it was invented, god damn it.
[00:22:14] I gave presentations to 800 people about the invention of Java Apples but I could not
[00:22:19] parse JSON.
[00:22:20] So you know what I did?
[00:22:21] You know what I did?
[00:22:22] I wrote the most complicated, I wrote a parser with regular expressions in Perl.
[00:22:28] I knew the format for JSON but I didn't know the command and JavaScript to parse it, which
[00:22:32] is JSON.parse but so I wrote a Perl parser from scratch.
[00:22:42] It's a parse to JSON.
[00:22:47] This little snot-nosed kid, it was giving me the interview, I'm sorry, it was probably
[00:22:51] a wonderful human being.
[00:22:53] He said, so do you think there's a simpler way to parse the JSON?
[00:22:59] And I'm like, I know there's a super way, a simpler way but I'm trying to show you that
[00:23:03] I know my stuff, I just don't know that.
[00:23:08] I was like, I was expecting them to give me credit for being smart and knowing how to
[00:23:11] learn things fast and I was like, see, I can parse, I can write Perl complex regular expressions.
[00:23:16] Obviously this means I can learn JSON in like two days, if not less, but he didn't care.
[00:23:23] So I got, I didn't get that interview and I got a call back from the recruiter and the
[00:23:29] recruiter was handling a review of the kid gloves.
[00:23:31] I know because I've been on the other side of this before, I've helped recruiters in
[00:23:35] the past and he's like, well, I have some good news.
[00:23:41] You didn't get the job.
[00:23:42] I know, and he's like, well, well, you know, it sounds like you need to like spend some
[00:23:47] time getting a little bit more experience.
[00:23:49] And I was like, fuck you, I have like 30, 30 years of my, I was fucking Yucky's webmaster.
[00:23:56] How dare you tell me that I need more experience?
[00:23:59] He was right.
[00:24:00] He was right.
[00:24:01] I did.
[00:24:02] I needed more experience.
[00:24:03] I was like, okay, fine.
[00:24:04] And so I, that interview lit a fire under my ass.
[00:24:08] I was like, that is never happening to me again ever, never, ever, ever is that ever
[00:24:13] going to happen to me where I am totally embarrassed by 20 somethings who know more than I do.
[00:24:19] And you can call me in old parts or resting on his laurels.
[00:24:23] And by the way, I, I prided myself on keeping up with the latest technologies.
[00:24:27] I, I did.
[00:24:28] I knew, I knew where to go to learn it.
[00:24:30] I knew that I could learn it.
[00:24:31] I was really fast at doing research.
[00:24:33] I just didn't happen to know it before the interview, but I have interviewed for things
[00:24:37] before, including this current job.
[00:24:39] This current job that I have, which I'm making God awful amount of money on, I told my interviewer,
[00:24:44] I don't know Kubernetes and it was a Kubernetes job.
[00:24:48] And they hired me anyway.
[00:24:49] You know what they said?
[00:24:50] We know that you can figure it out.
[00:24:52] Now that's an intelligent interview.
[00:24:54] It's like we, we can see from the rest of your experience that you'll have no problem
[00:24:57] picking this up.
[00:24:58] You're just going to need some time.
[00:25:00] That's what they told me.
[00:25:02] And that's the kind of interview you want to have, but I needed to have the other kind
[00:25:05] of interview to motivate me to come up with what I now call the skill stack method.
[00:25:11] And it's really simple.
[00:25:13] After that meeting, I was like, I never want to be caught, not knowing what an acronym
[00:25:17] is, or what something is that's relevant to my field.
[00:25:21] So the first thing I had to target was, okay, I want to do tech, I actually asked myself,
[00:25:26] do I really want to do that?
[00:25:28] You know, I've been wanting to be a hacker before or, you know, cyber security or a forensic
[00:25:31] expert or whatever, and I didn't really kind of know it.
[00:25:35] So I thought, oh, I want to be an educational software developer.
[00:25:37] Guess what?
[00:25:38] You have to know, you have to know how to do web development and applications development
[00:25:41] and react in all of those things.
[00:25:44] At the time, I didn't even know where react was.
[00:25:45] I barely had done, I mean, I recognize a word.
[00:25:49] So this leads into what I want everybody to do here.
[00:25:52] So get, you know, whatever you want to write on, it could be a piece of paper, but more
[00:25:58] it could probably be like, for right now, just making a piece of paper, because you're
[00:26:03] supposed to have a GitHub account by now, but you don't know how to write and mark down.
[00:26:07] But if you want to, you can just go to GitHub and you can go there, you can start writing
[00:26:10] down what I'm about to tell you.
[00:26:13] And this is really simple.
[00:26:14] There's no fancy methodology here.
[00:26:16] All it is is start writing down every single thing you hear about in one word or two or
[00:26:22] so, but no more than five, that describes something.
[00:26:28] So like write down, write down in one or two words, something you think is relevant, okay?
[00:26:42] And this is going to save you man.
[00:26:44] One of the things this does is it helps you avoid the panic of being overwhelmed with
[00:26:50] the information from IT, all of us, all ready today, we have heard about, you know, JSON,
[00:27:00] what parsing is, you know, AI, what's the difference between clawed and chat to BT.
[00:27:05] I mean, if you're a non-technical person, you may never have even heard of these things
[00:27:10] before.
[00:27:11] You know, it's like, it's like a non-cyclist asking me, wait, what?
[00:27:16] You shave your legs?
[00:27:17] Like, yes, because they're not a cyclist.
[00:27:18] They're not around it.
[00:27:19] No, it is a thing.
[00:27:20] I don't do it anymore, by the way.
[00:27:23] But you know, it's just like not being close to it.
[00:27:26] So you may not have even heard these words, you're like, what's a markdown?
[00:27:28] So there, there's three specific examples of things you could write down right now.
[00:27:33] And I'm not saying that you have to know what it is.
[00:27:35] I'm saying you have to write it down so that you can feel better about dismissing it for
[00:27:39] the moment and not panicking because you don't know it.
[00:27:42] This is a method, so this is a method to avoid the panic of being bludded with stuff
[00:27:58] you think you might have to know to get the job you want.
[00:28:07] Okay, so we've talked a lot about going to conventions and reading job fairs and understanding
[00:28:15] the job and what does that job mean and all that involves this like a fire hose of terminology
[00:28:23] that you're going to be overwhelmed with.
[00:28:27] And the way to manage that is to just write it down.
[00:28:30] Like, take a notebook with you.
[00:28:31] I did.
[00:28:32] We had a little analog notebook and I would just write down the terms in it.
[00:28:38] And I came up to it upon this out of survival because I was like, okay, no more.
[00:28:42] It's like, okay, Jason.
[00:28:43] Jason parts.
[00:28:44] Okay.
[00:28:45] What about this?
[00:28:46] Okay.
[00:28:47] So I would hear an acronym and I would write it down.
[00:28:49] I would just put it down and then I would carry that wherever I went.
[00:28:52] And he meet up.
[00:28:53] I went.
[00:28:54] Linux archer.
[00:28:55] What's that?
[00:28:56] What's rust?
[00:28:57] Why would I need rust?
[00:28:58] What's go?
[00:28:59] Is that a language?
[00:29:00] Python?
[00:29:01] That's a pretty big list of these things right here.
[00:29:05] Yeah.
[00:29:06] And we're going to we're going to keep building a list of these things as we go.
[00:29:10] A lot of things, right?
[00:29:12] This particular list of things is commands you need to learn just to know basic Linux.
[00:29:20] So there's a number of things.
[00:29:21] I don't want you to get overwhelmed, right?
[00:29:23] But you're going to you're getting it's I'm not even talking about the commands I'm talking
[00:29:27] about just the general concepts like like Jason, like a systems development engineer,
[00:29:32] like development operations.
[00:29:33] What is that?
[00:29:34] What is Kubernetes?
[00:29:35] So just just capture it.
[00:29:37] Just capture those words and write them down.
[00:29:41] That's the first step.
[00:29:42] So write down the words all the words to something that's relevant.
[00:29:45] And the second thing is to go back and to make a two columns, just two columns of all
[00:29:54] those words, right, and you can move them around if you want them and ever, but you just
[00:29:58] really need two columns.
[00:30:00] And the first column.
[00:30:02] So so create two columns next to the words columns.
[00:30:11] How come I can't spell columns columns?
[00:30:15] Is that how you spell column?
[00:30:18] Okay, next to the words, okay.
[00:30:24] And the first column is thank you.
[00:30:27] The first column is, you know, importance or relevance, whatever you want to call it.
[00:30:38] And the second it's inse, right?
[00:30:42] Can I cannot spell, and I call myself a writer, I know, right?
[00:30:49] I've never been able to spell it since I was a kid.
[00:30:55] My skill is in pronunciation and phonetics more than it is that stuff anyway.
[00:31:00] So relevance and current.
[00:31:08] So you can make the person's relevance and current, and we're going to talk about that.
[00:31:13] So, and then the third thing is research, you do this after the fact, okay?
[00:31:21] So these things are not always happening at the same time.
[00:31:25] So the thing that's happening all the time is you're getting new terms and you're going
[00:31:29] to your column and you're writing the new terms in this exceedingly large list of things
[00:31:34] that you need to learn, okay?
[00:31:35] But there's a point to that, eventually you're going to be xing out things that are irrelevant,
[00:31:40] okay?
[00:31:41] But yeah, I have a colon spell, I just use it twice.
[00:31:46] So which is by the way, you know, Z equals, that will give you this, that's the same thing.
[00:31:52] So then you want to do, eventually you want to come back to your, to your little book
[00:31:58] or your little list, and you know, when you're relaxing, you know, drinking coffee or something,
[00:32:05] having a good time, and you want to go back and you want to do the research for your job.
[00:32:10] And so I'm actually going to come back, I want to show you this again.
[00:32:14] This is why the order is so important that I have the items that you're doing.
[00:32:19] If you do them out of order, it won't make sense, okay?
[00:32:23] Because, let's see, overview, ah, I can't remember my own thing, here we go.
[00:32:33] If you don't, if you haven't already started to discover the jobs and companies that, you
[00:32:37] know, and read about yourself and what you like to do, then you can't do this part.
[00:32:43] This is why I didn't talk about it till today.
[00:32:45] So you want to discover your ideal job and your companies that need it, okay?
[00:32:51] So, so, as you do this, this, this is a thing, learn what the ideal job requires.
[00:32:58] So you're going to meetups, you're collecting all kinds of knowledge, you don't really
[00:33:01] don't have any idea about what you want to do.
[00:33:04] And you're starting to write a whole bunch of stuff down, right?
[00:33:07] And then when you're in a quiet time, you go back and you do the research to find out
[00:33:12] what that is.
[00:33:13] So you usually leverage your AI, this is a great time to leverage AI, because you can
[00:33:18] now ask the AI really quickly to give you a summary of the thing that's in the column.
[00:33:24] So like, if you were to see JSON, J-S-O-N, and maybe you would say J-S-O-N instead of
[00:33:29] J-S-O-N, I did a whole video someplace about how to pronounce these terms because you can
[00:33:35] sound like an idiot if you say the V instead of the I, for example, which I have a short
[00:33:40] about, and so that's how you can go about doing it.
[00:33:48] Anyway, so yeah, okay, so a couple things are fine.
[00:33:57] So go ahead and write these things down, write the relevance thing, write the research, and
[00:34:01] then go back when you're normally in a good place and do the relevance research to find
[00:34:06] out how relevant research, what the thing is, in order to define a sentence, and if you
[00:34:20] want to, you can write that down, but you don't have to.
[00:34:24] You just need to know what the thing is enough to talk about it, but more importantly than
[00:34:28] knowing what it is and being able to describe it in one sentence, which is a level one, then
[00:34:34] the other thing you want to be able to do is know how relevant it is to the type of activity
[00:34:39] you want to do, okay?
[00:34:42] So that doesn't necessarily mean the specific job, although that's the best.
[00:34:46] The best thing is for you to always already know one to five jobs that you're interested
[00:34:50] in so that when you give this thing a relevance score, you can see how relevant it is.
[00:34:58] Make management, for example, PM, a certificate in this or that, these little one item things
[00:35:04] are not, one line thing are going to be ranked, and you're going to say how relevant is this
[00:35:09] for me?
[00:35:11] So let me give you a specific example.
[00:35:13] In my case, JSON was very relevant.
[00:35:17] In fact, JSON was so relevant that if I were to give it a score between one and five, it
[00:35:23] would have been a five, but in my current job as a low level systems debugger and Seabcoder,
[00:35:32] it wasn't relevant at all.
[00:35:35] It was like maybe a one, less than a one.
[00:35:40] And so you're going to have to come up with that relevant score.
[00:35:43] So that's the first column, okay?
[00:35:45] And then the second score, the current score, in order to define an sentence and then give
[00:35:57] each item a relevance score based on what you want based on what you want.
[00:36:09] And that doesn't necessarily have to mean the job, you may not know what job you want.
[00:36:13] Maybe when you find structure data, you're like, "Oh my God, I really want to work with
[00:36:16] this."
[00:36:17] Right?
[00:36:18] So it's really relevant to you.
[00:36:19] Maybe you really want to write Russ, and people slam me all the time for hitting on Russ,
[00:36:24] but I'm going to tell you a story about this.
[00:36:26] The guy that introduced to me in the rest of the first time was a psychology major couldn't
[00:36:28] get a job.
[00:36:29] And he came to me, he was with me for a year and a half, and he eventually got a $100,000
[00:36:33] starting his salary job, but coding can go, and Russ, and he taught himself Russ, he was
[00:36:38] all about Russ, he was like, "Oh my God, it's so cool, blah, blah, blah."
[00:36:40] I'm like, "Yeah, it is cool."
[00:36:41] And I started coding in Russ, that was when I read my famous infamous Russ video, because
[00:36:45] I was like, "This is not doing anything that I want."
[00:36:48] And I was like, "Well, that's cool for him."
[00:36:49] And he came to me, and he said, "I can't find any jobs in Russ."
[00:36:52] I said, "They're all a Germany or something."
[00:36:54] And I was like, "Yeah, you can move to Germany if you really want to do it.
[00:36:57] How important is it to you if you're coding in Russ?"
[00:36:59] He goes, "Well, I really like it."
[00:37:00] I said, "Give it some thought."
[00:37:01] And I wasn't anti- Russ, I was anti-me coding Russ because he didn't want it because it wasn't
[00:37:06] relevant to me, okay?
[00:37:08] And that's really, again, this is why this is so important, and this is very much a mentoring
[00:37:12] approach to all of this stuff, because I would be sitting in front of you asking you the
[00:37:17] tough, socratic questions, "What do you want to do?
[00:37:20] Do you want to do Russ?
[00:37:21] I love Russ so much.
[00:37:22] Oh my God, I want to code it all the time."
[00:37:23] I was like, "That's fine for you.
[00:37:24] I don't like that, but it's fine for you.
[00:37:26] You do you."
[00:37:27] That means if you can't find a job in it, go take some esoteric, weird job until it
[00:37:31] becomes popular.
[00:37:33] He came to me the next week or so and said, "There's tons of jobs in Go and I know you
[00:37:39] taught us Go."
[00:37:40] And I'm like, "Yeah, I know.
[00:37:41] That's why I like it because there's lots of jobs in it and it's super easy and it's
[00:37:44] just emerging and not how many people know it and you can walk into really good salaries."
[00:37:48] And he's like, "I should probably let him go and get the job first."
[00:37:53] I'm like, "I would if I were you, but this is you.
[00:37:56] You do you."
[00:37:57] He learned Go.
[00:37:58] He'd already known Go.
[00:37:59] He wrote a couple applications ago, he wrote an automatic, like a static site generator
[00:38:03] ago or something, I can't remember, and then he met somebody at a Linux meetup who was
[00:38:09] doing Go development.
[00:38:10] It was a database.
[00:38:11] It was a time-based database system.
[00:38:13] You'd know the name and he met him and he found out he was a Go coder and he was like,
[00:38:18] "Hey, you should trap our internship."
[00:38:20] So he got the internship and then he got the job and they wrote a big glowing review to
[00:38:25] me saying, "Oh my God, he held his own with the best from the best colleges across the
[00:38:28] country and send us more."
[00:38:33] So he, because he had learned Go and he learned Go enough to know that it was much, much more
[00:38:39] relevant to getting a job and getting a job was relevant to him.
[00:38:44] Therefore, it became a high relevance score for him, even though Russ had a super high
[00:38:49] priority for him as well as a person because he loved it, he really loved it.
[00:38:54] So when you give each item as easy as a relevant score, think about what you want and also
[00:39:01] in terms of like, "Well, what are your goals?
[00:39:02] Are your goals to get a job or are you already a priority?
[00:39:04] You don't have to get a job.
[00:39:05] You just want to do things that are fun."
[00:39:07] Then maybe that's not what this boost is about, this boost is by getting a tech job.
[00:39:11] But if that's you, if that's you, you probably don't even doing a skill stack exercise like
[00:39:14] this.
[00:39:15] You're just going with the flow and doing whatever the fuck you want and that's totally fine.
[00:39:21] But for the rest of you, we need to really focus on learning the right things.
[00:39:24] This is essential.
[00:39:25] This is essential because you might end up learning the wrong things and writing a purl
[00:39:29] parts for JSON instead of reading JSON not parts like I did.
[00:39:32] Don't be me, okay?
[00:39:34] Know what you need to learn and know what you don't know and what you do know.
[00:39:38] That's the purpose of this.
[00:39:40] So give each item a relevant score based on what you want.
[00:39:43] And then the next one is do a self-assessment, do a self-assessment, possibly with the help
[00:39:56] of another, help of mentor or somebody in the industry.
[00:40:01] We're not talking about a graded test here.
[00:40:04] We're talking about coming up with a realistic feel for how well you have mastered that item.
[00:40:12] Do a self-assessment to come up with a score with a current score, we'll say, and that's
[00:40:25] your current level.
[00:40:27] Now that column, that third column is the most important column because that's a column that
[00:40:32] says where you are compared to how relevant the thing is and how much you need to learn
[00:40:39] it, okay?
[00:40:41] And that relevant score is somewhat correlated, let me get to the scoring.
[00:40:46] So give each item a relevant score based on what you want, okay.
[00:40:50] So how do we do scoring?
[00:40:52] So the scoring is based on a semi-proprietary ranking scale that I happen to know about
[00:41:00] from interviewing with Google, which they told me not to tell them the score, the ranking
[00:41:05] score, but I don't care, I'm going to tell you anyway.
[00:41:08] I've been like, why would you be so secretive about your scoring system, right?
[00:41:13] So there's a story here, okay?
[00:41:14] So I interviewed with Google and one of the things they had me do was something similar
[00:41:18] to this.
[00:41:19] It wasn't the exact same thing, but when they asked me during the interview about different
[00:41:23] things, they would ask me to score myself on certain technologies.
[00:41:28] They basically wanted to do the same thing to assess my skills act and decide if I was
[00:41:33] going to be a good fit for the company.
[00:41:35] And they had this similar system, it wasn't about columns and all that, but the scoring
[00:41:41] is a part I want to talk to you about.
[00:41:43] It's really nothing proprietary about it.
[00:41:44] It's like are you a one or a 10, right?
[00:41:47] The difference was is that at Google, a 10 means you made the thing.
[00:41:51] That means you invented Perl, your Larry Wall.
[00:41:54] That means you invented Parth Python, you're going to make a real something.
[00:41:59] You invented microservices, your Visos, if you give them credit.
[00:42:06] You didn't say that you were a 10 on all these other things, oh, I'm a 10 on that, I'm a 10.
[00:42:11] And then nine was, so 10 is I made it, I invented it.
[00:42:17] So I have a 10 on Bonzai, even though I've forgotten so much that Shite's probably more
[00:42:21] of a 10 than me, because I don't remember it, even though I made it.
[00:42:27] So nine is I am a world authority on it.
[00:42:34] So that means you're the one that they call to give presentations on it.
[00:42:39] So nine is I am regional, regional authority.
[00:42:46] These people tend to be authors, a person who's an author is not an authority, by the way.
[00:42:52] There are a lot of people who write books who don't know crap.
[00:42:55] And I know that firsthand from experiences I shall not share.
[00:43:01] And so actually, let's do actual numbers here, how about that?
[00:43:05] But the numbers are backwards.
[00:43:06] Can Markdown do backwards numbers?
[00:43:09] I don't think it can.
[00:43:11] So we'll reorder them later.
[00:43:13] We'll reorder them later, yeah, we'll do a sort and it will maybe reorder them.
[00:43:19] Okay, I'm going to do a lexical graphical sort and it will fail unless I put a zero.
[00:43:25] This is very technology-ish.
[00:43:27] Okay, so seven mean, the bottom line, you're not going to do anything higher than a five.
[00:43:35] Seven is like seven, let's just just do it, seven, six, five, four, three, two, and one,
[00:43:47] which is where most of us are.
[00:43:49] So one means I have heard the acronym.
[00:43:54] I have heard of the term.
[00:43:56] That means you can't define the term, I can define the term.
[00:44:06] I can define the term.
[00:44:07] In other words, you can talk about what it is, even though you don't really know what
[00:44:10] it is, right?
[00:44:12] It's like I understand the foundations of it.
[00:44:21] And I understand the term foundationally and have experimented with it.
[00:44:32] So for me, that would be Claude.
[00:44:35] For me, I'm a three on Claude right now, okay?
[00:44:38] So if I were going to make my own skill stack, I would like Claude, okay.
[00:44:41] I mean, Chad GBT, I'm great, I'm a five.
[00:44:45] I've done everything that you do with Chad GBT.
[00:44:48] So a five means I can use it professionally with confidence, okay?
[00:44:58] That means that you know that you know enough to go figure it out or whatever.
[00:45:04] So I would say right now I'm a three on Claude, probably, if I'm honest, I'm more of a two
[00:45:11] on Claude because I can tell you what Claude is and stuff, but I've never really used
[00:45:16] it to do a serious project but have never really worked with substantially, all right?
[00:45:27] And you know, I've heard of the term and this is, so what this means is a very first score
[00:45:34] that you gave yourself on a new term or a new acronym or something you heard in a convention
[00:45:39] is a one because you just heard the term, you at least know it exists, thank God.
[00:45:44] Before that you were a zero, you didn't even know it existed before you even heard of it
[00:45:47] until you were watching Mr. Rob and he said something, right?
[00:45:51] So you write the term down and now you're at least a one and after you go define the
[00:45:56] term to decide whether it's, you know, what it really is and to get a sense of like how
[00:46:02] relevant is this going to be to what I need to learn, then you're kind of a two on that,
[00:46:07] right?
[00:46:08] It's the definition of the term and that's how relevant it is, right?
[00:46:13] In fact, I'm going to, as of today, I'm going to throw a new column in here.
[00:46:18] It's like where you are currently and where are you, what's your target, okay?
[00:46:25] And I'm going to throw a third column in here.
[00:46:27] In the past I have mixed the relevance and the relevance and target values but I've just
[00:46:33] made a decision that we're going to separate those out, okay?
[00:46:36] So the relevance number is kind of new but it's like, okay, this is how relevant it is
[00:46:42] to me but the relevance number is going to change over time too and I don't want that
[00:46:46] to mess up your skill knowledge because the relevance number should probably change depending
[00:46:51] on the job, right?
[00:46:52] So if we were to write this as a piece of code, which would be really cool, that's why I made
[00:46:56] a company named Skillstack, I started writing an app to do this.
[00:46:59] I started writing a phone app, somebody needs to make this phone app, okay?
[00:47:04] Somebody make a Skillstack phone app and call a Skillstack and give me credit.
[00:47:09] I would love to see somebody do this because it's such an easy app to make.
[00:47:13] It would be such an easy app to make and then what you could do is you take all of those
[00:47:17] things.
[00:47:18] In fact, at one point, the business model for this by the way, I'll just, let me rabbit
[00:47:22] hole this a little bit.
[00:47:24] So the business model for this as an application is to sell it to enterprise.
[00:47:29] This is a million dollar idea, a million dollar idea.
[00:47:32] I'm telling you right now, a million dollar idea, somebody's going to do it.
[00:47:36] What you do is you create a centralized database of everybody's skill stacks in the world.
[00:47:41] All the people that are currently employed or are trying to get jobs and people that
[00:47:45] are trying to break into the industry and you take all of their data, you take all of
[00:47:50] that data and you sell the shit out of that data to enterprise, do you want to know what
[00:47:57] the single biggest thing an HDR department wants to know, what technologies are people
[00:48:03] learning, what are they prioritizing and how are they relevant.
[00:48:08] If you take the product of the collective intelligence and research of the entire existing
[00:48:15] and potential work I force and IT and you put that into a database that's dynamic, that
[00:48:21] actually has data, fresh data about what people know, what they need to know and where they're
[00:48:27] going, that data, LinkedIn is trying to sell this data all the time.
[00:48:31] They come out with a big fancy report, Gartner group, they make billions of dollars selling
[00:48:37] high-end information about these things and trends in the industry to big business.
[00:48:43] You take this massive application with all this data collected from people who are volunteering
[00:48:48] their own data and their assessment of what things are relevant and valuable and where
[00:48:52] the jobs are and who's not pushing what and then you sell that enterprise and you fucking
[00:48:55] make a killing.
[00:48:57] You pitch that idea, I'm telling you, pitch that idea to a, pitch that idea to an incubator,
[00:49:05] I guarantee you, they will fund you for a million of series A, guarantee you if you
[00:49:11] could sell this idea and I wanted to sell this idea but now I'm like I just want people
[00:49:17] to learn.
[00:49:20] Anyway, so this is kind of the idea, so you would say I understand the term foundation
[00:49:28] land and have experimented with it, this means I can work with the thing if I have to but
[00:49:40] am not confident and five is I can use it professionally with confidence and am considered
[00:49:51] an SME.
[00:49:52] There's something to put in your list, what is SME?
[00:49:55] Today you're a one on SME, I'm going to make you a two on SME.
[00:49:59] A two on SME, it stands for a subject matter expert, it's a person who knows about a thing
[00:50:05] enough to be called into meetings away from the actual work so that they can become a
[00:50:09] manager or an IT architect eventually.
[00:50:12] You got to be careful about this, there's a side story here, if you're really good at
[00:50:17] what you do as an engineer and you want to stay at hands on engineer, you got to be careful
[00:50:22] because the manager suck and the SME suck will get you.
[00:50:26] What it does is it will pull you in, I got to make a whole video about this but it will
[00:50:29] pull you in, they'll pull you into meetings, more and more meetings because you're a knowledgeable
[00:50:33] representative and they're like oh my god, this person is like got all the right answers
[00:50:36] every time.
[00:50:37] We want to have them in every meeting.
[00:50:38] You're not doing when you're in meetings, using the technology.
[00:50:42] Guess what some other intern is doing, using the technology and getting better and they're
[00:50:46] going to be the next SME and you're going to be potentially the next architect, maybe
[00:50:50] not, maybe you get fired.
[00:50:54] I'm just telling you, be careful of this, you have to fight at your whole career.
[00:50:57] I am in my upper 50s and I'm telling you, you've got to fight it.
[00:51:02] You either have to decide, I want to go for the big ass distinguished engineer money and
[00:51:05] let go and get my own pocket engineer and put that pocket engineer and have them on speed
[00:51:11] dial all the time to keep me relevant.
[00:51:14] So I sound like I'm still an SME or I have to push back on all that money and administrative
[00:51:20] hassle and all that crap and keep your hands dirty down in the code and be the engineer.
[00:51:29] It's a really big issue in the tech life.
[00:51:32] So number six is, you know, I actually, I think six is an SME.
[00:51:40] I am locally considered the SME, where my team or team, okay, and see, I am an SME for the
[00:52:00] enterprise or local community.
[00:52:06] And then it's like I'm a regional authority, I'm a world authority, and then, you know,
[00:52:09] I created the thing, which could be agile, which is just a methodology, but you'd be
[00:52:17] surprised how big a big a thing that is with ownership of that whole idea.
[00:52:22] I'm actually going to run this through the sort command and then reorganize it.
[00:52:27] It's pretty cool, right, so we'll put scoring here.
[00:52:32] And that was a lot of talk and we're already at 12 o'clock, but I really think this is
[00:52:38] important and I want you to spend a lot of time on this as we go.
[00:52:42] And so the rest of today, I'm going to go ahead and take a break since the hour marker
[00:52:46] has come.
[00:52:49] How do you get the overall score from the three columns?
[00:52:52] Okay, so let me restate that, I actually kind of ended early.
[00:52:59] So the three columns, so the current, so the relevance is, you know, you're going to change
[00:53:04] it's kind of fluid depending on what job you want, which is where if you made this into
[00:53:07] an app, you could actually change the target job and have it change the relevant score.
[00:53:12] You could, the current value and the target value would stay constant depending on what
[00:53:17] you put in there, but the relevance, the relevant score would change depending on the job.
[00:53:23] So Jason would have almost a zero relevant score with regard to hacking, I mean, sorry,
[00:53:29] with regards to, you know, low level debugging or whatever, but it would have like a five
[00:53:33] or a 10.
[00:53:34] In fact, you could, you could probably say scoring current and relevant current and target skill
[00:53:47] level, mastery level.
[00:53:54] So this score is for current and target relevance is, we should probably, relevance is interesting.
[00:54:02] We could probably use, relevance is a zero to 10.
[00:54:05] We're kind of inventing stuff on the fly here because I've never had a relevant score before.
[00:54:08] It kind of came out of this conversation.
[00:54:12] So let's do that.
[00:54:13] Let's do relevance.
[00:54:14] I don't know what the relevance score is.
[00:54:17] It'd be something, just give it every score.
[00:54:21] But the main reason you want to start doing this right away is you want to, you want to
[00:54:26] go through the relevance score and the ones that have the highest relevance, you're going
[00:54:32] to want to make sure that your current and target are the closest.
[00:54:37] And so what you get out of this is a report.
[00:54:39] You get a report of what you should be working on, okay?
[00:54:44] And that's why we did this, to get the job.
[00:54:50] This will help you identify exactly what to focus on.
[00:54:59] So you waste the least amount of time and energy and money, all right?
[00:55:09] So if somebody, let me give you a specific example.
[00:55:15] So if somebody comes at you, you're in a stream and the streamer says, "Oh my God, yeah,
[00:55:21] you got to learn JavaScript.
[00:55:22] You're not going to learn JavaScript.
[00:55:23] You can't make it in tech."
[00:55:25] That's not a responsible thing to say because it doesn't help the person at all.
[00:55:32] It doesn't, you know, people are like, "Oh, you're using cloud.
[00:55:34] You suck.
[00:55:35] Why are you using cloud?
[00:55:36] Why are you using chat?
[00:55:37] My job is mostly as an educator and as a writer and as a linguist.
[00:55:41] Did you even bother to ask?"
[00:55:44] So the biggest problem I have, and I'm just, I get around about this, the biggest problem
[00:55:48] I have with education and influencers and all of these people is they don't care about
[00:55:53] you.
[00:55:54] They care about getting clicks and influence.
[00:55:57] That's it.
[00:55:58] Their way or the highway.
[00:55:59] If somebody comes at you and tells you what to do, what to use without asking you first,
[00:56:07] what do you want to do, what are your priorities?
[00:56:12] They're not acting in your best interest.
[00:56:15] There's some other motivation, you know, it's like, "Oh my God, you got to learn me
[00:56:20] eye."
[00:56:21] And that includes me.
[00:56:22] That includes me.
[00:56:23] I have done this.
[00:56:24] I have done this.
[00:56:25] I am guilty.
[00:56:26] Everybody does this.
[00:56:27] The thing that what we know is the thing that everybody should know.
[00:56:31] I think everybody should learn the term of it and I have a lot of solid reasons that
[00:56:34] I can say for that, but you might disagree.
[00:56:37] And the reason you disagree is because your target skills based on where you want to go
[00:56:43] is different.
[00:56:44] Maybe as I said, if you want to be a recruiter or something, do you need to learn Markdown?
[00:56:49] If you do, it's probably not a level five priority.
[00:56:52] It's probably more of a level three priority, right?
[00:56:56] Because you're going to be asked to do documentation of your project manager.
[00:56:59] So I have this exact problem.
[00:57:01] We have a project manager on our team who does not know Markdown at all.
[00:57:04] She's like a one on Markdown.
[00:57:06] In fact, not even that.
[00:57:07] I don't think she would recognize the name of it.
[00:57:11] And she can't do, I mean, I could be misstating this.
[00:57:18] I don't think that she can do it.
[00:57:20] She's willing to learn, but I think she's barely learned the term Markdown on her team.
[00:57:24] To ask her to learn Git in order to update documentation doesn't make any sense, right?
[00:57:30] So for her Git, she's maybe a two, maybe a three barely, but does she need to be a five
[00:57:37] on Git?
[00:57:38] No, I do.
[00:57:39] I definitely need to be a five on Git.
[00:57:43] So the goal of this is to get not necessarily a score.
[00:57:48] If you were to score this, the way to score it would be, what is the difference between
[00:57:53] current and target times the relevance and then add that together?
[00:57:58] That would be the score.
[00:58:00] And this is the first time in history you saw it here first, how to score.
[00:58:05] Okay, I've never done this before.
[00:58:07] This is all kind of coming about because we kind of added relevance, but I actually think
[00:58:12] we have a way to score this now and somebody should make this app.
[00:58:16] The way to score it is relevance times, should we write it in computer code?
[00:58:26] Let's do that, gxt, relevance times target minus, so we do the sum of all.
[00:58:42] So the sum of all line items, and it would be relevance times target minus current.
[00:58:55] Okay, now this score is going to change a lot because, and I don't want people to obsess
[00:58:59] about the scoring, the score is going to change a lot because you're going to discover new
[00:59:03] things and then you have to put, well, how big of a weight is this on the score, right?
[00:59:08] So now you kind of have a weighting situation going on, like, I don't want people like,
[00:59:12] oh my God, I'm like so stressed about the thing.
[00:59:15] The main reason for this is just to write those terms down.
[00:59:17] So let's say you write JSON down, right?
[00:59:18] Well, then do you write JSON parsing or do you write JSON thing, do they all get equally
[00:59:22] weighted and blah, blah, blah, don't get too carried away.
[00:59:25] This is just to get you in the habit of assessing something that you hear about.
[00:59:31] It's really for two reasons.
[00:59:32] One, to remove the panic above all, and two, to help you start assessing the things that
[00:59:37] you need to learn about and kind of think about how much you need to learn them or not,
[00:59:41] and get you going through that regular process because that is how you become a prescient
[00:59:47] technology professional, which is going to take me to the next topic and a PTP.
[00:59:57] This is a term I invented to mean, so what does prescient mean?
[01:00:02] Do you guys remember?
[01:00:09] What does prescience mean?
[01:00:10] Let's go look.
[01:00:11] Sorted, relevant.
[01:00:12] Yes.
[01:00:13] It would be sorted by, I guess you could sort it by skill.
[01:00:17] Yeah.
[01:00:18] I mean, you guys have fun with it.
[01:00:20] Make a little bit of code for it.
[01:00:22] Somebody could write a little script for it, but yeah.
[01:00:27] By the way, if you're going to do that, the metadata field, the metadata field for it
[01:00:32] would be, wait, you would put the name, but then you would put the definition, you would
[01:00:42] put the description of the definition, and if that gets spilled, that automatically makes
[01:00:46] the person a two.
[01:00:49] So if they copy this stuff into that field, it's really important that you put the definition
[01:00:53] there because one person's DevOps definition is going to be radically different than another
[01:00:59] person.
[01:01:00] Anyway, also sellable content.
[01:01:03] If you force everybody to define DevOps before they can even get a score and they put it
[01:01:08] in their own list and you take a million data points of individuals who define DevOps differently,
[01:01:14] you can actually create an AI-generated summation of how most people define the term.
[01:01:20] I mean, it's all, it's like countless opportunities for profit if you make that.
[01:01:26] Please make it.
[01:01:27] I would love credit, but I don't need credit.
[01:01:31] So yeah, but make make sure you do that part of it.
[01:01:35] Anyway, so what is a PTP?
[01:01:37] So what is an actual Prussian technologist?
[01:01:44] So this is like see the wave coming, see the wave coming and paddle at the right time to
[01:01:54] catch it.
[01:01:57] I mean, that's really what it's about.
[01:01:58] So think of that.
[01:01:59] Being a Prussian technology professional is the same as being a Prussian surfer.
[01:02:04] A Prussian surfer sees the wave.
[01:02:06] They have a feel for the ocean.
[01:02:07] They know the tides.
[01:02:09] They know when the waves are going to hit, not only when to be at the beach, but they
[01:02:13] know when they're out on the, and they're out on the break, they know when to start paddling
[01:02:18] at the right time so that they can hit the crest just perfectly and catch the wave.
[01:02:23] If they don't do it right, they miss the wave and somebody else catches it.
[01:02:27] That's what being a Prussian technology professional is.
[01:02:29] I have made a very good career out of this and part of the reason that this, I was good
[01:02:38] at this for so many years until I failed miserably as I shared is because I was actively doing
[01:02:46] the things that I documented with you in the skill stack method all the time.
[01:02:51] I was constantly doing these things.
[01:02:53] It was just all happening in my head.
[01:02:55] I was constantly like assessing kind of like, you know, a Prussian stock market broker would
[01:03:00] be.
[01:03:01] They are seeing when things are going to break, when they're going to be really big, what's
[01:03:04] going to be big, and they're betting on it.
[01:03:06] The game of technology is a betting game.
[01:03:09] You are gambling on technologies all the time.
[01:03:13] So we are all constantly making choices about what technology is going to be big because
[01:03:22] we do not have enough mind share or mental energy to keep up with all the technologies
[01:03:29] that are out there.
[01:03:30] This is why the skill stack method is so key because it or something like it.
[01:03:37] You've got to be constantly assessing, it's got to be second nature to you rather than
[01:03:41] being overwhelmed by writing it all down and making a program to do it.
[01:03:44] You're going to be losing time when you should have been reading about the latest release
[01:03:47] of whatever tech came out.
[01:03:49] You should be reading go release notes, for example, every time they do them, every single
[01:03:53] thing.
[01:03:54] I cannot tell you how many times that I have come back to the team with say, hey, we've
[01:03:58] got to do this thing and we have this new thing because go just release this thing and like,
[01:04:01] oh man, that's really cool.
[01:04:02] Thanks because nobody else bothered to read the release notes because they didn't make
[01:04:06] time for it because they were too busy doing whatever else.
[01:04:09] The point of it is you got it.
[01:04:11] But that's important.
[01:04:12] You can't read the release notes on every single language on everything that comes out
[01:04:16] all the time.
[01:04:17] Some people do, especially if you're breaking into the industry, or maybe it's your job.
[01:04:22] Maybe your job is as an architect or a consultant and you're giving direction to everybody.
[01:04:25] So it's your job to do those things.
[01:04:27] But if you are working in a particular field, for example, by doing this, I found out that
[01:04:32] Bitnami was pulling the plug on all of their Kubernetes apps.
[01:04:37] This is a big, big deal because most of it, we had three huge applications, Harbor and
[01:04:44] Grafana, and I can't remember the other one, that depended on this Bitnami chart that was
[01:04:50] going away.
[01:04:51] They were taking it away.
[01:04:53] They were archiving it, never supporting it again.
[01:04:55] And the only reason I knew about that was because I was following that because I needed
[01:05:00] to follow that because it was a relevant part of my job every day and I was like, damn.
[01:05:04] And so I brought to the team this like sky is falling situation is like they're getting
[01:05:09] rid of this software.
[01:05:10] This is our production code is now dependent on defunct software.
[01:05:13] We need to rewrite this.
[01:05:15] And I pushed hard and I rewrote our entire Harbor case app and from scratch to not use
[01:05:20] the Bitnami chart and to use our own charts and to use the official Harbor chart.
[01:05:26] And I'm using technology that you won't know.
[01:05:28] The point is that because I was following it, I was able to bring it to the table and address
[01:05:35] it before it became an emergency.
[01:05:37] It could have been that they got rid of it and I would go to upload the source or install
[01:05:42] it and we would have gotten really burned because it didn't exist anymore.
[01:05:46] And that would have been a much bad worst thing.
[01:05:49] So the level of impressions that you have to have really depends on your position.
[01:05:55] If you are a CTO, you are paid for that impressions.
[01:05:59] You are paid to make big, big bets on technology like AI, like a specific brand of AI and your
[01:06:08] entire company is going to depend on it.
[01:06:11] You're making existential choices for the company and that's why you make the big, big,
[01:06:16] big bucks.
[01:06:17] And if you fail, you end up out immediately because at that level, you're costing companies
[01:06:22] billions of dollars.
[01:06:24] I saved my company $10 million specifically last year.
[01:06:27] That's a very direct number that was reported in the earnings report and it was divided
[01:06:30] by the number of teams that contributed.
[01:06:32] I'm very proud of that.
[01:06:34] But when you're costing a company billions of dollars by a bad decision, like, oh, I
[01:06:38] don't know, forcing your entire company to write everything in AI and rust, there's a
[01:06:45] really, really great blog from an executive senior project manager who talks about how
[01:06:51] rust almost killed his entire team and region and department.
[01:06:56] It's really, really well done.
[01:06:59] And I just absolutely love it because the considerations when you're picking a technology are not
[01:07:04] always how cool or sexy the technology is, it's other things like how fast can my team
[01:07:10] turn projects around, how many of my team are going to want to kill themselves literally
[01:07:15] when they can't figure it out because they think they're stupid engineers.
[01:07:18] That's part of the story and how all these other factors that are related in picking
[01:07:23] a technology and the better you get at gambling on the technology and picking the winners,
[01:07:28] the better you'll be as a technologist.
[01:07:32] And it goes without saying that that is a fundamental part of the lifestyle of a technologist
[01:07:36] is betting on the right tech.
[01:07:39] And you'll see us fighting about it and talking about it constantly on Twitch and YouTube
[01:07:44] because we're all trying to talk to each other about what our bets are and think our bets
[01:07:49] are better than somebody else.
[01:07:50] It's a big fantasy football game except for the stakes are a lot higher.
[01:07:55] The stakes are your job, right?
[01:07:57] Like FinTech, all these people that have been on FinTech and with all their stuff into it
[01:08:01] and like literally their money and their time and they took on FinTech jobs and they gave
[01:08:06] up their college professorships and mathematics.
[01:08:09] And now they're all unemployed and I'm laughing it's a horrible thing but I'm laughing because
[01:08:17] I knew it was going to happen and I was like, "Okay, go for it.
[01:08:22] Who do you?
[01:08:27] Where did I manage skills stack?"
[01:08:30] I actually want to rename that one, manage docs, manage skills stack, the docs/skilstack.md
[01:08:42] docs/skilstack.md.
[01:08:43] All right, so here's the manager skills stack and then we have managed pressure technology
[01:08:48] professional, we'll call this, oh no, is that already a pressure?
[01:08:52] All right, so you guys know what a pressure, I don't need to beat the beat this to death.
[01:08:56] You know what it means, right?
[01:08:57] It just means betting on the right tech because you only have so much to learn and if you're
[01:09:02] lucky, they'll give you a few hours on a Friday to clock out and learn and keep up with the
[01:09:08] technology but usually you don't have this and that brings me to another thing that you're
[01:09:13] going to have to learn how to do and that is something called just-in-time learning.
[01:09:20] So we did talk about this a little bit last week, I promise you we're getting to some
[01:09:24] of the specific technologies that you're going to be using but we've got to get this
[01:09:30] stuff out of the way, so doc, CD Boost, VI Docs, we're going to go to just-in-time learning.
[01:09:46] So this is the style of learning, I'm going to call it JIT learning, but those in JIT
[01:09:53] is actually a term from programming, so just-in-time learning.
[01:10:07] So just-in-time learning is learning immediately the minimum amount you need to do the job.
[01:10:15] So learning the minimum needed to accomplish the immediate task.
[01:10:24] And why is just-in-time learning so relevant and important?
[01:10:28] Because any time spent learning more than is needed is going to number one, delay your
[01:10:37] delivery of other things and number two be forgotten almost immediately.
[01:10:42] So this is actually-here is where AI really comes to the rescue.
[01:10:52] So we're going to talk about the second brain in a bit and knowledge management and how
[01:10:58] to manage your knowledge fast enough that you can retrieve it and how that's been impacted
[01:11:04] by AI, that's coming up today too, but the point of it is that learning the minimum need
[01:11:15] to accomplish the immediate task here is the AI really comes in.
[01:11:18] So a lot of times, I just need to do this one thing.
[01:11:23] And so even if you're going to-you know that, I mean, in the past the JIT process was kind
[01:11:30] of the old school way of doing this was to be, you know, faced with a task, research-you
[01:11:41] sometimes you already know about it, but it was like validate or quickly research how
[01:11:48] to do the task.
[01:11:54] And then execute the task, and seek peer and then seek peer review, I suppose prepare
[01:12:07] the task, seek peer review sometimes sometimes you can't, and then execute the task.
[01:12:18] And this entire method is really the same, but the way the implementation of this procedure
[01:12:29] is different because, you know, validating the research on the task has changed grammatically.
[01:12:35] In fact, you can have AI do all of this for you, but make sure you're seeking peer review
[01:12:40] on it.
[01:12:41] So a lot of people don't know, like for example, if you were to ask me today to write a go routine
[01:12:47] that sends messages back and forth between two concurrent tasks, I couldn't do it.
[01:12:52] I couldn't do it.
[01:12:53] I'd have to go look it all up.
[01:12:54] If you're going to tell me to do bitwise mathematics so that I can have, you know, a single integer
[01:12:58] represent four different potential options in C, I couldn't do it.
[01:13:03] I'd have to look it up.
[01:13:04] I know the concept of it.
[01:13:05] I know where to go to figure it out, but my specific skill on that thing is probably dropped
[01:13:10] to maybe a three or even a two.
[01:13:13] But that's the nature of tech, is that you cannot keep your skill stack constantly fresh.
[01:13:20] But if you know what your primary skills are, those primary skills are going to be changing
[01:13:24] all the time.
[01:13:25] In fact, anytime you see a big disruption in the industry, it's because the skills have
[01:13:31] changed.
[01:13:32] The ability to type quickly and produce amazing code in Neovin or whatever has radically been
[01:13:37] reduced by AI, which does all the typing for you.
[01:13:41] So that went in relevance to a very high thing, specifically typing, for example, to a very
[01:13:46] low thing.
[01:13:47] It's very unimportant now.
[01:13:49] That happened overnight because of the technology innovation.
[01:13:52] You know, how fast you do research to look something up, you know, the method.
[01:13:57] Here's another one.
[01:13:58] Use of W3M or links to do text-based browsing, like I do, like what is Claude?
[01:14:05] This is how I would be really fast at doing research.
[01:14:09] And it will go get Claude.
[01:14:11] This goes through the text-based web browser.
[01:14:12] I can open everything up.
[01:14:14] I want to read it on the web browser.
[01:14:15] I push comma and I can go get to it.
[01:14:17] That entire process of the thing that I just did is completely irrelevant now in AI.
[01:14:23] I can now go over to my AI and say, what is Claude?
[01:14:28] And CatGBT will take on information that's been gleaned from multiple data points as
[01:14:35] opposed to the ones that I can read as fast as possible through my links to W3M text-based
[01:14:39] web browser.
[01:14:41] It can do it much faster than I can, and it can get ready and do it, make it all nice
[01:14:45] and easy to read while I drink my coffee.
[01:14:47] The point is, is that the technique for implementing the skill has changed.
[01:14:52] Therefore, some of the relevant technologies have diminished in importance and others have
[01:14:56] been raised up in importance, such as knowing how to do a basic query on CatGBT.
[01:15:03] I'm saying a lot of things that are pretty obvious, but they're worth staying because
[01:15:08] this is how just-in-time learning works, and just-in-time learning has been fundamentally
[01:15:13] changed by AI.
[01:15:15] You don't need, in the past you'd have to put more things in your brain cache to be
[01:15:20] able to do them, and you don't need that anymore.
[01:15:22] I remember getting paper cuts very seriously.
[01:15:24] I had like three Java books when I was coding at Nike, and I was coding the shopping cart
[01:15:30] software at Nike.com, and I remember getting paper cuts, looking up the Java's function
[01:15:38] signatures and stuff, because I had to get them immediately in order to write the code
[01:15:43] to do the thing.
[01:15:44] There was nowhere else to go, and searching on the internet, I could do it, but it wasn't
[01:15:47] as effective.
[01:15:48] Seriously, I had all of these paper cuts from these $80 books that I had had to own.
[01:15:56] That technique of just-in-time learning died, thank God, I made a deal with my manager to
[01:16:01] buy $3,000 worth of books, and I had a wall pool of colorful and riley books, and my technique
[01:16:06] for just-in-time learning was going to get that book as fast as I could, and I kicked
[01:16:10] ass at that, and nobody else was doing that.
[01:16:13] They didn't have that collection.
[01:16:14] I beat them.
[01:16:15] I beat them because I could do it faster than them, and then the internet came out.
[01:16:20] The earliest adopter probably on the internet, and I was doing the same thing, and I wrote
[01:16:25] my own tools to do searches and stuff like that, and I started to discover links for
[01:16:29] commandlet.
[01:16:30] Now, AI has come out.
[01:16:31] The point is, is that the method of just-in-time learning is going to constantly be changing.
[01:16:36] Just-in-time learning is a big part of the general topic, which is knowledge work.
[01:16:41] That leads us into what is going to be the final thing for today.
[01:16:48] The final thing per day is, we're going to learn how to actually create your own knowledge
[01:16:52] base and manage it and how to edit it without using any kind of text-based browser.
[01:16:59] We will introduce you to some-a couple of different types of editors, and then you can
[01:17:04] start doing the learning way we've talked about.
[01:17:08] I am going to take a break to let my voice stop, and then we will go into-the next thing
[01:17:14] will be the knowledge base that we're talking about.
[01:17:16] In the meantime, if you want something to work on during my break, go ahead and look-go-like-do-your-skill-stack.
[01:17:24] Start building your skill stack.
[01:17:26] If you don't have a github.com address website, go create a GitHub account.
[01:17:32] We're supposed to-you're supposed to already have that done from last week, so go create
[01:17:35] a GitHub account, pick a username that's something that you can live with, and you'll be ready
[01:17:40] for the next part of the-the boost today, the final part.
[01:17:44] All right, I'm going to pause.
[01:17:47] All right, we're back from break, and we're talking about knowledge management.
[01:17:52] What is knowledge management?
[01:17:53] There's a couple of terms here.
[01:17:57] Knowledge management is controlling, capturing, capturing knowledge obtained.
[01:18:12] It's actually multiple things.
[01:18:14] It's like, you know, acquiring the knowledge-we're not talking about skills, and we talked
[01:18:21] about skills knowledge and abilities already.
[01:18:23] Knowledge is like just the general ideas, like the behind the thing.
[01:18:27] It's not skill.
[01:18:28] It's a different thing, but it's required for skill.
[01:18:33] You need to know the steps of a thing, or you need to know what the thing is before you
[01:18:36] can practice doing the thing.
[01:18:38] So acquiring, if I could spell, acquiring knowledge, and then capturing it effectively,
[01:18:49] and then recalling knowledge, recalling quickly, and just in time, you know, just in time.
[01:18:59] So this is where just in time learning comes from.
[01:19:03] And we could actually focus on JIT, I think we did already, right, JIT learning.
[01:19:10] So let's actually go to that.
[01:19:13] Where's the last matter?
[01:19:16] Okay, I'm going to link to this.
[01:19:19] And the reason I'm doing this is because I want you to see I'm actually doing knowledge
[01:19:22] management and capture right now, and this is what I want you to learn how to do.
[01:19:27] Just in time, wait, JIT, if we're lucky, she'll pick it up for me, no, she didn't.
[01:19:38] JIT dash learning, learning dot, okay, so that's now going to be linked.
[01:19:50] So I didn't spell that right, capturing, capturing knowledge effectively, I'm actually going
[01:20:02] to change these to verbs as if they were in a resume, or a job description, recall knowledge
[01:20:14] quickly.
[01:20:15] I go to the saying that Olives is impacted by AI, which is where we're doing, how come
[01:20:21] I cannot spell today?
[01:20:25] All right, so, all right, what does it mean to acquire knowledge?
[01:20:29] Let's talk about that.
[01:20:33] Acquiring knowledge.
[01:20:34] So where do you get it, right?
[01:20:36] You do in the past that meant that you would do, oops, can I do two, or do I have to be
[01:20:47] four?
[01:20:48] I think it does have to be four, acquiring knowledge, right?
[01:20:51] So internet research, the method of acquiring knowledge changes, we just, we kind of concluded
[01:20:57] with that before the break, acquiring knowledge used to be taking the bus to the library and
[01:21:02] getting a dewy disco system out and looking it up.
[01:21:05] Anybody remember that?
[01:21:06] I do.
[01:21:07] And I did that.
[01:21:08] I lived at the library.
[01:21:09] I literally lived at the library.
[01:21:11] I was put at the library after, because it was our internet back then, and we would just
[01:21:16] sit there and do it.
[01:21:17] I mean, you don't want to hear this, but, you know, that was how you do it.
[01:21:21] But these days you do internet research, which can be done from your phone, from anywhere.
[01:21:24] Of course, we have AI, and I'm going to put particularly chat GPT, chat GPT is for generalized
[01:21:34] knowledge, but I'm just going to put AI.
[01:21:38] And that's why it's really important that you pick the right AI, right, I'll put this
[01:21:43] as, but it right, AI for the job, I'm going to, should I capitalize these or no?
[01:21:55] I don't know.
[01:21:56] I guess they're, we use title case, I'm going to use title case, which drives people crazy,
[01:22:02] but whatever.
[01:22:03] All right.
[01:22:04] So internet research right after that, I don't need to tell you anything more than
[01:22:07] that.
[01:22:08] Getting the knowledge is like getting, you know, no, right AI for the job.
[01:22:17] So, you know, cloud for coding, chat GPT for language instruction, et cetera, et cetera.
[01:22:27] Bookshop and Azure.
[01:22:28] Yeah, it could be books, books, and I still go to books for lots of stuff.
[01:22:38] But that books are more or much less than in the tech world, books are mattering less
[01:22:42] and less because any book you buy, people always ask me what book to buy, don't buy
[01:22:47] any books, including mine, if I ever published one, they're almost all books are going to
[01:22:54] immediately be out of date, almost all, not all.
[01:22:59] There's a few books that have fundamentals that remain constant, but you know, you know,
[01:23:08] data structures and algorithms is a C, the arrival book, they're written by what's his
[01:23:11] name.
[01:23:12] That's actually a really solid, good, consumable book, you know, this, those statements are
[01:23:20] at odds with academia, they, they, they make all their money up books, they think books
[01:23:25] are required, they think books are the way to go, as they haven't caught up with the
[01:23:28] times, they don't really care, and because they're all on tenure and they don't give
[01:23:33] a shit.
[01:23:34] Did I say that loud?
[01:23:35] I'm not supposed to talk like that on my stream.
[01:23:38] Anyway, so next we have capture knowledge effectively, so it's true, right?
[01:23:52] Everybody's saying it's true.
[01:23:55] First, yes, the structure is an algorithms book, do I suggest asking later during break,
[01:24:00] I can't remember which one, it's a, I made a recommendation about it online before I'll
[01:24:04] find it for you.
[01:24:05] It's, it's in a Riley look though.
[01:24:07] It's not the, it's not the one you would think, it's, it's made from a practical perspective
[01:24:10] by a guy who works for aerospace agency or something like that.
[01:24:16] It was really, really cool, dude, right, so get the knowledge first, so you have to acquire
[01:24:24] the knowledge.
[01:24:25] Oh, people, people, mentors, I didn't even put people here.
[01:24:32] People and mentors, mentors, teachers, teachers, co-workers, so yeah, getting knowledge from
[01:24:43] people, meetups, conventions, how come I didn't think of that first?
[01:24:54] No, don't get the C programming language, the first edition of 1985, don't, that's horrible,
[01:24:58] it's a horrible book.
[01:25:00] None of that code is used, if you code like that, you'll lose your job as a C coder.
[01:25:04] I'm not kidding, here are my words, do not use the C programming book from 1985 in your
[01:25:11] coding.
[01:25:12] I don't use the libraries in there anymore, they're all modern versions of all that.
[01:25:17] The Go programming language books are horrible too, really bad actually, really horrible.
[01:25:24] Oh my god, that one from, with, with, with, what's the space on the title?
[01:25:29] I had a kid throw that book at me, I'm not even kidding.
[01:25:37] Where should you go to learn it?
[01:25:38] Well, that's what you do, you ask around people that, that do it, this, remember, remember
[01:25:44] the list of errors and remember the overview list, right?
[01:25:47] I'm going to go back to it, I'm going to keep doing this, it's so important, discover your
[01:25:53] ideal companies, learn what, you know, how to prove you can do, understand the technology,
[01:26:02] so yeah, you need to find, I forgot, where's the people, discover your ideal job.
[01:26:07] Now this, so you need to have people that are in the industry that you're interfacing
[01:26:11] with.
[01:26:12] And I'm kind of glad we caught that in my knowledge management because really the people are the
[01:26:16] most important, they're the most important, those are the people that are doing the job.
[01:26:20] I know he can do the job, but can, can he do the job?
[01:26:26] I'm not arguing that with you.
[01:26:29] I'm not arguing that with you.
[01:26:46] I know he can get the job, I can't even do the job, find the people who can actually
[01:26:49] do the job and ask them, they're the best people to go to, by far.
[01:26:55] I couldn't do internet research, so I wanted to learn about the internet and I had to go
[01:27:00] to people.
[01:27:01] So I did that.
[01:27:02] Anyway, capture knowledge effectively.
[01:27:03] This is what this is mostly about.
[01:27:04] So creating a knowledge base, a personal knowledge base, and this to me involves learning markdown.
[01:27:23] So let's start one without markdown, okay?
[01:27:27] And I'm going to say, we're going to do a specific markdown on GitHub, all right.
[01:27:39] And then be able to recall the knowledge quickly.
[01:27:41] So let's actually spend the time creating a knowledge base, okay?
[01:27:45] And I have another thing here about GitHub and markdown, so let's talk about GitHub for
[01:27:49] a second.
[01:27:50] I get it for source and knowledge management.
[01:27:52] So why is GitHub important?
[01:27:57] Because GitHub is a world's leading source management system.
[01:28:07] This is not up for debate.
[01:28:08] You can argue about, I've talked about this last week, you need to learn it.
[01:28:11] So let's go do it, I'm going to do it right now with you.
[01:28:16] You go to GitHub.com, you sign up for an account, and then you get an account like this, okay?
[01:28:22] We will come back and talk about how to make yourself look pretty on the account and everything.
[01:28:28] That's not the priority right now.
[01:28:29] The priority right now is creating a place to take notes, a knowledge base, right?
[01:28:36] And I actually already have a repo like this.
[01:28:40] So I'm going to go ahead and create a new repo for my notes.
[01:28:43] The name doesn't matter, it really doesn't.
[01:28:46] If you want to call it Zetelkastin, knowledge base, Keg, it really doesn't matter what you
[01:28:51] call it.
[01:28:52] So we're going to go down here, we're going to do new repository.
[01:28:58] And the reason it's called Repository is kind of like a source repository.
[01:29:02] Or do you have existence?
[01:29:03] That's the name of my book, which is forthcoming.
[01:29:07] Anyway, this is already taken.
[01:29:10] So I could say, and you could have multiple knowledge bases, but I suggest you just have
[01:29:14] a single one.
[01:29:15] So you could have my, you could have say, boost notes, right?
[01:29:20] If you just wanted it to be just boost only.
[01:29:27] Is it there?
[01:29:28] Yeah, you could also do this going to have the command line, but I'm assuming you don't
[01:29:31] know any of that yet.
[01:29:32] So you can put all this stuff here.
[01:29:36] You want to get a code pilot is AI that's kind of built on your Git repo.
[01:29:42] Eventually, eventually, you're going to learn all of this stuff.
[01:29:45] You don't need to know any of this for now, okay?
[01:29:49] This has got all this great stuff.
[01:29:50] You can do click on setup and desktop.
[01:29:52] If you want to install GitHub desktop, you can do that for now.
[01:29:57] For now, you don't know how to edit files.
[01:29:58] You haven't learned about any of that yet.
[01:30:00] So this is a good thing to do.
[01:30:02] Again, you're just starting out.
[01:30:05] You already have everything you need here.
[01:30:07] But if you want to, you can just go to setup and desktop.
[01:30:11] And this will, you can download the GitHub desktop if you want to.
[01:30:15] I don't really want to, especially since you're going to be learning how to edit the way I
[01:30:18] do.
[01:30:19] So since we already have a repo created, or create the new repo on the command line,
[01:30:26] we already have a repo.
[01:30:27] Well, what is telling us is that the repo isn't locally copied.
[01:30:30] It's showing you how to copy the file and put it down on your computer.
[01:30:33] But for now, you don't need to do that.
[01:30:35] You can do all of your note taking on GitHub and never leave GitHub.
[01:30:40] So you click back on this one here, and it should take you back to the create repo.
[01:30:49] Oh, wait, we need to make a new file.
[01:30:51] Okay.
[01:30:52] We recommend every repository included read me and again.
[01:30:54] So it says you can create a new file or do this.
[01:30:57] Let's go ahead and make a new read me.
[01:31:00] So let's just talk about this thing.
[01:31:03] So this made a new boost notes called readme.md and it's in markdown.
[01:31:07] So we're now going to talk about markdown a little bit just to get you started and then
[01:31:13] we're going to go through it exhaustively later today.
[01:31:16] So markdown is a way of writing in text only that turns into something pretty.
[01:31:23] So there you see the header, and then you have hey there, and then you can preview it
[01:31:29] and you get this here.
[01:31:31] So as you can see, I haven't used any terminal.
[01:31:33] There's nothing involved.
[01:31:34] There's no editors, no res code, it's just a way to edit.
[01:31:37] And this is a really great way to get started if you're just starting out.
[01:31:40] In fact, there's really no requirement for you to use markdown here at all.
[01:31:44] You can write in whatever free form text you want to.
[01:31:46] Nobody cares.
[01:31:48] But it's probably good to go ahead and start doing that in markdown.
[01:31:52] Any text file is valid markdown.
[01:31:55] But if you know a few things about markdown, you'll get ahead.
[01:31:58] So why CalCapsReadMe.md, this is a tradition that's existed and get reposed since the
[01:32:04] dawn of time.
[01:32:05] The ReadMe file is commonly used as the entry point, if you go to my beginner boost and
[01:32:11] you click on boost, you can see that the ReadMe file is the one that is displayed right away.
[01:32:18] You can also, later, turn all of this into a web page just so you know.
[01:32:24] So you can go to, as I've been activated for your notes yet, but you can later activate
[01:32:32] your notes, your repos, and turn a very basic web page out of that.
[01:32:37] And if you inspect it, you can see this simple HTML that's here.
[01:32:41] We will be learning this much HTML, enough HTML to make a static website.
[01:32:46] That is one that doesn't have JavaScript making things happen.
[01:32:49] We will eventually learn that.
[01:32:51] But that's the minimum that we're going to cover.
[01:32:54] It's pretty much assumed that everybody knows how to read HTML and CSS, but really HTML.
[01:33:02] And that's where Markdown comes in.
[01:33:03] It's important that you learn Markdown first and then you learn HTML.
[01:33:07] You can actually benefit from that by seeing, I'm going to show you an example, but I can
[01:33:11] run this entire file through PANDOC and get you the HTML that exists.
[01:33:18] So I can run it through PANDOC, which will convert this Markdown into HTML.
[01:33:23] So being able to go back and forth between HTML and Markdown is a real critical skill
[01:33:29] for anything in the tech world, because Markdown is also the language for writing prompts to
[01:33:35] AI to tell AI what to do.
[01:33:38] In fact, the cloud has another file that it supports called Claude on caps dot MD.
[01:33:45] And by writing a cloud file in natural language, you can set up the context for Claude to do
[01:33:51] the work of helping you build your project.
[01:33:53] So Markdown has gone from being a nice way to capture your knowledge in a structured format
[01:33:59] that can be revisioned and everything unlike Microsoft Word into a prominent way to write
[01:34:08] AI and get AI to do what you want to do.
[01:34:11] And it's kind of fun to see how the merging of software development has become more of
[01:34:16] a natural language, let's give it destruction to tell what we want, and human language have
[01:34:21] kind of merged and they've converged on Markdown.
[01:34:24] Because Markdown is a very structured way for humans to communicate in a way that humans
[01:34:30] can read that's relatively readable, but so structured that a computer can still understand
[01:34:37] it and parse it well without having to go all the way to HTML, which is also understandable
[01:34:42] and parsable by AI, but it's almost impossible for humans to write.
[01:34:47] So the side note to this, I actually in 2016, I created an initiative called the essential
[01:34:53] web with a bunch of my friends from Skillstack, which was designed to re-envision a worldwide
[01:34:58] web that was built on Markdown only with no HTML.
[01:35:02] And that was a really fun idea was way ahead of its time.
[01:35:07] And I'm still doing that as something called a knowledge exchange grid, or the keg, and
[01:35:12] I have all the keg domain still, I think, and I will be doing that, I will be doing
[01:35:17] some work on that.
[01:35:18] In fact, the boost notes that are in the docs directory are a knowledge based based on keg.
[01:35:24] So let's talk about knowledge management in general, how to organize your notes and such.
[01:35:29] So the first thing, and before we get into the Markdown conversation, no, I didn't reinvent
[01:35:34] it before, go for it, no, I know, go for it, go for it's cool, but everybody says that
[01:35:39] every time I bring it up, there's to be a time when we would debate about go for versus
[01:35:45] web.
[01:35:46] There was a time in 1997 where people were arguing about which one would take over, and
[01:35:50] a lot of people said go for it, and then pictures happened and then go for it died.
[01:35:55] So yeah, I know, I know people brought up Gemini to me seven years ago.
[01:36:02] Gemini is a bad gopher, none of them have text based, and they're not Markdown based,
[01:36:07] which is really too bad.
[01:36:09] The HMA doesn't matter, because if it's on the web, it's conceivable by AI at the end.
[01:36:15] So that's why I kind of abandoned that project, but I'm rethinking it.
[01:36:19] Let's talk about how to organize your notes, right?
[01:36:21] So first of all, how do you save this?
[01:36:23] Well, you click on Commit Changes down here, and it's a weird way to say save, but in a
[01:36:28] version controlled world, which is what GitHub is, it's a tool to convert, I mean, to source
[01:36:34] to manage software.
[01:36:36] But this is something, this is a big, big, big thing with me with Keg and Zetelkasten.
[01:36:42] It's called managing knowledge as source.
[01:36:46] When you learn how to code, this is why it's so important to learn how to code and mathematics
[01:36:50] in general.
[01:36:51] It learns you help to learn how to structure your data and your knowledge in a way that
[01:36:55] can be reused, that's modular, you know, I'm writing you to the Zetelkasten method on
[01:37:01] index cards for each scene in my book.
[01:37:04] These ways of managing knowledge are going to really elevate you above anyone.
[01:37:08] So Lumen, who invented the Zetelkasten method, which I'm not recommending you use today, is
[01:37:14] one of these things.
[01:37:15] And the entire realm of knowledge management is something I have to be really careful
[01:37:19] because I will rabbit hole down all kinds of like passages on this, because I really
[01:37:25] love this topic.
[01:37:28] And the biggest solution to knowledge management in 2026 is Chacchi BT specifically because
[01:37:34] it's the most approachable by the most people, it has the most well-rounded knowledge, and
[01:37:39] anybody can pull it up.
[01:37:40] And ever since I started using Chacchi BT, my use of my knowledge base has diminished
[01:37:45] because it actually remembers things and I can have my Chacchi BT remember her name's
[01:37:50] Chloe, I can have her remember things that, and I don't need to make a note about it,
[01:37:55] but we are going to get into coding.
[01:37:58] And so when you're making notes about learning out of code and learning Linux technologies,
[01:38:02] or you want to do your skill stack, you know, method, your skill stack, a method to figure
[01:38:06] out all that, these are all things that are useful to have in a Git repo in a way that
[01:38:14] can be structured.
[01:38:15] So commit changes is a fancy way of saying save, we're going to click on this right now.
[01:38:20] You don't need to put a description in there, create, read me, and we'll leave our commit
[01:38:24] email.
[01:38:25] These emails do kind of matter later on, they'll matter even more, but we're going to go ahead
[01:38:29] and commit that.
[01:38:32] And you will see now that, you know, this is now the default page, right?
[01:38:38] So you have a main branch, when we learn about Git, you learn all about this, but you can
[01:38:43] actually have multiple branches simultaneously and then merge them back together.
[01:38:48] But for the most part, you won't need that, particularly if you're using this just for
[01:38:51] knowledge management.
[01:38:53] You can click over here and see all of the commit histories, and it'll tell you exactly
[01:38:56] what changed.
[01:38:57] I can show you how to set up a verified address later on.
[01:39:00] You don't need that unless you're going to be committing to open source projects that
[01:39:03] have a requirement that prove that you are who you say you are.
[01:39:09] But as you can see, this is called a DIP, this shows you all the changes that happened
[01:39:13] to that file since the last time it was done.
[01:39:16] There's commands called blame and others for multi-user participation.
[01:39:19] You can go and see what is all changing there.
[01:39:23] So this is, and again, most of this is super relevant when you're writing source code,
[01:39:27] but the reason it's really good for you is because we are also going to write source
[01:39:30] code in addition to knowledge source.
[01:39:33] That's my term TM, Archibex Rob.
[01:39:36] Knowledge source is marked down that contains your knowledge from your knowledge base.
[01:39:42] And I just, I really want to hit this point home.
[01:39:45] The more that you manage your knowledge, the same way you manage your source code, the
[01:39:50] better you will be in the long term, because you will benefit from all of the best practices
[01:39:57] and tools of software management in your knowledge management platform of your own creation.
[01:40:04] Let me say that again.
[01:40:07] Treat your knowledge as source code in every way, because if you do, you will be able to
[01:40:14] version it, you'll be able to check it out, you'll be able to share it, you'll be able
[01:40:18] to publish it, you'll be able to modularly reorganize it.
[01:40:23] And if you don't, if you use Microsoft Word, you're screwed, because now you can't search
[01:40:30] it not easily, you can't revision it.
[01:40:33] Oh my God.
[01:40:34] Elmo.
[01:40:35] This is why SharePoint is such a disastrously bad product in the enterprise.
[01:40:39] All right, set it.
[01:40:42] Because it doesn't allow any of that, not to the level that Git does.
[01:40:48] Okay.
[01:40:49] And Git requires more knowledge.
[01:40:50] So anyway, so the next question is, well, how do I, what do I do know, right?
[01:40:55] So maybe, I don't know, let's say we want to make a new file, right?
[01:41:00] So let's say add file, I want to create a new file.
[01:41:04] And this file is going to be called, let's give it a name.
[01:41:06] Let's call this my, my skill stack, my dash skill stack, use dashes.
[01:41:11] And we'll call it .md, because that's the standard extension for Markdown.
[01:41:15] It gives you a bunch of other helpers here and everything, but you can go ahead and put
[01:41:20] that there.
[01:41:21] And you can say, you can make the first header, my skill stack, okay.
[01:41:30] And then you can start doing your thing.
[01:41:31] And you'll see, because we're using structured data, that you can actually make math happen
[01:41:37] by having it be structured in text, which is really cool.
[01:41:41] So for example, let's do the column.
[01:41:43] You don't know about how to do columns yet, but let's, let's start with, I don't know,
[01:41:48] let's say, oh, God, let's say AI, okay.
[01:41:52] So I need to know what AI is, and let's, let's make it into a, we're going to make a table
[01:41:57] here.
[01:41:58] In fact, let's, let's make a table using one of the tools that's out there.
[01:42:03] I think you can actually just click on dot, yeah, I think you can.
[01:42:09] Let's see this.
[01:42:10] Let's go ahead and commit this and, and then we're going to do an edit.
[01:42:15] Commit changes directly to the main branch.
[01:42:17] All right.
[01:42:18] So this is something that's kind of cool.
[01:42:21] So I think, I can't remember how to do it.
[01:42:25] I think it's dot.
[01:42:26] It used to be dot.
[01:42:29] What is it?
[01:42:30] What is the quickie guys?
[01:42:31] Oh, thank you for the, thank you for the clips.
[01:42:35] There's a, there's a, there's a key that will pull up the editor from a repo and I can't
[01:42:42] remember it.
[01:42:44] Is it just dot?
[01:42:46] Why isn't mine pulling up?
[01:42:49] Do you have to be on the file?
[01:42:53] Yeah, I don't have the BIM mode extension nor would I ever have it.
[01:42:58] All the stuff I do with BIM, double bang and all that.
[01:43:02] You can't do that on, on that.
[01:43:08] I tried it.
[01:43:09] I get no benefit from it for reasons that I'll talk about.
[01:43:12] I should probably make a video about that.
[01:43:16] I'm trying to, I'm trying to trigger the, the creation of the things that I do it wrong.
[01:43:20] Maybe it's getting intercepted.
[01:43:22] I thought it was just dot.
[01:43:28] It's not, for some reason it's not working for me.
[01:43:32] I wonder if it's getting intercepted.
[01:43:35] It's just dot on the repo homepage.
[01:43:37] Oh, I wasn't on the homepage.
[01:43:39] Maybe that was it.
[01:43:42] Nope, dot, dot, dot, dot, it's not working.
[01:43:50] I wonder why code spaces, maybe I have to make a code space first.
[01:43:59] No code spaces.
[01:44:00] You don't have any code spaces or repository to check out.
[01:44:02] Code space will mean, okay, they're trying to sell you a product here.
[01:44:05] So I want to be careful and it's anywhere in the repo, but you can just change, get them
[01:44:10] to come to show, get them to dev.
[01:44:11] No way, really?
[01:44:14] I didn't know about this.
[01:44:15] Thank you, do you guys, is dot a key on the keyboard or is the, it's a keyboard?
[01:44:21] You just type period and then, and it makes it into, it makes it into editing.
[01:44:26] There we go.
[01:44:28] If you, if you do dev, maybe you have to set it up in the editor at least once.
[01:44:33] Okay.
[01:44:34] So, um, I don't know, that's good to know the extension, get a repository that wants to sign
[01:44:40] and using get up.
[01:44:42] Yes.
[01:44:43] Wow.
[01:44:44] That's cool.
[01:44:45] I've shown us the dev, the dev thing, I did not know about that.
[01:44:47] Okay.
[01:44:48] It's pretty cool, right?
[01:44:49] So, so you don't need an editor, you can use the web for all of this.
[01:44:53] Um, it says, select an account for get every repository is to use.
[01:44:57] I want to use this account.
[01:44:59] Uh, and this, this, oh my God, that's because I'm using a dark mode.
[01:45:05] Sometimes you don't want our creator on, so sorry about that.
[01:45:08] Um, this is VS code.
[01:45:10] Okay.
[01:45:11] So, uh, you didn't know this stuff.
[01:45:13] I'm glad that a lot of you didn't know this and you can go look at this.
[01:45:16] So, um, any GitHub repo, because GitHub owns Microsoft or Microsoft owns GitHub, saved it,
[01:45:24] by the way.
[01:45:25] But GitHub was going to collapse in bankruptcy and Microsoft saved it so you can hit on them
[01:45:27] all you want, but there wouldn't be a GitHub without them.
[01:45:31] And, and they made VS code, which is basically a better version of Sublime and brackets and
[01:45:36] all the other competing simple editors out there.
[01:45:40] So that's kind of a, a segue into the editor conversation.
[01:45:44] How do you edit your text?
[01:45:46] What editors are best, um, and in the world of GUI editors, there's many of them, but
[01:45:51] there's a lot of lightweight ones and a leader by far right now is something called VS code.
[01:45:59] Visual studio code from Microsoft and it doesn't matter what you think of Microsoft.
[01:46:03] This is just the way it is.
[01:46:05] And this is, VS code is what's called a progressive web app, which means it can run fully in the
[01:46:09] web browser or you can download it and run it on your computer.
[01:46:13] I have really, really highly educated engineers on my team right now who square by VS code
[01:46:19] for everything and they put agents on servers just so they can edit files using their fancy
[01:46:25] graphic VS code.
[01:46:27] VS code has a lot of really good uses.
[01:46:30] I really love web development using VS code.
[01:46:33] I love making notes with VS code because it's immediately visual.
[01:46:37] I'll show you how to do that.
[01:46:40] And I really love it for web development because it has a built in web server when I'm teaching
[01:46:44] game development using web game development platforms like phaser.js.
[01:46:48] You can actually do all of that in the editor without anything else.
[01:46:51] You don't, you can even launch a web browser inside of the editor and preview all of your
[01:46:56] stuff without ever touching the internet.
[01:46:58] So I just want to put that out there because people know I'm a terminal guy, but there
[01:47:03] are definite positive uses of VS code.
[01:47:06] But this is one of them.
[01:47:07] When you're first starting out and you're kind of want something that's easy to use,
[01:47:10] this is it.
[01:47:11] If you click over here and you split the screen, you can actually now kind of combine your
[01:47:17] preview with non preview mode if you want.
[01:47:22] Is that the one?
[01:47:24] Which one is it?
[01:47:25] What are the toggle preview logging?
[01:47:28] So as you can see, this is already in preview mode.
[01:47:32] So I think we probably want to do this.
[01:47:34] Let's click on this.
[01:47:36] Okay.
[01:47:37] So here's the code, right?
[01:47:39] And if you click over here, you can see the code rendered over here.
[01:47:42] In fact, why isn't it doing that?
[01:47:44] Normally if it's, if it's marked down, it'll do the render.
[01:47:46] Oh, here we go.
[01:47:47] It's still in next to it.
[01:47:48] I'm sorry.
[01:47:49] Yeah.
[01:47:50] Preview.
[01:47:51] Okay.
[01:47:52] So here you can see markdown and how the markdown renders right next to it.
[01:47:56] And this is a really good way to go when you want, when you're first learning how to
[01:48:02] write notes and you want to learn markdown.
[01:48:04] This is why we're here is so that you can interactively learn markdown.
[01:48:09] Now, I'm not going to explain to you everything about markdown, but I'm going to introduce
[01:48:13] you to some of the basics.
[01:48:15] And then I'm going to point you at a place where you can go study markdown on your own.
[01:48:19] Okay.
[01:48:20] So here's your skill stack.
[01:48:22] Now maybe you're like, I would really, I really wish I could make a table here, right?
[01:48:25] Well, how do I make a table?
[01:48:28] So you might not know how to make a table, but you could go learn.
[01:48:31] If you had a better type of markdown editor, you might be able to go over here and find
[01:48:35] it, or you could go look up editors on markdown.
[01:48:38] Now this is where if you have an AI, I'm going to use the AI because that's what I want you
[01:48:42] to do.
[01:48:43] So I'm going to say, how do I make a markdown table in GitHub in GitHub flavored markdown?
[01:48:55] Now after you say this, you can say gfm, okay, and then she'll know gfm after that.
[01:49:04] We'll get into the history of markdown a little bit, but it's not really relevant to getting
[01:49:07] it done.
[01:49:09] Yeah, okay.
[01:49:12] So here is, here it is, and you click on copy and you're going to, you're cutting paste
[01:49:17] coding.
[01:49:18] There's nothing wrong with that in the age of AI.
[01:49:20] Nothing, okay?
[01:49:21] You know, you just learned how to make a table, right?
[01:49:25] And you can experiment with this.
[01:49:26] Like let's say you want that column in the middle to be centered, so you can put these
[01:49:30] things on both sides and it'll make it centered, it'll center that one.
[01:49:36] Maybe you don't want it to be centered.
[01:49:39] Maybe you want to add a different column.
[01:49:41] And there are other editors out there, but this is, you know, one of the ways to do that
[01:49:45] right away.
[01:49:47] And there are many, many, many, many markdown editors out there.
[01:49:57] There's actually what is a good markdown editor that, that makes tables easier.
[01:50:07] So all this stuff you're used to from Microsoft Word or whatever for editing tables, those
[01:50:11] things all exist and you'll, you'll find all kinds of recommendations on the internet
[01:50:14] about how to do it, WYSIWYG editors, what you see is what you get.
[01:50:19] You can get the VS Co plus markdown table extension.
[01:50:22] Hmm.
[01:50:23] Best if you already had our developer markdown and one, how can you add extensions to the,
[01:50:29] to the one that runs here?
[01:50:31] That would be interesting.
[01:50:33] I didn't know you could do that.
[01:50:35] We're going to go add up our first markdown extension.
[01:50:38] What is it called?
[01:50:41] Markdown table formatter extensions that help a lot.
[01:50:44] Markdown table editor.
[01:50:48] So markdown add features to edit markdown tables.
[01:50:53] And you're going to find plug-ins that don't work, that suck and others that are great.
[01:50:57] It's just the nature of the beast.
[01:51:00] The markdown table extension is not available, they just go down to the web, learn, why?
[01:51:04] Oh, well, well, we're on the web, so, so they're markdown table sort.
[01:51:09] This is new markdown table like entertainment data as records.
[01:51:14] You can play with the plug-ins.
[01:51:15] I'm not going to, I'm going to teach you how to do it.
[01:51:17] But obviously tables are one of those things that are a lot easier to do without having
[01:51:24] to learn markdown.
[01:51:25] I probably shouldn't have started with that.
[01:51:28] But that is, you know, one of the things you can do, but you don't have to do that.
[01:51:33] You could, you know, you could use yaml if you wanted to instead, which kind of introduces
[01:51:39] to structured data.
[01:51:40] Let's do some yaml.
[01:51:41] That'll be fun.
[01:51:42] So we're going to learn yaml and JSON as well as we go through this.
[01:51:46] So yaml is a structured data format, so you can have, like, what is this?
[01:51:51] We could say the name, let's say the thing, what is the thing?
[01:51:57] We'll say the thing is AI, we could say relevant, and you don't have to have like a whole thing.
[01:52:08] Let's make it, let's make, I don't know, let's make capital for name, and for name, you can
[01:52:18] have fun with this and do your own thing.
[01:52:20] And we can have R for relevance, let's say it says 10, we could have a current, what's
[01:52:29] your current score is like a one, and you're, maybe a two, and then your target is like
[01:52:38] a, you want to be a five.
[01:52:43] So this gives you, it shows you that you can do, you know, structured formatting and stuff
[01:52:48] like that, and you can just add more of these if you wanted.
[01:52:53] You could also do this a different way.
[01:52:57] You can actually just do it this way and make it into a list.
[01:53:04] Yeah, I'm kind of losing my way here and I, you can make it a positional thing since
[01:53:11] it's so simple that you could make it positional, this is called a list.
[01:53:16] Yeah, if you can't tell and introduce you to the data structures.
[01:53:20] All right, so this is, this is a, this is a list, and that's also a validation.
[01:53:28] So, you know, you can do AI, and then the next one you can do, you can copy that and make,
[01:53:32] you know, it just depends on what you, when you use structured data like this, you get
[01:53:36] a lot of advantages, in fact, you know, it's just, you just do so, there's, there's all
[01:53:45] kinds of stuff you can do here, but the point of it is to go here and start learning how
[01:53:49] to write, like I need to need to start this, you know, make notes and stuff.
[01:53:56] And you're getting all the previewing, and then when you want to commit, where is the
[01:54:00] GitHub one right here, as soon as you've got one merge, your changes need to be committed
[01:54:04] immediately pushed to the main branch.
[01:54:06] Normally you wouldn't push to the main branch and people would yell bloody murder at you
[01:54:09] because you're doing it, but this doesn't matter because you're just making notes.
[01:54:13] You don't really need a message.
[01:54:15] You can just, you can say, you know, whatever you could say, first commit.
[01:54:21] It is annoying that you have to put a message on every single commit and push as opposed
[01:54:25] to just saving, but I'll show you why that matters, right?
[01:54:28] Because when you go back to your thing and we're going to change dev, we're going to
[01:54:34] change dev to, to call, it'll go back, it'll go back to the source code and you'll see
[01:54:41] that it's been changed.
[01:54:44] If you go to my skill stack, you can see it's here and it displays properly and you can
[01:54:49] click code.
[01:54:50] You can click blame, which shows you who made all the changes and when.
[01:54:53] This was made 27 seconds ago.
[01:54:55] So this is a lot more detail than you normally need if you're just writing a book or something
[01:55:00] with MS Word, but it's really relevant because it shows you when you made the changes.
[01:55:04] You can actually back out the changes and all kinds of stuff.
[01:55:08] And since you need to learn all of this anyway as a technologist, you know, you're not losing
[01:55:15] anything by spending the time to learn this, okay?
[01:55:18] So on that note, I'm going to introduce you to the place to learn GitHub, flavor and mark
[01:55:24] down and I'm going to show you that right now and while you're playing around reading
[01:55:31] through it, I'm going to give you a little background history about where Markdown came
[01:55:35] from and why it's relevant today and which one you should use and why I think GitHub
[01:55:39] flavor markdown is the one.
[01:55:41] So if you just want to get ahead and learn GitHub flavor markdown, let's go ahead and
[01:55:45] ask our Chloe, where can I best learn GitHub flavor markdown.
[01:55:53] Now, I'm doing what I would hope you would do, okay?
[01:55:58] So that means I don't need to do this, obviously, I know this, but I want you to see the same
[01:56:02] kind of output and experience you'd be getting.
[01:56:06] Create and run the markdown, yes.
[01:56:10] This is quite a bit, if you want to look at a flavor markdown properly, these are a few
[01:56:13] places to clearly talk about it, the official document, which I would have had to search
[01:56:17] out on Google.
[01:56:18] This is the kind of stuff that I could search on Google and use Gemini for, but I don't
[01:56:24] mind burning the tokens, it's always hard, right?
[01:56:30] When would a web search, the AI mode on Google Web, they're going to burn those, that energy
[01:56:37] no matter what.
[01:56:38] So you either burn it with chat GPT, burn it on Google, either way you're burning energy.
[01:56:44] You see most people use atoms, markdown cheat sheet.
[01:56:49] I have one as well that I'm not going to recommend right now, I'm going to let you do your own
[01:56:55] research and find your best one.
[01:56:58] Markdown live preview, okay, so use GitHub's live renderer or simply create a scratch repo
[01:57:03] and read me GitHub renders instantly.
[01:57:08] I don't know about this one, yeah, what is this, this is kind of cool.
[01:57:21] Markdown live preview, oh that source code is all free too, very cool, didn't know about
[01:57:27] that, give me a human body.
[01:57:37] Markdown live preview, all right here we go, so there you go, this is a fantastic way to
[01:57:43] show you how to do everything, again, you can do all of this previewing just using the
[01:57:49] tool that I told you about with dev, by the way, does that, if I go back here, can I push
[01:57:54] dot now, I can, okay, apparently you have to open it in dev the first time and then after
[01:57:59] that you can just push dot, so my dot works now, I knew that but it wasn't working for
[01:58:05] some reason.
[01:58:06] I think it had to be initially set up, so the shorter answer is, when you create your
[01:58:13] notes repo, with boost notes, where did my boost notes go, here it is, when you create
[01:58:27] your boost notes, do what pink Rover boots told us and go to GitHub.dev and that'll initialize
[01:58:33] your site using the web based editor and then you just push dot and then it'll open up the
[01:58:40] thing in the interactive VS code editor and you can start getting familiar with VS code,
[01:58:47] which you can also choose to use from the desktop as well but it's much more difficult
[01:58:52] when you're first getting started, so that gets us where we need to go and if you go
[01:58:57] back, it'll go back to the boost notes, okay, so this is it, now how do you organize your
[01:59:03] notes, the only thing I would suggest is that you always use lowercase names with dashes
[01:59:10] in them and this is a significant difference from how obsidian, which we haven't talked
[01:59:16] about yet, manages source files, which puts with spaces and weird things in the name but
[01:59:22] keeps all the names in sync when you change the name across the entire series, so this
[01:59:30] is the end of the conversation about knowledge management through using GitHub and GitHub
[01:59:37] flavor markdown, normally I would go through everything to do on markdown and which things
[01:59:44] you should use, whether you should use task lists, whether you should use common mark,
[01:59:50] or common mark came from, so again, here comes the history lesson and I'll give you it really
[01:59:54] quick, so Aaron Schwartz and, got what's his name, I forget his name now, it's right on
[02:00:03] the tip of my tongue, but whatever, it doesn't matter, they were up in Seattle, they were
[02:00:09] trying to look at something simpler than HTML for websites, so they created Markdown, it
[02:00:15] was largely based on text-based emails back in the day and they wanted readable, they
[02:00:20] wanted it to be readable, but they also wanted it to generate a reliable index.html file and
[02:00:26] so they created Markdown and it was a Perl script that generated HTML pages from that
[02:00:32] and it had no specification, it was really practical, it was made by writers and odd coders
[02:00:37] and it went on to become super popular, the biggest problem, however, is that because it
[02:00:44] was never specified, it had to go through a lot of ranges of getting specified, right?
[02:00:51] And I actually spent a lot of time on this, I've written my own Markdown parsers and I've
[02:00:56] actually interacted directly with JGM who is the creator of PANDOC, the reason Markdown
[02:01:02] is so cool is you can use a tool like PANDOC to create other things, Microsoft Word docs,
[02:01:10] PDFs, webpages, whatever, and that's why it's the universal language for knowledge management,
[02:01:17] that's why it's so powerful.
[02:01:19] Common Mark was the effort from JGM to create a common standard based on the biggest players
[02:01:26] in the industry, specifically GitHub and a couple of other ones that aren't even worth
[02:01:31] mentioning, GitHub has emerged as by far the dominant influencer in the use of GitHub because
[02:01:41] of the rendered readme that they have.
[02:01:44] So a flavor of Markdown that emerges as the winner which is not standard common Mark,
[02:01:49] it extends standard common Mark, is something called GitHub flavored Markdown.
[02:01:55] And if you go to that you can go find the GitHub flavor Markdown, you have Markdown peer
[02:02:02] previewer, see every rule has input Markdown, expect a national output, yeah.
[02:02:09] So this is the actual specification for GFM, it uses the testing that's used by common
[02:02:15] Mark, you can put tables in it, alerts, this is new, mermaid diagrams, you can now put math
[02:02:22] in it, and that's why it's so popular.
[02:02:27] So you can use it for pretty much everything.
[02:02:30] There are a number of other structured, you know, text formats such as ASCII doc for writing
[02:02:37] books which I have used and others have used for writing books, it's better for book writers,
[02:02:42] but the hands down the absolute lingua pranca of knowledge and knowledge management is GitHub
[02:02:49] flavored Markdown, and that's because all of these things that have been added, put notes,
[02:02:53] spends code blocks, these have all been supported by every other variation of Markdown that matters.
[02:02:59] So learning them is a good idea.
[02:03:02] And there are many ways you can go about learning those things that we've already talked about
[02:03:06] those.
[02:03:07] So go with your URL and do that, that's just special.
[02:03:14] Never had used anything other than letters and names, I disagree completely.
[02:03:17] No, you can use data dash as the names, SSH uses dashes and names, I use dashes and names.
[02:03:24] Don't use underscores and names, but use dashes and names, it's fine.
[02:03:27] Underscores are a pain because they don't always show up.
[02:03:30] In most web pages, you'll know that they always have dashes.
[02:03:32] So if you're dealing with web content or text content, you want to use dashes, you don't
[02:03:37] want spaces, you want to stick with basic ASCII character set, which is, you know, alphabetical
[02:03:43] alphabet and stuff like that, don't put emojis and names you can, but don't.
[02:03:49] And I think I've covered everything about how to start managing your notes and your knowledge
[02:03:52] base.
[02:03:53] And as we start learning to code, you'll be able to go in here and start making notes.
[02:03:57] So write down in your homework right now before we take another break and then close that
[02:04:04] you need to get a bit of a can, if you haven't got one, okay, you need to create a notes repo
[02:04:13] of some kind, you need to start taking notes in there, and you need to write your skills
[02:04:18] second there.
[02:04:19] By the way, one last thing, maybe you don't want all of this to be public.
[02:04:22] In fact, you probably don't.
[02:04:23] You don't want the world to know you're a beginner right now, right?
[02:04:26] You want to put a good base to the world because they will look at your public content.
[02:04:30] So one thing I forgot to tell you, this used to be extra that you had to pay for, but you
[02:04:34] need to make it from public to private.
[02:04:36] Let's do that.
[02:04:37] Change the settings and let's change the visibility down at the bottom to a change visibility
[02:04:45] to private, change to private, GitHub flavored markdown, yeah.
[02:04:51] So if you use spaces in your, in your file names, you're an evil person who must be stopped.
[02:05:01] I use a pass key, I have pass key authorization on my, on my GitHub flavor repo.
[02:05:08] It's my UB key right here.
[02:05:11] It's a hardware authentication technique that I have got to find a place where actually
[02:05:18] I don't know where I'm going to plug it in and use up all my ports.
[02:05:23] It's a method of authenticating that requires physical touch.
[02:05:27] So I'm going to go ahead and touch it.
[02:05:34] There we go.
[02:05:36] Anyway, so that should be now be private and that means you can't see it and nobody else
[02:05:43] can.
[02:05:44] Either I refresh, you'll see it's private over here.
[02:05:48] Wait, not that one, wrong one.
[02:05:52] Boost, boost notes, all right.
[02:05:56] Boost notes is now private, okay.
[02:05:57] So we've got it, yeah.
[02:06:02] You want it to just, you can't manage past weeks, yeah.
[02:06:05] To just still notes on format and the best way possible later.
[02:06:08] Yes, right now, the most important thing is that you take notes, okay?
[02:06:15] If I were you, I would just, I would try to stick with, you know, one document for major
[02:06:20] topic and just go that way.
[02:06:24] And how to manage those notes, how to search them, all of that will come up over time.
[02:06:29] But if you start out by just managing it, and by the way, don't put things in subdirectories.
[02:06:35] It's probably an important thing to note.
[02:06:37] Look, you do you, if you want to do that, fine.
[02:06:40] But I'm telling you that the best way is one big flat repo with individual names.
[02:06:48] Because you're going to be reorganizing and using certain files and referencing them from
[02:06:52] other places and it just makes it easier.
[02:06:54] It's a huge directory.
[02:06:55] It will have thousands of files in it eventually.
[02:06:58] But it will be, in the long term, it will be easier for you to rename things and move
[02:07:03] them around and stuff.
[02:07:05] Okay.
[02:07:06] Now that's a good segue into other tools to do this kind of thing.
[02:07:11] And I do want to talk about those right now so you have the option.
[02:07:15] Almost inevitably somebody would have already asked me about this by now.
[02:07:19] But there are things like obsidian and notepad and a million other editors and techniques
[02:07:25] for doing this.
[02:07:26] By the way, these are all recommendations.
[02:07:28] You just do what you want to do.
[02:07:29] I'm just telling you that this is a very effective way to check off multiple things that you
[02:07:35] need to learn at one time.
[02:07:37] You need to learn GitHub, check.
[02:07:39] You need to learn how to manage repos, check.
[02:07:41] You need to learn about source management, check.
[02:07:44] You need to learn about knowledge management, check.
[02:07:45] You need to learn about markdown, check.
[02:07:48] All of those things get covered by just having one repo where you put your notes in.
[02:07:52] That's it.
[02:07:53] And we haven't even got to the point where you can actually write code.
[02:07:57] In fact, let's give you a quick example of that.
[02:07:59] So if you want to add a new file, you can say create a new file and you can say I want
[02:08:05] this file to be called hello.py, so hello world in Python.
[02:08:13] Python actually has a suffix, which is one of the reasons I hate it, but whatever.
[02:08:18] Oh, wait, it's a train to find her.
[02:08:19] I want a new file.
[02:08:21] Oh, here we go.
[02:08:23] Hello.py.
[02:08:25] And then we make a new hello.py file and we can just say prints.
[02:08:31] Hello.
[02:08:32] Hello.
[02:08:33] And we can actually preview that and you'll see that it prints it out as code.
[02:08:42] And eventually we're going to be putting that code.
[02:08:45] You can even have the AI help you write hello in Python and then let me give you another
[02:08:50] way.
[02:08:51] We haven't gotten to the coding part yet.
[02:08:53] It's like right hello world in Python and describe what everything does.
[02:09:03] So what should we be picking notes on your skill stack right now and every other thing
[02:09:10] we covered along the way, unless you want to go back and watch the videos.
[02:09:17] More importantly, you need to start developing the skill and the ability to decide what things
[02:09:22] you need to take notes on, what things are relevant to you.
[02:09:26] That's more important than me telling you what to write down.
[02:09:28] Should I put that in my notes?
[02:09:29] Is that going to be on the test?
[02:09:31] Don't think like that.
[02:09:32] You just start thinking for yourself about how relevant is what was just said to me and
[02:09:37] how much do I need to remember it and where am I going to remember it?
[02:09:40] Can I look it up in my AI?
[02:09:41] Do I need to write it down?
[02:09:42] Because I can't.
[02:09:43] You guys are not going to know about it.
[02:09:44] Those are decisions you need to make.
[02:09:47] So pretty as Python is built into Python, I think I'm using old Python here.
[02:09:53] Yeah.
[02:09:54] Python, you have to have brackets.
[02:09:55] I've been writing a lot of Perl this week and you don't need that.
[02:09:59] So you're going to go ahead and test this out.
[02:10:02] Code double quotes or single quotes both work the same.
[02:10:06] This is why it's so important that you get an AI.
[02:10:08] This AI just gave you a full lesson on how Helloed World works.
[02:10:12] This is why I'm never going to write a book because the AI is better.
[02:10:18] The AI helps you learn and deep dive into the thing that you need to learn way better
[02:10:23] than any book that I write ever could do.
[02:10:26] So my job is to tell you what to prompt the AI to ask.
[02:10:29] How do I learn to get a flavor marked out?
[02:10:31] Where do I go?
[02:10:33] How do I do Hello World?
[02:10:34] What is a Hello World?
[02:10:36] We're all the things in Hello World.
[02:10:38] But the AI should be doing the heavy lifting of teaching you this stuff in a very organized
[02:10:42] way.
[02:10:44] And the AI is going to get a lot of things wrong.
[02:10:45] But one of the things that the chat sheet between particular gets really well is teaching
[02:10:50] you beginner programming concepts because these are really well established on the internet.
[02:10:55] This is not something that is going to be so esoteric, it's going to hallucinate, give
[02:10:58] you the wrong answer.
[02:11:00] So generally speaking this is a better way to go.
[02:11:05] Use GitHub GFM as a reference as GitHub has it uploaded it.
[02:11:10] Yeah also do not as the reference as GitHub hasn't updated it.
[02:11:14] Use writing on GitHub.
[02:11:16] No kidding.
[02:11:17] They didn't update it pink.
[02:11:19] What did that tell you?
[02:11:22] This is just the play of the whole thing, it's like, right?
[02:11:27] I'm going to click on that link writing on GitHub.
[02:11:32] So here's something you put in your notes.
[02:11:34] Okay, writing on GitHub, I'm going to copy this, I'm going to put it in my notes.
[02:11:40] All right, I need to, well, let's first of all just commit this, I don't care about
[02:11:45] the topic thing.
[02:11:46] I'm going to go back to my boost notes, I call this a code book because this code mixed
[02:11:50] in with the book, right?
[02:11:52] So let's make a new one, let's like add file, create new file, we'll say learning markdown.
[02:12:02] You don't have to do this, you can put all of this in a single file if you want.
[02:12:06] But if you want to break it down, you know, you can put it all in the readme.
[02:12:12] If you wanted to be sequential, why don't we do that, it'll be much easier.
[02:12:16] Let's do that, cancel changes, okay, let's not make a bunch of different files.
[02:12:21] You can, but let's say you want to just do it in here instead.
[02:12:25] We're going to click on, I'm just going to, I'm just going to edit it right here, I don't
[02:12:29] care about editing it there.
[02:12:31] So I could say you could put like markdown, right?
[02:12:37] And then you could put, get a play remark down, you could put a dash and make it into
[02:12:42] a bullet point.
[02:12:45] This is valid markdown even though, get a play remark down will actually automatically
[02:12:50] make URLs.
[02:12:51] If you want to make it compatible with everything, you can put these little things around it.
[02:12:55] Nobody does.
[02:12:58] That's more valid, but it's the same.
[02:13:00] And then you can click on that, go to write a markdown, getting started with GitHub.
[02:13:04] All right, so there's going to be, so that's what you should take notes on, like the references
[02:13:09] to other things, the prompts you should be giving to your AI.
[02:13:12] Those are the things you should take notes on.
[02:13:15] So here's the Python code, call function print with argument hello world, right?
[02:13:20] Arguments just set out, append a new line.
[02:13:23] Small things beginners will miss, print hello world, also prints hello world, blah, blah.
[02:13:28] So how would you write that?
[02:13:29] You don't know how to do that, right?
[02:13:31] So where can I run Python on the web to test it?
[02:13:38] I don't even know if there's a place, let's go see.
[02:13:41] We're going to do the terminal, but online compiler, Python programming, I don't know
[02:13:47] about this.
[02:13:48] Let's go look at it, wait, what?
[02:13:53] The programmers Python code, actually, there's a better place that I would go for this kind
[02:13:59] of thing.
[02:14:00] And I almost started working here.
[02:14:01] I've had lots of communication with AMJOT, it's called REPL it, and this is a good place
[02:14:07] to test things, oh my God, I can't believe that's the game.
[02:14:15] Those are the lines, slides, great account now, I want to just make, ooh, this is totally
[02:14:21] changed.
[02:14:22] I haven't been here a long time, but I describe your ID, I want to write Python code.
[02:14:34] We're going to do all this in the terminal, but if you want to get coding right away, you
[02:14:37] can do it here, yeah, it's totally changed, right?
[02:14:49] I wonder if it remembers me and I'll make house, I have a lifetime account over here.
[02:14:56] Because I almost work there, yeah.
[02:15:07] And this is a problem with REPL it, this is eight years ago I wrote this.
[02:15:14] And they've totally changed, they're not even doing the same thing anymore.
[02:15:17] God, I hate medium, medium, I did all my vlogging in medium, and they did a classic
[02:15:23] bait and switch, and then they pulled everybody's access to it, and let's have an account.
[02:15:28] After I put all the time into it, and then they never exposed the API to pull our stuff
[02:15:31] out of it, oh, it was so bad, oh, look, I have a fucking lifetime plan, where did my lifetime
[02:15:42] plan go, did you throw it away, sorry I swore there, that makes me a little mad.
[02:15:51] That makes me a little mad, I wonder if it's because it's my other API, my other source.
[02:15:56] Anyway, I wrote, what do you want to make?
[02:15:58] Apparently, that's how you get to the free one, meet Agent 4, next, this is all new.
[02:16:06] It's all AI built, that does not surprise me at all.
[02:16:09] They are unnecessary early adopters, the whole company, that's why I decided not to do anything
[02:16:14] with them, anyway, create something new.
[02:16:21] I want to create, this is completely different, they've redone the whole thing.
[02:16:25] I just want to, they used to be, you could go get a terminal container and then run your
[02:16:29] thing, but you can't do that anymore, but yeah, same with the heavy compost, they did
[02:16:36] that too, yeah, yeah, yeah, I'm going to go home here, they made it impossible to make
[02:16:46] a new thing, import code or design, import a repo, I don't want to import a new repo,
[02:16:53] how do they make it so hard?
[02:16:56] Okay, I want a new, oh, this is all my projects.
[02:17:01] It looks like they did remember me somehow, yeah, they did, yeah, they definitely remember
[02:17:15] me.
[02:17:16] How do I make a new project?
[02:17:21] This interface is not good, without as good as it used to be.
[02:17:26] I go to projects, I click on plots and I get a new project, it says create something new,
[02:17:31] right?
[02:17:32] Okay, I don't want to do this.
[02:17:33] I want to click on Python project, like you used to do.
[02:17:39] Your recent projects, if you all, I don't want to issue a problem, I'll create two core
[02:17:45] for unlimited apps, you hit your limit for free apps.
[02:17:50] I have a fucking lifetime account, like, apparently they took it back.
[02:17:54] I had a lifetime account and they got rid of it, fine, fine, it doesn't surprise me, as
[02:18:03] soon as they hit the incubator and they started making comments about how awesome they were
[02:18:07] to the world and their blog posts, I was like, no, Silicon Valley disease, just like everybody
[02:18:12] else, it stopped being useful, and that's what I slammed it about.
[02:18:19] And yeah, I can't recommend this to you, I'm so sorry I even mentioned it at all, get
[02:18:25] the fuck out of there, don't use that.
[02:18:26] Yeah, I don't, I don't, don't use it at all.
[02:18:30] There are so many other places besides at the code online, where can I write Python from
[02:18:39] terminal on the web, there's many of them, actually, Scott, Het Tannis has an entire container
[02:18:50] system for doing this, you go over there and click on a button and do it, of course they're
[02:18:54] going to do a replica shell, yeah, of course they're going to recommend replant, yeah,
[02:18:59] no, I have too many free projects, I got to get rid of all my free projects, PyScript.net,
[02:19:05] test the online container, code spaces, is code spaces free?
[02:19:13] Is code spaces free?
[02:19:15] I don't think it's free.
[02:19:17] Oh, you know what, oh, oh, oh, oh, oh, oh, we just code comes with terminal access.
[02:19:22] All right, period, no, that didn't work.
[02:19:26] Oh, wait, let's go wait, I have an idea, let's go back to boost notes and hit dot, get my
[02:19:35] editor, it's a web editor.
[02:19:37] Now, BS code comes with an integrated terminal, the question is, do they support it in the
[02:19:42] web version?
[02:19:43] I'm guessing they don't, but like, oh my God, new terminal, they, well, ah, yeah, 60 minutes
[02:19:56] for free.
[02:19:57] Let's see, you can create a terminal by continuing an environment that can run code, your changes
[02:20:00] will come to your app, you're trying to cloud changes, spin up a fully configured development
[02:20:05] environment for this.
[02:20:06] So what this is doing is just making a container for you.
[02:20:09] But guess what else you can do, everybody?
[02:20:11] You can go run your own container from the command line, why am I wasting time on this?
[02:20:16] Let's actually get you to do that now.
[02:20:20] How much time we got?
[02:20:21] We got seven minutes left.
[02:20:23] All right, so I'm going to show you how to get your own terminal for free on your computer
[02:20:29] and you don't have to play with any of this stuff, okay?
[02:20:33] That I made for you.
[02:20:34] I made it for you.
[02:20:35] They don't have to pay for code spaces or any of that stuff, okay?
[02:20:39] Step one, I was, okay, I wasn't planning on getting this far ahead, but we are very close
[02:20:44] to going to the next thing.
[02:20:47] The next thing is now it's starting to learn the terminal, which is the thing everybody
[02:20:50] is here for.
[02:20:51] They want to learn the terminal, they want to learn how to code.
[02:20:53] So let's do it.
[02:20:54] Let's end on a good note.
[02:20:55] So let's go download those things.
[02:20:57] We go to the Beginner Boost page, we click on the main page, because I mean, all that
[02:21:02] other stuff is trying to get a container in the web that you run through a web interface.
[02:21:07] Why not get an actual container that runs on your computer?
[02:21:10] Like all the pros use.
[02:21:12] Let's do that.
[02:21:13] So you go to the Beginner Boost, which guess what, family?
[02:21:16] This is a container.
[02:21:18] Yeah, that's what the container file is.
[02:21:20] It's a container.
[02:21:21] This is what a container looks like.
[02:21:23] It's a Linux system.
[02:21:24] It's got a lot of stuff you don't need to understand it.
[02:21:27] Why is a container?
[02:21:28] Because it's universal across the board and it's got all the stuff set up the way we need
[02:21:33] it up front.
[02:21:34] That's why we're using a container.
[02:21:36] A container can think of it as a tiny computer that runs inside your computer.
[02:21:40] It's not, but think of it that way for now.
[02:21:43] So what do we do?
[02:21:44] We want to get it working.
[02:21:45] So these are relevant technologies set up the boost container.
[02:21:47] We're going to follow these steps.
[02:21:49] First of all, get admin rights on your computer.
[02:21:51] That means you have to be able to install stuff on your computer.
[02:21:55] Can you do that?
[02:21:56] Yes or no?
[02:21:57] If you can't pause the video right now and go figure that out and get that.
[02:22:00] Because you can't do anything until you can do that.
[02:22:03] Number two, you're going to install the software.
[02:22:05] So you're going to go to, I've covered this in the first boost, but we're doing it again.
[02:22:09] Go to the software.
[02:22:10] So you need to learn how to install software on your computer.
[02:22:13] There's two ways, the point and clicky way, and the software package manager way.
[02:22:18] If you're on a Mac, you want to use a brew, and you want to learn how to install brew
[02:22:22] and use that as a side quest.
[02:22:25] You'll eventually want that, but for now, you just need to get it on your computer.
[02:22:28] It doesn't matter how.
[02:22:29] And number two, if you're on Windows, you want to use WinGet eventually.
[02:22:33] But for now, it doesn't matter how.
[02:22:35] You just need to get Podman on your computer.
[02:22:39] So first of all, you need a terminal.
[02:22:41] So you're going to go to Westerm, and you're going to click on Westerm, and you're going
[02:22:46] to download it, and you're going to click on that and install it.
[02:22:50] Once you install Westerm, then you're going to cut and paste this code right here.
[02:22:56] And you're going to put that into a file on your computer in your home directory that's
[02:23:02] called Westerm.lua.
[02:23:03] Here we go.
[02:23:06] Dot wasterm.lua.
[02:23:07] So what does that mean?
[02:23:08] That means that if you're on a Mac, you would open it up, you'd open it up, and you'd find
[02:23:13] your home directory, if you create a new file in there, called Westerm, and then you would
[02:23:17] put it in there.
[02:23:18] So if I go to my Finder on a Mac, Windows is different, but if I go in a Finder, I have
[02:23:23] lots of things.
[02:23:24] Hey, there's my XY.
[02:23:27] And then what?
[02:23:28] Then we're going to go to--see, we want to go to the home directory.
[02:23:34] Where's your home directory?
[02:23:37] You might have a hard time finding your home directory like me.
[02:23:40] This is the thing I don't like about Mac--where is the home directory on here?
[02:23:45] Open a new tab, search criteria, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo,
[02:23:52] doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo, doo,
[02:23:59] doo, doo, doo, doo, doo, doo, doo, doo, doo, doo.
[02:24:00] Can't find it.
[02:24:01] Where is it?
[02:24:02] Where is it?
[02:24:03] I don't know how to do this.
[02:24:09] I had this problem with somebody I was mentoring once, they're like, where is the home directory?
[02:24:20] I don't know where to find that.
[02:24:28] Because they try to save you from everything, right?
[02:24:30] You need to go to your home directory.
[02:24:33] And it's not your desktop.
[02:24:36] No.
[02:24:37] And this is your recent file, which doesn't even exist, it's completely virtual.
[02:24:44] I honestly don't know how to do this.
[02:24:52] I've never used it from the GUI.
[02:24:55] I know.
[02:24:56] Open.
[02:24:57] Yeah, but for that you have to have a terminal.
[02:24:59] But you have to have a terminal for that.
[02:25:02] And then you have to, you have to, you have to, you have to, until they edit it, yeah.
[02:25:14] I know another way to do this, but, but I'm, I'm, I'm actually trying to help the person
[02:25:18] who doesn't never use the terminal before.
[02:25:20] How would they even do it?
[02:25:26] Listen, documents, I want, I want, seriously, I don't know how people would do it.
[02:25:40] How would they even go about doing it?
[02:25:42] It's a Mac.
[02:25:44] Look, I know, I know how to do it from the finder, but I don't, I don't know how to say
[02:25:49] I want to go, there's no way to navigate the file system.
[02:25:56] Wait, what is this?
[02:26:02] Goblin loop.
[02:26:03] This is a whole bunch of awesome stuff, but nothing that's related.
[02:26:06] I said, my documents directory, file, I don't want documents.
[02:26:13] I don't want, I don't want, I don't want, I don't want, I want my home directory.
[02:26:17] Why did they make this so hard?
[02:26:19] Why did this get so freaking hard?
[02:26:25] I'm confused, like a big Mac.
[02:26:32] This is, this is, this is like really freaking me out.
[02:26:38] I'm going to ask my AI, I cannot believe I'm asking my AI this.
[02:26:43] How does a beginner navigate to home directory on a Mac through a GUI finder?
[02:27:00] Thank you for the follow.
[02:27:05] Finder, click the smiling face icon in the doc.
[02:27:10] Click at the left sidebar from the folder with your username, click it.
[02:27:16] Okay, where, where is it?
[02:27:19] Guys, I'm sorry because I, I use the term over everything.
[02:27:23] I don't know how to do this.
[02:27:25] Right click, um, what does it say, go to folder with my username.
[02:27:35] There is no username folder here.
[02:27:38] Go to folder, uh, rdbx from users, rdbx from.
[02:27:49] This is so weird.
[02:27:53] This is, it should not be this hard.
[02:28:02] Oh look, look, look, look.
[02:28:06] You can just push tilde and it will go to your home directory.
[02:28:10] There it is, if you push tilde, it goes to your home directory.
[02:28:16] Goddamn, now it's way harder than it should be.
[02:28:19] I cannot believe how hard that is.
[02:28:23] But that took me there.
[02:28:24] Okay, there we go.
[02:28:25] So now from here, you need to make a new file, right?
[02:28:28] Now this is another thing, it's because it begins with a dot, it's hidden, so you can't
[02:28:32] see it.
[02:28:34] I hate how complicated this is for a beginner.
[02:28:39] You need to put a file in here that shows it's, that's invisible, you can't see it.
[02:28:45] So I need to say show view options and I want to see hidden files.
[02:28:55] I've never done this before because I don't need to.
[02:28:58] It's a terminal that's so much easier.
[02:29:01] In fact, I was helping a beginner do this very same stuff and she goes show me the terminal
[02:29:06] right now.
[02:29:07] She didn't want to do any of the stuff that I'm doing.
[02:29:11] All right, so you could come in here and I suppose you could make a new file.
[02:29:15] I don't even know how you would make a new file in here.
[02:29:17] All right, notice this file, I want to make a new text file.
[02:29:22] I'm trying to use the GUI.
[02:29:23] So your infrastructure is your use is the GUI, new smart folder.
[02:29:33] I have no idea what I'm doing because I use terminal.
[02:29:37] So how do I even make a text file in here?
[02:29:43] I can't, why can't you just do a new file?
[02:29:46] Give it to me Rob, it's real, why I don't know how to use the GUI, you're supposed to
[02:29:52] write the value of your username and they don't know, yeah.
[02:29:56] Okay, how do I make a new text file in there?
[02:30:08] I am having a hard time sticking with this GUI method because it's so stupid.
[02:30:14] Use text edit.
[02:30:15] You know what?
[02:30:16] I learned to code Perl using text edit.
[02:30:17] This is what I use.
[02:30:20] Open text edit, command space plus text edit, okay.
[02:30:24] From in here, command space, text edit, okay.
[02:30:31] And then I go, okay, this is easier, so I go to rvxrob, that's my home directory, right?
[02:30:38] And then we do new document, watch me blow out my Western settings.
[02:30:47] Yeah, I'm going to paste my Windows stuff, my web, my Lua.
[02:30:54] All right, now let's do file stay, I want to be careful, I'm not blowing my file away.
[02:31:08] I can't believe how hard this is, mov.westerm, wait, copy.westerm, wait, do I not have a Lua
[02:31:18] file in here?
[02:31:21] Where is my Western Lua file?
[02:31:25] I must not have, mind must not be in here.
[02:31:30] I'm not doing this because it's poor people that don't, I have, I have relocate figure
[02:31:38] ation set up.
[02:31:45] All right, so I have dot Western dot Lua, dot main Western dot Lua, that's it for Western
[02:31:58] dot Lua.
[02:31:59] Does this mean I don't have a Western dot Lua here anymore?
[02:32:02] And that's -l.westerm.lua, that's his file, this is really weird, all right, so I have
[02:32:30] a local share of westerm, I don't know, no, what the fuck?
[02:32:55] I don't know why it's finding all this stuff.
[02:32:57] And everybody just gave up on Western because it was so hard, I should have, like, rehearsed
[02:33:02] this.
[02:33:04] Local share of westerm, it's not finding it, Western dot Lua, all right, so, yeah, yeah.
[02:33:14] Oh, you know what, it was there the whole time.
[02:33:20] I was in the wrong place, oh my god, I'm so dumb, I am so dumb, I was in, I was in my
[02:33:25] get-up repo, it's right there, yeah, it was there the whole time, I could have sworn
[02:33:31] it was, so I'm going to copy it to temp because I don't want to kill it, all right, so, but
[02:33:37] I'm going to save it, so I'm saving it into my home directory, users are a big drop, you
[02:33:41] don't have one, so you're not going to worry about breaking it, right, I'm going to write
[02:33:45] this, we're going to change it to be, whoops, not that, oh my god, Robert, I probably should
[02:33:50] stop streaming, I'm starting to do stupid things, westerm.lua, the dot in the front
[02:33:55] makes it invisible, which is lame, but that's what you have to do.
[02:33:59] Is it a rich text format, no, is it, what is it, I want plain text, this is a stupid
[02:34:05] simple text thing, say, the name begins with a dot as a reader for the system, if you decide
[02:34:13] to go ahead and use the name of the user, not the file will be hidden, yes, I want dot,
[02:34:20] they are trying so hard and they put an RTF ending on it, oh my god, why are they making
[02:34:31] it so stupid, this is so stupid, is it really that hard to make a file on a system without
[02:34:45] the terminal, I did not know that, I did not know how much pain and suffering people were
[02:34:51] going through, can you believe this, it really is for babies, it is, but it's also for power
[02:35:03] users, if they know how to get to Unix underneath it, which is what I do, and every other developer
[02:35:08] that I work with does, man, the level of babying has gotten over 9,000 though, this is insane,
[02:35:21] they have a thing called simple text, what's another editor, simple text, I mean I'm kind
[02:35:29] of worried, it's iPad level of babying, right Ham? I cannot believe, I am glad that some
[02:35:41] of the veterans are in the chat who see how annoying this is, if you are just coming
[02:35:45] to this and you are trying to break into tech, you would be immediately defeated by Apple
[02:35:51] being stupid to its beginners, why don't I just use Linux, because I made a whole video
[02:35:59] about it, Linux is a non-starter, not for beginners, you are talking about beginners,
[02:36:03] you are talking about installing an entire Linux OS, where are they going to go buy
[02:36:06] it, target, and when it blows very everything, but you know what, you got to start somewhere
[02:36:18] and the average person who is starting out does not have a Linux box and suggesting that
[02:36:22] they should just run Linux is kind of naive and mean, so anyway, I get it, I get what
[02:36:28] you are saying, again, I have a few people in mind who barely know how to use their computer
[02:36:36] and I want to help them get into tech and right now I just really realize how hard it
[02:36:41] is for them to just get a terminal to run, so I am now going to rethink the use of West
[02:36:47] term in general and I am just going to have them start using the terminal from the beginning
[02:36:50] instead of West term, in fact, I am going to change my beginner boost to do that very
[02:36:55] thing and we are not even going to use West term, West term will be a nice to have later
[02:36:59] on, because Mac comes with a terminal, alright, so I am sorry to make this video any longer
[02:37:05] than it needed to be, but yeah, so anyway, how to run Linux on a Mac, that is why we are
[02:37:15] doing this, this is why we are setting up a container, that is the video, and that is
[02:37:19] not the first video by the way, that is the first tech video, getting a tech job, a tech
[02:37:24] career has little to do with learning Linux right away, but I have already made videos
[02:37:29] about why I do not start out that way, if you guys care to know you can go watch those.
[02:37:35] We are talking about absolute beginners who want to get a tech career and the first thing
[02:37:38] they need to do is establish whether they want to go through the pain and suffering that
[02:37:40] we just went through, alright, so I am going to change that instruction to get West term
[02:37:48] to just use the terminal, because the terminal is already built on and the terminal does
[02:37:53] not need any configuration, it is already there and they can start using it on day one
[02:37:57] to get their thing on there, and that is a new discovery and that is why I did it live
[02:38:03] because I thought I wanted to see how easy it would be, I still believe that West term
[02:38:05] is a better terminal for lots of reasons, mostly because it runs on everything and it
[02:38:09] is consistent across the board, but for an absolute beginner you need to start using
[02:38:16] the terminal on the system, and we are going to do that, so we are going to start by using
[02:38:22] terminal instead, so to run terminal you would do command space, you can go find it, but
[02:38:31] you want to use your thing in Mac or Windows, Windows has the same equipment by the way,
[02:38:35] I do not remember what it is, but you have to find it and it will pull up your spot-lidey
[02:38:40] search thing, you never want to go through menus, it is way too slow, so you type terminal
[02:38:45] and that will open you, a terminal, ok, now your terminal will not look like this, your
[02:38:50] terminal will be probably one of the standard terminals, and I have mine configured and
[02:38:59] you can play around with the configuration of your terminal to your heart's content,
[02:39:03] but this is going to be enough for me for today, ok, so let me see if I can get you
[02:39:07] a terminal that looks closer to what you would start out with as a default, I forget
[02:39:13] where it is, I have not used terminal, terminal is really slow and it has not been updated
[02:39:17] in a very long time, but you know it is worth doing, trying to find this settings for it,
[02:39:27] here in the settings, ok, so I have Groobox Dark installed as my terminal, the normal
[02:39:35] terminal that you would get is usually, I think it is basic, and I do not remember
[02:39:46] which one, there is a bunch of them though, so let us do, no we do not want any profile
[02:39:52] minus get rid of the profile, what is, what is the default these days guys, is it basic,
[02:40:01] I think it is basic, if you want to set it as the default, if you prefer so profiles,
[02:40:09] anyway you are going to get a terminal, anyway, so you got a terminal up and it will dump
[02:40:20] you into your home directory, it will not look as nice as this, that is kind of the problem,
[02:40:25] you know what, let me try something, I am trying to make it so that it looks like what
[02:40:33] you have, give me a second, so let us do studio ad user, I do not think you can do studio ad
[02:40:48] user on this, no no, no boost, oh, head, head just in time, hey hat how are you doing, this
[02:41:05] is really expecting you, I am trying to help an absolute beginner get a terminal out of
[02:41:11] Mac, and I was going to have, we could not even get into the home directory, it was absolutely
[02:41:16] insane, you cannot open your home directory and save a file on the Mac, from the GUI,
[02:41:25] and I just punted, I just punted, I mean let me show you, I am going to go through the
[02:41:30] steps again, so I made a bunch of assumptions about how easy it is to do, and I went through
[02:41:37] the process of absolute beginner would do if they did not know about the terminal, what
[02:41:40] are they have to do, so the normal process would be, okay go open up your finder and
[02:41:46] then go open a file, right, and or go open text edit and go open a file, this is just
[02:41:53] a configure your western, right, so you run text edit, and the first thing it wants to
[02:41:59] do is it wants to save your text files and RTFM rich.text document, you literally cannot
[02:42:05] save a plain text file on a Mac at all, I mean when did that change, it was pretty embarrassing,
[02:42:16] I am like I can't, because I am too terminalized, so the new normal is like started terminal,
[02:42:23] which mine has already been configured, so it is not a proper representation for a beginner,
[02:42:29] and if there was no one to teach them yet, right, Ben, I agree, so then you open up a
[02:42:34] terminal and you are like okay, at least I am in the home directory now, right, but
[02:42:38] now what I am trying to do now is to simulate what does it mean to not have, you know this
[02:42:44] terminal, out of box has been, absolutely, yeah, but it is an ancient version, the version
[02:42:51] of batch is number two, it is version two, so there is a million reasons that I want
[02:42:54] to have a container, okay, so once you get a terminal open and you have installed Podman,
[02:43:00] so let's go back to the steps before we leave, because I have confused a hell out of everybody
[02:43:04] at this point, so we were going to end with GitHub editing, and now we have kind of gone
[02:43:10] a little bit far, because we were doing step two install Western, and I am going to change
[02:43:15] this right now to be install Podman, and I am going to skip that entire step, and then
[02:43:23] we are going to run Podman, okay, so let's do that again, and then people can skip ahead
[02:43:28] as part of the video, and not be as traumatized, huh, I feel really bad, also Western crashed
[02:43:41] in the middle of all that, yeah, I guess, I guess, I guess, I guess, you know, God is
[02:43:49] telling us something, God is telling us not to use the Western word for the boost, I love
[02:43:58] it though, oh well, okay, so if you want to say, God bless Tmox, I did not lose any of
[02:44:05] my work, alright, so let's go with, what was the next thing we are doing, we are doing
[02:44:15] Tmox, was it getting started, CD Boost, Tmox, this is get admin, install Western, know
[02:44:28] that itself, install Podman, set up Boostkit there, I am getting rid of this step completely,
[02:44:38] because I am not assuming you know how to do anything, install Podman, yes these could
[02:44:43] all be ones, but they do not look as good on the thing right now, oh here is a cool trick
[02:44:48] by the way, you guys know about this, you can like edit, you can like render it, yeah,
[02:44:56] anyway, install Podman, alright, so install Podman is the next one, get an add, commit,
[02:45:09] drop, was term for the boost, it really isn't relevant, and a lot of people actually do
[02:45:18] use the terminal, there are like, there are people that I work with, they use a really
[02:45:22] ancient green screen terminal, one guy has an amber terminal, I was like, ooh you have
[02:45:27] like a modern like, back in the day, if you had an amber terminal, that was like super
[02:45:30] cool, they still use the old school, no configuring, no colors and everything, you live in putty
[02:45:43] and everyone gives me crap exactly, exactly, the putty, putty unfortunately has to have
[02:45:51] an SSH connection right, so, but it's about getting worked on right, so, so I'm kind of
[02:46:00] glad that happened because it's, with service not essential, they get a tech job, no, it's
[02:46:05] not, so it's gone, it's gone, just use the terminal that's on there, everything else
[02:46:10] is your fun Saturday afternoon live streaming playtime, it's not like get word done, install
[02:46:17] Podman or other OCI container engine, okay, so you click on a podman, you go to podman.io
[02:46:24] and then you do the obvious, you don't have to worry about installers, you hit download,
[02:46:29] it's probably for your life or Mac, you click on it, you let it install, you follow all
[02:46:33] the instructions, you're done, when you get done with that, then you have a terminal,
[02:46:39] so then you can go to your terminal, where's my steps, god damn it, alright, so then you
[02:46:47] go back to the boost, hey, it's got, do you know job fairs, if you know any, can you post
[02:46:54] it to my discussions list, I'm looking for somebody to post really good national job fairs
[02:47:00] to my discussions list and I want to do a big old meet up at one of these job fairs
[02:47:03] and help people get a job, I'm looking for ideas for job fairs to go to though, anyway,
[02:47:10] blah, blah, blah, overview, so, it connects network devices, and there's a putty, yes,
[02:47:16] putty's really good for that, overview, we want to do install, we want to say, instead
[02:47:24] of boost container, where's the setup boost container, setup boost container, alright,
[02:47:28] so install software, I don't want to say install software on your computer, actually I don't
[02:47:32] think we need that either, we just need to install Podman, yeah, I'm glad we're doing
[02:47:39] this, I am glad we're doing this, it's actually, you don't need that, you should eventually
[02:47:44] learn that but you do not need to learn that now, it's like too much information, you got
[02:47:50] to get admin, you got to install Podman and you got to build and run the boost container,
[02:47:54] the end, the end, I'm glad we're doing this, you guys might not be, I am, this is going
[02:48:12] to help future generations, so, simplify setup container, the whole point of the container
[02:48:20] is to make it easy to get started, which is the opposite of what just happened, so now
[02:48:24] it's easier, never try Podman, we use Docker, your job, hell unfortunate, Docker sucks,
[02:48:35] okay, so, anyway, refresh, install Podman, yep, a lot of people hate Docker for a lot
[02:48:49] of honest reasons, including they screwed the entire open source industry by denying
[02:48:55] them access to their repos and their registries without warning, they got the, look, ask,
[02:49:02] here, go ask your AI, why do people hate Docker, people hate Docker as much as they hate the
[02:49:14] ecosystem design, try to cycle around it, no, they don't, Docker was over Silver Square,
[02:49:20] this is wrong, they're not even talking about it because it's politically sensitive stuff,
[02:49:25] the Docker company screwed the open source movement, a lot of developers, Docker desktop,
[02:49:32] this is not true, too many layers of tooling, this is wrong, oh, this is wrong, it changes,
[02:49:36] no, this is not true, none of this is true, she's lying, she doesn't know what she's talking
[02:49:41] about, what about the fiasco with them changing a policy and denying access to stuff, everyone
[02:49:58] wants to, yeah, we all moved to container D, the whole world moved to container D, the
[02:50:03] Docker PS, the Docker desktop used to be free, they all of a sudden made everybody pay for
[02:50:07] it, developers are working on it, could never do it anymore, that wasn't even the main fiasco,
[02:50:12] then they denied access to everybody, and they were, they had bad security policies in the
[02:50:18] first place with root poll containers, and they just got a huge black eye, nobody who's
[02:50:25] paying attention uses Docker willingly anymore in the industry, and I, and Scott agrees and
[02:50:30] so does a lot of other professionals, so just, yeah, they've been suddenly breaking things
[02:50:36] forever, and the creator of Docker was so disillusioned, he left the company said he was pursuing
[02:50:40] other interests, and whatever, so, okay, so here I am in the boost container, so let's
[02:50:46] go back to the, to the steps, get admin rights, install pom and download, click install, and
[02:50:52] then build and run the boost container, okay, everybody uses pom and pom and container D,
[02:50:58] that's what we use, nobody uses Docker, it's Docker is still easier to use in some sense,
[02:51:06] which I don't like admitting, but it's true, all right, so we're going to do these commands,
[02:51:10] right, so build and run the boost container, so this, this, this, I have to say this, but
[02:51:14] I have to say, I'm going to, I'm simplifying all of this, I told you this is a messy pom
[02:51:21] and I don't care, install pom and install, build and run the boost container, all right,
[02:51:31] so first you need to open a terminal on your computer, all right, and then, and run the
[02:51:43] following commands, and I'm actually going to put these as two separate commands because
[02:51:49] inevitably people will try to do both at the same time because it'll say copy and they'll
[02:51:52] copy both, okay, the first command creates, let's see, first command pulls down the boost
[02:52:09] container, container source and builds it locally on your computer, this is a huge breakthrough
[02:52:21] by the way, because I used to have an image that they downloaded, but having them build
[02:52:26] it means I can make changes to the container all the time, and then I just have to have
[02:52:30] them rebuild and they get the new one, and it doesn't require them to download two terabytes
[02:52:34] or how big it is, then actually run the container giving it the name boost, okay, container,
[02:52:53] if you'll see, if you want to immediately throw away the container instance, you can
[02:53:07] add -rm as well, otherwise you can reconnect, restart, and connect to the same container
[02:53:29] later until you explicit, delete it. Does that make sense? Yeah, all right, so when you
[02:53:51] are done, okay, so when you are done type exit or just close the terminal, you can reconnect
[02:54:10] later with the following command. Scott, I'm trying to get them to use the actual containers
[02:54:21] the way they would use them at work instead of in a web, you know, that's what I'm shooting
[02:54:26] for. A container is nice, except for just like shit the bed with Slurm, at a core dump,
[02:54:33] general protection ball that I've been debugging it all week, is holding up our major production
[02:54:40] supply line. Yeah, so I'm sorry, I'm starting to talk like an engineer. If somebody has
[02:54:52] a shouted out, Scott, let me know. Update, install podman on the images with Slurm, does
[02:55:10] that make sense? These with this Apollo destruction download in Star, again, in the
[02:55:23] over here. If you know how you can use brewery or was term instead, but no worries, if not.
[02:55:45] Okay, so much for being suitable for work, I swore several times tonight. Thank you for
[02:55:51] the shout out. I don't know if it's working or not, but all right, I'm about to hand over
[02:55:58] to Heather, are you about to stream? Because I'll go raid you if you're going to, if you're
[02:56:02] going to start, we're about to done, we're about done, we're going to wrap up here. All
[02:56:06] right, so get commit, move was term, get push. I'll show you about three weeks. Oh, yeah,
[02:56:22] super busy. Me too. I'm kind of like taking over. Believe me, I know. So I did stream
[02:56:29] for three months as I go through phases, right? You come and go. That's something else do it
[02:56:38] for a while. No, I know. And I'm, I'm, unfortunately, I'm kind of on the upside of it. I'm like,
[02:56:44] yeah, let's do this. So, all right, we're going to reload our build and run the boost
[02:56:50] container stuff. Wait, what did I commit this? Bad Rob. Bad Robert. Don't worry, folks,
[02:57:07] you're going to learn all this good stuff. Get, uh, simplify, build and run. He converted
[02:57:28] me from Dr. Popman already. We'll see dissertations to training people and work. Yeah, I can only
[02:57:34] imagine how busy you were. All right, so that's much more organized. So the first command,
[02:57:42] you can literally cut and paste it now, which is what I wanted. So let's do, let's do exactly
[02:57:47] what it says. Open a terminal on your computer and run the following commands. So to open
[02:57:50] a terminal is on the Mac is command space terminal. You can do the same exact thing on
[02:57:56] a Windows machine. So it might be command space. I think it's actually the Windows key, but
[02:58:03] we're going to go run terminal. You can just hit enter. And it will, in this case, I guess
[02:58:07] we have to pick one. All right. So we get a terminal, right? There's a terminal. Mine
[02:58:10] has colors on it. So reasons. Uh, okay. Now, uh, you're going to go ahead and now we're
[02:58:18] going to run the command. So you can literally cut and paste the command. Podman build that
[02:58:24] key boost blah, blah, blah. And over here, you get copy and then paste, which is command
[02:58:30] be even if you had to, you could do a shift paste and or whatever, and it pays, and then
[02:58:35] we're going to hit enter. We got a shout out. I think it's slash just so I don't know who
[02:58:41] the model are who do it. But, um, all right. So this builds and installs container. Now
[02:58:48] it's, it's kind of big. I could probably make it smaller here. Yeah, let's make it so you
[02:58:55] can read it. So what this is doing is it's building and installing a container that runs
[02:59:00] Linux inside of it. And we'll talk about what Linux is, but it's just no, it's an operating
[02:59:06] system like, like, like Mac, uh, or Windows. Um, and it's very close to the underlying operating
[02:59:14] system on a Mac, which we just had a lot of hard time getting to. Uh, but that's why
[02:59:18] Macs are the primary tool for, uh, for most engineers. Um, of course I'm going to have
[02:59:24] a neo-vim problem. Of course I would because I broke neo-vim and the event tree sort of
[02:59:31] stuff is all broken. Hopefully that's okay. I'm actually probably going to pull neo-vim
[02:59:37] from my boost container because it's too buggy. It's really, really buggy. Uh, anyway, we're,
[02:59:45] we're about to see if that is an issue. Sorry, new boost. Yeah, this is the second, uh, boost.
[02:59:52] So this is the second one. So here we're going to click here. Uh, Podman run it. So we're
[03:00:00] going to go ahead and try to run it. Hopefully my neo-vim build didn't kill everything. Uh,
[03:00:07] creating continuous story, boost is already in use. Okay. You have to remove the container.
[03:00:11] So in that case, how would you do it? Uh, sometimes you might want to remove it and reset it.
[03:00:17] So this is how you remove it. Podman are in boost. I'm going to go ahead and Podman
[03:00:22] are in boost to remove it. And then I'm going to get a new one. Uh, I'm going to start it.
[03:00:29] I'm going to start it. That's probably being the same page. Podman start boost. I'm going
[03:00:35] to copy that command and paste it. No container name boost found. Is that because
[03:00:43] I just did a build and it was already there. I hope that neo-vim thing doesn't kill my boost.
[03:00:53] It might, it might kill it. I don't care. All this is live.
[03:01:08] The new, I changed the tree sitter stuff and I upgraded to neo-vim 11 and it broke everything.
[03:01:14] It broke, it broke my, my screen key. It broke, it, it won't even edit,
[03:01:21] loom files without complaining. It, it broke everything. And I'm like,
[03:01:27] it was four years ago using CSC. Tree sitter is totally an unnecessary hipster thing. Absolutely
[03:01:34] is. And it's, it's, you know, but it does do some cool things. Like it allows you to do DAF,
[03:01:41] which is super cool. Because I mean, it's worth it just for that alone. I'm going to start the
[03:01:48] boost container. Let's try to attach no container name boost. Okay. So now we're going to do
[03:01:55] run it. Okay. So now it works. Yay. So the tree sitter thing is fine. It's, it's minor.
[03:02:03] Well, we'll fix it eventually. It doesn't just make your, your colorful, it gives you syntax.
[03:02:08] It gives you syntax to know what a function is in Bash and Perl and everything else. It's
[03:02:12] really cool. It's, I'll, I'll show you when we get into editing. So that's one of the reasons I
[03:02:16] have a container for this. Okay. So now you can type clear to clear to the screen. And we have a
[03:02:22] container. Boo. Yeah. You've got a new bunch of container. You're able to edit things. You can
[03:02:28] edit boo.md. Hello there. It's like horrible colors because this is my terminal and not my
[03:02:37] Western. I don't eat around function yet. So, and this, this is the end of this boost. So you can go
[03:02:47] in there and play around. You know, I'm starting to realize that, no, that we're not using
[03:02:56] Western, I might, what I'm going to do is probably put a terminal profile in. So if people want to
[03:03:01] have better colors, they can change the terminal shell profile colors. What are the default colors,
[03:03:06] by the way, before we leave? I kind of, I kind of want to get that working before we leave.
[03:03:14] I think, I think basic is the, is the default, right?
[03:03:22] I'm going to make basic the default terminal.
[03:03:34] 3K live files, right? That's what I'm trying to talk about, tree sitter is horrible for that stuff.
[03:03:40] All right. There we go. There's a, there's a regular terminal. Yeah. And if we, if we got rid of
[03:03:45] Bachelors, see, it would be, you know, fine. So let's do boost. Let's do this. Where's the start?
[03:03:54] Start a boost container. Yay, VIFood.md.
[03:04:02] It's got the bell and everything. Oh, God. It's got, it's got line highlighting on.
[03:04:09] Yeah. I hate that. So I'll be fixing, I'll be working on this for some of the day today,
[03:04:18] getting the boost kit here to work and be a lot prettier. And quite honestly,
[03:04:22] I'm going to drop Neil Bim completely. I know the bell is loud, right? I know.
[03:04:29] You can't turn belt, you have to turn bell off in the terminal. It's like a setting.
[03:04:35] Yeah. You have to turn it up and you're, you have to go. So this is the default.
[03:04:43] Working directory terminal. I should probably redo this whole entire thing and show people how
[03:04:49] to use the terminal and then how to do it in Windows. I should, I should show them when,
[03:04:55] Windows one and then I should show them the, the back one because those are the only ones
[03:05:00] that we're doing perhaps with beginners because they don't, they don't know about Linux yet.
[03:05:04] They don't have to put Linux on the machine. Uh, Windows directory or kind of activate
[03:05:08] processing argument, Windows size, uh, shell, keyboard, advanced, pasted new lines,
[03:05:19] external audible bell, no visual bell. Only one sound is needed. No, no, I don't want any
[03:05:25] fucking bells. I mean, any bells. No bells, please. Thank you very much. So, uh,
[03:05:35] rough data to type with your left hand while moving your cursor with your right. No. Why would I?
[03:05:46] I don't do that. Tish people had to install the actual usable terminal.
[03:05:52] I just did and you cannot do that because you can't create the, the configuration file.
[03:06:06] I wonder if the was term defaults are usable enough. I bet they are.
[03:06:12] I bet the was term defaults are usable enough.
[03:06:19] I'm guessing they probably are the deter through you up. Yeah.
[03:06:34] Do you want was term or not is the question, right? Let, let me try something. I'm going to,
[03:06:40] I'm going to take out was term, the was term configuration.
[03:06:49] This is all extra stuff. I didn't remove it. I, I, um, I did remove, I do it just now.
[03:07:01] So if I start up was term, I'm going to kill was term, quit was term. If I start was term
[03:07:06] with no configuration, what does it look like? Because it's a better terminal all across all
[03:07:14] around. And, and I would, okay, there we go. Yeah, let's do that. Let's do that. That's way better.
[03:07:23] I shorten gets the price. The reason that I want to use was term is because it's the same
[03:07:28] terminal in windows and Mac. And that way I don't have to tell them to get fancy installing
[03:07:34] windows terminal, which is totally different. And it's super much faster.
[03:07:42] mainstream tech engineer tools to give me some context for my own background.
[03:07:47] A two or three on about four year, 50 different mainstream tech engineering tools to give some
[03:07:51] tech. Okay. Yeah. Uh, often shortest to the number of price, right?
[03:08:03] I think, I think this is going to be the new normal.
[03:08:10] Not entirely new. Yeah. All right. So I'm going to add back Western.
[03:08:15] So go at the next boost. We're going to start with this. This is supposed to be for the next
[03:08:20] boost. That's why it's not really prepared very well. All the other stuff I prepared in advanced
[03:08:26] sport today, but the whole running Western and a container and everything that was supposed to
[03:08:30] be next week. So I still think we should download Western. And because they don't need to do a
[03:08:42] well editing, they can just download it and they can use it with its defaults.
[03:08:47] Container is terminal GH Linux. Right now you don't need to do anything with containers.
[03:08:52] You just need to download Western. And then you need to copy and paste this.
[03:08:59] I mean, you need this anyway. It's either this or you install Linux, which is a much,
[03:09:02] much harder thing to do, much harder. Eventually you should learn that, but not now. Right now,
[03:09:09] you're just trying to get you down the terminal and you don't need to do any of those other things.
[03:09:17] Yeah. Yeah. Yep. So we're going to go ahead and install it.
[03:09:29] Podman remote.
[03:09:35] Omarchi Rob, even with Omarchi. I don't know what that is, but the pretty colors, right?
[03:09:44] You can still add pretty colors later.
[03:09:50] The pretty good friend. Yes. Oh, look at that.
[03:09:57] It's like kind of happier. All right. Then we're going to go here and we're going to copy this
[03:10:03] run boost command. So we're going to run these. You'll know what these commands do eventually,
[03:10:07] but right now, okay, I already have one. So I need to do the remove.
[03:10:18] Or we can just do start boost. Let's do start boost.
[03:10:22] Podman start a attach boost. Yay, a bunch of sunrise. We get the sunrise.
[03:10:34] We get fishies. There's the fishies.
[03:10:38] And like, well, it's too small and blah, blah, blah. Well, okay, just go play with the configuration
[03:10:44] stuff, right? The problem with the west term is that it's all in the configuration files. So
[03:10:53] font size, decrease font size, how do you change the colors? It's much harder than using the
[03:11:00] terminal terminal. You can change the colors pretty easily. You know, I'm kind of conflicted
[03:11:10] about wisdom, because it definitely is not as easy to make it pretty. You have to edit the file
[03:11:22] to make it pretty. Oh, you got it? Nice. Wait, you did podman with C run as a runtime?
[03:11:37] I mean, okay. Go with something more popular for that experience with Linux. Yes.
[03:11:48] There are a bunch of little things that you need to, yes, stick us in a closet and we build
[03:11:57] everything. Right. Here's the thing. The colors that are available, I'm just going to, I'm going
[03:12:04] to not use Western because as much as cool as it is, I mean, I really, really love Western. I love
[03:12:11] it. But as cool as it is, it's not likely to be the thing someone's going to encounter first.
[03:12:19] If they, they should probably use window, window, standard terminal, and they should
[03:12:23] probably use the built in terminal on Mac, if it's a beginner. Jump manager, yeah, that's cool.
[03:12:33] When you saw for the first time, right, Tmux, desktop Tmux, well, we're going to use desktop
[03:12:39] Tmux for sure. Desktop Tmux is like one of the first things we're going to learn. That's why we
[03:12:44] have a container. And that's all I want to kill it. Yeah. Okay. So yeah, this has been really good.
[03:12:51] I'm glad I went through it. Stay tuned. I'll make a separate video about terminal stuff.
[03:12:57] Meanwhile, I'm going to go raid whoever and take a break and take a pretty lengthy break.
[03:13:04] So thank you for joining me everybody for today. And I'm going to go ahead and end the beginner
[03:13:10] boost video right now. And we'll go ahead and upload that.
