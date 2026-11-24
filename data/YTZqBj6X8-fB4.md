# Should we try coworking again?

Covers a co-working style live stream where the group works quietly in timed blocks with short chat breaks. Includes a discussion of Omarchy and DHH, on-call work and a ServiceNow to Jira migration, plans for IRL bike streaming and live music, setting up a microwave, and a long off-topic conversation about dating and men's support.

Stream archive — 2026-10-27

Chapters:
0:00 Setting up and deciding on co-working
6:00 Music, chat, and stream setup
12:41 Omarchy and DHH discussion
20:30 ServiceNow to Jira migration
30:10 Work priorities and Slurm conversion
33:03 Setting up the work timer
45:00 Quiet co-working block
1:20:00 Ad break
1:26:43 Stream plans: IRL bike streaming and live music
1:36:28 Muted co-working session
2:31:23 Co-working explained and on-call incident
2:36:21 Setting up the microwave
2:46:00 Reaching behind the fridge
3:14:54 Perl modernization and API rewrite
3:15:44 Dating and men's support discussion

`#coworking #livestream #devlife #slurm #jira #irlstream #omarchy`

## Category

People & Blogs

## Transcription

[00:00:00] (silence)
[00:00:30] I guess I'll just let this run for a while, and then we can decide I've got my two computers here. I am not using a fancy mic at the moment. I'm just using the computer mic, and you know, if that's not okay, then I'll change it. I'll make something better, but this is like ridiculously easy to do.
[00:00:59] So, I'm not going to change it. Hey, Ripplish. Rippoly. Rippoly on YouTube. How you doing?
[00:01:09] Yeah. And the other thing I forgot to do is I can actually put my phone next to me, so if you guys chat or something, it works.
[00:01:23] So, if people... Voice is okay. It's not like really great. It's not like radio voice, right? But it's okay. Good. Good, good, good.
[00:01:38] As we go into this, I open my kind of stuff. I mean, this co-working stuff. You know, we've got to be careful to not get too distracted.
[00:01:52] You know, that's super easy to do. A bubble rob. A lot of people like bubble rob. I don't know what's going on in the terminal, though.
[00:02:07] Yeah, I hate scuffed. I know. Another thing that's a problem is that my app stopped muting. A lot of the controls on my app stop working.
[00:02:20] And so, you know, this used to ghost me out and it doesn't do it anymore. So, something broke in one of my iterations and I got to go back and fix it.
[00:02:32] That's a problem because... Well, I guess I can do it from OBS.
[00:02:39] I have been trying to do this so that I can just push it, you know, dab a button and it will work.
[00:02:51] In fact, let me try this here. That's not my URL. You capture me in the next screen.
[00:03:02] Yeah. Anyway, so, yeah, we've got a lot to do here. I got to be careful. I can't get distracted by putting technology in for open mic.
[00:03:16] I mean, for app, for co-working. It's good to see you, Chris. Good to see you.
[00:03:26] So, yeah. I'm going to go make coffee. No co-working. What does that mean?
[00:03:39] We should not do co-working. You don't like co-working. YouTube doesn't like co-working. So, that's a vote for no.
[00:03:48] And we're not co-working. I'm not streaming. So, you know, that's the alternative.
[00:03:56] I actually do like having a company to chat with during the work day. So, that is kind of nice, but it has been really distracting for me sometimes because I want to chat more than I want to work.
[00:04:11] Surprise, surprise.
[00:04:19] So, that's a prof.
[00:04:23] So, I'm going to make coffee. I know it's crazy. Since I have a gig of an ethernet, I can actually take you with me.
[00:04:33] I'm being fan of the company, but the taste is for sure. Yeah.
[00:04:40] It's distracting from these. Nope. It is too distracting from these great streams.
[00:04:47] Let's show what so we can plants. I don't know.
[00:04:50] We're probably going to be on the bike. There's not going to be any terminal. If you're here for terminal stuff, there'll be a little of it, but there's not so far there's not going to be there's no plans to do any teaching how to code.
[00:05:02] Teaching how to code or anything like that. So, it's a problem. I made a promo timer. I have it. I probably still have it.
[00:05:10] What's my terminal? Oh, actually, I was going to be happy.
[00:05:16] This is this is what happens on our stream. Yeah, this is exactly what happens on our stream.
[00:05:23] Why is this taking so long?
[00:05:27] Let's move back up.
[00:05:37] Oh, my God.
[00:05:40] It's been running all this time.
[00:05:50] Yep.
[00:06:00] And then there's the other question. Should you music or no music?
[00:06:05] I think I'm going to do music. I think I'm going to do music, but the music is going to be.
[00:06:19] Mutable.
[00:06:26] So if we have if we have a timer for one, the next break is going to come and then I put on my normal music.
[00:06:32] Actually, if I do that, I can't stream to Twitter to YouTube.
[00:06:37] So, I forgot about that.
[00:06:43] Hey, Mark.
[00:06:48] I don't like any stream wrap voice down when you speak. Can you do that automatically in your stream wrap?
[00:06:54] What are you talking about voice down? My voice is too loud or something.
[00:07:00] I do mark.
[00:07:03] Let's let's figure out the logistics while I make coffee.
[00:07:10] Come with me as I make coffee.
[00:07:17] I wish I was in a way to make that like faster.
[00:07:23] Does it feel like there is?
[00:07:35] I can't help myself.
[00:07:43] I can't help myself.
[00:07:58] I missed streaming.
[00:08:08] Streaming is fun, y'all.
[00:08:16] Yeah, I got the chances.
[00:08:32] But she's going to keep working.
[00:08:48] Mr. Coffee.
[00:08:52] It's not nearly as bougie as the other one.
[00:08:55] I had such a bougie copy maker.
[00:09:00] This is not, it's like $15.00 or wrong by a target assumption.
[00:09:10] It's like I had to turn down the can you see, like, wait a minute.
[00:09:17] Oh, shit.
[00:09:29] Somebody was talking in a office hours.
[00:09:34] I was in office hours for somebody.
[00:09:44] I'm going to put my app on so I can see your chat.
[00:09:48] I'm going to put my app on.
[00:10:01] I know a lot of people like text stream.
[00:10:06] I mean, y'all are bored during work too, right?
[00:10:20] Do you guys have one of those team chats?
[00:10:29] It's like really cringe.
[00:10:38] I can pick who I want to be in here.
[00:10:43] I don't have to deal with bullshit and pretend like I want to talk to the people that are in my other streams.
[00:10:52] They're at work.
[00:10:55] There's a few people that work that I really like and they know who they are.
[00:11:00] They know who they are and I love them.
[00:11:04] If they actually wander in this stream, which they tend to do, a couple of them in particular,
[00:11:10] they'll find me and they'll be like, "Hey, Rob, swing it again."
[00:11:16] We're waiting for code to compile.
[00:11:18] We're waiting for IIS anyway, it absolutely is totally agreed.
[00:11:28] I'm almost out of coffee already.
[00:11:41] I know it's shitty coffee and it should be coffee maker in a shitty apartment.
[00:11:47] Did you know my apartment costs $985 a month?
[00:11:55] Yeah.
[00:11:57] How's them apples?
[00:12:02] Wait, what?
[00:12:08] I'm sorry, I'm sorry, I'm sorry, I'm sorry, I'm sorry, I'm sorry.
[00:12:23] So I haven't been following tech, I haven't and it's been glorious, oh my God, it's been so glorious.
[00:12:38] I have not given a shit about tech.
[00:12:41] I don't know what that is, I don't know what that is, tell me what Omarke is, but do I need to ask my agent?
[00:12:55] I'm looking up on Omarke is, I don't, do you don't want to see my face is like ugly and big and stuffy?
[00:13:22] Oh, that's better, okay.
[00:13:33] Omarke is an arch opinionatedistro.
[00:13:36] Yeah, by DHH, every single thing you just said made me want to vomit in my mouth a little bit.
[00:13:49] And arch distro, I use arch by the way created by one of the biggest assholes in history.
[00:13:55] Fuck, no, fuck to the no.
[00:14:01] Fuck, no, no, no, oh my God, no.
[00:14:08] Do you guys even know how big an asshole DH is?
[00:14:12] Oh my God.
[00:14:15] No, oh, see, this is why, look, just put me back on my mountain bike.
[00:14:22] It has some weird views.
[00:14:25] That's okay, I don't want to talk about it.
[00:14:32] I'm supposed to be like all positive and find good in everybody and everything.
[00:14:43] It's getting all the spending from bros who have denied LSS funding for decades.
[00:14:48] What?
[00:14:50] Oh my God, Silicon Valley has become such a fucking tragedy.
[00:14:55] It's as bad as Hollywood.
[00:14:58] I'm pretty sure they're going to start eating babies.
[00:15:03] Go look at the picture and you tell me if it's a chicken or a baby.
[00:15:08] Who is DHH?
[00:15:14] Am I confusing DHH with the DHH?
[00:15:18] Who created a presentation and the only thing on the first slide was fuck you.
[00:15:24] Just to get started.
[00:15:28] Look, I'm trying to be positive here, but again, I really should not stream.
[00:15:35] Cope NC.
[00:15:43] Yeah, I'm sure you love it, right?
[00:15:46] There's people out there who really love it.
[00:15:47] There are going to be people who are going to be really loving on this.
[00:15:49] I'm like, oh my God, he's so awesome.
[00:15:52] Then the Silicon Valley bros are going to stumble in here and then someone's going to tell me
[00:15:58] how awesome this or that streamer is and how awesome this gesture is.
[00:16:02] They're going to call me an idiot for not using that streamer.
[00:16:05] They're going to call me the most junior, senior, engineer they've ever seen.
[00:16:08] This is why I don't stream.
[00:16:14] A lot of tech.
[00:16:15] That's why I support to hear you.
[00:16:21] This is really good.
[00:16:22] I'm glad we're doing this because this is a good reminder of why I don't stream.
[00:16:27] It's why I don't stream unless I'm on my bike because the tech world, first of all, I fucking hate the tech world.
[00:16:32] I hate it.
[00:16:33] I hate it.
[00:16:34] I hate it from top to bottom.
[00:16:36] The personalities involved, the big egos involved, including my own, I fully admit that I have
[00:16:42] just as much of an ego as most of those people.
[00:16:44] I don't eat babies and get blood transfusions and put fuck you on the presentations.
[00:16:51] Those opinions don't matter.
[00:16:53] Everybody's been saying, "Well, that's why we need you, Rob.
[00:16:57] We need somebody who's authentic who's going to tell us the truth and who's going to give us the opinion
[00:17:01] straight and help us actually get a job in today's world."
[00:17:04] That's what I've always been about.
[00:17:06] You like the agenda parts of the industry.
[00:17:09] It's also tiling.
[00:17:11] It's also tiling.
[00:17:12] I don't use Linux graphic interfaces ever.
[00:17:16] I use Mac.
[00:17:17] Stumi.
[00:17:19] Mac is way better than.
[00:17:20] You want me to start this fight again?
[00:17:22] Look, I fucking hate Apple.
[00:17:25] But you cannot throw any shade at the Mac interface versus the graphic.
[00:17:34] If you're going to have to use a graphic, use an interface, use a Mac.
[00:17:37] I'm also sort of a DJ and a sound guy.
[00:17:39] Try that on a Linux.
[00:17:41] Ha.
[00:17:42] Ha.
[00:17:43] Good luck.
[00:17:44] Good luck.
[00:17:51] Thank you.
[00:18:11] I can't wait for my asshole teammate to find that ice cream.
[00:18:19] I'm just going to say that I can't wait for my asshole teammate to find that ice cream.
[00:18:27] I can't wait for him to find that ice cream.
[00:18:30] I can't wait for him to find that ice cream.
[00:18:38] I can't wait for him to find that ice cream.
[00:18:43] Okay.
[00:18:49] I'm trying really hard to be positive, but I'm failing as usual.
[00:18:56] The agentic parts of the distro and agentic Linux distro is interesting.
[00:19:00] So maybe it's worth looking at.
[00:19:02] Hey, look.
[00:19:03] I used to shoot on it.
[00:19:04] New of them all the time.
[00:19:05] Now I use it every day.
[00:19:06] I used to shoot on obsidian every day and I use it every day now.
[00:19:11] I have to shoot on max and now I use it every day.
[00:19:15] So don't be me.
[00:19:19] Don't be me.
[00:19:20] Be better than me.
[00:19:21] Have an open mind.
[00:19:22] Like consider everybody's opinions and then make your own decisions.
[00:19:32] I don't like Russ.
[00:19:39] I was based on my kids.
[00:19:46] Yeah, I don't know.
[00:19:52] They're actually pushing some stuff, some rust stuff at work.
[00:19:58] Yeah.
[00:20:08] This one, okay.
[00:20:09] Don't be so open.
[00:20:10] My brain falls off.
[00:20:11] That's interesting.
[00:20:12] That's a good quote.
[00:20:13] I like that.
[00:20:17] I have a good quote.
[00:20:25] Hmm.
[00:20:28] Hey, raise your hand if you have to use service now at work.
[00:20:37] Maybe it takes our constructively thought provoking so they're still pretty.
[00:20:45] Oh, in spades.
[00:20:46] Thank you for that.
[00:20:47] Appreciate that, YouTube.
[00:20:48] Thank you for saying so.
[00:20:51] Makes me feel better.
[00:20:52] You still don't encourage me being an asshole.
[00:20:55] I don't need that encouragement.
[00:20:56] That's my generation.
[00:20:57] We're assholes.
[00:20:59] You don't have to go that far.
[00:21:11] You don't have to go that far.
[00:21:17] Service now PTSD.
[00:21:19] Oh, God.
[00:21:24] So yeah, I'm using.
[00:21:29] I've been tasked with as fast as so we're getting off.
[00:21:33] I don't think there's any, which is not, I don't think I got to be really careful because I don't want to share anything this proprietary.
[00:21:40] But we're getting off of, what's it called?
[00:21:43] Ever.
[00:21:44] Ever bridge.
[00:21:49] I'm definitely a football team.
[00:22:00] Didn't make me choke.
[00:22:09] See, this is why I stream people.
[00:22:14] You're fucking funny.
[00:22:16] You're so funny.
[00:22:17] I missed my people.
[00:22:19] I missed my people.
[00:22:20] You all have the same sort of like demented sense of humor that I have.
[00:22:24] You know how hard is if I have people make me laugh like this?
[00:22:29] Oh, my God.
[00:22:30] That's so funny.
[00:22:31] I mean, it was such a basic joke, but it still is funny.
[00:22:37] I just missed it.
[00:22:38] I missed it.
[00:22:39] I've been missing.
[00:22:40] I've been missing having like the.
[00:22:42] I mean, this kind of banter that you only get maybe once a year at Lennox, right?
[00:22:47] Southeast Las Vegas, which by the way is in July, so I'm sorry.
[00:22:53] We should take a road trip to a Linux convention.
[00:22:55] That's like local.
[00:22:59] Not local.
[00:23:00] Local ish.
[00:23:03] No.
[00:23:04] Anyway, hope for toes.
[00:23:10] I'm eating raisin brown, by the way.
[00:23:15] Anyway, I have to show my teeth.
[00:23:21] I will.
[00:23:28] Oh, no nipples on stream.
[00:23:36] That's exactly what I'm doing.
[00:23:41] I want to talk about that.
[00:23:53] Because I wanted to get that reaction.
[00:23:55] That's why I wanted to gross you out.
[00:24:02] I get to troll you service when.
[00:24:07] Exactly.
[00:24:12] Moving to Jira.
[00:24:13] We're on Jira right now.
[00:24:16] Angel, happy?
[00:24:17] What's up?
[00:24:23] Service tonight.
[00:24:25] I want to talk to over 31st, which is like three days.
[00:24:31] To get.
[00:24:36] Which is not happening, it's just not happening.
[00:24:39] To get off of service now for our learning and send SMS messages via service now.
[00:24:45] Now, service now doesn't even have a method of sending alerts.
[00:24:52] I'm doing work right now.
[00:24:53] I'm talking about service now with my friends.
[00:24:58] All right.
[00:25:02] Actual work question.
[00:25:06] Does anybody know.
[00:25:09] If service now.
[00:25:12] Sorry for the fan.
[00:25:14] Does anybody know if service now can send an alert.
[00:25:18] An SMS message.
[00:25:30] Go about to access our channels now.
[00:25:33] Jira and confidence.
[00:25:35] What's that happens?
[00:25:37] Mark, that's exactly what we're doing.
[00:25:39] Oh, it's funny.
[00:25:40] This is another reason I'm streaming.
[00:25:41] Okay.
[00:25:42] Y'all are doing the same things that we're doing.
[00:25:45] Everything is snow, Jira and confidence now.
[00:25:54] He's big panda.
[00:25:55] Okay.
[00:25:56] I got to look at that.
[00:25:58] Yeah.
[00:26:00] Service now is like this help desk ticketing all things to enterprise system.
[00:26:04] It sucks.
[00:26:10] You can get email 1000 emails data from it for service now, well, yeah.
[00:26:23] We got off make docs.
[00:26:25] I deployed our entire make docs documentation solution because they wanted like a searchable web interface.
[00:26:31] And they all just chucked all of that.
[00:26:32] And now we have confidence.
[00:26:37] So, we're going to come once.
[00:26:45] So here's the thing.
[00:26:48] Y'all.
[00:26:51] We need to make a list of enterprise software that you're likely to be forced to engage with.
[00:27:01] So that you can prepare.
[00:27:04] And knowing what to know kind of thing, right?
[00:27:10] How does it have an MCP server locally?
[00:27:13] How to put an MCP on a jump post.
[00:27:18] I'm going to talk to Rick to the Jira API.
[00:27:22] To get a sense of service now.
[00:27:25] Yeah.
[00:27:27] Yeah.
[00:27:31] Probably an open source alternative, but the enterprises that I work for don't care.
[00:27:35] They don't care.
[00:28:02] But you're not here now.
[00:28:11] All right.
[00:28:14] Back to work.
[00:28:17] How you doing, Jira?
[00:28:19] Good to see you.
[00:28:28] All right.
[00:28:31] How much of my OBS can I open while you guys are around?
[00:28:34] I don't remember how much of it is private.
[00:28:37] And I don't have my privacy screen working right now.
[00:28:42] By the way, how is the quality of the video?
[00:28:48] Because it's getting encoded twice.
[00:28:51] It's coming from my OBS and then it's going to an OBS in the cloud.
[00:28:57] I just want to make sure it stays viable.
[00:29:06] Okay.
[00:29:07] You guys let me know if that changes.
[00:29:08] I need to.
[00:29:10] I have a meeting coming up.
[00:29:11] I have a slur meeting coming up in a few hours.
[00:29:17] Open the whole thing.
[00:29:18] No, God, no.
[00:29:21] I got stuff in my obsidian that is not for public eyes, including erotica that I've been writing.
[00:29:29] It's, it's soft erotica.
[00:29:31] It's not like he did this in this using words I can't say on YouTube.
[00:29:41] I am on all the meetings.
[00:29:44] We were supposed to have sprint planning yesterday.
[00:29:46] They got canceled.
[00:29:48] Anyway, let's, somebody asked me about my schedule.
[00:29:52] Let me, let me tell you the schedule.
[00:29:53] So today, um, ooh, the reporting earnings report is tomorrow.
[00:29:58] That'll be interesting.
[00:29:59] God, I hope we did good.
[00:30:01] I want a big ass bonus this year.
[00:30:04] Um, so.
[00:30:10] So we have a, we have a slurm status meeting.
[00:30:12] We were converting PBS to slurm, uh, which if anybody doesn't know what slurm is,
[00:30:17] it's a batch processing system.
[00:30:18] We'll talk about that some other day.
[00:30:20] Um, I have PR review office hours later today, but that's it.
[00:30:24] So my main priority.
[00:30:26] It reminds me it's 11 o'clock yet.
[00:30:28] So at 11 o'clock, I need to post my status.
[00:30:31] What I did last time on what I'm going to do.
[00:30:34] We do our, we do our stand up since in, uh, we have an automated, uh, Jira ticket.
[00:30:39] Nah.
[00:30:40] An automated teams creation, uh, thread now that fires at 11 o'clock and then we have to put our,
[00:30:46] what we did and what we're going to do, what our blockers are every day.
[00:30:50] We went back to it because we got a team got bigger and people stopped doing shit.
[00:30:54] Early say forgot to do things that were important.
[00:30:57] And, and so they had to kind of rein our whole team in.
[00:31:01] And so our whole team is now back on strict to you.
[00:31:05] You better fucking put your status in when it comes in.
[00:31:08] And if you don't within two hours, you get a ping.
[00:31:11] So, you know, I'm actually God, they did that because there are a lot of people on our team,
[00:31:16] including the asshole that I work with, uh, who get really wildly off target.
[00:31:21] They do.
[00:31:22] They come up, they come up, they, they spent like a week on this stupid Jira automated,
[00:31:29] like, like ticket interface creation bullshit that we don't need.
[00:31:34] We have like systems going down and thousand, ten thousand dollar GPUs coming in,
[00:31:38] sitting on the floor and he's like fucking writing Jira integration.
[00:31:42] And, and I was like, how is this a priority?
[00:31:45] And anyway, I don't want to talk about that.
[00:31:48] So you're going to, you're going to hear me complain a lot about people on my team.
[00:31:52] And those people on my team will never be revealed.
[00:31:55] I will never say who they are.
[00:31:57] But if they reveal themselves on my stream, that's on them.
[00:32:00] So this is why I don't talk about where I work.
[00:32:03] Just so you know, I don't, I don't talk specifically about the location.
[00:32:06] Because, because I'm going to talk shit about people that I work with that bothers me.
[00:32:11] And I think you should be able to do the same thing.
[00:32:13] I want us this to be a place where we can vent about the drama and then decide not to be that guy.
[00:32:18] So anyway, let's build some known I can do.
[00:32:21] Even if you're writing any, any spring batch Java code, nope.
[00:32:28] There's a lot of it though.
[00:32:30] Boy, you should get a job in Charlotte.
[00:32:32] There's so much Java spring batch source of stuff from the finance in Charlotte.
[00:32:38] I'd be surprised to see how much flooring there is.
[00:32:44] All right.
[00:32:45] Now we have to do the hard part where I go quiet for like an hour and nobody hears me say anything.
[00:33:03] So, let's go see if we can find a timer.
[00:33:10] I was just going to find just like a simple web timer.
[00:33:19] Let's do, let's do like an hour long break.
[00:33:21] I'm going to try to be good about doing this because people need to work.
[00:33:25] They need to not be distracted.
[00:33:26] Maybe you shut up the little chime when a new chat message comes in.
[00:33:29] Oh, right, are you getting the chime?
[00:33:32] I forgot that that's really loud for you guys.
[00:33:34] I forgot about that.
[00:33:35] I'm sorry.
[00:33:36] Thank you for reminding me Mark.
[00:33:37] How about now?
[00:33:38] I'll try to test it.
[00:33:48] We are loud.
[00:33:51] A multi hundred subset WordPress with heaps of plugins.
[00:33:54] Pull them every week.
[00:33:55] We're here.
[00:33:56] Did you guys fix all your PHP shit?
[00:33:58] What are you doing?
[00:33:59] Yeah.
[00:34:00] All right.
[00:34:01] So, again, folks, you know what I'm going to do?
[00:34:07] This is how you're going to know that I'm working on something else.
[00:34:09] I'm going to turn my head like this.
[00:34:11] I'm going to be working every year.
[00:34:13] You'll be like, oh, he's working offsite.
[00:34:15] How about that?
[00:34:16] So, and I will try to keep your, your chats around.
[00:34:23] So, your phone, I'm going to put my phone right here so I can see.
[00:34:29] If we can figure this out, then this could be really fun actually.
[00:34:33] I think this could be fun.
[00:34:34] Y'all, I'm not going to put music on.
[00:34:37] I'm actually going to mute so that we can co-work on YouTube.
[00:34:43] I can't co-work on YouTube if I add music.
[00:34:49] So, therefore, you know, play your own music and stuff like that.
[00:34:53] And I'll put a timer on the screen and we'll come back.
[00:34:56] I may come back before the timer is over, but I'll try to stick with that.
[00:35:01] So, y'all can like get really focused and come up for air.
[00:35:04] The question is, what length of timer?
[00:35:06] There's a big debate about what the length of the timer is best for Pomodoro stuff.
[00:35:11] Should we ask?
[00:35:12] Assess my AI.
[00:35:14] New chat.
[00:35:17] Oh, wait.
[00:35:23] I forgot.
[00:35:24] I forgot how to do it.
[00:35:25] Which one is it?
[00:35:27] How long should the Pomodoro timer be if I want to get something done?
[00:35:38] How long should the Pomodoro timer be?
[00:35:43] Why isn't it doing it?
[00:35:49] Something broke.
[00:35:54] How long should the Pomodoro timer be?
[00:35:59] My room safety assessment.
[00:36:06] God, I'm glad I didn't have anything to reveal here.
[00:36:12] Calculating their income.
[00:36:16] At the same time.
[00:36:21] I should probably close that.
[00:36:26] 25 minutes, 500 hours, 500 breaks.
[00:36:31] Fuck that.
[00:36:36] 40 minutes.
[00:36:39] Let's see 40.
[00:36:44] I'm actually on call this week too, so I got to go get your tickets.
[00:36:49] Oh, look, it's built into time and date.
[00:37:11] Make it 40.
[00:37:16] All right, I'm not going to talk.
[00:37:30] How do I mute?
[00:37:35] Wait, can you not see it?
[00:37:38] I need to make my own timer.
[00:37:45] Oh, oh, oh, oh, oh, oh, wait, wait, wait.
[00:37:52] I'm going to do the thing where I make shit because I can't.
[00:37:59] I'm going to do the thing where I make shit because I can't.
[00:38:08] Okay, there's my bit rate.
[00:38:12] Look at that.
[00:38:18] How's it going to do?
[00:38:39] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:39:00] There's actually a better one though.
[00:39:21] Jesus, how are you doing?
[00:39:32] I've already built a promo timer.
[00:39:37] It's already a thing.
[00:39:42] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:40:03] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:40:23] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:40:47] Oh, oh, oh, oh, oh, oh, oh, oh.
[00:41:11] Nice.
[00:41:14] I didn't make it so that it constantly refreshes.
[00:41:38] Oh, damn it.
[00:42:02] Oh, oh, oh, oh, oh, oh.
[00:42:25] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:42:50] Oh, oh, oh, oh, oh, oh, oh, oh.
[00:43:15] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:43:40] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:44:05] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:44:33] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:44:59] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:45:24] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:45:48] Hey, Fudd.
[00:46:18] Yeah, I'll talk.
[00:46:40] I have to stick with it for everybody's sake because otherwise I'll distract them from
[00:46:44] work as well.
[00:47:14] Okay, so I'll talk to you later.
[00:47:21] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:47:45] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:48:14] Oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:48:43] Oh, oh, oh, oh, oh, oh, oh, oh.
[00:49:09] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:49:30] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:49:50] Oh, oh, oh, oh, oh, oh, oh, oh.
[00:50:11] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[00:50:33] (silence)
[00:50:59] Brak, how you doing? Good morning.
[00:51:04] We're going for another 30 minutes.
[00:51:12] I'm signing service now because I'm on call.
[00:51:18] And Mike is just the computer, so.
[00:51:26] (silence)
[00:51:39] That's how it works, right?
[00:51:56] (silence)
[00:52:10] (silence)
[00:52:30] (silence)
[00:52:44] (silence)
[00:52:56] (silence)
[00:53:10] (silence)
[00:53:23] (silence)
[00:53:38] (silence)
[00:54:06] (silence)
[00:54:20] (silence)
[00:54:34] (silence)
[00:54:49] (silence)
[00:55:09] (silence)
[00:55:23] (silence)
[00:55:29] (silence)
[00:55:49] (silence)
[00:56:11] (silence)
[00:56:29] (silence)
[00:56:49] (silence)
[00:57:09] (silence)
[00:57:29] (silence)
[00:57:49] (silence)
[00:58:13] (silence)
[00:58:33] (silence)
[00:58:53] (silence)
[00:59:13] (silence)
[00:59:33] (silence)
[00:59:53] (silence)
[01:00:13] (silence)
[01:00:41] (silence)
[01:01:01] (silence)
[01:01:21] (silence)
[01:01:41] (silence)
[01:02:01] (silence)
[01:02:21] (silence)
[01:02:41] (silence)
[01:03:01] (silence)
[01:03:21] (silence)
[01:03:49] (silence)
[01:04:09] (silence)
[01:04:29] (silence)
[01:04:49] (silence)
[01:05:09] (silence)
[01:05:29] (silence)
[01:05:49] (silence)
[01:06:09] (silence)
[01:06:29] (silence)
[01:06:49] (silence)
[01:07:17] (silence)
[01:07:41] (silence)
[01:08:01] (silence)
[01:08:21] (silence)
[01:08:41] (silence)
[01:09:01] (silence)
[01:09:21] (silence)
[01:09:41] (silence)
[01:10:01] (silence)
[01:10:21] (silence)
[01:10:49] (silence)
[01:11:09] (silence)
[01:11:29] (silence)
[01:11:49] (silence)
[01:12:09] (silence)
[01:12:31] (silence)
[01:12:51] (silence)
[01:13:11] (silence)
[01:13:31] (silence)
[01:13:51] (silence)
[01:14:11] (silence)
[01:14:31] (silence)
[01:14:51] (silence)
[01:15:11] (silence)
[01:15:31] (silence)
[01:15:51] (silence)
[01:16:11] (silence)
[01:16:31] (silence)
[01:16:51] (silence)
[01:17:11] (silence)
[01:17:31] (silence)
[01:17:51] (silence)
[01:18:11] (silence)
[01:18:31] (silence)
[01:18:51] (silence)
[01:19:11] (silence)
[01:19:31] (silence)
[01:19:51] (silence)
[01:20:01] We'll take a break after the ad break. That break's gonna start in two minutes, so we'll go ahead and go after that.
[01:20:07] (silence)
[01:20:27] (silence)
[01:20:47] (silence)
[01:21:07] (silence)
[01:21:27] I'll be up right there.
[01:21:47] (silence)
[01:22:07] (silence)
[01:22:35] Give me one second, guys, and I'll be able to talk. The ad break is almost over. 40 seconds.
[01:22:55] (silence)
[01:23:15] (silence)
[01:23:35] (silence)
[01:23:55] (silence)
[01:24:15] (silence)
[01:24:43] (silence)
[01:25:03] (silence)
[01:25:23] (silence)
[01:25:43] (silence)
[01:26:03] (silence)
[01:26:23] (silence)
[01:26:43] For those of you who haven't checked in yet, I'll just catch you up. One, the most important thing to remember is we're gonna do co-working again. Today was a test to see if I actually want to do this. I'm gonna go ahead and try it, but I'm gonna try it in a more open way. And there's not gonna be any music. A lot of you guys like music. And if you want to listen to my yoga chill playlists, the one I used to play with the fishes in the background and stuff, you're welcome to go look at up on Spotify. That is linked from my link.
[01:27:12] From my link tree, which is in my description, which is old. My description says I don't stream anymore, which obviously I do. The other relevant news is that I'm gonna be starting to IRL stream again on the bike soon as I get my SIM cards. So I'm waiting for two SIM cards to arrive and I'll start live streaming from the mountain bike.
[01:27:32] And that includes, here's the mountain bike over here. Some of you might not know this, but I'm almost exactly a year ago. I moved to Logan to support my daughter who was having trouble. And she had happened to meet somebody in North Carolina while she was staying with me and she ended up moving in and living with them.
[01:27:49] And she moved back to North Carolina. Three months after I moved there and I had a rent situation that went through September. So I stayed and I lived out of the car nomadically from July until now.
[01:28:05] And this is the first apartment I've had since then I temporarily live with my next to my sister and hung out with my nephew and stuff went to Southern Utah. A lot of great stuff there went through a lot of family drama, including putting my parents in a senior home and living with them
[01:28:21] while considering actually permanently living with them because it was such a good deal. And it was a such a good location that based on Mill Creek Canyon in Utah. And then I ended up because of some family dynamics I decided to not do that. It was a bad idea.
[01:28:35] So I got, I got up and I drove my car with everything in it. I'd already given away all my possessions. Some of you might remember that when I was streaming before I had gotten rid of all my possessions and was getting, you know, all of my bikes, everything, my tools.
[01:28:50] So the only thing I have left was everything I could take in my car with me. And I moved to North Carolina and found I was going to be on the river across from Whitewater Center where I can do river rafting and rock climbing and mountain biking and all that great stuff.
[01:29:06] I was going to live across from it. It was $2,000 rent. And I decided not to do that when I found another apartment in the heart of Latino Charlotte, South Charlotte, where I want to learn Spanish.
[01:29:17] And for 985 bucks a month. That's what I'm paying. Can you believe that? So I'm saving a lot of money. I need to save the money to recover from $40,000 of financial aid I gave to family last year.
[01:29:31] That's that's no joke. I actually did that. And so it's going to take me a while to recover from that before I launch any other nomadic adventures or toward a wider by another bike or anything. So, but I will be streaming and the streams are probably going to be co working,
[01:29:49] which is probably percentage of time is probably going to be the largest percentage of time you're going to see me on a stream.
[01:29:55] No, we're hot, but underwater hot tub streams is not a thing in the future. No, I'm really sorry about that.
[01:30:01] No, Andrea was super super depressed yesterday. She was in or they were in and they were very depressed.
[01:30:09] There may be an occasional hot tub stream.
[01:30:12] Who knows? I mean, I could definitely battle board on Whitewater and it's it's not the season port anyway so anyway.
[01:30:20] So co working is going to be a thing. And I real streaming bike streaming daily, possibly daily, maybe, maybe less also guitar.
[01:30:29] It could be a lot of live music. I'm going to be doing a lot of live music, particularly acoustic and folk.
[01:30:34] I actually bought a Martin because my fender is dead after 15 years.
[01:30:40] After no 16 years, my fender finally died. I took an indicator fix and they said it costs $180 to fix it. So I said, fine, I'll go get a new one and donate it.
[01:30:50] So I've got a new Martin. I've been playing it every day. I've got really great acoustics in this. And that's some good reverb in the studio.
[01:30:57] So I'm going to be playing guitar here for a while.
[01:31:01] And, you know, I'm trying to decide how settled to get. I'm trying to decide how much to actually do. Like, should I buy a couch, for example, right? I have a sleeping on my pad that I sleep in the car upstairs.
[01:31:16] And I'll give you guys a tour eventually, but I'm trying to decide if I want to even get a couch. So my current decision is that I'm not putting anything in the house in my apartment that isn't either coming with me.
[01:31:29] So if I move any here or disposable, meaning I can donate it. So that includes like $400 in kitchenware.
[01:31:40] And, you know, so like a microwave. I bought a microwave either. I have to install a casting cash decisions. Yes.
[01:31:48] And, yeah, I know. I've thought about that. How many people I want to come here when I bought kitchenware, I only bought two of everything.
[01:31:58] And it's like, I can only entertain one person at a time if they come visit. Otherwise we have to go out.
[01:32:05] You know, I don't know. I still haven't decided all that. We can talk about that one on the bike when I'm not at work.
[01:32:11] I'm probably over my time with the coworking thing.
[01:32:16] I'm going to ask you all to help me with the coworking because you know me and you know I love to talk and you know I'm easily distracted. So.
[01:32:28] Already this morning, somebody brought up OSNRP or whatever the hell that is from DHH and I already lost my shit and talked and wasted like 30 minutes of time that I can't get back.
[01:32:38] So, I'm going to be trying to be more vigilant and I think that can help both of us.
[01:32:48] I think as long as I'm streaming to the coworking category, people are expecting coworking, which is I'm going to put poem on.
[01:32:54] Even though I don't particularly feel like my work falls into one hour segments, I'm going to go ahead and do that and attempt to talk a little bit in the middle.
[01:33:03] And so instead of doing a text stream, like, you know, hey, here's how the coding go, which I might still do. I'm not ruling it out, but I know a lot of you want that content to come back, a lot of your begging for the tech content to come back.
[01:33:17] And I don't like doing that content because I don't get anything out of it.
[01:33:24] I don't. It's not fun for me. It's like, it might be good for you and you're learning a lot and you might find it valuable, but in terms of my use and my time, it's a waste of time.
[01:33:35] So I'm having a hard time, you know, it is a way to give back and to help the world grow and to, you know, fight ignorance in the world and all that shit, but I don't want to.
[01:33:48] So that so as for right now that's that's kind of where we are. So the most tech content you're going to get is going to be co working was going to be us talking about things mostly.
[01:33:58] Occasionally you'll see me do some some tweaking on the command line, maybe I will use my AI to generate some of my RRL stuff live and you guys can help me with that.
[01:34:09] That was developed into run no matter RRL and stuff. So, is this, no, that's not it. Okay.
[01:34:19] That's all. So I'm going to go back. If you have any questions, you can save them for for later. After work is done today.
[01:34:29] You know, I'll take a lunch break and we'll be launching stuff.
[01:34:33] One of the one of the challenges I have the last thing I want to say about co working is one of the challenges I have with co working is being locked into it.
[01:34:43] Sometimes I feel like I'm locked into being in front of the screen all the time.
[01:34:48] And, you know, that was even more so when I had a mic and I had to talk into stuff. So, you know, I'm just going to use the mic on the computer and the most minimal possible technology to do the co working.
[01:35:02] And, you know, I might take it up a notch and there's a high mic I'm looking at for busking, which is a really, really great high end mic portable mic.
[01:35:11] I just think randomly for no reason will be fine.
[01:35:15] Yeah. So, you know, that's kind of the thing is, is I've got to, you know, I've got to, I've got to have a lot of, I've got to have a lot of control of that. But, but one of the things I really, really like about co working is I like having the
[01:35:28] watering hole where everybody who's in the, in the, in the biz, so to speak, can come in and shoot the shit. I mean, this is how I got my for a job is by meeting people like this on Twitch.
[01:35:39] So, I want to facilitate that and if I can keep it open and keep doing it, then I'll, I'll just leave it running, especially since I'm paying 70 bucks a month for gigabit internet through Google fiber. I have no reason not to do that.
[01:35:52] So, anyway, I'm going to go back to work now. If you have questions, please put them in and I will try to get to them after this.
[01:36:00] Otherwise, I will see you in a bit. I'm going to go ahead and start the timer now.
[01:36:08] I almost shouldn't mute because what if I like fart or something.
[01:36:17] Yes, I said that. I know it's like.
[01:36:22] But then I'll forget to, I'll forget to unmute and I'll like talk to the screen for 10 minutes.
[01:36:28] Let me know what you mean coming up. I got a mute. I got a mute. I'm going to mute. Bye.
[01:36:58] [BLANK_AUDIO]
[01:37:28] [BLANK_AUDIO]
[01:37:58] [BLANK_AUDIO]
[01:38:28] [BLANK_AUDIO]
[01:38:58] [BLANK_AUDIO]
[01:39:28] [BLANK_AUDIO]
[01:39:58] [BLANK_AUDIO]
[01:40:28] [BLANK_AUDIO]
[01:40:58] [BLANK_AUDIO]
[01:41:28] [BLANK_AUDIO]
[01:41:58] [BLANK_AUDIO]
[01:42:28] [BLANK_AUDIO]
[01:42:58] [BLANK_AUDIO]
[01:43:28] [BLANK_AUDIO]
[01:43:58] [BLANK_AUDIO]
[01:44:28] [BLANK_AUDIO]
[01:44:58] [BLANK_AUDIO]
[01:45:28] [BLANK_AUDIO]
[01:45:58] [BLANK_AUDIO]
[01:46:28] [BLANK_AUDIO]
[01:46:58] [BLANK_AUDIO]
[01:47:28] [BLANK_AUDIO]
[01:47:58] [BLANK_AUDIO]
[01:48:28] [BLANK_AUDIO]
[01:48:58] [BLANK_AUDIO]
[01:49:28] [BLANK_AUDIO]
[01:49:58] [BLANK_AUDIO]
[01:50:28] [BLANK_AUDIO]
[01:50:58] [BLANK_AUDIO]
[01:51:28] [BLANK_AUDIO]
[01:51:58] [BLANK_AUDIO]
[01:52:28] [BLANK_AUDIO]
[01:52:58] [BLANK_AUDIO]
[01:53:28] [BLANK_AUDIO]
[01:53:58] [BLANK_AUDIO]
[01:54:28] [BLANK_AUDIO]
[01:54:58] [BLANK_AUDIO]
[01:55:28] [BLANK_AUDIO]
[01:55:58] [BLANK_AUDIO]
[01:56:28] [BLANK_AUDIO]
[01:56:58] [BLANK_AUDIO]
[01:57:28] [BLANK_AUDIO]
[01:57:58] [BLANK_AUDIO]
[01:58:28] [BLANK_AUDIO]
[01:58:58] [BLANK_AUDIO]
[01:59:28] [BLANK_AUDIO]
[01:59:58] [BLANK_AUDIO]
[02:00:28] [BLANK_AUDIO]
[02:00:58] [BLANK_AUDIO]
[02:01:28] [BLANK_AUDIO]
[02:01:58] [BLANK_AUDIO]
[02:02:28] [BLANK_AUDIO]
[02:02:58] [BLANK_AUDIO]
[02:03:28] [BLANK_AUDIO]
[02:03:58] [BLANK_AUDIO]
[02:04:28] [BLANK_AUDIO]
[02:04:58] [BLANK_AUDIO]
[02:05:28] [BLANK_AUDIO]
[02:05:58] [BLANK_AUDIO]
[02:06:28] [BLANK_AUDIO]
[02:06:58] [BLANK_AUDIO]
[02:07:28] [BLANK_AUDIO]
[02:07:58] [BLANK_AUDIO]
[02:08:28] [BLANK_AUDIO]
[02:08:58] [BLANK_AUDIO]
[02:09:28] [BLANK_AUDIO]
[02:09:58] [BLANK_AUDIO]
[02:10:28] [BLANK_AUDIO]
[02:10:58] [BLANK_AUDIO]
[02:11:28] [BLANK_AUDIO]
[02:11:58] [BLANK_AUDIO]
[02:12:28] [BLANK_AUDIO]
[02:12:58] [BLANK_AUDIO]
[02:13:28] [BLANK_AUDIO]
[02:13:58] [BLANK_AUDIO]
[02:14:28] [BLANK_AUDIO]
[02:14:58] [BLANK_AUDIO]
[02:15:28] [BLANK_AUDIO]
[02:15:58] [BLANK_AUDIO]
[02:16:28] [BLANK_AUDIO]
[02:16:58] [BLANK_AUDIO]
[02:17:28] [BLANK_AUDIO]
[02:17:58] [BLANK_AUDIO]
[02:18:28] [BLANK_AUDIO]
[02:18:58] [BLANK_AUDIO]
[02:19:28] [BLANK_AUDIO]
[02:19:58] [BLANK_AUDIO]
[02:20:28] [BLANK_AUDIO]
[02:20:58] [BLANK_AUDIO]
[02:21:28] [BLANK_AUDIO]
[02:21:58] [BLANK_AUDIO]
[02:22:28] [BLANK_AUDIO]
[02:22:58] [BLANK_AUDIO]
[02:23:28] [BLANK_AUDIO]
[02:23:58] [BLANK_AUDIO]
[02:24:28] [BLANK_AUDIO]
[02:24:58] [BLANK_AUDIO]
[02:25:28] [BLANK_AUDIO]
[02:25:58] [BLANK_AUDIO]
[02:26:28] [BLANK_AUDIO]
[02:26:58] [BLANK_AUDIO]
[02:27:28] [BLANK_AUDIO]
[02:27:58] [BLANK_AUDIO]
[02:28:28] [BLANK_AUDIO]
[02:28:58] [BLANK_AUDIO]
[02:29:28] [BLANK_AUDIO]
[02:29:42] [BLANK_AUDIO]
[02:29:48] Yeah, I'm about ready to take a break here.
[02:29:50] I'm just wrapping up a session and I'll have a five minute break and we'll talk.
[02:29:54] I do have a comment, it's good to see you.
[02:30:04] [BLANK_AUDIO]
[02:30:16] [BLANK_AUDIO]
[02:30:26] I have to resolve this PR really quick and then I'll take a quick break.
[02:30:31] [BLANK_AUDIO]
[02:31:01] [BLANK_AUDIO]
[02:31:11] [BLANK_AUDIO]
[02:31:23] We are doing co-working right now, Mohammad.
[02:31:25] So what that means is that I know you're on YouTube.
[02:31:30] So you're not in the co-working category on Twitch.
[02:31:34] And what co-working is, is that we all get work done together and
[02:31:40] then we take a break about every 50 minutes or so and talk a little bit.
[02:31:46] But we don't talk a lot.
[02:31:47] We just talk for five minutes, like go to the cooler or whatever.
[02:31:50] And then we regroup and we go back to work.
[02:31:53] So kind of keeps work moving along.
[02:31:55] That's what the timer down in the bottom is, which I need to reset actually.
[02:32:01] So that's what's going on.
[02:32:06] So I will turn that back on in a second.
[02:32:15] Okay, this is probably a good time to take a break.
[02:32:22] I am waiting for people's responses on a few things.
[02:32:52] [BLANK_AUDIO]
[02:33:02] [BLANK_AUDIO]
[02:33:06] I'm on call and we just had some CPU nodes reboot and Kubernetes.
[02:33:11] So that's what I'm responding to.
[02:33:13] This is kind of one of the tough parts about co-working.
[02:33:17] Is it, you know, we're doing stuff trying to manage everything.
[02:33:22] You know, so that you can see what's going on.
[02:33:26] Yeah.
[02:33:34] [BLANK_AUDIO]
[02:33:42] The critical nodes down that have big S GPUs in action, these are CPU nodes.
[02:33:47] So they're not as important.
[02:33:49] If they were GPU, you know, $10,000 GPU nodes, I would be like jumping right now
[02:33:53] and fix them, put, bring them back up online.
[02:33:56] That's my job.
[02:33:57] So let's take a break.
[02:34:00] I'm actually going to make coffee, which I probably shouldn't do.
[02:34:03] I should probably eat some lunch.
[02:34:05] Let me check the follow thread.
[02:34:08] It might be actually time for us to make a little bit of lunch.
[02:34:26] People are using news.
[02:34:53] They're setting up open code.
[02:34:57] I'm kind of set up open code.
[02:34:59] Anyway, what should we have for lunch?
[02:35:05] What should we have for lunch friends?
[02:35:10] I don't know.
[02:35:11] I don't know what I should have lunch.
[02:35:21] I probably have a salad.
[02:35:25] I should have salad and carrots and stuff.
[02:35:27] I wish I had chicken and cook.
[02:35:30] I'd normally have like a, like, make some chicken and put it to a salad with that.
[02:35:35] So I think I'm going to eat salad again.
[02:35:41] I think I'm going to eat more.
[02:35:44] That's a pull thing.
[02:35:47] We could.
[02:35:48] I would be too far away.
[02:35:51] I've got it.
[02:35:52] What do I have?
[02:35:53] What do I have?
[02:35:54] I should go look.
[02:36:01] I'll take it with me.
[02:36:11] What do we have?
[02:36:12] Oh, I have peanut butter.
[02:36:14] Oh, yams.
[02:36:15] I have yams.
[02:36:17] Yeah, let's make some yams.
[02:36:20] You know what?
[02:36:21] I have my microwave too.
[02:36:22] I got it.
[02:36:23] I got to take my microwave out.
[02:36:25] Let me say if I can get my microwave working so I can cook some yams.
[02:36:29] I mean some sweet potatoes.
[02:36:34] This is my apartment.
[02:36:41] Oh God.
[02:36:48] What if I do this?
[02:37:14] Do a house tour.
[02:37:20] Hey, Eric, how are you doing?
[02:37:23] I can't do it.
[02:37:24] I guess I did.
[02:37:27] My apartment is like brand new cement.
[02:37:33] I don't have time.
[02:37:35] I can't wait.
[02:37:36] I'll do a house tour.
[02:37:37] I'll do a house tour later.
[02:37:39] Like when I'm not at work.
[02:37:41] I only have lunch.
[02:37:42] I have like 30 minutes for lunch.
[02:37:43] I can't wait.
[02:37:46] I can't wait.
[02:37:52] I don't think I need the family inside.
[02:37:57] Ow.
[02:38:07] Hey, microwave.
[02:38:12] No.
[02:38:22] Oh, I'm going to get perfect.
[02:38:33] No, that's not good.
[02:38:38] No, it's not good.
[02:38:48] No, it's not good.
[02:38:53] It's not good.
[02:38:59] No, it's not good.
[02:39:09] You put it like this.
[02:39:14] You're going to fit.
[02:39:17] I think that'll fit.
[02:39:22] You're going to fit like that.
[02:39:27] No, it's not.
[02:39:31] No, it has events on the back.
[02:39:41] I mean, I guess I can take it back and because I don't know.
[02:39:48] It's way too big.
[02:39:52] But I think it'll figure, let's just try.
[02:40:01] Yeah, it works.
[02:40:02] It works.
[02:40:05] It's a microwave and an air fryer.
[02:40:11] It's a microwave and air fryer and other stuff.
[02:40:20] I think it fits.
[02:40:23] Yeah, it does lots of things, apparently.
[02:40:28] I think it fits, actually.
[02:40:31] Put it there.
[02:40:34] Put like a splash guard over here.
[02:40:39] It's going to get like oil over it right here, right?
[02:40:43] It's like right here.
[02:40:48] I could put it over here, but then I don't have any preparation space.
[02:40:56] You know what I mean?
[02:41:02] I feel like it's fine there.
[02:41:03] I'm not going to be using it that much.
[02:41:05] It's going to be like, what do you think?
[02:41:10] Like cooking cardboard?
[02:41:11] No, I just got it.
[02:41:12] I have to take it apart.
[02:41:14] Yeah, so let's do that.
[02:41:18] I'm going to have to take the room.
[02:41:21] So I'll take that off.
[02:41:27] It's that works.
[02:41:29] You think it looks good?
[02:41:31] Read the manual.
[02:41:33] Yeah.
[02:41:37] I'll send the manual for reference.
[02:41:40] I'm never going to need it later.
[02:41:44] I was like, how many are those things that I kicked off?
[02:41:47] I just want to cook my potatoes.
[02:41:53] Yeah, look at this.
[02:41:55] All kinds of shit.
[02:42:07] So this microwave is definitely in the category of donate it after you use it.
[02:42:15] Because it's going to save me money.
[02:42:17] It's going to make me not go out and eat.
[02:42:22] It costs like $190, but if it saves me from what?
[02:42:26] Five meals that I pay for itself.
[02:42:31] So at that point, I just buy a new one when I move.
[02:42:34] So this is definitely in the donor list.
[02:42:39] Definitely knows in the donated list.
[02:42:43] But if I move someplace or something, I want to potentially close it to the white water center.
[02:42:49] Um, I don't know yet, but then, you know, that would have to explain it.
[02:42:55] I'm sure for that.
[02:42:57] French.
[02:42:58] Oh, you know what I could.
[02:43:00] I actually could do that.
[02:43:03] Yeah.
[02:43:04] I could put it on top of the fridge.
[02:43:08] That's a great idea.
[02:43:11] That is a fucking great idea.
[02:43:12] If I just put it like a little.
[02:43:15] I think well thought of Patro Patrick.
[02:43:21] Their fried features clutch.
[02:43:24] I know, right?
[02:43:26] I think you might be onto something.
[02:43:29] Yeah, because this is like dense space up here.
[02:43:34] If the court is according to reach, why would it not?
[02:43:37] Right?
[02:43:38] Oh my God.
[02:43:39] I think that's, I think that's perfect.
[02:43:42] That must be a New Yorker.
[02:43:44] You must be a New Yorker.
[02:43:48] I mean, I can totally reach up there.
[02:43:50] You know, anything and I'm good.
[02:43:53] Plus a lot of times I'm going to be pulling stuff out of the fridge anyway to cook it.
[02:43:56] Oh my God.
[02:43:57] You're a genius.
[02:43:59] You're a genius gold star.
[02:44:02] All right, so.
[02:44:09] Please God, let the court be long enough.
[02:44:16] I bet it's not.
[02:44:17] I bet it's only 220 power behind there.
[02:44:20] I bet it is a tent.
[02:44:34] Oh, I just want my potatoes.
[02:44:43] Don't break your fridge rub.
[02:44:49] All right.
[02:44:50] Oh, it is.
[02:44:51] Oh, shit.
[02:44:52] Oh my God.
[02:44:53] This is perfect.
[02:44:54] How long is it?
[02:44:55] How long is it?
[02:44:56] How long is it?
[02:44:57] How long is it?
[02:44:58] I think it was just barely going to reach.
[02:45:18] Yeah.
[02:45:25] Oh.
[02:45:29] Okay.
[02:45:30] I'm going to attempt it.
[02:45:49] Oh.
[02:45:52] Oh, shit.
[02:45:58] I am just barely tall enough.
[02:46:02] I need to get a stool.
[02:46:07] I want my food.
[02:46:12] Okay.
[02:46:19] Please reach.
[02:46:22] Oh my God, it exactly reaches.
[02:46:26] I just just on the other side.
[02:46:31] Who ever thought that Patrick, you're a genius.
[02:46:36] My fridge is so new, it has like the stickers on itself.
[02:46:41] Oh, yeah.
[02:46:44] The question is, yes.
[02:46:51] I want to get back there, guys.
[02:47:00] I can't reach it.
[02:47:03] What if I climb up there?
[02:47:10] I know.
[02:47:11] I know.
[02:47:12] I know.
[02:47:13] I know.
[02:47:14] I think I can do this.
[02:47:18] Oh.
[02:47:19] Oh.
[02:47:20] Oh.
[02:47:21] Oh.
[02:47:22] Oh.
[02:47:23] Oh.
[02:47:24] Oh.
[02:47:25] Oh.
[02:47:26] Oh.
[02:47:27] Oh.
[02:47:28] Oh.
[02:47:29] Oh.
[02:47:30] Oh.
[02:47:31] Oh, I know.
[02:47:32] I can almost reach it.
[02:47:33] Oh.
[02:47:46] Whoa.
[02:47:47] I've never used it in my range.
[02:47:49] I should just take it out.
[02:47:56] What do you mean stuck back there?
[02:48:02] Oh, shit.
[02:48:04] Dude, there is all kinds of gross stuff under there.
[02:48:09] That's disgusting.
[02:48:20] No, no, no, no, no, no, no, no, no, no, no, no.
[02:48:46] No, no, no, no, no, no, no, no, no, no, no, no, no, no.
[02:49:12] No, no, no, no, no, no, no, no, no, no, no, no, no, not.
[02:49:34] Oh, no, no, no, no, no, no, no, no, no, no, no, no.
[02:49:59] I hope there's no black mold.
[02:50:12] No, no, no, no, no, no, no.
[02:50:41] No, no, no, no, no, no.
[02:51:03] No, no, no, no, don't do that.
[02:51:29] No, no, no, no, no, no, no, no, no, no, no, no, no.
[02:51:55] No, no, no, no, no, no, no, no, no, no, no.
[02:52:20] No, no, no, no, no, no, no, no, no, no, no.
[02:52:48] No, no, no, no, no, no, no, no.
[02:53:10] No, no, no, no, no, no, no, no, no, no, no.
[02:53:38] No, no, no, no, no, no, no, no, no, no.
[02:54:04] No, no, no, no, no, no, no, no, no, no, no.
[02:54:28] No, no, no, no, no, no, no.
[02:54:53] No, no, no, no, no, no, no, no, no, no, no, no, no.
[02:55:18] No, no, no, no, no, no, no, no, no, no, no.
[02:55:43] No, no, no, no, no, no, no, no, no, no, no, no, no, no.
[02:56:10] No, no, no, no, no, no, no, no, no, no, no, no, no, no.
[02:56:34] No, this is still working.
[02:56:44] You're just too short.
[02:56:55] No, no, no, no, no, no, no, no, no, no, no, no, no.
[02:57:19] No.
[02:57:33] You're not very sharp.
[02:57:42] No, no, no, no, no, no, no, no, no.
[02:58:03] No, no, no, no, no, no, no, no, no, no, no, no, no.
[02:58:32] I don't have any olive oil.
[02:58:35] How am I supposed to make him crispy?
[02:58:38] Put it on the list.
[02:58:40] Put it on my shopping list.
[02:58:41] I need you all mods to keep my shopping list for me.
[02:58:44] Yeah.
[02:58:49] You need to keep the shopping list up to date.
[02:58:52] I need to watch brand.
[02:58:54] I need, um, I need fish soap.
[02:59:04] I need, I need stuff for what I mean.
[02:59:07] And you made curry with chicken potatoes.
[02:59:09] Oh, that sounds so yummy.
[02:59:12] I am going to make eggs with spinach later.
[02:59:17] Wait, that still has a sticker that will burn.
[02:59:36] All right, I'm almost done.
[02:59:44] Ouch, like the way you have convection combo.
[02:59:49] You can have a combo.
[02:59:51] What the hell?
[02:59:52] Where's my manual?
[02:59:53] I need that for later.
[02:59:55] Um, express cook.
[03:00:02] Five minutes.
[03:00:06] I'm definitely going to need a little stool to go clean it.
[03:00:13] But yeah, that's a good use of space.
[03:00:20] I like that.
[03:00:21] I think that's a great use of space.
[03:00:28] You have four minutes to waiting.
[03:00:32] I threw it.
[03:00:33] I did it right here.
[03:00:34] I saw it.
[03:00:36] Patrick gave me a stool.
[03:00:39] A spinach in an oatmeal?
[03:00:45] What?
[03:00:48] What is this madness?
[03:00:54] Spinach in an oatmeal?
[03:00:57] Who does that?
[03:01:02] Oh, I need to finger my par.
[03:01:08] I'm going to try to get a little bit of water.
[03:01:35] I'm going to try to get a little bit of water.
[03:02:02] I'm going to try to get some water.
[03:02:07] I'm going to try to get some water.
[03:02:14] I'm going to try to get some water.
[03:02:21] I'm going to try to get some water.
[03:02:35] I'm going to try to get some water.
[03:02:40] I'm going to try to get some water.
[03:02:44] I'm going to try to get some water.
[03:03:05] I'm going to try to get some water.
[03:03:26] I'm going to try to get some water.
[03:03:45] I'm going to try to get some water.
[03:04:12] I'm going to try to get some water.
[03:04:32] I'm going to try to get some water.
[03:04:52] I'm going to try to get some water.
[03:05:12] I'm going to try to get some water.
[03:05:34] I'm going to try to get some water.
[03:05:54] I'm going to try to get some water.
[03:06:16] I'm going to try to get some water.
[03:06:38] I'm going to try to get some water.
[03:07:01] I'm going to try to get some water.
[03:07:07] I'm going to try to get some water.
[03:07:32] I'm going to try to get some water.
[03:07:58] I'm going to try to get some water.
[03:08:20] I'm going to try to get some water.
[03:08:48] I'm going to try to get some water.
[03:09:14] I'm going to try to get some water.
[03:09:39] I'm going to try to get some water.
[03:10:07] I'm going to try to get some water.
[03:10:35] I'm going to try to get some water.
[03:11:03] I'm going to try to get some water.
[03:11:31] I'm going to try to get some water.
[03:12:00] I'm going to try to get some water.
[03:12:28] I'm going to try to get some water.
[03:12:29] I'm going to try to get some water.
[03:12:30] I'm going to try to get some water.
[03:12:31] I'm going to try to get some water.
[03:12:32] I'm going to try to get some water.
[03:12:33] I'm going to try to get some water.
[03:12:33] I'm going to try to get some water.
[03:12:34] I'm going to try to get some water.
[03:12:35] I'm going to try to get some water.
[03:12:36] I'm going to try to get some water.
[03:12:37] I'm going to try to get some water.
[03:12:38] I'm going to try to get some water.
[03:12:39] I'm going to try to get some water.
[03:12:40] I'm going to try to get some water.
[03:12:41] I'm going to try to get some water.
[03:12:42] I'm going to try to get some water.
[03:12:43] I'm going to try to get some water.
[03:12:44] I'm going to try to get some water.
[03:12:45] I'm going to try to get some water.
[03:12:58] I'm going to try to get some water.
[03:13:06] I'm going to try to get some water.
[03:13:07] I'm going to try to get some water.
[03:13:14] What questions are coming in?
[03:13:18] I feel like I need a hat, though.
[03:13:19] It's, like, really bright.
[03:13:44] I don't know why I'm eating here.
[03:13:51] Oh, my God.
[03:13:59] You added something in my shopping cart?
[03:14:05] I'm not supposed to put that stuff on the stream.
[03:14:10] Be appropriate.
[03:14:13] This is why I don't put chat on the screen usually.
[03:14:23] Wait.
[03:14:25] Why do you know work?
[03:14:27] Heart?
[03:14:34] It's like a hundred ways to do it.
[03:14:43] It does.
[03:14:46] TensorFlow was made in it.
[03:14:54] I've been coding lots of pearlyly.
[03:15:01] There's been so much purl.
[03:15:06] I've been modernizing our purl.
[03:15:11] I know that sounds crazy.
[03:15:16] We're going to redo our API as a go line, probably.
[03:15:24] Maybe Python.
[03:15:30] Be appropriate.
[03:15:37] Can I just let you on a secret?
[03:15:44] I'm very anti-women lately.
[03:15:49] Within the last two days, I think the YouTube algorithm picked up that I'm anti-women.
[03:15:54] It started showing me all of this like, you know, man's sphere in cell stuff.
[03:16:08] I don't hate women.
[03:16:09] I love women.
[03:16:10] They're great.
[03:16:11] It's just lightly, you know, it doesn't mean anything to me would do like striking out
[03:16:19] or not having a partner or being divorced or any of that.
[03:16:23] It's just, I made the mistake of actually starting watching one of the shorts that came through.
[03:16:35] It's almost like the algorithm was testing me.
[03:16:40] It was like, the algorithm was testing me because it was like, okay, does this guy, let's see,
[03:16:45] let's see if, you know, if he's MAGA, let's see, you know, everyone saw a little throw a video in there
[03:16:49] just to kind of like entice you.
[03:16:53] It's like, okay, do you go in this category?
[03:16:58] And I bought a book that I won't mention on Audible.
[03:17:03] It was a good book actually.
[03:17:05] It was really good.
[03:17:06] It talked a lot about dynamics between men and women.
[03:17:08] I'm not going to tell you the book though.
[03:17:09] I'm obviously not telling you because I don't think you should read it at all.
[03:17:12] It's horrible.
[03:17:13] But, I mean, really, the book was really bad.
[03:17:20] It was written by somebody from the Manosphere, and it's just really, really bad.
[03:17:24] I was like, no, this is accurate.
[03:17:27] It's all crap and everything.
[03:17:29] So somehow...
[03:17:37] God damn it, stop dawking the books I read, and I just read.
[03:17:44] Yes, okay, I confess, that was the book.
[03:17:47] Yeah, that one's the book.
[03:17:50] I listened to the whole thing.
[03:17:54] Yeah, I listened to the rational mail on Audible coming over here, and...
[03:18:06] Most of that absolute pure morbid curiosity.
[03:18:09] It wasn't so much that I could score with the ladies or be an alpha mal or whatever.
[03:18:14] Which, by the way, according to him, I am perpetually and forever going to be a beta.
[03:18:20] I have no desire, maybe a stigma.
[03:18:22] I have no desire to be an alpha hammer.
[03:18:31] I think his entire premise is still flawed, because I assume you're never going to circulate.
[03:18:41] If you go into it, yeah, if you're alpha, okay, you might find somebody on the dance floor,
[03:18:45] or somebody's girlfriend on the dance floor.
[03:18:50] Then what?
[03:18:52] They talk.
[03:18:53] Women talk to each other.
[03:18:55] They're like the crows in Australia who keep attacking that guy, that bicyclist, because they all talk to each other.
[03:19:00] It's like you could never get away with that bullshit in a modern world.
[03:19:05] There's social media.
[03:19:08] I mean, even if it actually works, which I don't think it does.
[03:19:11] But even if it works one time, and it's like, "Yeah, man, I smash all the time."
[03:19:16] And I'm like, "Yeah, but you don't ever get to smash."
[03:19:19] It's like you have to find somebody new to smash every time, because everybody fucking hates you where you are.
[03:19:26] So anyway, okay, so I gave up what I did.
[03:19:30] So I was in the car, I was a little bit...
[03:19:37] I mean, that was really loud.
[03:19:39] So I won't lie, I was in a kind of hating on women mid, because women have really fucking done me wrong.
[03:19:46] And I'm like, you know, they're not here to defend themselves, so it's really hard to talk about that.
[03:19:53] You know, and be rational.
[03:19:55] Like, attacking people who aren't not there to defend themselves, usually.
[03:20:00] But yeah.
[03:20:03] It'd be a say clear from those books, just be your own mental point of origin.
[03:20:07] Yeah, absolutely.
[03:20:08] Women would rather share a high value man than be saddled with a failing loser.
[03:20:13] Yeah.
[03:20:14] So they wrote a book about me.
[03:20:18] No, no, no, no, no.
[03:20:20] No, no, no.
[03:20:21] I mean, maybe.
[03:20:22] I don't know, maybe I'm in there somewhere.
[03:20:24] All I'm trying to say, so we're on a lunch break.
[03:20:27] If you're just joining us, hi.
[03:20:28] We're on a lunch break talking about dude stuff at the water cooler, at the virtual water cooler.
[03:20:35] And it just came, I just, lately I've just been, I mentioned that lately I've been having a hard time just not seeing...
[03:20:44] I actually watched a few videos from some women who were slamming on the whole club scene.
[03:20:52] I think that's why it showed up in my feed, because I've been doing a lot of talk about going to the club,
[03:20:57] going to the men's club, and going out clubbing and nightlife.
[03:21:00] And I was walking around Charlotte, and we were going to the club there.
[03:21:03] And we were noticing how nightlife and Charlotte is pretty much dead, and there's like two places.
[03:21:07] And so there's this entire, that's probably why I saw this short.
[03:21:10] So somebody sent me a short, which we should probably, at some point just for the hell of it, we should probably watch those shorts and then talk about it.
[03:21:17] You know, primarily as men, but it would be fun to have some women in here to give their opinions,
[03:21:22] particularly the wanderer, who I really, really, really respect.
[03:21:25] And ugly, perhaps.
[03:21:28] You know, women who are friends of the stream, who we've talked to, who could, you know, Pepsi, by the way,
[03:21:35] I talked to her yesterday on the phone, a good, good friend.
[03:21:38] I reconnected with a really, really, really amazing friend from when I was single before.
[03:21:44] And I have no romantic interest in her at all.
[03:21:47] She's beautiful and, you know, attractive and everything.
[03:21:50] But that's, and she's an educator and a salty, there's kind of human being.
[03:21:53] But we've already decided, we've actually talked openly about this, that we were just friends, that we don't, we never want to mess it up, right?
[03:22:00] So anyway, there are women in my life that I trust really well, who are really amazing, and that are not trying to get cash out of me.
[03:22:10] In any way, whether it be a mutual exchange, because you're married and you're the provider and the other person's not, you know, that kind of thing.
[03:22:20] Hey, Phil.
[03:22:22] I've been looking for a bit.
[03:22:24] I've been getting docs by various people.
[03:22:27] And your rumors you've heard, do you happen to know my full name?
[03:22:30] I do not.
[03:22:31] Thank you for the cheer.
[03:22:36] Is this a, is this a, what is this? Is this a, is this real?
[03:22:41] Uh, Phil, these nuts, ah!
[03:22:51] Oh, I hope, I hope that was fun, Phil.
[03:23:00] You did get me, you got me, you got me.
[03:23:04] Also, I got them, I got these nuts.
[03:23:12] Slow clap, slow clap, definitely love it, you win.
[03:23:16] I'm probably the easiest person on Twitch to troll, like, I'm serious.
[03:23:22] I think I found, I have the biggest mark on Twitch.
[03:23:26] Oh, that's really awesome.
[03:23:29] No, it was, so yeah, I, so, confessional confession.
[03:23:36] I was, I was like a 32 hour drive back and I was like, I need an audio book.
[03:23:40] So I was like, coming through audio books.
[03:23:42] I was like, you know, books for men, honestly.
[03:23:45] I was like searching an audible for books for men and since CDs.
[03:23:52] And I, I, you know, obviously the rational nail came up and I was like, okay.
[03:23:58] So I'm listening to the guy like, okay, the guy's making a lot of sense and then also he's not, right?
[03:24:03] So, but I think, I think I basically just wanted permissions to, to say, hey, you know, we're men here and it's okay to be men, you know?
[03:24:13] And it's not like we're the kind of men that were, you know, repressing women in any way before.
[03:24:20] We probably have some of that in us, just latent in us because of the system and everything.
[03:24:24] But we need to stop blaming ourselves and women need to stop blaming men for everything that's wrong in the world.
[03:24:29] There's, there's a lot of stuff that's bad about the world that needs to change.
[03:24:33] And there are men behind that, but there's also a lot of things that are really bad in the world because of women.
[03:24:39] And one of, and one of those things that's really, really bad, and this is a very, this is like a tenant and manosphere sort of stuff,
[03:24:44] which is why I am careful of it because I am not a fan of some of the shit that they say,
[03:24:49] particularly the stuff that disrespects women. But like, when they talk about, like, when they were talking about the downfall of clubs,
[03:24:57] I only have how many more minutes, like two more minutes or so, three more minutes.
[03:25:00] They're talking about the downfall of, downfall of club life and nightlife, and they blamed it on men.
[03:25:06] And these, these, you know, young, frankly, very clueless women, which are getting called out by other women, by the way.
[03:25:13] They're getting called out by other women. They're like, no, this, let me tell you what's up.
[03:25:17] And, and, and I, it was very refreshing to see it, but it was also disturbing.
[03:25:21] Some of these women are like, the reason the club scene is dying is because men are not showing up to go to the club.
[03:25:25] They don't want to go to the club. And so, it's like, get off your ass and come to the club.
[03:25:30] And I have basically said that same thing. I have actually said to dancers, I was like, why is there 10 to 1 women in the, in the club here, in the men's club?
[03:25:38] And, you know, you could be, for $15, you could be in here, you know, participating and everything, instead of home playing GTA.
[03:25:46] But now I know why. The reason is because men are tired of being fleeced.
[03:25:54] Books for men, the Bible. Yeah, yeah, I don't, I don't buy that. But yeah, there was one time I would have agreed with that.
[03:26:02] There's a lot of good things in the Bible, like the ethics of Christ. I'm all about that. But there's a lot of bad stuff too, right?
[03:26:08] Uh oh, events up connected. What happened? Something happened? You guys still there?
[03:26:13] So, um, to just conclude that thought. So, the idea that men have been being fleeced by women for a very long time.
[03:26:22] And obviously, men have damaged women in many ways that are absolutely horrible and abysmal.
[03:26:29] Men don't walk around being afraid of being raped. Women walk around being afraid of being raped because of the crimes men have permitted.
[03:26:35] And I, I am not challenging that at all. But the reason specifically if we stick to the, if we stick to the topic, the reason men don't go to clubs and don't go out is because they're so sick and tired.
[03:26:50] Uh, what's that? Yeah, I am speaking for myself. That's what a life streamer does.
[03:26:55] Uh, hard to have an honest conversation about grievances between sex is easy. There's lots of people milking that count.
[03:27:01] Just feel like men get the short end of a double standard though. Yeah, see, I, and I don't, that's why I was really hesitant to even mention it, you know, because, um, I don't even know what that club is about.
[03:27:12] I don't know if I want to go see. But the, lately it's, it's just been, I've been, I've been feeling like I needed support from men.
[03:27:22] It's like I, I want actual support from men I can trust and talk to men. That's one of the reasons I'm live streaming again. Because I don't get, this is actually a thing with men.
[03:27:34] They don't, they, they men need friendships just as much as anybody in old age. And as they, as they go, and they have a hard time. They have a very hard time and have a lot harder time making friendships.
[03:27:44] And that's kind of where it came from. It was like, I need more men friends in my life. You know, I need more males who are quality dudes who are not going to, you know, try to teach you how to be a player and all that.
[03:27:57] And the Mormon Bible. Yeah. And that's where the desire came from. I was legitimately looking for a book for men.
[03:28:06] And it turned out to be the rational middle, which, you know, is, is, I, I still don't know how I fully feel about the whole thing.
[03:28:15] I, I don't, I'll have to see how it pans out. For the most part though, I think some of the stuff is just dead and wrong.
[03:28:23] And some of it's common sense and some of it's really controversial. So, but for the most part, yeah.
[03:28:30] So I've just been like walking around thinking, how can I, you know, where can we're going to go hang out with the guys and, you know, actually have, you know, relationships and stuff.
[03:28:41] And I thought about like there's, there's the, the bike messengers. They were a lot of fun. I got to know those guys. I might actually buy a Fixie again.
[03:28:49] The bike messenger dudes that I met when I was here last time.
[03:28:53] I'm going to end really quick here. So I went through yesterday, I was just going through, you know, like all of the friendships I've had in North Carolina, which I've had several.
[03:29:03] It's one of the reasons I came back is because I have, I have had really deep meaningful friendships in North Carolina in the past.
[03:29:10] Before I got married the second time, before I got married the second time, I formed several very deep friendships.
[03:29:17] And I let them go. I let them die. I let those friendships go away. And I regret it. I regret having done that.
[03:29:25] I don't regret getting married. The good years were great. And, but I regret having lost contact with those people.
[03:29:32] And so I was kind of like going through the list of the people, you know, the person that was my best man at my wedding and this carpenter friend that I know.
[03:29:41] And, and you know, I went through some of my friends that are also female that are basically dudes to me, including Pepsi.
[03:29:51] And I was just kind of going through that list and, you know, seeing to see if it's worth like, you know, bringing back any, any regular friendships, you know, like they, like people do, right?
[03:30:02] They got Sunday, they go get coffee together or something. And I was kind of weighing all that together. And so, but that was when, that was, that was when I came across the video that was calling out all of these, these club clubber clubbing women who were blaming men for not showing up.
[03:30:19] And one of them was like, they were literally like ripping them up and down about how they were ugly and stuff. And then it would say, how dare you come up and try to get me in.
[03:30:28] Can you believe he didn't even want to buy me a drink? They, they were, they were basically totally engulfed in both the men's suck men and made the world a horrible place and, oh, I want the men to pay for everything.
[03:30:44] Like, what happened to, what happened to traditional males? What happened to this? Why not? And basically, that is the parting line for the whole incel movement. I don't know if you want us to call it incel, it's more voluntary sell.
[03:30:57] But it's like, that's the parting line. And, and the video was like, well, I don't know, maybe because we want to stay home and watch a movie and save our money and, and make, make lasting friendships with people that don't feel like we have to buy them a beer all the time or whatever.
[03:31:12] And these people that were in the videos, there's lots and lots of these videos. And I was like, I can't believe it. It was like an epidemic of women who are empowered now because of, because of me too and all these wonderful things.
[03:31:25] But they also are still clinging to this old idea. Like, if you were to go up, some of the dudes in the videos were joking. They were like, they're like, yeah, okay, when are you going to buy me a drink?
[03:31:35] And they're like, it's absolutely laughable. It's absolutely laughable that you expect a woman to buy a drink for you.
[03:31:41] But if you don't buy a drink for them, they're, they're totally ripping up these dudes, they don't want to do it. And yet they're like, hey, it's all women's power, I'm just going to hang out with the other women. And I was like, this doesn't fly. This isn't, this does not work.
[03:31:52] It doesn't matter how much men have been responsible for all the evil in the world. It's just, whenever this new mixture of, I don't fucking need men, but buy me a drink is not good.
[03:32:07] It's just, it's just not good. And if there's one thing that's pushing men away, it's, it's this dynamic. And so it's sad because it's going to take women on their own, and they're already starting to do this to realize that being empowered also means taking care of yourself.
[03:32:28] And if you truly don't need a man, it means owning it. It means owning that I am by myself. But then they'll throw stones at you and say, well, the reason I can't take care of myself is because my wages are so much lower than you because men have fucked over the wage is the same. And that's not wrong.
[03:32:42] So, I don't know. I don't have any answers. I'm just, I'm just asking questions and stating the problem because lately I feel like, like everybody wants money from me. That's bottom line. So, as I can't, you can't, I was, I was trying to, you know, entertain the dating scene and stuff like that.
[03:33:01] I'm like, I don't, I don't even want to date. And it's not because I don't like women. It's because, it's because I just, I just don't, I don't, I don't want to have to go through the hoops.
[03:33:10] Then I tell you, this is a true story. This actually happened. So, I actually passed this place like three times the other day, and I talked about it.
[03:33:19] I went to, I did a blind date on plenty of fish. Somebody had just talked to him then. And I went there, stayed single on beat penalties.
[03:33:27] I stayed, I, I went to this pub. And this girl was there and she was really nice and friendly and everything. And we ate and we had dinner and we had some conversation. It was pretty basic, basic level conversation.
[03:33:41] And she ate pretty quickly. And then she said, oh, sorry, I got to leave. And she left. And I got the bill. And the bill was $200 because she had been there drinking.
[03:33:51] And she put all the food on me. And then she fucking stuck it to me and walked away. And I'm like, okay. And basically that is the epitome, that is the epitome of, of this sentiment, the sentiment that like, no, you know, there's a lot of great women out there that respect men and really truly carry them away and try their hardest, even though the cards have been stacked against them, et cetera.
[03:34:16] But there are also women out there who are just fucking evil who will take advantage of you. They'll take everything from you, leave you on the fucking floor. And, and quite, quite honestly, I've been running into a lot of these people at the club.
[03:34:32] Of my own volition, you know, I went to the men's club. And as I was writing my book and everything, in fact, I don't want to write my book anymore. I might completely done with my book. The book started out being like, you know, dedicated to the, to the romantic idea of the divine feminine.
[03:34:49] And just, you know, this, this, this, you know, this sort of beauty, you know, the effect women have on us and everything. And after, after two nights, after two nights of sitting in the upper, in the upper balcony, writing, and just writing, by the way, just telling everybody I was off the grid and just writing and, you know, sipping on my bourbon or whatever.
[03:35:12] And I was, I was, I just wrote down, I wrote down about probably 15 or 16 observations of interactions on the floor. And, and I watched the women, making women prowling around like sharks looking for victims.
[03:35:25] And some of those women are very legitimately nice people. They've, they've opened up and we've been able to talk about, you know, what's going on behind the scenes and stuff.
[03:35:34] And, and others have shared their frustration with men, some of which I agreed with and some of which secretly I was like, what? You know, they were like, like one time there were people shitting on men for sitting in front of the pole and not tipping.
[03:35:49] And I was like, why is that wrong? Because if you're going to come into a strip club, you tip, that's what you do. And I'm like, says who, you know, it's like, and then another, another dancer was like, oh, I don't like tips at the pole because it's, it's harder to pick up the ones and they give you less, I'd rather have a dance.
[03:36:05] So, you know, the, the, the, the ideas and the women that are in there are obviously really crazy and judging women based on dancers is a horrible idea. Because, you know, they're all in a state of, they're all in some state that's brought them to the, to the floor for one reason or another.
[03:36:21] And honestly, they're, you know, they're, they're great people if you get to know some of them, but at the end of the day, they've been, they've been tainted, they've been tainted by their, their interactions with men there. And, and it was very, it was very hard to come to that realization.
[03:36:37] So I was like, I was like, I'm, first of all, I'm not interested in writing that book at all. If I, if I go back to the club, it's going to be to have dinner.
[03:36:44] Because they have great dinner, by the way. They have really great dinner. I'll go by the club and I'll have dinner and I'll enjoy the scenery and, and I'm, I'm not going to work on that book anymore.
[03:36:58] I'm going to save them wrong. Be a white knight. The problem stuff that I have is that I have white knight syndrome. I have white knight syndrome because it's because of trauma from my life not being able to save people when I was a kid. So I have it. I have white knight. I have sugar daddy syndrome. I want to do this stuff. I want to, I'm a caregiver. I'm, you know, cuddle with me. I'll take care of you kind of guy.
[03:37:17] So I am like, you know, I am like prime sip target number one in the club because, you know, all they have to do is, I mean, seriously, looking at it from that perspective, I'm like, no, I'm a target. I'm a fucking target.
[03:37:34] And, and, you know, it's, but I've known I was a target and that was, that kind of made it okay because I participated in it. I like elected to do it as opposed to, you know, getting embarrassed and rejected.
[03:37:46] And, you know, I could I make my own in nightclub? Yes. I'm too old for nightclubs. That's not my scene right now. I would probably rather go to a live music concert or something. But, but yeah.
[03:38:00] Yeah. Yeah. Hey, how you doing? So, yeah, I'm like, you know, I just, it's like, yeah, I just put a target on my head. It's like, you know, flash the cash around. Oh, hey, let's go after that, dude.
[03:38:15] I mean, I did a lot of experiments, like literally walk around the club, just holding, just holding a fat sack. And you can, you can almost lead the girls around the club just by pulling cash out and putting it in your hand and walking around.
[03:38:28] I did it as an experiment. And I did it twice, actually. Every single time it works. Every single time I can be going to the restroom. It doesn't matter.
[03:38:36] If you have cash in your hand and you're walking, it's like blood in the water. It's like, oh, I keep making, I keep making the comparison to sharks because it was, it's very much a shark attack.
[03:38:55] Now, they're, you know, I think it goes without saying that they're, I mean, they're literally hundreds and hundreds of girls, and that's called that I go to. And not all of them are the same that I know for a fact.
[03:39:08] And there are a few of them that are more real. They seem more real to me. They might just be better actors.
[03:39:17] And, you know, so, so, so there. But, but yeah, so, I don't know where I was talking about that. I've just been going through the, lately I've just been going through the whole woman.
[03:39:33] The real takeaway about that is that I am perfectly content to just do, you know, go ride my bike. Go ride my bike and have some fun with y'all and get a little bit healthy and watch the sunset, you know, and go to live music and stuff like that.
[03:39:52] I pretty much given up my goal to write. And that's kind of sad because, you know, that was, that was something that really interested me.
[03:40:07] But if I were to write the book now, it would be, I think there's a couple, there's a couple women that are extremely intelligent in the club, like PhD intelligent.
[03:40:16] And they've always been looking at me with a certain amount of suspicion about what I was writing. And I'm not doing this because of them, but in respect to the people that were in there.
[03:40:29] Maybe I miss play though. Yeah, they have better luck just being more active in circles. You're already looking at. Yeah. Well, the first thing to know is that I'm not looking for a relationship.
[03:40:37] Right. So I'm not, I'm not looking for a relationship. I think a lot of men are not looking for relationships. They just, they just want to have fun. They just want a company.
[03:40:48] You know, they may want to dance or something. They probably want sex. You know, I wish it was Logan's running. You could dial up a sex partner.
[03:40:59] You guys don't even know that reference. So, so yeah. Anyway, because I still want to have sex with women. And it's been a long time.
[03:41:13] So, I'm just going to put that out there. I'm just going to put that out there. I'm an old man. I'm keeping myself in pretty good shape.
[03:41:22] Yes, I still want to have sex with women. Am I willing to do what it takes to have sex with women? I don't know.
[03:41:30] We're our gatekeepers of the sex men or gatekeepers of relationships. Ooh, that's interesting.
[03:41:36] Yeah. Okay. Back to work. I got to get back to work. Um, searching for karaoke's part two.
[03:41:46] If karaoke were hotter, I would have searched for her.
[03:41:52] The hardest part of this whole thing is finding people that are close to 60 year old who are attractive and not taken or it's very, very hard.
[03:42:05] Very difficult. So, anyway, I'm not, I'm not searching right now. I'm just, I'm just playing.
[03:42:14] Rob, you're the real one. Oh, that's nice. Thank you.
[03:42:19] Um, I mean, I try to be, but back to work. So, that was some fun, long time conversation. It's probably time for us to go back to work now, everybody.
[03:42:28] There has to be a physical attraction for sure. I'm running into that issue right now. Yeah.
[03:42:32] Uh, I met there's so many nightclubs and bars.
[03:42:35] Uh, a lot of people have met them. And, and when I was single before, I met several very interesting people and bars.
[03:42:42] And, and church actually, and I started a paddle board meetup and I met a lot of people in on that too.
[03:42:49] So, I thought about doing the whole auto, you know, dating scene like that. And if, if for no other reason to find a fuck buddy, I respect, which I actually did find after my first marriage when I was single, I did find a fuck buddy.
[03:43:04] And we, we, is that we went through, I won't talk about it too much, but we went through her first date or two and she was just super ready to go and, and, uh, and then, but it became clear that we, we did you go.
[03:43:22] This was a long time ago. Yeah. So, yeah, that was a long time ago.
[03:43:29] I bet she's still out there though. She was really cute.
[03:43:35] But I just, we just knew it wasn't going to work. We knew it. We knew it wasn't going to work, but everyone saw how everyone saw how we were getting horny and was like, "Hey, you want to watch a movie?"
[03:43:51] So, we drink wine and watch, I don't know, Drake, you know, what's the vent, what's the revenge money, Crisco?
[03:44:01] We drink wine, drink count of money, Crisco, and fuck, and then we go home the next morning.
[03:44:08] I don't, I don't have a contact here from race anymore.
[03:44:13] I started having like a lot of...
