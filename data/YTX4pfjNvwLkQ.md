# ⎈🐧 kubernetes home lab kubespray

Pre-session chat and Q&A ahead of Kubernetes home lab work with Kubespray, including why carrying custom patches to Kubespray makes cluster upgrades much more complicated. Also compares bash with Perl for scripting and gives career advice on choosing a direction and what back-end web development really involves. Ends as the setup of a Red Hat-based system is about to begin.

Chapters:
0:00 Warm-up and a Kubernetes upgrade question
4:34 Waiting room and starting soon banner
11:30 Kubespray, K3s and patched upgrade pain
15:35 Go, Perl and the limits of bash
17:09 Chat catch-up before getting started
21:44 Choosing a tech career and learning path
23:03 Back-end web dev as systems development
25:49 Getting started on the Red Hat install

`#kubernetes #kubespray #homelab #linux #devops #bash #perl #techcareers`

## Category

Science & Technology

## Transcription

[00:00:00] I have my normal uniform on.
[00:00:09] We're doing Kubernetes again today.
[00:00:16] I think my headphones are still on.
[00:00:39] Yeah.
[00:00:59] Hey you, hey you, hey you.
[00:01:14] Super fast charging.
[00:01:29] Okay, can you explain to me the image and get problem?
[00:01:40] Wait, what are you talking about?
[00:01:44] What do you mean by image and get problem?
[00:01:49] I don't know what that means.
[00:01:51] I don't, I don't, I don't know what that means.
[00:01:54] What does that legitimately mean?
[00:02:06] I mean like, what's wrong with Git?
[00:02:15] You're having a problem with, oh, what, Kubernetes?
[00:02:40] You're talking about the container image, oh, I don't know.
[00:02:49] I misread that.
[00:02:51] I read that as image and Git, like GIF or GIF depends on who you talk to.
[00:02:58] Yeah, let's talk about it.
[00:03:04] So what, what is the problem?
[00:03:09] Can you explain the image and get problem?
[00:03:22] I'm trying to think about the best way to say this without confusing you.
[00:03:33] Is this still complicated?
[00:03:52] Yeah, I don't need it.
[00:04:00] It's so hard to describe because the summary is that the steps to upgrade Kubernetes were
[00:04:19] dramatically complicated by doing that, that's it, that's the main problem.
[00:04:34] I'm not letting it down because I'm just, I'm just coworking, so guys, I've been wondering
[00:04:53] what we're doing at the moment.
[00:04:55] We're just waiting.
[00:04:56] I'm going to wait about 10 minutes before we get going so that anybody that wants to,
[00:05:03] to help can be here.
[00:05:05] So have you have questions?
[00:05:08] You know, some people put stream starting soon on the screen.
[00:05:18] This is my version of that stream starting soon.
[00:05:23] Ask Rob questions while he eats his oysters and before he gets into it.
[00:05:29] I mean, it's so good.
[00:05:36] I'm so glad he can do that.
[00:05:39] I can't help.
[00:05:40] Can I still be here?
[00:05:42] Absolutely.
[00:05:43] Absolutely.
[00:05:44] Come hang out with us.
[00:05:46] Not just because I get your, whatever, attention, you want to come hang?
[00:05:53] I like that too.
[00:05:54] I mean, I'm working and I'm streaming or whatever.
[00:05:59] I like them people around.
[00:06:00] Whether it's workers, coworkers in a chat or something.
[00:06:07] Yeah, yeah, I couldn't make a banner.
[00:06:23] I'm going to see if I can do it right now.
[00:06:34] I'm trying something.
[00:06:36] Give me a second.
[00:06:39] How's it going?
[00:06:41] Guino?
[00:06:42] Guino?
[00:06:43] Guino?
[00:06:44] Guino?
[00:06:45] If I add a text source, text be typed, how about that?
[00:06:58] Starting soon.
[00:07:03] Ask me questions.
[00:07:31] Ask me anything.
[00:07:34] Do you guys know what AMA is?
[00:07:37] Much to do, this is inspiring, sub-days, it doesn't ever happen.
[00:07:44] While we wait, you can't do emojis in this, it doesn't work.
[00:07:54] All right, wait, wait.
[00:08:02] You have to shrink it down, shrinky-dink, shrinky-dink, staring soon.
[00:08:22] The bottom of my screen is still messed up, what's up with that?
[00:08:33] I don't know, I don't know, I don't know.
[00:08:40] I spelled it wrong.
[00:08:45] Staring soon into your soul, okay, we have that center.
[00:08:57] Ask me questions while we wait, which is inspiring, what inspires you I like to do is,
[00:09:07] more than the other thing, is there something on there?
[00:09:14] I did yoga today, we had POV morning day, that was fun.
[00:09:25] I did my laundry, all right, how much time I got?
[00:09:31] All right, we only have two more minutes, wait, what, hey, was this water?
[00:09:39] I think these oysters have been in water and not oil.
[00:09:42] I think they're, I have to check, I've been trying to sample and see if there's good,
[00:09:47] oil is always better, all the way from it, it's not as good for you, I'm gonna go look.
[00:10:02] I'll be, smoke was way through the oil, it's not good, that's not good, I just want to
[00:10:18] do it, it's not good, it's not good, it's not good, it's not good, it's not good.
[00:10:40] All right, friends, we're almost ready, give it another two minutes, I'm a beginner, I'd
[00:10:51] like to know if I need those those, I don't even think about cluster communities.
[00:10:55] All right, well, let's, let's say, should we, should we like wait 15 minutes before we
[00:11:03] start, that seems like a lot, what do you think?
[00:11:11] What's the proper amount of time to wait before we get started?
[00:11:16] I can put a timer on, that might be good, right?
[00:11:21] It's like, okay, we're gonna start in like however many minutes, so people could like
[00:11:25] go do something before they come back.
[00:11:29] Wow.
[00:11:30] Billie, what's up, good to see ya, eight hours, eight hours late, you're in the middle of
[00:11:55] migrating off in Q-spray. All right, you got to tell me that. On the K3S, at home? At home or work? I'm guessing at home. Oh, yeah. I'm only doing Q-spray because that's what we're going to work now. All right, we're doing dynamic closer to planning with K with Q-spray, our homegrown Q-tray.
[00:12:25] [silence]
[00:12:30] Dude, you would not recognize.
[00:12:32] [silence]
[00:12:37] Maybe it's Arnie?
[00:12:39] No.
[00:12:40] What's that?
[00:12:43] [silence]
[00:12:47] Oh, look.
[00:12:48] [silence]
[00:12:54] That is exactly what we are doing right now.
[00:12:58] Oh, my God, that is no planning to hear you say that.
[00:13:03] Yesterday in Q-spray, so X-genelle was asking about what the problem was, right? So, we have extended the Q-spray container to get stuff that we need.
[00:13:21] And we've extended their cluster playbook, the playbook cluster list, because we added a bunch of stuff to fix their broken shit, including missing HTTP proxy, and a bunch of other stuff that has open issues.
[00:13:34] And they wouldn't fix it. So, our fix for that? Our fix for that is to patch Q-spray.
[00:13:41] And that is, and I've been put in charge of writing the upgrade procedure, but if you're going to upgrade Q-spray, now you're not only do you have to upgrade Q-spray, but you have to make sure it's open.
[00:13:50] You have to make sure any of your custom divergences or your customizations of Q-spray propagate forward every single time you upgrade.
[00:14:01] For better or worse, I don't have the option. We are 100% locked into Q-spray now.
[00:14:21] I'm not. No, Barra in the chat. Barra, can I dock to you? Yeah, I know. There's a ton of them.
[00:14:37] So, Barra got me my current job.
[00:14:42] He doesn't work there anymore, but he's doing Kubernetes in his home lab, and he's doing K3S. So, he's sick and tired of Q-spray.
[00:14:59] A lot of people are a lot of people are really angry at Q-spray. So, you know, they're bigger.
[00:15:17] Can you be recruiter now? No, not him.
[00:15:30] Oh snap.
[00:15:35] Billy, we have four people coding and go on our team now.
[00:15:43] It's crazy.
[00:15:48] Seriously, you were never.
[00:15:50] Yeah, I know, I do Pearl. I do Pearl too.
[00:15:56] Is it important Pearl?
[00:16:02] It's so funny. It's like so different.
[00:16:06] Yeah, I'm thinking of Pearl.
[00:16:14] There will definitely be more video here of me writing Pearl.
[00:16:19] I've decided to make my dog balls Pearl or shell. I don't want I'm not writing anymore bash.
[00:16:25] I know how you should see the bash monstrosity I just had to look at. Oh, my God.
[00:16:29] I was like, no, just no.
[00:16:36] I was a really big proponent of bash for years because I actually replaced Pearl with bash.
[00:16:43] Because I was like, bash is so powerful, you can do almost everything Pearl can do.
[00:16:47] And then I started having to do real things like actual regular expression matching, which bash can do.
[00:16:54] Bash can only do basic regular expressions. It can't do.
[00:16:59] It can't do pro regular expressions that match against entire language planes from Unicode.
[00:17:04] It can't do it. It can't bash cannot do it.
[00:17:09] You just took your RCA set. What? Any tips?
[00:17:14] Oh, you booked it. You booked your, I don't have any tips. You know, you should ask that Scott.
[00:17:19] Go ask Scott. Somebody, do I have an ad? I have a mod. Somebody shout out, hit tennis.
[00:17:27] Bash for bashing admins. Yes.
[00:17:30] If it has more than the reason to move up bash, you're a genius. This is a bear. You're a genius.
[00:17:36] You're like, yeah, I know. I know.
[00:17:40] Genius. Genius and also a rock star. I'm going to do the rock star thing.
[00:17:48] You're a total rock star.
[00:17:51] I never asked.
[00:17:53] You're holding me.
[00:17:58] I am. I am too. I'm also now separating. Did you not know that? I have news.
[00:18:03] I'm alone. I'm alone. I'm all alone. Doris left me.
[00:18:09] Yep. We kind of split up. I gave her a good reason, but.
[00:18:14] There's not what you think. We're still kind of friends, but whatever.
[00:18:21] It's H.E.T. underscore hat tennis. No, it's not hat tennis. No, hit tennis.
[00:18:29] Do your job. Shout out, hit tennis, please.
[00:18:40] Okay, we got to get busy. We have a ton to do. We have to go through seven upgrades in order.
[00:18:50] No.
[00:18:55] I'm going to do a lot of things. I'm going to do a lot of things.
[00:19:11] I'm going to do a lot of things. I'm going to do a lot of things.
[00:19:15] I'm going to do a lot of things. I'm going to do a lot of things.
[00:19:19] I'm going to do a lot of things. I'm going to do a lot of things.
[00:19:24] The amount of time to wait is 20 minutes.
[00:19:28] We've been shooting the ship for 20 minutes.
[00:19:38] Going to get some balls.
[00:19:41] There we go. A whole 26 viewers.
[00:19:44] Do your job.
[00:19:54] Garlic is good for you.
[00:19:59] You got officially diagnosed.
[00:20:01] What if I told you that I think I actually have it?
[00:20:06] I'm not kidding.
[00:20:08] I think I have my kids are out of habit.
[00:20:11] I'm going to have a mild form of it.
[00:20:15] They call it like I'm shooting.
[00:20:25] I do. I think I do.
[00:20:27] I have something though because I have.
[00:20:30] We don't need to get into it, but I definitely have something because I have.
[00:20:34] I'm crazy. I'm definitely crazy. That's all I have to say about them.
[00:20:39] I'm crazy.
[00:20:41] Crazy crazy crazy.
[00:20:44] Crazy crazy crazy. That's me.
[00:20:48] What are we doing today?
[00:20:50] First of all, I need to plug in. Are you guys still dropping frames?
[00:20:54] Looks like we dropped a few frames.
[00:21:00] Not many though.
[00:21:06] I need to understand why I do what I do, but it's too late.
[00:21:14] I've already ruined everything.
[00:21:16] Let's do Kubernetes.
[00:21:20] Sally skills an intro inspection.
[00:21:22] I think you might be right, right?
[00:21:25] Yeah, it's like I'll just talk to you for an hour.
[00:21:27] That's a great man. I wish I could get that.
[00:21:29] I don't have that.
[00:21:31] I probably would qualify for it. I actually pushed it. I just want tea.
[00:21:36] Once I get my teeth back, then all things will change.
[00:21:40] AI engineer. Oh, nice.
[00:21:42] Yeah.
[00:21:44] Baby shot, do, do, do.
[00:21:46] If I can ask this, what's the book you recommend at home with somebody to get going and
[00:21:49] up to get going so they end up being employable?
[00:21:53] Well, it depends on what you want to do, not.
[00:21:56] Let's also like question in two minutes. Let's see if I can answer it in under two minutes.
[00:22:02] I don't know what's happening with Z.
[00:22:08] What are you talking about? What happened with Z? Death wish went up.
[00:22:13] I don't know what Z is.
[00:22:16] Are you just asking me what's happening or what happened with Z?
[00:22:21] I don't know what that means.
[00:22:23] If you want to jump, before you get a book on anything, you have to figure out what kind of job you want.
[00:22:27] I'm sorry. You got to figure that out.
[00:22:29] You have to try out things and decide what kind of job you want.
[00:22:32] If you want to figure out what kind of job you want, you should actually think about, go for a walk and ask yourself what activities do you like to do during the day?
[00:22:39] Do you like to sit on the screen? Do you like people? Do you not like people? Do you like outside?
[00:22:43] Do you like to be able to go outside whenever you want to? Do you like to be able to dial it in and not have to take a car?
[00:22:48] Do you get energy of being around people in an office of art? Do you like soldering things? Do you like building things?
[00:22:54] Do you like fixing problems? Do you like putting out fires like literally or figuratively?
[00:22:59] You have to know yourself.
[00:23:03] Do you know what you want to do back in web development? What does that even mean?
[00:23:07] Do you want to write APIs?
[00:23:09] What are those APIs going to do and what are they going to talk to you?
[00:23:14] It sounds like you really like command line stuff, right? You're like terminally dealing with things and building APIs and playing with JSON and YAML and writing servers and whatever, something in GIN or Node or whatever.
[00:23:26] You want to talk SQ? Well, back in web dev, what does that even mean?
[00:23:30] People say back in web dev, like what the fuck does that mean? What do you want to do?
[00:23:35] Basically what you're saying is you're going to become a systems developer that's writing an integration layer.
[00:23:41] Well, what's the thing you want to integrate to?
[00:23:44] Oh, zig. I don't know. I have a look at zig. I haven't looked at zig at all. I don't know.
[00:23:51] Oh, what you're going to do, right? Oh, becoming an AI engineer. Yeah.
[00:23:58] We just looked at this very labor statistics, the fastest growing career period.
[00:24:03] 38% growth rate is data scientists, which they put it qualified to be an AI person. There's data scientists in the stream.
[00:24:11] They're like, that job's not growing. I'm like, well, they're putting the ML engineers under there.
[00:24:15] The other data scientists that are doing statistics for baseball teams or whatever, they might not be growing really quickly, but the AI people are.
[00:24:22] So, I mean, if you're doing back in Web dev, if you're looking for a book on Web dev, I cannot tell you because,
[00:24:30] first of all, I don't believe in the term full second. I don't believe in the term web back and web dev at all.
[00:24:35] Because all that is is like you are providing an interface to some other system.
[00:24:41] So the thing that by which your title should be defined should be that system that you're integrating with.
[00:24:47] In my case, it's the machine learning job submission system.
[00:24:50] And so I am doing back and web development by writing go code that handles the API that allows us to submit jobs to our legacy system over SSH.
[00:24:59] But the job is defined by what the system is.
[00:25:03] So the better term here, and I suggest you start using this, is systems development engineer.
[00:25:11] That's what it is. A systems development engineer is a person who is responsible for creating these APIs and connecting the things in the middle.
[00:25:19] By the way, for case to ask, we're having to check that rationale. Is it good?
[00:25:23] What about the baseball stats guy, which I love the baseball stats guy, which Nick Nick one is one of my favorite human beings.
[00:25:29] But he'll tell you if you qualify yourself as a data scientist, and you're going to do nothing but data science, and you're not doing machine learning submissions.
[00:25:36] There's mean AI engineering kind of thing.
[00:25:38] AI gets lumped under data science all the time and the AI people hate it because they do not data like no, this is not data science. This is machine learning.
[00:25:46] And so anyway.
[00:25:49] And anyway, yeah, we have to put the dashboard. Okay, we need to get on with this. So I'm going to turn off the question sign.
[00:25:59] So what are we doing today? So the first thing we need to do, unfortunately, I don't like that. I have to do this, but we have to install Red Hat.
[00:26:07] And so let me pull up rocks, mocks.
[00:26:14] Oh, wait, what is, what is this about?
[00:26:19] Oh, God.
[00:26:21] I wonder I'm dropping packets.
