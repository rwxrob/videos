# 🤩 we fixed bitnami/harbor values.yaml

Explains a change to the Bitnami Harbor Helm chart's values.yaml that updates the PostgreSQL image tag from version 13 to 16.4 for a Minikube install, and why the old pin appears to be a bug that still needs validation. Also covers plans to write out manual test steps for Harbor, why such procedures matter for monitoring, upgrades and disaster recovery, and next steps for the build and deploy scripts.

Chapters:
0:00 Daily Harbor testing summary and stream plans
0:46 Yesterday's Harbor install and the values.yaml bug
1:25 Finding which PostgreSQL version Harbor supports
2:22 Checking whether PostgreSQL 16.4 could work
3:25 Changing the Postgres image tag in values.yaml
4:55 Plan to test Harbor on Minikube
5:49 System testing, observability and disaster recovery
9:07 Writing manual validation and regression test procedures
11:44 Build script and Harbor namespace handling
13:00 Draft pull request and feedback welcome

`#kubernetes #harbor #helm #postgresql #bitnami #minikube #devops #testing #coworking`

## Category

Science & Technology

## Transcription

[00:00:00] All right. Here we are. It's a new day. We're still working on harbor testing and I want
[00:00:06] to report on what we did and what we're going to do in the live stream. This will be the
[00:00:11] only video that's posted to YouTube regarding harbor for today. Let's find something major.
[00:00:17] So I'm only going to do one summary video. I mean one kind of here's what we're doing
[00:00:22] today and here's what we discovered from yesterday and I'll do a video like that every day. So
[00:00:27] tomorrow, if you want to see this summary video what I did today, what actually ended
[00:00:31] up being in reality, just keep watching it on YouTube and you can go watch that video.
[00:00:35] If you want to participate and want to watch me go through the pain and suffering, you
[00:00:39] know, live, then come join us on Twitch. All right. So yesterday, yesterday, beyond getting
[00:00:46] mini cube installed, we also got harbor to install into mini cube using Postgres version
[00:00:54] 16.4. And we did that by fixing the bug in the values.yaml file which results from the,
[00:01:06] you know, the regular command show whatever, helm show whatever to get the Amazon. So there's
[00:01:11] a bug in the, in the values.yaml file that that pegs the bitnommy harbor chart to version
[00:01:20] 13 of Postgres was going to be end of life next year next November. So we want to use
[00:01:25] version 16. And we spent a good amount of time way more than I would have care to have
[00:01:31] ever done finding any reference to which it was the standard version of Postgres on in
[00:01:36] harbor on the harbor documentation. And there is none. There is officially no documentation
[00:01:41] stating what the recommended Postgres version is for harbor 2.11 period. If you know of
[00:01:47] any, and you found a reference to it, please put it in the comments below or come in my
[00:01:51] chat and let me know. Because after all of us spent a lot of time trying to answer that
[00:01:56] one simple question, what version of Postgres can I use? We could not do it. We know that
[00:02:02] anything past 2.9, according to the documentation, has to be at least version 12 of Postgres.
[00:02:11] And then we're talking about the version of Postgres, not the chart. It's really important,
[00:02:14] by the way, that you distinguish those two things. And so that leaves us with a question.
[00:02:22] Can we even use 16.4? By reviewing the resulting template file from the Helm template command,
[00:02:31] we were able to see that there are multiple metadata tags that refer to Postgres version
[00:02:36] 16.4. Did I get that right? Yeah. And 16.4 is more or less the latest stable version.
[00:02:47] And it appears, we went through looking through the chart, the chart has hard-coded a reference
[00:02:52] to the chart.yaml file in the Bitnami GitHub repo has 13 point whatever hard-coded into
[00:03:01] the chart.yaml file. It's also hard-coded into the values file with a very outdated
[00:03:09] comment saying that this was added to peg this to 13 because version 2.4 of Harbor doesn't
[00:03:18] support version 14 of Postgres, which is ancient history at this point. So based on
[00:03:25] that, we were of the opinion that we could attempt to change that value in the values
[00:03:31] dot yaml file. And that was the only thing I did. So there were other references to 16.4
[00:03:37] inside of the inside of the values file, which made me think that, okay, this might work
[00:03:46] with 16.4. So I changed the Postgres dot SQ, what is it? Postgres dot image dot tag in
[00:03:58] the values file was changed to the latest tag for 16.4 that was referenced. And I was
[00:04:08] able to find that exact tag by looking at the Bitnami slash Postgres chart. And that
[00:04:17] is the same one from that chart. All of this would seem to indicate that the Bitnami charts
[00:04:24] are built based on subcharts, on the Postgres subcharts, on the Redis subcharts, and that
[00:04:31] they are being included and that they're being used and that some parts of the chart, the
[00:04:35] resulting manifest that comes out of it, the yaml that comes out of it, some parts of that
[00:04:40] are updated to 16.4, whereas the critical piece that actually gets the image is still
[00:04:48] stuck on 13, unless you overwrite that. I happen to think it's a bug, and I'm trying
[00:04:55] to validate that. So today, the plan is to test our Postgres that's been installed to
[00:05:03] test our harbor that we've installed in Minicube in my test deployment here on NVM. It's very
[00:05:09] possible that something about Minicube running in a VM is not going to allow harbor to work.
[00:05:15] So we'll be finding that question out. If that doesn't work, I'll probably be bumping
[00:05:22] up the time that I, the date that I buy a new server tower and my other one got fried
[00:05:27] in the move. And so, you know, it was refurbished, so whatever. But if we get, if this Minicube
[00:05:33] test deployment doesn't work in my home lab, stay tuned out Friday for that. If you want
[00:05:38] to come in on home lab Fridays, Friday afternoon, I is just talking about my own home lab and
[00:05:43] just sharing notes with everybody. So that's the plan. If this, if it doesn't work in Minicube
[00:05:49] for some reason, and we can't validate it, then so what does it mean? What does works
[00:05:54] mean, right? And that, that launched me into kind of a, you know, verbose discussion about
[00:06:02] testing, particularly at the enterprise and in operations. What does it mean to write a
[00:06:08] test and why do you need tests, right? Well, you guys know this, but there's test-driven
[00:06:14] development, but many of the concepts of test-driven development, despite the debate around it,
[00:06:20] can be applied to enterprise systems development and architecture. And that includes, how do
[00:06:25] I check that this whole thing works? And if you fall in one of the more traditional,
[00:06:30] like we built, you know, use your, your stories or use cases to define what's going to happen
[00:06:37] in the system. If you have those things because you develop the system from scratch, then you
[00:06:43] may already have, you know, the steps of validation and a procedure to go to. However, most people
[00:06:50] don't have that, right? And, and unfortunately, Harvard doesn't have any, it's actually one
[00:06:57] of the biggest failures of the industry, in my opinion. You barely get documentation about
[00:07:02] what the system does. This is why you should learn how to read the source code of any system
[00:07:06] you're maintaining, because that's where the truth is. And then you can go to the next stage,
[00:07:14] which is, how is this thing going to work in our environment? And if you're an architect,
[00:07:20] you're in the operations space, you have already kind of had to start thinking about these things,
[00:07:26] even though the applications developers may not have given you much. One of the biggest
[00:07:29] talking points in all of Kubernetes and, and cloud native, you know, thinking is observability,
[00:07:36] because all of these crazy, you know, microservices are out there. How do you know if they're even
[00:07:40] working the way they're supposed to? There's really no answer there. Everything's different.
[00:07:46] There's no standard and every system is different. So there has to be a difference. You can't
[00:07:50] be automated. And so, you know, and then how do you know the system? So this is actually,
[00:07:55] this system, this integration testing, the system testing, making sure the thing actually works,
[00:07:59] is really key, it's key for lots of reasons. It's key for monitoring. So you can tell, you know,
[00:08:06] in real time is the system working has designed, right? I mean, that's the main thing. And then
[00:08:11] there's also another one. Our old system just got, we just got lightning strike in our thing,
[00:08:16] and we have to recover our entire system. Disaster recovery DR. Can you do it? Once the last time
[00:08:22] you actually tested your disaster recovery scenario, I guarantee you, if you work for the government
[00:08:26] in certain areas, you've tested it recently. There are and different enterprises. This is one
[00:08:31] thing. This is one of those things where Silicon Valley just totally fells on its face. You know,
[00:08:35] they're all about making new cool stuff and everything. And they don't care about sustainable
[00:08:41] disaster recovery and backup or something. I mean, that's a large sweeping statement. Obviously,
[00:08:45] there's probably groups that do. But this is the thing that gets swept under the rug all the time.
[00:08:50] And then this is where I get to be, you know, angry man shakes his fist at you. Do you have your
[00:08:54] disaster recovery test once the last time you tested it, right? And there's also security testing,
[00:09:00] which we're not going to do and we're not. That's not what we're doing. Why am I even talking about
[00:09:03] systems integration and disaster recovery? I just want to see if I can get harbor installed in
[00:09:07] midi cube, right? The reason I'm talking about it is because I can actually accomplish two things
[00:09:13] at the same time right now. I can write the steps to validate that this system is working,
[00:09:20] right? In very specific detail, I can write them, actually type them out, not put them in some sort
[00:09:25] of automated test framework, not spend, you know, I don't know, two days bike shedding which test
[00:09:30] framework to use. I can just write down what I need to do and I can give, I can follow the plan,
[00:09:36] the procedure. And so we're going to do that. We're going to do that. Why are we going to do that
[00:09:41] today? And it's going to be very boring. But this is going to give me a written form of validation
[00:09:47] that the system is working as designed. And it's going to take the form of the user does this and
[00:09:53] this and this or the system administrator does this and they see this, right? And those, of course,
[00:09:59] a lot of those test cases can be put into some form of automated test driven development. Later,
[00:10:06] you can put them into your, you know, your get up actions and all that stuff. But then you have
[00:10:09] to start somewhere. So you start by writing the procedure, you know, writing the pseudo code of
[00:10:14] the procedure, the user goes to here, click on this, look at that, see if that's there. Yeah,
[00:10:20] let's try to add a new user, let's set a delete a user registry, let's, uh, set a project, you know,
[00:10:25] and this, it's easy to get bogged down in the details of this, but you actually have to have
[00:10:30] this if you don't have this, you never know that your system is up. So after you undergo an upgrade,
[00:10:35] how are you going to go regression test? What you have? Well, one of the ways is you run through
[00:10:42] your disaster recovery validation and you make sure that this, those procedures and all those steps
[00:10:46] over. You can't just, one person's like, Oh, I checked it and it works all working is another
[00:10:51] person's like, it's not working. Right. So I can't tell you how many times I can tell you how many
[00:10:57] times I have found like critical systems failures by following a procedure for this kind of thing.
[00:11:04] And maybe that's why I get the big bucks. I don't get the big bucks. I'm just, it also makes me
[00:11:11] insufferable to work with because I don't like systems that aren't tested. And there's a bunch
[00:11:17] of cowboys that'll push something else. But why is it taking you so long? Because I'm writing
[00:11:19] test cases and I'm validating their works, but you should have had it done two days ago.
[00:11:25] Stormy Daniels.
[00:11:32] Yay. Stormy. Welcome. Welcome to the stream.
[00:11:38] Now I read my YouTube video too. Thank you for that. Okay. So anyway, that's what we're going to do
[00:11:44] today. We're going to try to, uh, we're going to try to get this test done. And then we're, if we
[00:11:49] have time, we'll move on and we'll start, we'll finish the build script. Uh, we'll, we'll, we'll
[00:11:55] inject the harbor namespace building into it, even though a lot of people just assume it's there.
[00:12:00] I actually want to add, I like being able to run, uh, just run the build script and have it detect
[00:12:04] whether the namespace harbor already exists and say, Oh, I don't want to blow away the existing
[00:12:08] namespace in this thing. I want to, I want it, I want the build thing to actually not blow away
[00:12:13] the existing one unless it's, you know, explicitly done. And, and if it's not there, add it, right?
[00:12:18] So we got to add that. That's pretty easy to add to the build script. Uh, actually that is, um,
[00:12:24] that might be, uh, well, let me think about this for a second.
[00:12:32] I'm trying to decide whether we want to put it in the, we want the build script. In the current
[00:12:36] format, build is not a, well, we'll talk about it later. Uh, whether it goes in there, I, I'm,
[00:12:41] I'm hesitating because build doesn't have, doesn't necessarily have visibility into the, into the
[00:12:46] cluster to find that out. Um, but possibly it's okay to do that. I'm actually going to ask my
[00:12:52] teammate on that. Um, okay. So then we will get to the deploy script. These are all the things
[00:12:56] that we have to do. Right. So if you want to stay tuned, you just watch YouTube video tomorrow
[00:13:00] and I can report on what we did. Um, if you want to follow along in the repo, the repo is, uh,
[00:13:07] that's a harbor docs. Where is the repo? The repo is, uh, no, it's, uh, R W X Rob slash Kate's app
[00:13:17] slash harbor. And it's the branch. The branch is, um,
[00:13:26] uh, the PR that you want to follow along with is modernizing the latest Kate's app. This is a
[00:13:31] draft PR. Um, it should be a draft. Yeah. And you can actually see all the files that were changed.
[00:13:37] Um, I did try to put kind of a, uh, I don't know if you saw, but I did try to put a, like,
[00:13:44] those things that have to be done here, um, as checkboxes, but I mean, that's, I don't know.
[00:13:50] I'm also just using those files. So if you want to keep up with what's going on on that,
[00:13:53] let me know. Um, especially if you've got Kubernetes knowledge and you think I'm doing something bad.
[00:13:58] Um, uh, hey, you're doing stormy. Um, I actually am not, uh, very good at Kubernetes.
[00:14:09] There I said it. I'm not because I don't like it. I'm more of a senior systems API developer,
[00:14:15] even though I have, I'm also bad at that. And times I'm not the best. Okay. I'm just not.
[00:14:20] So if you're looking at me looking for the best possible thing, you know, no, I, I'm good at stuff,
[00:14:26] but this is a good place for you to come figure this stuff out. So it's very likely that I've made
[00:14:31] huge mistakes and stuff. And if you've, you've seen anything wrong, let me know. Um, and we'll go with
[00:14:36] that. All right. So that's the end of this video. Um, and we'll see you. Bye.
