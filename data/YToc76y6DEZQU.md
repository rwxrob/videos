# Get off Bitnami now: Broadcom's catalog changes will hit your Helm charts

Warns that announced changes to Bitnami's public catalog under Broadcom affect Helm chart users, argues for moving away, and explains the likely rework for deployments such as Harbor with PostgreSQL and Redis. Also covers open source licensing, stream and road trip plans, and the Unix philosophy of small text-based programs that work together.

Chapters:
0:00 Stream intro before the Bitnami video
1:35 Why to get off Bitnami now
4:50 Open source licenses versus copyleft
6:57 Impact on Helm chart flattening and upgrades
11:37 Reworking Harbor, PostgreSQL, and Redis
14:39 Community charts, experience, and leaving Broadcom
16:55 Upload break and chat
27:41 Sharing the Bitnami video on social media
30:58 Stream status and road trip plans
39:43 Go playlist and casual chat
40:58 Unix philosophy and text streams
42:45 Closing chatter and assorted clips

`#kubernetes #bitnami #helm #broadcom #devops #opensource #golang`

## Category

Science & Technology

## Transcription

[00:00:00] [BLANK_AUDIO]
[00:00:30] Okay, so welcome to the stream and to the vaud, I guess, being the vaud, as usual, nobody's here. So I'm just going to be doing some other things. I'm going to go ahead and make a really quick video before the rest of the crowd comes in.
[00:00:52] And we start doing some go on this cutie library, which I still need, so that's good.
[00:01:04] But I did want to make a quick, I don't think a lot of people are making videos about this, so I'm going to actually make an explicit video about it.
[00:01:14] So if you'd like to hang tight, I'll make the video. I should probably turn on my, I'm making a video light right now.
[00:01:23] But then I'll join you. So I'm actually going to go ahead and get going on the video while this is going. So I'm just wrapping.
[00:01:35] All right, ready, ready to go. Here's the thing, if you're using Bitnami or anything, stop right now. If you don't watch anything else in this video, that's the only thing you need to hear.
[00:01:53] That's it. Close the video, go assess your enterprise environment, go find out anywhere you're using Bitnami, and quite frankly, anything from VMware, anything that's being run by Broadcom, which is an evil corporation that has regularly been sticking it to the Linux community
[00:02:10] in the sake of driver support in the 90s. That very famous video of like Torvalds flipping off in video, which I have, I won't play right now, is, you know, you could probably clump Broadcom in there because Broadcom has been one of the worst offenders
[00:02:27] against the Linux open source community in the world. They have a long tracker to this. This isn't particularly hate as much as it's just reporting the facts. And the facts are that yesterday, thankfully, somebody on my stream, I make a habit of, I've made a career out of being
[00:02:47] prescient and knowing what was going to come and what, you know, what Iids well and what Iids poorly for the tech community and how to make companies make choices and stuff like that. And I got to tell you, I feel really bad that I didn't see this when coming years ago.
[00:03:03] So, I did not understand. I mean, I knew that, you know, Broadcom buying VMware was going to be sketch and that, you know, as much as I love VMware, I really do love it.
[00:03:19] I knew that that was going to put that in jeopardy. And quite honestly, I did not make, I did not draw the connection that Bitnami was now owned by VMware and that Bitnami itself was going to get picked up by Broadcom.
[00:03:33] I, I'm sorry, I apologize for not being on top of things the way I should and maybe I'm not spending enough time on the order of three to four hours reading tech news, which is what you have to do in this career.
[00:03:45] Anyway, so I missed the memo that right here on the front read me beginning August 28 2025 but not me will evolve its public catalog to offer a curated set of hard security focused but not me saying a translation.
[00:04:02] And if you're free anymore, you have to pay us, you sons of bitches, then, you know, and then they have this really incredible beautiful chart that, you know, basically describes all the ways that they are going to screw us over for using their open source
[00:04:21] And by the way, have been, you know, the secure charts initiative right it's like, okay, there under the, this is like so many times this happens right.
[00:04:34] So what they do, what a company does is it claims that for the good of humanity and security that they're now going to close their doors, take all of this free software that they benefited from, close it off and flip it so that they can now sell it to people.
[00:04:50] By the way, I got to say this, as much as I dislike Richard Stalman, he's right on this.
[00:04:56] The reason that companies are doing this that they're able to do this to us is because of these open source licenses, which are not copy left.
[00:05:06] Because if they tried to do this stuff with GPLB two, they would fail because every change they make to the source code, even if the change they make is something they're going to sell to somebody else.
[00:05:19] They have to release those changes and make them open to the public.
[00:05:24] That is the difference between MIT, Apache, BSD and all these other open licenses, which basically say, you just can't hold this accountable, but you can use this whole thing, however you want, including selling it and bundling it with your own proprietary extensions.
[00:05:39] That's how we got Darwin.
[00:05:41] And, you know, so, Broadcom has decided to do the same thing. It's how Red Hat became a thing. It's regular. If they do it all the time, it's, you know, they start out with an open source thing and then they close it down.
[00:05:57] A dollar box open source. Boom. Now it's proprietary. Can't even get the code. It's a regular problem in open source community. In fact, we can have a longer, very violent discussion about whether open source is good for humanity.
[00:06:11] Because, you know, a lot of people are going into this with the expectation that these things are going to be available later. Is it better to not prepare for that?
[00:06:20] Right. And then have, and then have the rug pulled out from you, which is what happened, or is it better for you to sing kumbaya and give all your IP away for free only to have somebody else take your IP, close the doors, run with it, and do it better than you.
[00:06:37] So, yeah. So beginning August 28, the nominee will evolve. So basically, I'm not going to read all this. This is going to make me angry. So I've already read it. Yeah, if you want to see, you have to go back and see the other vods of me discovering this for the first time.
[00:06:52] They're not suitable for work, just or children, just, you know, because I was like, so angry. I was like, you got to be kidding me. Let me tell you why this matters. Okay. Because our company, we just barely got updated on our clusters.
[00:07:11] You know, we barely got caught up with our cluster. We haven't even completely done that part of it yet. And a big part of our upgrade procedure included.
[00:07:19] Kate saps, you know, this, we already have to deal with Helm, which is a disastrously bad application that is the best we have, and everybody has to use it.
[00:07:28] And so we had to flatten Helm using something called the Flatten Manifest pattern from Acuity, which they just gave a name to. We were all doing that already, and they just gave it a name and made it popular.
[00:07:37] Which is the idea is that you put, you take a home chart, you flatten it into a static resource manifest, you do any changes you need to do based on your local inventories, or, you know, maybe your internal harbor or something like we do.
[00:07:48] You know, you transfer secrets to external secrets, which, by the way, that render manifest problem doesn't just kind of puns on the whole secrets thing, which you really can't do if you're going to have a solution that you're going to recommend to the world with regarding with regarding
[00:08:01] isolation. If you're not dealing with secrets, then you're not dealing with enterprise software. So, anyway, that whole process was already going down.
[00:08:10] And as a part of the upgrade process, which is what I was doing online, was writing software to flatten these home charts and to do it, and I was pulling from the binomial charts.
[00:08:19] And lo and behold, somebody in my chat says, you know that you can't do that anymore, actually, what you should be using the OCI path now.
[00:08:27] And I'm like, what? And then I found a whole thread about the OCI past not even being supported in some enterprise surprises because they were having problems with HTTP proxy not handling it.
[00:08:36] I confirmed in our company, it does work. Thank heavens. If we actually have to use the OCI pathing, which is OCI colon slash slash instead of HTTPS colon slash which is insecure.
[00:08:47] So that is how the state of event stands. And so how does this impact me? And more importantly, how is it going to impact you watching this right now?
[00:08:58] What is this? What this means is that you now have to either pay up to use binomial charts and alter all of your charts to use the new locations for things.
[00:09:11] Or you have to get off bitnami. Guess which one I suggest.
[00:09:19] Run away from bitnami at maximum speed. Get off of anything Broadcom touches as soon as possible. This company has just demonstrated what it truly values.
[00:09:31] It does not value open source VMware was never open source, but they had an open component.
[00:09:37] And so that stuff has all been a big part of this equation. And you could argue that, you know, VMware, I love VMware. I always have.
[00:09:45] It's a real sad thing that has been taken over by Broadcom. Broadcom is a disastrously bad company. They're successful financially, but they are a disastrously horrible company.
[00:09:55] And with regard to open source, they have decades of demonstrating their true colors by their fruits. She shall know them. And this, if you want to call this an anti Broadcom video, so be it.
[00:10:06] If you continue to use anything from Broadcom, you will regret it and you will pay for it financially. So the main thing that I'm going to end this video on right now is stop right now.
[00:10:20] Go look at everything in your enterprise environment, anything that's coming from Broadcom, anything that Broadcom has ever touched in your environment.
[00:10:28] Immediately evaluate how fast you can get off of it and how fast you can start using alternatives. Because whether it's VMware or it's bitnommies, helm charts that were free for all this time to have community contributions for years, all of it is going away and they are aggressive about it.
[00:10:46] The reason this is making me so upset is they didn't even give us a year to transition. They gave us this thing came out. I don't even want to know.
[00:10:54] This thing came out I think earlier in the year. I think they probably give us maybe six months, but it says in my tears. A lot of people are just caring about this, including really big streamers who are very well in the know.
[00:11:05] I want to say who with other other streamers and people technologists and pretty much everybody in my life stream who works in tech, they've not heard about anything about this. So they've been happily using binami charts all this time.
[00:11:16] And now all because they've been watching my stream plug, they got notified by this other person who I want to just, you know, give a big whatever, buy a copy or something.
[00:11:29] Because they said, you know, those charts are all going away on August 28 and I was like, wait a second, that's in one month.
[00:11:35] That means, you know, we have like 25 case apps that we're responsible for that we have to get off of binami. I don't even know if some of those applications have binami charts that are not binami.
[00:11:47] So our entire approach to these applications, some of them are very important. Harbor have to be completely reworked. And for example, let me give you another example. I reworked the harbor chart and the harbor keeps up to use the internally built in postgres backup.
[00:12:04] So the binami chart comes with Postgres are red is bundled with it. Harbor has its own chart. And, but we're not using it because, you know, binami's got this really cool chart over here, you get the backups, you get all the stuff dialed in.
[00:12:16] And so we decided to use that one instead. Well, guess what? Now, we have to use it in the ironic thing was, is it a year ago when people use the, not me, but when they use the harbor chart, they didn't know to look for the sub charts and therefore they didn't see that there was already a postgres backup
[00:12:31] job in there that they just had to activate. And so because they didn't see it, they wrote their own, they wrote their own job to postgres backups in their own way.
[00:12:41] And I actually just migrated away from that to use the internal one because it was already in binami. So I got rid of the old job that was there that they had written.
[00:12:49] And now guess what? I'm going to be bringing back that job as well as writing my own flat and postgres katsaps and finding a version of postgres that's really cloud native and happy.
[00:13:01] Because guess what? I can't use the binami postgres chart that's bundled inside. I now have to do my own katsap bundle, which means probably coming out, I have to find a postgres, I have to find a Redis provider, I have to find, you know, whether it's, I'm installing an upper, there's like five different ways to install stuff.
[00:13:18] So I have to pick which one to do, and then I have to make sure all the pieces work together, which was the advantage of using the binami chart.
[00:13:25] It says binami chart, you know, proposed the idea of having all those things work together, and they made sure they worked until they did it back in the last version.
[00:13:32] I had to submit a bug because they were locking down postgres versions based on an incompatibility with another thing, which was out of date, and they just forgot to update that.
[00:13:41] And then they ripped that out in the last version, so it's not there anymore. So, you know, the idea before that, oh, binami, the people who are supporting the binami charts are going to be, you know, more in the know, and they're going to know how to use postgres and Redis and dial them in really well.
[00:13:55] Well, guess what? No. The other thing too is they actually claim that they have postgres H.A. in the binami chart. It's not H.A. at all.
[00:14:02] In fact, the way that they configured their, I have to go look at the diesels of the year ago, but the way that the way that the way that that Harvard was using postgres was not leveraging the H.A. of it.
[00:14:16] And that was because of a bunch of assumptions about the people who made the charts, which don't understand H.A. apparently.
[00:14:21] So all of those things would have potentially been avoided if I had said, okay, we're going to make it, we're going to set up postgres independently to make it as high availability as we can get it for, for, you know, Harvard.
[00:14:32] And now we're going to set up Redis to work with Harvard. It would take more work on our part to get all that to done as opposed to trusting, you know, the community.
[00:14:39] Trusting the community is, it double its sword. On the ones hand, it's like, oh, hey, people are going to, this is very true. Keeps free. On the one hand, it's like, oh, hey, let's trust the community to provide the same blah, blah, blah, right?
[00:14:52] But on the other end, it's like, this is bad. This is really bad, right? Because you get all sorts of contributions, some of that are barely peer reviewed.
[00:15:01] And so you end up putting crap in your environment. That's really horrible. And that's why my friends, if you're an experienced engineer, you don't have to worry about your job.
[00:15:10] Because even though AI can evaluate some of those changes and stuff, it does not have the same gut feel and experience that someone has when they who says like one of the people who responded to me in the chat when I reported all this to work.
[00:15:22] They said, I always had a bad feeling and my gut about bit and on me. They're also like saying how much they keep spray, even though they're being forced to use it just like me.
[00:15:32] So, you know, these, these, these intuitions of things are kind of developed over time. And what I'm telling you right now, is everything in me says, get away from Broadcom. Get off it as fast as you can.
[00:15:46] And honestly, Broadcom, what were you thinking? I mean, really, you, I know what you're thinking. You're thinking that you don't care.
[00:15:56] You just don't care. You don't care. You're a big, heartless corporation, like all the other ones, making money off of open source contributions and pretending like you're giving your contributions back to the world.
[00:16:08] You're not. You're an evil, demonic, for-profit organization who doesn't give a crap about actually promoting technology in the world.
[00:16:17] And, and I'm sorry for having to put it in such black and white terms, but that's what you are.
[00:16:22] You are so bad for the world and you are screwing us. You know, hardworking engineers are going to be the ones who are going to take the brunt of this decision.
[00:16:29] These companies that you're trying to get money out of, they're not going to care. And they're going to make all of us do the work.
[00:16:35] And guess what? We're the ones who influence those people to make decisions about whether they should use you or not.
[00:16:40] And guess what? We all just collectively decided, fuck you, Broadcom.
[00:16:46] There. That's the end of that one.
[00:16:55] All right, I got to start that uploading. That's going to be the title of the video. Fuck you, Broadcom.
[00:17:09] I'm going to burn up all my bandwidth on this.
[00:17:34] Okay.
[00:18:04] Thank you.
[00:18:34] Thank you.
[00:19:04] Thank you.
[00:19:34] Thank you.
[00:20:04] Thank you.
[00:20:34] Thank you.
[00:21:04] Thank you.
[00:21:34] Thank you.
[00:21:41] Thank you.
[00:21:47] Thank you.
[00:22:13] I'm not going to offer me a job. I would never take a job from these assholes.
[00:22:43] I'm not going to offer you a job.
[00:22:50] Thank you.
[00:22:57] Thank you.
[00:23:02] Thank you.
[00:23:15] Thank you.
[00:23:42] Thank you.
[00:24:12] This is insane.
[00:24:19] Good morning, everybody.
[00:24:36] Thank you.
[00:25:06] I only swore one time, so I should only get like a PG-13 rating.
[00:25:22] Did you find it? Yeah, thank you for that.
[00:25:33] This tag isn't that wrong.
[00:25:40] Is this so wrong?
[00:25:43] There's Misha.
[00:25:48] Oh, Misha got an MVP for Microsoft. Good for Misha.
[00:25:55] Broadcom.
[00:26:00] God, now I don't even know how I might be thinking.
[00:26:09] Even you look at the word like a million times and I can't say it.
[00:26:17] Broadcoming.
[00:26:22] Broad, is that right? Yeah.
[00:26:32] 4.7 videos, yeah, okay, that's right.
[00:26:38] Thank you to Misha.
[00:26:41] My copy got cold.
[00:26:45] I'm going to be doing some go later.
[00:26:51] I'm going to be doing some go later.
[00:27:01] So.
[00:27:06] Yeah.
[00:27:13] Is it ready yet? Are we there yet?
[00:27:23] Oh, my God. This dude is loud.
[00:27:41] Oh, look, they started to do markdown rendering.
[00:27:52] Please upload this video so we can get a lot of people to see it.
[00:27:56] It needs to get picked up by the algorithm. We have to help other people see this.
[00:28:07] They know if you pay you have to change every single home chart to use it.
[00:28:17] Just find something else rather than just risk getting another money grab.
[00:28:19] Broadcom is a long history of screwing over the Linux community and they aren't stopping now.
[00:28:23] Frank, it seems to be what it does best. You've been warned.
[00:28:28] Social is working. Who is that guy? I feel like that's enough.
[00:28:47] I feel like that's enough. We can go back to doing other other things.
[00:28:51] I do want to repost this, though. I have to share this at least to LinkedIn. I think I already did.
[00:29:00] I don't know if I should put my LinkedIn on my socials. I don't use it very much.
[00:29:08] I despise LinkedIn. Try it. Link 3. Subscribe to our channel.
[00:29:19] We've got a job. Nice.
[00:29:30] Read it. I don't know where else to put it. This is fine.
[00:29:37] Twitter. The people see Twitter. No good engineer uses Twitter still.
[00:29:45] Facebook.
[00:29:53] Facebook, why not?
[00:29:57] All videos are now posted as Reels and share the same audio settings as posts.
[00:30:09] I do have a couple of really senior executives as friends on Facebook.
[00:30:23] All right. Yes. Let's get back to other stuff.
[00:30:33] I'm more of my friends. What is that? Pixel? Am I going to be scared if I click on this?
[00:30:44] Yeah. Yeah. That's probably a good idea. Thank you. Leave that there.
[00:30:54] We want to have that in the chat for at least while I'm still working.
[00:30:58] Speaking of why, let's regroup. Thank you for joining everybody.
[00:31:02] I want to hit the start of that video while I was waiting for people to kind of trickle in for the live stream.
[00:31:08] This live stream will be go programming and we are going to be making some more utilities for doing image transfer and different thing.
[00:31:19] So, so that that's a part of the plan.
[00:31:28] Yeah.
[00:31:41] All the different ways.
[00:31:49] All right. So let's just take all the ad break is going on.
[00:31:52] Let's just take a moment to do some organization about what's going on today.
[00:31:57] I didn't get to POV morning this morning. I saw her about that, but I was actually having breakfast with Nina.
[00:32:02] Yeah.
[00:32:05] We had a green night last night. We hung out listening to music and.
[00:32:09] Watched jaws.
[00:32:13] On a hotel. Listen, it was funny. It was crazy.
[00:32:19] They didn't stay over here last night actually. And she's she's backing up and saying goodbye and stuff like that.
[00:32:28] And we're going to be hitting the road. Looks like Monday.
[00:32:33] So, just just to normally permit me a little bit of status updates here, everybody, and then we'll get into the go programming.
[00:32:41] Since I kind of missed the other thing.
[00:32:45] So, yeah.
[00:32:49] In fact, I will probably.
[00:32:54] Restart this video after I finish because now that you guys are here.
[00:33:01] So let's let's spend.
[00:33:03] How about four or five minutes updating on the status about where everything is happening, where we're going, everything. Okay.
[00:33:09] So, I have to check out at 11. I also the Purifying Review 11. So.
[00:33:19] I don't know that I'm going to be able to make the P.R.E.V. meeting.
[00:33:35] So, yeah, I don't think I'm going to be here for the meeting. I need to check out. So, I'll be checking out and.
[00:33:45] Yeah.
[00:33:50] Having lunch.
[00:33:53] I'm not going to do the P.R.E. meeting. I'm going to blow that off.
[00:33:59] I don't know if the knowledge sharing meeting is today. Give me a second.
[00:34:07] No, this meeting is not happening. So, that one can go to.
[00:34:12] So, what I'm trying to do is find the place where you can kind of get check out the kinta. Yeah.
[00:34:20] So, wait, what?
[00:34:23] You can usually check out before the checkout time. Yeah, no, I don't want to.
[00:34:28] I want to, I want to check out after. I want to, I want to work here, but I have a lot of stuff I have to do today too.
[00:34:34] So, I'm actually going to end the day and then I'm going to go.
[00:34:38] Sleep over there. So.
[00:34:43] So, yeah, so, so between now and like 11 a.m. We're going to do the go.
[00:34:51] Go coding Q.D. So, that's going to be the main thing. So, I know most of you are here for that. That's what's in the title.
[00:35:01] So, I didn't want you to miss anything. So, I waited and made that video ahead of time.
[00:35:07] And because, you know, I'm usually, I'm usually like.
[00:35:11] I just, so the housekeeping has time to return. Yeah. Yeah, yeah, yeah.
[00:35:16] So, so, yeah, so.
[00:35:23] I do still have to have lunch, but I'm actually after lunch. I need to go get a mobile and phone.
[00:35:30] So, I don't know if I'm going to take you with me for that, but I might take you with me for some of that.
[00:35:37] And the toothless silly rob guy.
[00:35:41] So, I also need to get a new change the car in.
[00:35:45] So, I don't know how much of this I'm going to live stream, but I'm going to do IRL prep or road trip.
[00:35:55] So, I don't need to give you the whole thing here, but I have to, I have to get another phone so I can do the mobile thing.
[00:36:03] I have to figure out some way to mount the phone in the car. I have to trade my current car in, which means I have to drive probably all the way to Salt Lake and back, which is about 90 minutes, 90 minutes to two hours each way.
[00:36:20] So, I'm going to need to do that. And for a lot of that, I probably can stream it.
[00:36:26] That that trip, especially if I get a mount for the phone for the camera for the telephone.
[00:36:33] I mean, even if the signal is really bad, it's not a major highway, so it probably should be good. But even if the signal is bad, it will still be worth having to have a stream as long as I can figure out how to mount the phone to the to the to the dashboard somehow.
[00:36:49] You'd be cussing it out. Oh, I'll be cussing it. Yeah, for sure.
[00:36:56] Under the circumstances.
[00:36:58] So, so, so, yeah, so we're, because I didn't bring my other rig with me, we're going to be doing Moblin on the way home.
[00:37:07] And so we're going to, we're going to test it. That'll be the ultimate test.
[00:37:12] Because we'll have two phone signals and mobile across the country. And if that even performs halfway decently, it'll be worth doing for just for the stealth capabilities.
[00:37:25] So that's coming up for later for you. If you're interested in real IRL stuff.
[00:37:30] So that's going to be it. So I'm going to be, I'm going to be doing mostly works related. I'm not going to the coding kind of things. I'm going to be doing that at night.
[00:37:46] And I don't know how much of that I'm going to be able to stream. I actually might end up going to McDonald's at midnight and doing this, which is open 24/7.
[00:38:01] So I might actually go to the McDonald's where I can stream and keep keeping people awake. And I'll probably end up doing a little bit more stuff regarding the coding and thing.
[00:38:16] I don't know. So that I'm not going to put on the, but it's tentatively, it would be later in the evening.
[00:38:24] But just because we still have to map out the chart about where we're going to go and I'll go ahead and show you that really quick.
[00:38:33] Well, I don't have to show you that. If you, if you, yeah, if you go ahead and punch in the standard route between here and it's going to take us six or seven days.
[00:38:49] So, you know, the bike ride this weekend and next weekend, both off, we're going to be trying to drive at least six hours a day, but we're going to go just straight shot through Cincinnati.
[00:39:01] And we'll head down down to, so same old, same old, more of the same there.
[00:39:08] So that's the plan. So for the next week, we're going to, it's all going to be road trip the entire week.
[00:39:14] These other things are not going to happen. I am going to be working during the day. I have a lot of deadlines, especially now that I know that my work just like kind of doubled to do this.
[00:39:26] So speaking of that, let's get back to work, Rob. And I'm going to warm up my copy.
[00:39:32] You're welcome to watch clips for a bit while I go do that, or you can just come back when the clips are gone.
[00:39:37] And I will restart the stream and we'll get back right into the go coding. So if you are here for that, we'll, we'll make sure it happens right now.
[00:39:43] And I am preparing a playlist of all of the go coding stuff, even though the last video is basically derailed entirely once we figured out, you know, if you approve it to you.
[00:39:59] Yeah, what, when I saw that the escape key was where the caps lock used to be. I don't ever use caps lock.
[00:40:06] Do you? The only people who use caps lock are like people who are assholes and lawyers, which is the same thing.
[00:40:24] We're interesting. We're all his friends, too. We're all friends. Yeah, should we do it just chatting? What's this about? Loki? Loki, the digital series is streaming now on Twitch.
[00:40:41] Look, there's only 2.6 people on a Saturday night. That shows you how the world is.
[00:40:45] We should go raid somebody else. Wait, who's making noise? Somebody make a noise? Man, we went all the way up to 8 viewers on YouTube.
[00:40:58] Some of the most intelligent, well, thoroughly thinking people who have ever existed.
[00:41:05] And it's one of the reasons that I'm a big fan of Go because Rob Pike was right there with these people. I was young. It was really young, but use tools in preference to unskilled help to lighten a program's task, even if you have to detour him.
[00:41:19] But then there is another one. Here we go. Here's the quintessential Unix philosophy. Right programs that do one thing and do it well. Right programs that work together.
[00:41:35] It's a super important and the method of working together is primarily the filter pipeline design pattern that we're talking about. Right programs to handle text streams because that is the universal interface. And I cannot overstate this.
[00:41:50] Your programs should get used to outputting and reading text. And these days you have to do an extra step.
[00:42:01] It is. Look, I told you I'm not against JavaScript as a syntax. I don't like how loosey goosey it is, but as an interpret language is actually kind of nice to have a loosey goosey language. It's why I like Pearl so much.
[00:42:17] Pearl is so open. It makes it for prototyping and stuff. But that's what I'm saying. I don't know if that would be something I would ever combine with the needs of cloud data in any way.
[00:42:29] It's the same reason it's the same reason that Unity script, which is JavaScript based, failed miserably for unity. And they stuck with C sharp.
[00:42:37] Because it's just it's not the tool for the job. It's not the language for that. I just don't see what job.
[00:42:45] It's the V8 anywhere in the cloud native space would do. Oh boy. Yeah. All right. Keep your eyes peeled for cars. We have to cross the highway. Oh, there we go.
[00:43:03] Yeah, it's a green and I have a walk, but the guy still runs it. What else is new? You almost saw another one there.
[00:43:13] I got my lights on. It does not give a shit.
[00:43:23] What is this? It's just a fun thing to look at your reflection, I guess. There's no kids here, so it's not completely creepy that I'm here.
[00:43:33] I'm just scoping it out from when the kids are here.
[00:43:40] I'm going to shut down my, you know, I'll give you a hug. I'll give you a sec. Not right now. I'm about.
[00:43:45] All right. I got to hug my wife. She's taken off here. Bye.
[00:43:50] She put the fan on. What? You're going to hug me in front there. I just told him about the dangers of being on camera when we kiss and stuff.
[00:43:57] You're kissing me on camera. Don't do that. Okay. There. My neck. Okay. Bye, guys.
[00:44:02] I'll give you a hand on them and you're not on to that set.
[00:44:32] Yeah, many cubes. Many cubes. Many cubes isn't working there. Unfortunately, it's kind of a known problem.
[00:44:51] If I were you, I would set up a VM.
[00:44:58] Oh, yeah, baby. I got a little bit of air. Enough for me to have fun anyway.
[00:45:08] This is the second time I've been falling down. Like a moth. Why did you just fly right into the flame?
[00:45:16] Oh, my God. This moth just killed herself. This moth literally just killed herself. Oh, I'm so sad.
[00:45:26] I like that. I legit. Yeah, and then we have, you know, some of those notional ones that you're talking about.
[00:45:32] Oh, they're so cute. Yeah. Yeah. What is it? What is this? So this keeps the panic line away from seeing the panic line, right?
[00:45:39] Yeah. Wow. Those are so cute. I totally want some of those.
[00:45:48] I wonder how many guys actually wear, like, really beautiful underwear underneath and they just don't tell anyone.
[00:45:53] Oh, quite a few. I know it seems really weird, but it's like...
[00:45:58] Do you have any time to kiss us?
[00:46:23] [silence]
[00:46:43] Great.
[00:46:48] [silence]
