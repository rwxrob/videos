# 🚀 Tech Career Beginner Boost 2026 - Day 5

Discusses how AI has changed tech careers and entry-level hiring, and why beginners should focus on skills that remain valuable. Walks through setting up WSL, the GitHub CLI and GitHub Copilot CLI, creating a notes repo with an AGENTS.md file and conventional commits, and generating a job-focused learning plan with the AI.

Screeeech! Hold up. Rethink everything you know about learning and getting a job in tech. If you are not using an AI to assist you in your learning (either because you don't have the money or desire) just stop waisting your time right now. You'll never keep up.

Chapters:
0:00 Introduction and how tech careers changed
3:04 Why the learn-tech-fast premise no longer holds
5:35 Weekend AI project built in two hours
8:46 What AI means for junior jobs
15:00 Skills employers filter for now
18:00 AI going mainstream and on-prem trends
27:00 Learn a domain, not just computers
30:00 Why to avoid Claude Code
33:00 Installing the GitHub CLI on WSL
39:00 Repo directories and cloning with gh
45:06 Why Copilot Pro suits beginners
54:03 Starting Copilot CLI and notes repos
1:00:00 Pricing, tokens and data privacy
1:06:02 AGENTS.md, Markdown and conventional commits
1:15:05 Letting the AI plan a curriculum
1:26:01 Asking the AI about career skills and checking its sources
1:36:01 Job-focused learning plan
1:42:04 Sharing knowledge bases and wrap-up

`#ai #githubcopilot #careeradvice #linux #github #beginners #markdown #wsl #techjobs #learning`

## Category

Education

## Transcription

[00:00:00] All right, so here we are on the beginner boost day one area day five.
[00:00:10] So this is going to be 90 minutes today.
[00:00:12] I'm cutting the the beginner boost to 90 minutes for lots of reasons that I get into.
[00:00:17] But the main reason is that a technology as a career choice has radically changed.
[00:00:25] And this isn't news to anybody who's been paying attention.
[00:00:28] But this week has been one of the pivotal weeks in my career with regard to a realization
[00:00:40] regarding AI.
[00:00:43] And so today I this last week, I had two very significant things, three actually three very
[00:00:50] significant things happen with regard to AI that have fundamentally changed my outlook
[00:00:56] on the entire profession and technology, any occupation and technology, as well as knowledge
[00:01:06] management just in general, all knowledge careers, any knowledge worker and in a very
[00:01:15] great way.
[00:01:16] And I'll get into that and then a reassessment of what the core skills are and I already
[00:01:23] alluded to this in a video with regard to creativity, but it's much more than that.
[00:01:30] The entire landscape of education across the board is going to change, but specifically
[00:01:36] for tech careers and knowledge workers.
[00:01:39] So these things are all related to one of them, one of them's education, including self
[00:01:43] education, skills acquisition, and how many skills you're going to have to acquire to
[00:01:47] actually have a job in technology.
[00:01:49] All right.
[00:01:50] Let's get into this, we will do some tech things today, but I wanted to put this at
[00:01:56] the beginning of the, at the beginning of this video because this is a really critical
[00:02:02] point, a decision point.
[00:02:03] And I honestly, I wish I had come to this realization before I began the beginner boost,
[00:02:08] you know, four weeks ago, I knew that I was going to have to do the beginner boost differently
[00:02:13] this year, but I didn't realize how much differently.
[00:02:17] So let's start with the tough one.
[00:02:21] Okay.
[00:02:22] Let's start with the tough one.
[00:02:23] Why is this one here?
[00:02:24] Because I'm going to try to dissuade you from being a technologist, like letting that
[00:02:34] sink in for a second.
[00:02:37] I think, you know, a lot of people I have mentored them, I'm saying, Hey, get a tech
[00:02:43] career and now you can be a millionaire and you can get a $20,000 or your job and blah,
[00:02:48] blah, blah, blah.
[00:02:49] I no longer believe that at all.
[00:02:52] And this is tantamount to losing my religion in many ways.
[00:02:59] For years, for years, I started a company in 2013, founded on the premise that by learning
[00:03:04] tech skills properly, you could change your future, that you could change your income,
[00:03:11] that you could be better off with relatively little efforts, you know, two or three years
[00:03:18] of solid investment into learning technical things, such as, you know, Linux and the terminal
[00:03:25] and Kubernetes and all these things.
[00:03:26] I no longer believe that.
[00:03:29] And you probably want to know what I mean by that.
[00:03:32] That means that if anybody on the internet, anybody is telling you that they have a get
[00:03:40] rich, quick scheme for you by learning some tech skill.
[00:03:45] You now need to look at that as very sus and hear me out.
[00:03:51] Okay.
[00:03:52] I, that would include me.
[00:03:54] That would include me.
[00:03:55] I'm speaking to former me and why did it come to this realization?
[00:04:00] Why do I think it's so significant in my being too dramatic?
[00:04:03] These are all decisions you can make for yourself, but I'm going to present my case and I'm
[00:04:08] going to start with one, the main conclusion, platform engineers, and there's not even a
[00:04:14] title for it right now.
[00:04:15] This is one of the hardest things for me before I prepared it prepared in this video.
[00:04:18] There is no longer a title for the position that is the equivalent of a medical doctor
[00:04:27] in technology or a dentist or an ophthalmologist or a senior business executive.
[00:04:36] The only remaining valuable tech professions are tantamount to medical doctors and hear
[00:04:47] me out.
[00:04:49] So there's no more junior.
[00:04:52] There's no such thing, you know, just like dentists have dental assistants.
[00:04:56] Okay.
[00:04:57] Maybe you have a dental assistant.
[00:04:59] The entire tech world is undergoing this massive shift.
[00:05:05] And the people that they're letting go this week oracle let go 30,000 employees worldwide.
[00:05:14] The entire world and it doesn't matter what you think of it.
[00:05:17] And the entire world and technology and not just technology, but it's primarily technology
[00:05:23] is going through a culling of the junior positions.
[00:05:29] This means that the internships, this means that the assistantships, this means that the
[00:05:35] junior software engineer, this means that every bootcamp that ever existed.
[00:05:40] You know who's getting decimated more than anybody else?
[00:05:43] Web developers, I created a, you know, accelerator worthy business yesterday in two hours, in
[00:05:55] two hours, I fully deployed an application that could use air glasses to look at QR codes
[00:06:02] that are on my storage bins and show me the pictures that are inside of them and make
[00:06:05] it all searchable and have it automatically write the descriptions of what's in the, in
[00:06:10] there by, by a eyeing the image and turning it into a description.
[00:06:14] Took me two hours to make it.
[00:06:18] And it's deployed.
[00:06:19] It's fully deployed.
[00:06:20] It's not even, it's not even, oh, it's just this idea is running on my local machine.
[00:06:24] Oh, it's fully deployed.
[00:06:25] I'm using it right now.
[00:06:27] It has quirks in it and stuff like that.
[00:06:28] I didn't write a single line of code.
[00:06:31] I didn't write anything.
[00:06:33] I interacted with my AI and I told me I had to change it and this needs to be this and
[00:06:36] that.
[00:06:37] Does it, I reviewed all the code.
[00:06:39] I didn't write it.
[00:06:40] I reviewed all the code and I was able to make this application because of one reason.
[00:06:46] I am a senior engineer.
[00:06:49] I know what to tell the AI to do.
[00:06:52] I know how to read what the AI is doing, everything.
[00:06:55] Like network engineering, SAP requests, curl, use of the terminal, you know, the command
[00:07:01] that it shows me where it's even, you know, looking at the beginning of a file to see
[00:07:03] what it wants to do.
[00:07:04] I understand all of it because I have been around for 30 years.
[00:07:09] So I'm telling you as somebody who is in the perfect position for AI to come out, I have
[00:07:17] an crossing platform, crossing across software and operations, boundaries and networking.
[00:07:21] I have all that experience, not really deeply, but I have a cross into cross experience.
[00:07:28] I am literally the perfect person to benefit from AI and that is not a flex that is giving
[00:07:33] you the situation so that you understand it.
[00:07:38] The people who are going to take advantage of AI, I did the work of five people on my
[00:07:42] team this week that took them three weeks in one day because I use cloud to rewrite an
[00:07:51] entire ancient Perl code base and make it testable and write product manager worthy
[00:07:55] test cases that were readable and consumable.
[00:07:57] I did it in two days.
[00:08:02] The reason this stuff has become senior is because in order to take full advantage of
[00:08:08] AI, you need to know broadly about everything.
[00:08:14] Those are the people that are going to win.
[00:08:16] The problem is, if you're just starting out as a beginner, you can't do that.
[00:08:21] It took me 30 years to get to where I am, all the little things and the half the stuff
[00:08:24] I've forgotten doesn't matter.
[00:08:26] In fact, it's even better for people that are old like me who can't type really fast
[00:08:29] or who forget things.
[00:08:31] You know why?
[00:08:32] Because if I see it on the screen, I know it's right.
[00:08:35] I can identify what's right and what's not and if it was an intern bring into to me or
[00:08:38] an AI, it's the same thing.
[00:08:40] The point is there's really no room in the industry for people with junior skills anymore.
[00:08:46] They're getting cut in droves and if they're not getting cut, they're in trouble.
[00:08:53] I hate to say it, but there are people that I have worked with recently that I did everything
[00:09:00] that took them three weeks to do in two hours.
[00:09:03] If I were the business manager, other than the fact that they're rate human beings and
[00:09:07] we want them to see them success, have success and maybe grow with us, but if I was responsible
[00:09:12] to decide whether I want to pay this person $80,000 to $200,000 a year for their work,
[00:09:17] I would not cut.
[00:09:18] I would not.
[00:09:19] I would cut them and I would pay for another person who's even better than me who can like
[00:09:24] manufacture stuff across the board.
[00:09:26] The things that I'm saying right now are extremely inflammatory and disruptive, but
[00:09:31] it's not me saying them that's making them inflammatory and disruptive.
[00:09:34] I'm just being real with you.
[00:09:37] I'm being real with you.
[00:09:39] If you're going to go into tech today, this is the one thing to clip.
[00:09:43] If you're going to go into tech today, you need to decide to commit to the same amount
[00:09:49] of time and effort that it would to become a doctor or a dentist.
[00:09:55] If you are not willing to put forward the amount of effort to become a doctor or a dentist,
[00:10:00] to become a technologist, and I don't even know, a platform engineer, staff engineer,
[00:10:04] don't know the title.
[00:10:06] Unless you are willing to put forward that amount of effort and sacrifice and financial
[00:10:10] output, you will fail.
[00:10:13] You will fail.
[00:10:14] There's no way you can compete with the people who are already in these positions because
[00:10:19] you're going to have to convince them, "Why should I hire you?"
[00:10:22] Employment is about money.
[00:10:24] It's about producing value for the company.
[00:10:27] I don't like that.
[00:10:28] That's true.
[00:10:29] That's just how it is and unless you can produce value for the company, they're not
[00:10:34] going to hire you.
[00:10:36] How are you going to tell somebody how are you going to convince them that you can save
[00:10:40] them millions of dollars?
[00:10:45] You're going to have to have a lot of work to show that.
[00:10:49] You're going to have to have multiple GitHub repos that show you creating software as a
[00:10:54] service project, using vibe coding and then taking the code and cleaning it up on your
[00:10:58] own.
[00:10:59] You're going to have to have that just one, but multiple of them because when they interview
[00:11:02] you, they're not going to interview you and ask, "Hey, can you code in Python?"
[00:11:06] They're going to say, "What applications have you done for yourself?
[00:11:11] What solutions have you generated?"
[00:11:13] Because what they're interviewing you for now is your ability to create solutions to
[00:11:18] problems, to innovate, to create ideas, to think across boundaries, to think about how
[00:11:24] could this company make more money?
[00:11:26] People in the tech world for years or decades have been able to safely work in their little
[00:11:32] corner writing their little bit of code or fixing the little network and not give a shit
[00:11:37] about what the company does.
[00:11:39] Those days are over.
[00:11:41] They're over.
[00:11:42] Those days are completely over.
[00:11:47] Unless you are willing to understand what the company is doing, why it's making money,
[00:11:53] how it makes money, and how you can help them make more money through the integration of
[00:11:58] technology, you will not have a job.
[00:12:02] This is a massive shift in the past, you could say, "Oh, hey, I just want to clean up the
[00:12:07] CSS over here.
[00:12:08] I just want to do this thing over here, or I want to work on this framework over here
[00:12:12] that can be used for the web."
[00:12:13] No.
[00:12:14] Those days are gone.
[00:12:15] They're gone because the senior executives who have enough technical skill can now replace
[00:12:19] all those people with actual shit that works.
[00:12:22] Whether it's a proof of concept or not, you're going to be told, "Okay, we have this problem
[00:12:27] in our production line.
[00:12:29] We have this problem in our distribution.
[00:12:31] We have this problem over here.
[00:12:32] How can we work with that?"
[00:12:34] Then you're going to need to leverage AI and interact with AI at multiple levels, multiple
[00:12:39] AIs, and answer those questions and combine that with other senior level people, senior
[00:12:45] architects, senior engineers, senior executives.
[00:12:49] You're going to be rubbing shoulders with them saying, "How can we make this better?
[00:12:53] How can we make this company faster?
[00:12:54] How can we improve this?"
[00:12:57] This exact thing just happened in my life.
[00:13:00] Yesterday I have all these storage bins, as you guys know, and they're completely unorganized,
[00:13:04] and I have lots of stuff, and I can't find anything.
[00:13:06] I developed an application that allows me to put a QR vinyl sticker on everyone.
[00:13:11] It automatically detects what's in there.
[00:13:14] It's just absolutely amazing, and that was a solution that I needed to help me in my
[00:13:18] life to make me more efficient.
[00:13:20] That kind of thinking, that's what's going to be needed in the tech industry.
[00:13:25] This has been quite a soapbox, but the takeaway of everything I'm telling you is that the
[00:13:35] very nature of the beginner boost is no longer relevant.
[00:13:43] The fundamental reason and premise for me creating a beginner boost, the fundamental
[00:13:48] reason for making it was so that I can help beginners get started.
[00:13:54] The truth is, you're still going to need to get started, but it's no longer a beginner
[00:13:58] boost.
[00:14:00] It's now helped you get to be senior, and no beginner boost that I do is ever going to
[00:14:06] get you there.
[00:14:07] Nothing.
[00:14:08] I can get you started.
[00:14:09] I can shove you down the right path.
[00:14:11] I can say, "Hey, don't go for this career."
[00:14:13] Remember all that spiel I gave on the first day about how the other careers that are out
[00:14:16] there that don't involve senior technology stuff, salespeople, project managers, all that?
[00:14:23] Those positions are all very real and very good positions in the tech world, and many
[00:14:26] of you should probably consider looking into those.
[00:14:29] Because those positions are going to be easier for a lot of people to get than the ones that
[00:14:36] are going to the "neurologically divergent" – that's a quote from the CEO Palantir who
[00:14:41] I don't particularly like, but it's accurate – the jobs for the people that are interacting
[00:14:46] with the AI, they're going to people who have brains that are totally in a different
[00:14:53] space.
[00:14:54] They're not necessarily highly technical, but they're able to make connections and they're
[00:14:58] able to see across boundaries and see patterns and stuff like that.
[00:15:02] Those are the skills that are really being filtered out in the job interviews today.
[00:15:08] Those are the skills people want, and I can't train you on that.
[00:15:12] I can't train you on that.
[00:15:14] A lot of that stuff is just natural ability.
[00:15:17] A lot of our natural abilities are – I've said many times, I'm not a coder.
[00:15:23] This AI stuff is really, really great for me because I don't want to sit in code all
[00:15:30] day.
[00:15:31] I'm not very good at sitting in coding all day.
[00:15:32] I can code.
[00:15:33] I can code in four languages and speak three, but it doesn't matter.
[00:15:37] What matters more is the ability to understand what the code is doing, to understand what
[00:15:43] code is best for the job.
[00:15:44] I wrote a lot of stuff in Python because it has a better QR library even though I love
[00:15:47] go.
[00:15:48] It's being able to make a solid, non-dogmatic decision that's the best solution for the
[00:15:52] job and then communicate to the AI and be able to see what the AI does and then see
[00:15:56] it and manufacture it together.
[00:15:57] I don't have to be a good coder.
[00:15:58] I just have to be able to spot bad code.
[00:16:03] All these people who are typing as fast as they could in Neovim, irrelevant.
[00:16:08] They're all irrelevant.
[00:16:10] They're irrelevant.
[00:16:12] Their ability to type fast and understand how to use Neovim plugins is fucking irrelevant.
[00:16:18] I can't overstate this.
[00:16:23] Nobody cares.
[00:16:24] Nobody cares.
[00:16:26] Nobody cares.
[00:16:27] All you need to be able to do is read Markdown, use your command line interactive AI on the
[00:16:31] terminal or not.
[00:16:33] Understand how to do a Jantec AI safely and occasionally edit files, a couple of things
[00:16:39] here and there in the file.
[00:16:41] You do need to know how to read what the Jantec AI is doing.
[00:16:44] That means you need to know what the commands are, but you don't need to be fast at doing
[00:16:48] them.
[00:16:49] Ever.
[00:16:50] I spend my entire day interacting with my AI now.
[00:16:54] Even when I'm renaming a file, I might rename this file and commit it.
[00:16:58] Boom.
[00:16:59] Perfect.
[00:17:00] Done immediately within seconds.
[00:17:02] And it's exactly the same commands that I wish for the command line.
[00:17:06] So I'm going to pause for a bit there and let this sink in.
[00:17:09] I'm actually going to pause the video because I'm going to take a bunch of questions that
[00:17:14] I'm sure have been coming in and then we'll move on to knowledge management and discovery.
[00:17:18] The takeaway of this message has been that many of you watching me right now, I want you
[00:17:25] to strongly consider why you're going into technology and if you want to do it.
[00:17:30] And I want to ask you point blank to consider another career besides tech, anything.
[00:17:40] Education is being completely disrupted.
[00:17:42] You know, a lot of the physical jobs that are out there, electronics, engineers, those
[00:17:48] kinds of things will be impacted by AI, but not nearly as badly.
[00:17:53] Any of the software development and that includes hardware deployment is going to be affected.
[00:17:59] Cybersecurity is going to be affected, but you know, it still has a lot of the things
[00:18:03] that I'm predicting are still in the process of happening.
[00:18:07] 2026 has been the year where it's finally going mainstream.
[00:18:14] Like you're starting to hear everybody on the team talk about AI during their standups.
[00:18:19] And they're saying, well, I did this and it romanceable this.
[00:18:22] And I did this to help me write this project over here and I wrote this advisory notification
[00:18:27] over here and people are mentioning AI matter of faculty in every meeting I'm in now.
[00:18:33] And the people who aren't doing that are getting completely left on the table.
[00:18:37] They're being completely, you know, just abandoned.
[00:18:43] And there are a bunch of people that are very, very skeptical and they're very negative
[00:18:47] and they're very aggressive about their opposition to this.
[00:18:52] And it is tantamount to the people who were against the internet or against connecting
[00:18:57] computers together or against nuclear energy or against, you know, I don't know, looms.
[00:19:05] So anyway, I'm going to pause for a video and I'm going to take some stuff.
[00:19:12] Somebody asked a question, but I thought ML Ops was safe, machine learning operations
[00:19:16] it was safe.
[00:19:17] And my answer is yes.
[00:19:18] ML Ops is safe, that's what I do, that's a lot of people do.
[00:19:22] High performance computing is safe.
[00:19:25] The problem is is that those positions are still senior positions.
[00:19:29] The people that are working in that area are going to be the people who are at my level.
[00:19:34] They're not going to be beginners in that and using HPC ML Ops.
[00:19:39] It's going to be people that are senior people who have years of experience managing that
[00:19:43] software and that architecture.
[00:19:45] And the companies will have to bring in newbies to train them up in all of that.
[00:19:50] But it's going to be very hard to become a senior in that space unless you are working
[00:19:55] for a company that is shepherding you through those steps.
[00:19:59] And I can do that as much as possible, but I can't give you access to, you know, $3,000
[00:20:05] H100 GPUs.
[00:20:09] So I don't know what companies are going to do because companies like the one I work
[00:20:12] for now are going to still need new people and they do have an internship program.
[00:20:18] And I imagine that that's probably what's going to continue is it's going to be companies
[00:20:22] are going to build their own people internally.
[00:20:27] And so you're going to be even more aggressively wanting to look at for those internship opportunities.
[00:20:32] And quite honestly, there might be an opportunity there for beginners because the more you can
[00:20:36] separate yourself as an absolute beginner from another absolute beginner, the better your
[00:20:41] chances are of getting that internship and being groomed by the company to handle their
[00:20:47] internal models, their internal online operations, which is also a big, big thing.
[00:20:52] I talked about that yesterday in the Jacuzzi stream.
[00:20:56] But everything is going on-prem because this has been going on forever.
[00:21:02] Everything is going on-prem because the competitive advantage is now how much ML machine learning
[00:21:09] ops can I run on site?
[00:21:11] People Google and Amazon have proven they can't provide enough horsepower to provide
[00:21:15] for the companies and companies internally that want to run their own models and stuff
[00:21:20] are now depending on internal collections of hardware that will run their models and
[00:21:27] that will prepare them, but basically making ML work in-house.
[00:21:31] And so they're doing this all in-house and the entire movement of the industry is off
[00:21:35] of cloud.
[00:21:36] I went so far as to say is the cloud is dead and I really believe that.
[00:21:40] I believe that.
[00:21:42] Other than turning around a two-hour software as a service like I did yesterday, which is
[00:21:50] relatively insignificant compared to where everything is going on with machine learning,
[00:21:54] that stuff is not going to be around.
[00:21:57] So that means there's going to be a lot more on-site work.
[00:22:02] There are a number of reasons that's important because it means identifying the companies
[00:22:06] that are doing that on-site work are going to be more and more important.
[00:22:10] Operation Network Engineering, that kind of stuff is being affected by AI.
[00:22:14] I am actually writing stuff right now that's helping to deploy an audit hardware and that
[00:22:21] can be done through AI as well.
[00:22:24] But somebody's got to go in there and touch the computer still.
[00:22:27] So there are jobs around, but they're not going to be anything related to most of the
[00:22:34] software development jobs, and the whole movement has been towards more programming happening
[00:22:40] by operations people.
[00:22:42] That's what a SISTI is, that's what an SRE is, that's what a DevOps person has always been.
[00:22:47] But DevOps, as we know, is largely dead, and I think that's just going to get worse.
[00:22:53] I think we're probably going to see the loss, completely, the complete loss of the, what
[00:23:05] was the career?
[00:23:06] That's the title of it, I forget the name of it.
[00:23:10] I think you're seeing people get Kubernetes, certificates and stuff like that, and AI can
[00:23:15] make a full Kubernetes application in five minutes.
[00:23:19] So, the senior people who understand those Kubernetes applications and how they interact
[00:23:24] and everything, and AI can spin up an entire Kubernetes cluster and for a high-performance
[00:23:29] machine learning group, and seriously, in less than an hour.
[00:23:33] So those really core skills about Kubernetes certification and all that stuff, they still
[00:23:39] will be required at the senior level, but you're not going to be paying people to do
[00:23:43] it.
[00:23:44] The AI's are going to be doing that, and it's going to have to be done safely.
[00:23:48] That's where you need to really learn how to use AI safely.
[00:23:51] That's the single biggest takeaway from this is, if you want to go into technology or anything
[00:23:56] frankly, but especially technology, you must first learn how to use, specifically, Cloud
[00:24:05] on GitHub using Copilot, because that is allowed in every enterprise.
[00:24:10] That is the thing they've already bought because they usually always have a deal with Microsoft.
[00:24:14] Summit is going to write hate in the comments for me saying this, "I don't care.
[00:24:17] Live code just destroyed its entire company this week by having its whole source code
[00:24:22] released because one idiot didn't know what they were doing."
[00:24:25] The equivalent of somebody doing heart surgery and leaving a clamp inside of their chest,
[00:24:29] because they had no business doing that.
[00:24:33] That's why companies are going to learn from this.
[00:24:36] They're going to see all of the risk of having all the power of AI in the wrong hands, and
[00:24:41] they're not going to put, they're not going to, no smart company is going to put all of
[00:24:46] this power in the hands of a junior programmer.
[00:24:49] This idea is so stupid, and it keeps popping up on the internet.
[00:24:55] The idea that some junior programmer is going to be allowed to use the most powerful thing
[00:25:02] that's ever existed in IT is stupid.
[00:25:06] No, those companies, if they allow that, they will die just like Anthropic.
[00:25:11] Anthropic's biggest mistake is they let a junior engineer do something so stupid, not
[00:25:18] to mention put their whole co-base in TypeScript, which was a huge disaster, and then they made
[00:25:24] a bunch of really junior, stupid web developer mistakes, and they blew up their whole company
[00:25:30] because of it.
[00:25:32] The companies that continue to make these mistakes will cease to exist, and the companies
[00:25:36] that are paying attention like mine and others, they're going to be like, oh hell no, I am
[00:25:42] not giving, this is, I already have somebody in the chat share this last week.
[00:25:46] The only people who get access to the high level models and to all the agentics stuff
[00:25:51] are the senior, senior staff engineers.
[00:25:54] They will not let the junior programmers and the lower mid-level programmers anywhere near
[00:26:00] that AI.
[00:26:01] They won't give them the bits, they won't give them the tokens, they won't let them do it.
[00:26:05] So those people have to prove that they can be trusted with way, way, way more than root
[00:26:11] access.
[00:26:12] We're talking about enterprise destructive ability, as we just saw with Anthropic.
[00:26:19] So what's happening is the smart companies are saying, oh hell no, I am not letting anybody
[00:26:25] on my, in my company close to that level of agentic AI who is not already proven themselves
[00:26:32] to be the equivalent of a doctor with multiple years of experience.
[00:26:38] And if they haven't already made that decision for their own safety, they will, because they're
[00:26:42] companies that are blowing themselves out of the water right now by giving junior people
[00:26:47] access to these tools, which is absolutely stupid.
[00:26:51] They should never do that.
[00:26:54] And so yeah, I did swear once.
[00:26:59] There we go.
[00:27:00] I'm going to think, when I was really young, my grandpa who grew up in the era of punch
[00:27:06] cards, and that's how old I am, he took me to see my first computer when I was a kid.
[00:27:11] And I remember when we were in the car, he said something to me that I feel like it's
[00:27:16] super important today, even more than today.
[00:27:19] He said, Rob, don't just learn computers.
[00:27:22] This was the dawn of the PC.
[00:27:26] And he said, don't just learn computers, Rob.
[00:27:29] Learn something else.
[00:27:33] And what he was talking about was like a domain, an industry domain, travel and tourism, linguistics,
[00:27:41] journalism, chemical engineering.
[00:27:44] It says computers will be in everything.
[00:27:49] And what's going to separate you from everybody else is if you have a specialty in one of these
[00:27:53] other areas, and then you just use computers in that area as a tool.
[00:28:00] And so I'll take my son as an example, who is an animator.
[00:28:05] And if he had just learned computers and applications, it wouldn't have been precise enough.
[00:28:11] But he's an animator who knows the tools of the trade, the computers and potentially
[00:28:16] the AI incoming, the After Effects tools and plug-ins, a lot of them are AI and machine
[00:28:22] learning anyway.
[00:28:23] So learning the tools that go with the industry, the takeaway is that the need for people with
[00:28:30] industry experience is still required.
[00:28:35] And I did a whole rant about that recently where it's all about providing solutions to
[00:28:42] the company.
[00:28:43] Well, you can't provide a solution to the company unless you know the company and you
[00:28:46] can't know the company unless you decide who you want to be and what kind of company
[00:28:50] you want to work for.
[00:28:52] I happen to work for a company where I could care less about the company and the product.
[00:28:59] I really am into the machine learning and operations and stuff that they do, which I
[00:29:03] believe in.
[00:29:04] And I have been supporting them doing that, but I don't particularly, and I know how to
[00:29:08] make them have solutions for me in a sense.
[00:29:12] My customers are not the company.
[00:29:14] My customers are a group of people that are doing machine learning at the company.
[00:29:19] So it's almost like I work for a company inside of the company, if you know what I'm saying?
[00:29:23] So my domain is enabling machine learning people to do their job, to create models, to
[00:29:30] run those models, and to do someplace safely and with a low cost.
[00:29:35] That is the company I work for.
[00:29:37] So the key is figuring out what is the domain?
[00:29:42] What is the solution?
[00:29:43] What is the industry?
[00:29:45] And then, you know, combining that with whatever else you want to do.
[00:29:51] Yeah, be vertical.
[00:29:54] All right, so we're going to go ahead and jump in with the very little time we have left.
[00:30:01] And I want to share something that I have been using at work to great effect.
[00:30:07] The first thing I want to say is do not use cloud code.
[00:30:10] I made a video about this, cloud versus clothing.
[00:30:14] Don't use it, don't use it.
[00:30:16] It's a disaster, it's a horrible thing.
[00:30:19] I'm not telling you to not use the cloud model, I'm telling you to not use the cloud
[00:30:23] code.
[00:30:24] Let me show you what I mean by that.
[00:30:26] I'm going to share some stuff that I've been by coding and I want you to do this at home.
[00:30:32] So you have a terminal already, right?
[00:30:35] And what you can do is you can now go on your terminal and you have a notes repo, right?
[00:30:44] So, I'm going to show you this.
[00:30:46] So you have, you should have a notes repo, right?
[00:30:52] And you need to install the GitHub command line tool.
[00:30:56] And I think we already did this.
[00:30:58] But if you haven't done it, if you're on it, it's all the GitHub command line tool on WSL.
[00:31:04] It would be apt install, I think it's a GH, does anybody know?
[00:31:10] Let me, let me see if I can bind a machine where I can do this.
[00:31:15] Let me get on a machine that has a, let me go find my Proxbox.
[00:31:19] I don't, I don't have a Windows machine up right now.
[00:31:24] So, you don't have Proxbox, don't worry about it, it's fine.
[00:31:34] SSH, and you don't know SSH either, don't worry about it, you'll learn it.
[00:31:39] So, as high as we're up, all right, so sort of CTL is up, sudo apt install GH, oops.
[00:31:57] Oh, I'm on red hat, G&O.
[00:31:59] Actually, let me show you in a container, it'll be easier.
[00:32:04] So, because you're on Ubuntu on WSL 2, so let's do that, let's do, I'm going to pretend
[00:32:09] like I'm on a Windows machine for a second.
[00:32:13] So on Windows, you have your terminal open, you have WSL, and WSL 2, and, and then we're
[00:32:23] going to, and then we're going to go ahead and, and do that.
[00:32:24] So, I'm going to, I'm going to run, this is it, this is my version of running what you
[00:32:29] have, Podman, run it, say, one, two, Podman, second failure, connected down, refuse, what?
[00:32:40] Is it a machine off?
[00:32:44] I must have rebooted or something.
[00:32:49] We haven't learned about Podman yet, we will.
[00:32:52] So, I'm going to go again, I'm about to get, so, actually, let's do this, let's say, dash
[00:33:05] and dash host, pretend WSL 2, okay, so that you can pretend it's WSL 2.
[00:33:18] Then to install the GH, the GitHub command line 2, it is sudo apt update, oops, apt update
[00:33:26] because you're root already, or you could use sudo apt update.
[00:33:31] And that, that's going to bring down all of the latest packages, this is where our software
[00:33:35] gets stored, and then you're going to go ahead and do the app install GH, and that will update
[00:33:43] and install the GitHub command line tool.
[00:33:46] And now you can do GH version or whatever, and you can see what version of the tool you
[00:33:52] have, you can do GH dash S, get some help on what it is.
[00:33:56] This is the GitHub command line tool.
[00:33:57] And the reason it's so important that you learn it is because it is the primary way to
[00:34:03] use the agentic, cloud code, you know, system from the command line.
[00:34:12] And why am I so big on co-pilot and GitHub, because enterprises have widely adopted it,
[00:34:18] and they allow you to use it, my big multinational corporation will not allow you to run cloud
[00:34:24] code on their systems, for good reason, which just became really obvious.
[00:34:30] But they do let's use co-pilot.
[00:34:32] And so in order to use co-pilot, you need to do this, you say GH plug-in, is it plug-in
[00:34:39] install, I don't remember which one it is, I think it's plug-in, you could probably do
[00:34:47] this with your AI, you should be asking your AI everything anyway.
[00:34:52] And what I'm going to show you are two AI's that I think everybody should get.
[00:34:56] If you're going to go into tech, there's two AI's that I think you should pay the money
[00:34:59] for today, and I really, I fully believe this and I have nothing to do with them, plug-in
[00:35:05] install GH co-pilot.
[00:35:10] I think that's it, I get it wrong, let me ask my AI, how do I install GH co-pilot?
[00:35:25] I don't remember, I can look it up, this is the same thing I've been in a web search,
[00:35:29] it doesn't mean you're dumb if you look it up.
[00:35:34] Go-pilot suggest, go-pilot suggest, just give it a comment.
[00:35:37] GH version of install, Bruno install GH, got that, authenticate GH off-log-in, and install
[00:35:42] it, okay, extension install, okay, I'm just going to copy that.
[00:35:47] There's no shame, in fact, if you don't do it, people will look more down on you.
[00:35:51] Alright, so it says I have to authenticate GH off-log-in, alright, I'm going to GH off-log-in, and I can't
[00:35:59] show you this, but what it's going to do, is it's going to give me, it's going to ask
[00:36:02] me for GitHub, I'm going to say GitHub, I'm going to say, I want to use SSH, login with
[00:36:10] a web browser, yes, and it says it couldn't do, yours is going to pop up a web browser,
[00:36:15] you're going to pop, you're going to put in the thing, you're going to go answer the
[00:36:18] questions, and you will be all logged in, and I'm going to go ahead and I've done that
[00:36:26] already on another system, so I don't need to do it.
[00:36:28] Alright, so that's how you get on WSL2, if you are on a Mac, it's brew install GH, which
[00:36:40] you probably have already done, I think we did all this already, but I just want to go
[00:36:44] over it again, it's super important that you have the GH tool, like it's never been more
[00:36:49] important, it looks like it's getting a new one, that's cool, so I updated, that's also
[00:36:56] an update, if you don't know how to install brew, we did talk about that earlier in another
[00:37:00] video, alright, now, with all of that installed, you can actually go ahead and install the
[00:37:07] extension, GH extension install the GitHub co-pilot, the co-pilot matches the name of
[00:37:13] a built-in commander, alias, I already have one on, okay, as soon as you have that on,
[00:37:17] you can do, you can have co-pilot, and I think you can do version, and yeah, it'll show you
[00:37:23] a version of co-pilot you're on, and once you have that, then you can pull down your
[00:37:29] repos, you can start using your repo from the command line, we covered extensively how
[00:37:35] to use a command line, and how to navigate the system last week, it was one of the best
[00:37:39] boosts we've ever done, make sure you watch that, because we are going to use every one
[00:37:45] of those skills today, so if you don't know how to navigate and make new files, and what
[00:37:49] the file system is, watch last week's boost, okay, that's the only warning I'm going to
[00:37:55] give you, so from there, we can go cd enter, which takes us into the home directory, and
[00:38:01] you can see the stuff on my Mac, or your stuff on your WSL2, either way, and then we're going
[00:38:05] to make, we're going to make a place to put a repos, okay, so we're going to do a maker,
[00:38:11] you can call it repos, or repos, whichever one you want, lowercase, mines, uppercase repos,
[00:38:16] doesn't matter, I just made it run uppercase, because the other stuff was already uppercase
[00:38:20] on my Mac, so it doesn't matter, you make your directory repos, and then once you have that,
[00:38:25] you can go into your repos directory, and you're going to use a convention that I determined
[00:38:31] after much pain and suffering, okay, a Git repo, as we've already talked about, but it's
[00:38:37] to review, Git repo is a place to store code, and images, and knowledge, and everything,
[00:38:42] and GitHub is, of course, the biggest provider of that, and you've already created, by now,
[00:38:47] you should have already created a notes repo, we will recreate one now, and I'll show you
[00:38:52] how to make it using the GH command line tool, as opposed to using, you know, the system,
[00:38:59] the, you know, the DUI, and yes, we're going to use the GitHub command line tool for all
[00:39:05] of this and not Git, we will eventually learn Git, but it's more important that you learn
[00:39:09] the GitHub command line tool, I'm going to catch it for saying that, I don't care, that's
[00:39:14] about the, that's the tool that's going to get you the job, that's the tool that's going
[00:39:18] to show you can be productive the fastest. So next, inside of the repos, the repos directory,
[00:39:26] we are now going to replicate the URL organization of the repo, so we're going to make a directory
[00:39:32] in here called github.com, okay, and then we're going to go into that. Now why on earth would
[00:39:38] I do that? Yeah, I only have one directory in here, is everything going to be on github?
[00:39:42] The answer is yes, but there are other providers, there's GitLab, there's source hut, there's
[00:39:48] a number of other places that you might want to have get repos. The reason it's a good
[00:39:52] idea to fully qualify your repos is because a lot of people will use a repos name that's
[00:39:59] relatively small, short, and sweet. For example, everybody's got a dot files or a dot or a
[00:40:05] notes, right? Well, let's say you want to copy the notes from the boost, our mind is
[00:40:09] boost, right? The boost repo. What if somebody else has a copy of the boost repo or a different
[00:40:13] boost repo? You can't just put them all in your repos. It's one of the biggest newbie
[00:40:17] mistakes I see, they make everywhere, and there are senior people who are still making
[00:40:21] this mistake. They will have a single Git repo, and they'll put all of their stuff in
[00:40:27] there, and they'll rename, they'll rename the repo so that it doesn't collide with the
[00:40:31] other one, but then you have no idea what the repo actually goes with by looking at its
[00:40:36] path. Just take my word for it, make a repo directory structure that matches the repo
[00:40:43] URL. In this case, URL is the web address. You go to GitHub.com, and in here you'll see
[00:40:49] all of the different users, and quite interestingly, if you look at this, you'll see if you list
[00:41:00] it. Let's do an LS-D star. You see all of these repos here, and you can see that some
[00:41:15] of them actually overlap with one another, and there's a lot of skill stack stuff right
[00:41:20] download. A lot of people have unique. The point is, because the next level of organization
[00:41:27] is the owner, or the organization on GitHub, or whatever, that allows you to put it in
[00:41:33] the right place, so that you can see the into RDBxRob in my case. Now, you might have one,
[00:41:37] so make one that matches your name, and my case is RDBxRob, so I go do that, it's already
[00:41:41] there. I see the RDBxRob, and now I've got all of my repos that are already in RDBxRob,
[00:41:47] so here's the path. There's my home directory, and then GitHub.com, repos, GitHub.com, RDBxRob,
[00:41:53] and in here you can see I have a lot of stuff. You see I have, there's like two different
[00:41:59] notes repos, and you might recall a couple weeks ago, we created a notes repo up above.
[00:42:08] Now, there's two ways to clone a Git repo. One of them is to use the Git command, which
[00:42:13] causes you to have to do all your authentication the hard way, or you can use the GH command,
[00:42:18] and then you do Git repo clone, right? If you've already got a notes repo, you can do this.
[00:42:24] You can do, you've already done your authentication, so you did Git off login, and when you did
[00:42:29] that, your GitHub tool now has authorization to do whatever it needs to do, and you don't
[00:42:33] have to deal with all the extra steps to get Git to work. This is actually a really great
[00:42:40] thing, because you don't have to bother with it. Should you know how to do it eventually?
[00:42:45] Do you need it now to get a job and be effective? No. In fact, your AI is going to use the GitHub
[00:42:50] command line tool. It's not going to use Git. Sometimes it'll use Git, but most of the time
[00:42:54] it's going to use the GitHub command line tool for making new repos and things, so you need
[00:42:58] to understand both of them. And there are people on my team that today who still don't
[00:43:02] use the GitHub command line tool. So whatever, now you know more than native. So GitHub repo
[00:43:09] create, you can make a new repo in here. In this case, I'm going to make some new repo
[00:43:14] create a new repo from scratch, a repo name, some repo. And we're going to do new repo,
[00:43:22] some repo is to ask me which organization I want. You only have one, I'm going to put
[00:43:26] it under here, just a random repo. Make sure you put something interesting in here, because
[00:43:32] this is actually used to find you. I discovered 2,500 notes and Zetelkasten and knowledge garden
[00:43:41] was yesterday using the GitHub archive, which I'm going to talk about later. And I actually
[00:43:46] have been going through them and finding all these really great ideas from people, because
[00:43:49] they put stuff in their descriptions in their name. So, you know, pick a good one. Let's
[00:43:53] make it public. And would you like to read me? Sure. Would you like a get ignore? No,
[00:43:58] I don't need one. Would you like a license? Sure. Creative Commons public. We'll talk
[00:44:02] about licenses eventually, but right now I'm just going to create a common because everything
[00:44:06] in here is open. I don't care what they do with it. So I'm going to say, would you like
[00:44:10] to create it and put it here? Yes, enter. And now we want to create it locally. Yes. These
[00:44:16] are all things that would have been individual commands. Now, you can do all of that with
[00:44:20] the GitHub command line tool once you get it on. But right now, so now I can cd into
[00:44:24] it. I've got some, I cd into SOM tab tab dash repo. And now I'm in the repo. And I can
[00:44:32] actually, you don't know about editing files yet. So we're going to do cat read me. And
[00:44:37] that'll show that there's just a random repo. It shows there's a file there. Okay. Now here's
[00:44:42] where it gets fun. So once you're in here, then you can actually start to use GitHub
[00:44:48] Copilot. Now, you may or may not be able to use GitHub Copilot depending on what you authorized.
[00:44:57] There is a free version of the copilot. And there is a trial version. Now, I'm just going
[00:45:06] to spit it out. I think as a beginner, you should pay the 10 bucks a month for a GitHub
[00:45:12] pro copilot pro. I believe that. And to give you a sense of, I actually made a video about
[00:45:17] this recently, go watch it on YouTube about cloud code versus GitHub copilot. And forget
[00:45:24] a GitHub copilot pro for $10 a month. That's like less than prime or any other subscription
[00:45:30] service. You get virtually unlimited access to the most powerful AI model for code development
[00:45:38] and education in the world. Why would that be a thing? If you're serious about getting
[00:45:45] into technology, the number one thing you should not have a problem paying for is a
[00:45:50] good AI to get you started. And I personally think you should have two ais. I think you
[00:45:55] should have a chat GPT to manage your personal life because it remembers everything about
[00:45:59] you for better or worse. And it helps you on your quest. It'll remember your personal
[00:46:05] life and tell you tell it to forget about it because it's hurting you because you got
[00:46:08] divorced up using my ex wife's name and my samples. But you know, all the things that
[00:46:16] people are afraid about. Yes, it remembers you and all that stuff. They're also the
[00:46:19] greatest advantages because because you can, it knows how to speak French. It knows you
[00:46:23] speak French and Russian. It knows blah, blah, blah. So having an AI that is your personal
[00:46:28] in pocket on your phone assistant you can talk to while you're driving and plan projects
[00:46:32] within everything and ask random questions about, Hey, what do you think of this or Hey,
[00:46:36] do you think I should go to this school or this school? Or Hey, what about this? Or what
[00:46:39] do people say about this? Having having that AI companion that's helping you write your
[00:46:43] emails and helping you compose texts that aren't going to get you fired is going to
[00:46:47] prevent you from drug texting. And any number of things, having a personal, you know, bought
[00:46:54] a calls, right? If you will. And also, you know, a star droid, what are they called an
[00:47:00] astro droid that, you know, gets your work done for you is a good combination. And so
[00:47:05] I strongly suspect I encourage you to do that. I continue to pay $20 a month for for Chi GPT,
[00:47:11] which you can also do for free. And I also pay $10 a month for cloth. That's 30 bucks a
[00:47:15] month. Okay. Netflix is $25 a month. So I don't want to hear you complaining about, Oh, my
[00:47:23] God, it's some of his money. If you're serious about getting a job and about teaching and learning,
[00:47:28] then make the sacrifices necessary to get the tools that you need. And the number one tool you
[00:47:34] need to get a tech job in 2026 is Claude hands down. The most important thing, Claude over
[00:47:42] copilot, Claude over copilot. There are lots of other ways to go about this. And there's lots of
[00:47:47] people are going to yell at me and debate about a better models. And why do you have to pay money?
[00:47:51] Why are you shilling from Microsoft? It just doesn't matter. None of that matters. You know what
[00:47:55] matters? Getting a job. And the job that they're going to hire you for is going to be to use
[00:48:00] code pilot on Claude, because the company most likely is already going to have an association
[00:48:05] with Microsoft, which means they already provide copilot to everyone in their company for free.
[00:48:11] Which is what I have, which means when I use copilot here to make my weekend SaaS project to do storage
[00:48:18] bin organization, every single thing I do is the same exact thing that I do at work.
[00:48:25] Same thing, same exact tooling, same methods of doing it, same agents on MD file, all of the skills
[00:48:32] transfer. And if you try, you can do it, you can like do be differently. But if you want the least
[00:48:38] path to resistance, use the same in both places. Claude code is not allowed in any place of work
[00:48:46] that I've ever run into. For lots of reasons, it just came out very ugly in when it got all
[00:48:52] dumped, the answer topics did. You'd rather be homeless than depend on Microsoft. That's fine,
[00:49:00] then you're in the wrong room. This is not the room for you. This is the room. It's like,
[00:49:06] how do you get gainful employment in a large enterprise and keep that job? If you would rather
[00:49:12] not have that job, and I don't know, move to Mexico and eat your own toe jam, be my guest.
[00:49:18] Yes, that's a reference. But if you want to be a productive employee in the modern world,
[00:49:30] these are the realities that no one else is going to tell you.
[00:49:35] All right, so let's do this. We're now in here. And now, so I'm going to do this. I'm going to use
[00:49:39] co-pilot in here. So I knew GH co-pilot. Another big one, no is open cloth. I don't know if open
[00:49:47] cloth. Look, all right, friends, I'm speaking through the camera to the people who don't want
[00:49:55] to listen to everybody else, to the people who want a solid, easy answer. And the solid, easy
[00:50:00] answer is just learn the Claude model and co-pilot from the command line. That's all you need to know.
[00:50:08] You're going to hear everybody is going to come at you with the same people that I use
[00:50:14] arch, by the way, they're going to come at you with use this Linux distro. Oh my God, you're not
[00:50:18] using desktop Linux. Oh my God, this and it's just just tell them all to shut up. This tell them
[00:50:23] all to shut up. It's all Mr. Rob says to learn co-pilot in cloth with the Claude model and
[00:50:30] be able to work anywhere. And if they disagree with you, that's fine. That's fine. There's like
[00:50:35] multiple martial arts styles, and they will all kick your ass once you learn them. My style is
[00:50:41] to do this. All right, so, so a GH co-pilot. And this is going to get and this might change next
[00:50:48] year. It changes every year. So confirm and trust the folder. So this no co-pilot instructions
[00:50:55] found, run a Nip to generate a co-pilot instructions file. Okay, so this is something you should not
[00:50:59] do. Okay, you don't want to do anything that's it's agent specific, because later you might be
[00:51:06] asked to use a different agent. Maybe you don't necessarily want to use a Claude or you want to
[00:51:12] maybe you want to use a Codex. There's a bunch of other ones that later, later, later, you're
[00:51:18] going to want to explore all those and that's welcome and encouraged to do that. You should do
[00:51:22] that. But for right now, you're just getting started and you haven't ever used it before.
[00:51:27] Right. Yeah. Yeah. Okay. Yeah, so, so here we go. So confirm the folder trust. So do you say,
[00:51:38] do you want to trust the stuff in this file? And this is this is where you have to start
[00:51:41] really, really careful with the Gentic AI. And this is why I'm doing this in the boost.
[00:51:45] You can really screw yourself up using AI. AI has all the permissions of you.
[00:51:53] And if you're afraid, there are lots of ways to protect yourself. One of them is to create
[00:51:59] a separate user. I actually had somebody that I mentor do this. One of the ways to protect yourself
[00:52:05] is to create a separate user on the computer. That's not you. That's, you know, it doesn't have access
[00:52:13] to your Netflix and your bank account. It can't go rogue and start reading every all your browser
[00:52:18] history. The thing to take away from this is that every single thing you do with give them
[00:52:24] co-pilot on this account right now can it can, it can do, if it wanted to, it can do anything it
[00:52:31] wants as you. You shouldn't be unnecessarily afraid of this because that's how any application is.
[00:52:38] When you run your web browser, it's running as you. It can see everything. If that web browser
[00:52:43] wanted to hand over your bank account to the bank accounts to somebody, it could. And it probably
[00:52:48] does on something. And there's no reason to be afraid of it. You've got to learn to trust certain
[00:52:53] software. And by the way, Cloud Code is very untrustworthy compared to GitHub co-pilot.
[00:52:58] GitHub co-pilot will sit there and ask you over and over again, do you really want to do this?
[00:53:02] Are you sure? And that's what you want. And you can always be backing up your stuff. These
[00:53:08] are all things you should know already. But so anyway, we're going to go ahead and say, yes,
[00:53:13] I want to trust it. So here it says users are able to help repos some repo. Co-pilot may read
[00:53:18] files from this folder, reading untrusted files mainly in the code, but yeah, Cloud just doesn't
[00:53:23] do. I mean, it does it, but it's not as good. And it says, hey, look, I have co-pilot. I didn't
[00:53:28] find any co-pilot instructions running it to generate an instruction file for this project.
[00:53:32] Now, I'm going to tell you a few things about getting going with your first co-pilot project.
[00:53:36] And by the way, we're in the notes repo, right? We made a new repo, but, you know, it could be
[00:53:43] anything, right? So let's actually back up for a second and show you how to get out of it. So you
[00:53:49] can just type exit or you can type control c, control c, and you're in here. So I wanted to back
[00:53:57] up for a second because many of you have already cloned. You've already created a notes repo,
[00:54:03] right? So let's do that. How would you get that repo down? Your repo clone notes. If you already
[00:54:10] have a repo called notes, you might want to do this instead. So you're going to click GitHub,
[00:54:15] click repo notes. Maybe by the way, I wanted to talk to you about this because of the knowledge
[00:54:20] management stuff. Maybe you want to have multiple notes repos, right? And so I actually rename my
[00:54:27] notes repo to notes dash tech. I also have another repo called notes dash health and notes dash
[00:54:34] whatever notes dash boost, right? So you can pick whatever one you want. If you just want a generic
[00:54:41] notes there, I noticed in my evaluation, like 2,500, you know, repos the other day, a lot of people
[00:54:48] have just knowledge. They have a central knowledge base. A few people have KB. And really, some people
[00:54:54] have zet, some people call it obsidian, some people call it whatever they want, whatever you name
[00:54:58] it, it's up to you. But we'll talk more about knowledge management in a second. So, you know,
[00:55:03] when I'm the boost, I had to make one called notes. And so that's how you would repo cloner.
[00:55:08] You put repo clone notes. And what that does is that pulls the notes repo down. I don't have one.
[00:55:14] So that's what now let's pretend like I named my notes dash tech, right? Well, in my case,
[00:55:20] I already made it up, right? So let's actually, I'm going to do GitHub repo. Wait, wait, wait,
[00:55:26] what is the other one I was in? All right, some repo, right? So let's say let's say I'm going to
[00:55:31] change mine to I'm going to change the name GH repo renamed. And it's going to be like,
[00:55:36] what do you want to rename it to? I want to rename it to a notes dash boost. How about
[00:55:43] boost? How about that? Well, okay, notes test boost. Okay. Now when you do that, it doesn't
[00:55:48] rename the actual folder. So you have to get yourself move. I learned all this last week,
[00:55:55] notes dash. What was it? I was like something, right? Some repo to notes dash boost.
[00:56:03] All right, so we're going to go into notes dash boost. All right, so now we're in here,
[00:56:08] and we can now we can, this is this is now this is kind of like what you saw. You might already
[00:56:14] have some notes in here that you took, right? So then we're going to run, we're going to run
[00:56:19] cloud, a co pilot cloud on here. Go get get Pope co pilot. That's going to run the first time. And
[00:56:25] it's going to say the same thing. It's like, I don't know, you don't want to trust you. Yes.
[00:56:28] You say, I want to trust you. And it's like, Hey, okay. And see, see here, it says cloud
[00:56:34] sonnet 4.6. Let me show you how to change that. So the first thing you're going to do is type
[00:56:38] model, or models, and it'll tell you all the different models. Now, this is where AI gets
[00:56:44] kind of interesting for an absolute beginner. And it's from from my research, it turns out that
[00:56:52] that Microsoft has a deal with anthropic and with open AI to get access to these models.
[00:57:02] So by having cloud, cloud sonnet is the same by having GPT 5.4. It's kind of like having chat
[00:57:08] GPT. The difference is, is it doesn't remember you. In fact, the biggest difference about using
[00:57:14] agentic command line AI is that the only thing it remembers is what you tell it to remember for
[00:57:21] the session. And then you have to give it a lot of hints so that when it starts up the next time,
[00:57:26] or if any agent starts up, it can automatically get up to speed on what it needs to be. And we're
[00:57:32] going to we're going to talk about that in a second. So the first thing is search the models,
[00:57:36] we want to use the latest cloud model, the cloud sonnet 4.6. You can use any of them,
[00:57:41] I'm going to use high optimal performance and throughput thinking. And again, you if you may
[00:57:50] have hit a hurdle here where it doesn't let you use this stuff, and I'm already passed all those
[00:57:55] hurdles. Usually what it's going to do is it's going to say, Hey, do you want to go use all the
[00:58:00] open AI stuff? And I'm actually going to open that right now. First of all, say, how do I open my
[00:58:07] open my co pilot settings for GitHub? I'm going to go show them to you really quick. I don't know
[00:58:17] how much I can show you, but get bah. This is asking you how to open the settings. There it is,
[00:58:25] settings copilot. I'm going to privacy this. So you go to GitHub settings copilot after you log in.
[00:58:32] And here's mine. So, and we're going to go find the copilot one. It's right here, a copilot.
[00:58:43] I'm going to make sure I'm not dumping stuff. So I don't want to give you my AI.
[00:58:50] Okay. So features cloud agent copilot. Okay. So if you have copilot general on,
[00:59:04] I think, I think features is. Okay, here we go. So copilot, GitHub copilot is free,
[00:59:15] is active for your account copilot pro subscription. I told you I'm paying the 10 bucks for that.
[00:59:19] You can, you can, if you have a project, which I do, open source project, you can get it to
[00:59:24] wave that and you get copilot for free. What are the rates of per token? I don't remember,
[00:59:30] but it's it's $10 period. It's like they don't ever go over $10 premium requests. So,
[00:59:37] please note that there are many delay in the display that produces a premium requested
[00:59:40] time out of your plan reset the start of next month. So I have been using, I have been using
[00:59:45] copilot pretty heavily and I'm over like, you know, three or four days and I'm, I'm approaching
[00:59:51] my limit. It's going to start. I don't know what happens when I hit my premium limit.
[00:59:55] Update your copilot and premium request budget. Please note that there may be a delay. So $7
[01:00:00] is what it's going to go up to. All of the AI stuff is based on tokens and the tokens is
[01:00:06] ultimately how much you end up paying. So, you know, yeah, I think, I think 10 this is all
[01:00:11] it's included with $10. I'm going to click on the upgrade and see what happens. Upgrade your
[01:00:16] copilot. This says, I see all all premium requests as key use. Five account budgets.
[01:00:33] Get LFS. I don't know what this is about. I'll premium ask you as KU requests, code spaces,
[01:00:42] packages, actions. I haven't, I haven't used anything from that. Include badges. I don't,
[01:00:48] I don't know what's, if I'm going to hit a limit or not, we're going to find out. We will find out.
[01:00:56] But I know the, you can use a certain amount of it for free. Here we go. So,
[01:01:06] editor premium features enable the copilot chat and github.com. I, I pretty much enabled
[01:01:13] all of these things. CLI, make sure that's enabled. You need to click enabled for this or it won't work.
[01:01:19] Just enabled copilot chat and ID enabled. I don't use any of these things, but I enable anyway.
[01:01:25] Copilot can search the web. This is actually expensive. It like burns energy, but I really
[01:01:30] love it because when you enable that, when you, when you ask a question of it from the command line,
[01:01:36] it can go out to the internet and it can look step up and including stuff from your own website
[01:01:42] or your own documentation site. So, this is super useful to have on even though it probably costs
[01:01:47] you tokens. Copilot can search the web using model native search preview. Copilot can answer
[01:01:52] questions using models built-in search capabilities enabled, dashboard entry point enabled, copilot
[01:01:58] code review enabled. This just lets you have copilot like check out your stuff before you
[01:02:03] commit it. I don't use that, but it's enabled anyway. The cloud agent, you need that copilot memory.
[01:02:11] You can use copilot memory to remember repository context as this copilot,
[01:02:15] Azure interactions. I made this enabled, but there's a better way to do this, but I just turned it on anyway.
[01:02:23] Connect MCP servers to Copilot and Copilot enters coding agent. This is so you can get to the web
[01:02:27] stuff and other things. Copilot generated commit messages. This is awesome, by the way.
[01:02:34] A lot of copilot to suggest commit messages. When you're like pushing stuff to GitHub and you,
[01:02:39] the one of the worst things to do is to write out that long message that describes what the
[01:02:42] commit was about. And copilot does it automatically agent agent AI does it,
[01:02:49] includes the pilot spaces, individual sharing, privacy, suggestions, matching public code.
[01:02:56] Copilot can allow or block suggestions matching public code. So I have this allowed. These things
[01:03:02] are super controversial. This because they're based off of public open source code, even though
[01:03:07] technically they didn't give permission for any of these AIs to use this code. It's a huge
[01:03:12] argument in the world of tech. I understand the argument, but I still am going to use it.
[01:03:18] Allow GitHub to use my data for AI model training. That means you're letting everything you do
[01:03:24] interacting with it train the AI to make it better. A lot of people don't want to do that.
[01:03:29] That's up to you. I'm fine with it. People ask all the time, isn't AI going to get stupid
[01:03:35] eventually because it's going to be trained off of a finite amount of people? And the answer
[01:03:40] that is absolutely not. AI is just getting smarter because the actual engineers that are interacting
[01:03:46] with AI are constantly correcting it, making it better. So I am down with enabling it and making
[01:03:52] it better, even if they're going to make billions of dollars off of all of my subtle improvements to
[01:03:57] it. It's the same thing as if I was training an intern who's supposed to be a consultant,
[01:04:02] which I've done. And then he goes away and he makes lots of money and he ended up,
[01:04:06] and so all I did is answer questions. So you can get co-pilot business for organizations.
[01:04:13] So those are all the things you have to have enabled. Once you have all that enabled,
[01:04:17] you should have no problem using co-pilot from the command line like I'm using right now.
[01:04:22] So if I go where am I? Okay, so are we in? Which one am I in? Oh, I have a whole thing. I have
[01:04:31] multiple AI sessions running right now. So let's go to, which is the one we just did, no boost.
[01:04:39] Okay, so I just asked it around in question. As I say, okay, and now, okay, so the first thing
[01:04:47] you can do is this, you can say, create an agents.md and keep it up to date with my project, context,
[01:04:58] and preferences. And this is, this is a standard. They see your dot interview. I don't, I don't
[01:05:08] know if they do. It doesn't, it doesn't matter. They, they absolutely can see your keys. They
[01:05:14] absolutely can. If they wanted, if they wanted to steal your keys, they can do that. And that's,
[01:05:20] it's up to you to decide if you want to allow that or not. And there's a lot of people that don't.
[01:05:25] So what is this doing? So I asked it to say, to go ahead and use the agents.md file, which is a
[01:05:32] standard you probably just learned about, that all AI agents are using to keep track of the context.
[01:05:39] So if you have another, if you have another AI come in here and use it, it will automatically
[01:05:45] load the agents.md file to give it an idea about what are your preferences, you know, what languages
[01:05:51] do you like? How many tab-ended spaces do you want to mention co-pilot in your commits? All this
[01:05:56] kind of thing. And so you can go to the top of it. And so it made this file for me. This file
[01:06:02] provides a context and preferences for AI, GitHub, co-pilot, blah, blah, project repo,
[01:06:07] owner, description preferences, keep responses concise and direct, commit messages to be
[01:06:12] imperative mood, lowercase, always include co-pilot, author, see, it, it added that. And I'm going to
[01:06:19] actually alter that conventions add language formatting testing and tooling conventions here
[01:06:24] as a project grows. Those for agents, the repo is currently sparse update this file is structuring
[01:06:29] conventions. Okay, so I'm going to say no, I'm going to say, make sure to never refer to any
[01:06:39] agents in any issue, PR commit or, yeah, anything. I don't want my, I don't want my PRs to be
[01:06:58] co-pilot help you make this. So I'm going to change it to say that. So it says repo project
[01:07:06] owner update with the project preferences, never referred to any agent issue. Okay, and I can say
[01:07:15] yes. And so do you want to edit this? So it's going to edit and make to pay attention here.
[01:07:19] If you answer number two, the next time it won't ask the question, it'll just do it.
[01:07:24] Very dangerous. I would rather hit enter a million times than to have it just do things
[01:07:29] automatically. Do you want to run in this command? So this is where reading shell scripts and
[01:07:35] shell commands come in. You still have to learn the technology. But the AI, the reason I'm showing
[01:07:41] you the AI so early is because you can learn and all of these tasks, you can say them in natural
[01:07:46] language the way that might occur to you. And it will show you the tech, the tech that it would
[01:07:51] do. And then you can look at the tech and say, well, that looks complicated, or you can say
[01:07:55] something like that, you could say, um, uh, looks good, but could, could you please explain
[01:08:06] like I am an absolute beginner, what it is doing. And it will go try and to do that.
[01:08:18] It says the user will explore the law. Okay. The file to understand what the project is, name,
[01:08:26] owner description, your preferences, how you like to commit messages for a matter, whatever about
[01:08:30] conventions, coding style, blah, blah. Think of it like a read me, but okay, let's go read it.
[01:08:36] Sure. Here's what agents does. It's a set of instructions for your tools, like in a co-pilot
[01:08:40] that work on your repo. When an AI agent reads the code base, it looks for this file to understand.
[01:08:45] This is everything I just told you. This is why mentors are becoming less important.
[01:08:49] They are important, but they're an AI is your best mentor. Well, people can hate me for saying
[01:08:55] that, but it's true. Well, what the project is, name, owner, description, your preferences,
[01:09:00] how you like to commit messages for a matter. And by the way, this is all written in something
[01:09:03] called Markdown, which we already talked about two weeks ago. Markdown is the language of prompt
[01:09:08] engineering. It is the number one most important language you can learn in tech. Before anything
[01:09:16] else, you need to learn Markdown. All of this stuff is spinning out every single file that's
[01:09:20] being created, the read me not in the file, the agents I have deep out, they're all in Markdown.
[01:09:25] Markdown went from being a nice way to make standard texts look good to being the universal
[01:09:32] language for prompt engineering. And therefore you must know it. Okay. What product your preferences,
[01:09:39] how to like commit messages, conventions, coding style, think of it as a read me as a written for
[01:09:42] the AI instead of for humans. It helps the AI give you answers and make changes that match your
[01:09:46] style, not generic defaults. Okay, you can scroll down. The file is mostly empty placeholders right
[01:09:53] now. I'll get you more skills that you want me to commit it. It says, but org mode, I know.
[01:10:00] Do you want me to commit it? It's like, yes, please, yes, please commit. Now, this is super
[01:10:07] important because this is now doing something as you. All right. And what it will do is it
[01:10:13] will do a good commit. And you don't even know what a commit is. You've never even done a commit
[01:10:18] in your life. And you're like, okay, let's look at what it's doing. Okay, you know, CD, okay, it's
[01:10:24] CDing into this directory. And then if that works and and that means if it works, do the next thing.
[01:10:30] If that works, then it's going to say, get add agents.md. Okay, I just learned about
[01:10:35] Git. I didn't know about it. But now I know it's going to add that file. And if that works,
[01:10:40] then go on. This is called a pipeline. It's called a, and if it's, what is it called?
[01:10:49] It has the name. I forgot the name of it. It's when you code things like this so that the first
[01:10:54] thing that fails stops the pipeline chain, it has the name and I forget the name of it. So it says
[01:11:00] and get and and agents and get commit. So that means go ahead and committed to get, push it up,
[01:11:08] the dash M says, make it make it into a commit message. Now, from this, I happen to notice that
[01:11:16] it says it's going to make this really beautiful commit message that I would have to type.
[01:11:19] Now I don't have to type it. This is add agents with project context and preferences. Okay,
[01:11:24] but I happen to know something here because I'm an engineer and now you know it. I'm going to say
[01:11:28] this, make sure to use conventional commits for everything. Okay, so I said no. Yes, that was good,
[01:11:39] but let's make it use conventional commits. You don't know what conventional commits are,
[01:11:43] but it's going to actually add it. So it says commit agents.md with conventional commit format.
[01:11:49] And so now I put docs colon. And if you go look up conventional commits, which you can ask it for
[01:11:54] after we do this, do you want to run this command? Add agents. Yes. So then you can do ask if you
[01:11:59] do if you do this on the super dangerous, right? Because then it'll do get ads automatically.
[01:12:03] Don't want that. Do yes. And it's going to say it's going to commit it. This is going to push
[01:12:08] it up to GitHub. And it'll put it there for me subject. Okay. And then it's going to ask,
[01:12:13] do you want to store this in memory? Because what we added something new add conventional
[01:12:18] commits citations? Yes. I'm going to say, yes, but also add that rule to agents.md. Because we
[01:12:31] don't just want it to be visible to copilot. We want whatever agent amusing to use conventional
[01:12:36] commits. And said, do you want to store this in memory? Yes. And now it'll be remembered. And it
[01:12:43] also added use conventional commits for all commit messages, even give us a link to it. How cool is
[01:12:49] that? Yes. So, okay, so asking me commit updates agents, cd into here, cd into the add the agents,
[01:12:59] commit it again, add conventional commit preferences to agents and d. Yes. I didn't have to type any
[01:13:05] of that, which I know what it does. I just don't have to be bothered by typing it. Commit agents,
[01:13:13] commit dash M, yes, and done conventional commits rule agents and or committed. All right. Now it's
[01:13:19] done. So now I can actually go to the web browser where I was, but one or two, actually, if you want
[01:13:24] to get really crazy, watch this, it's a open up this repo in my browser. This is insane. This is so
[01:13:34] but this is crazy. I don't even have to go butts with my browser. It's like, I want to go into there
[01:13:39] and I want a GH repo view dash web. What do we just learn? By using the AI, instead of it making
[01:13:45] as dumber, it's teaching us as it goes. And we say a GH repo view web like, Oh, I didn't know I could
[01:13:51] do that. Now I know. So I say yes. And now it's going to go over here is going to open up my web
[01:13:56] browser. It's going to take me into my notes boost. And you see all the files that are there. In fact,
[01:14:02] it even lets you click on it right here if you want to. And oh, you can see that there is some repo
[01:14:08] just around a repo that's like the agents isn't here. So you can say, but agents, but agents,
[01:14:15] watch this, agents.md isn't there. This is something you would type. It's a regular person would type.
[01:14:22] It's like, I know why it's not there, but the user is saying that it's not there. What do you
[01:14:26] want him to do? Push it. Give us a repo. Oh, that's right. I need to push the commit, not just commit it.
[01:14:32] I have to push it. So it goes up there. And so the AI helped you know what was going on that was wrong.
[01:14:38] CD into the directory and git push. Yeah. So we're going to say yes here.
[01:14:46] And it's going to go ahead and go and do the git push. So git commits to remote. It says CD
[01:14:54] in here and it does a git push push and the request and agents should be there now. I can go over here
[01:14:58] and refresh this web page. And now there's an agents file. And you see how these nice pretty
[01:15:04] commits? Look at them and click on agents.md. This file provides blah. The owner is blah. I can
[01:15:10] go read about what conventional commits are. And I can read all about what they are. I don't like
[01:15:15] care. You guys can go read, but what they are, it's a so way to make your messages easier to read.
[01:15:22] And you know, you can do that. Some people will call it ultra lazy. I call it extremely efficient.
[01:15:28] And it helps you learn. And if you disagree, that's fine. So yeah, so let's go back to saying
[01:15:36] what else we want to do here. I say, you can even do stuff like this. Okay. What else should we do
[01:15:42] here? So we do now. What else should we do now, Claude? I mean, what the hell? It might be fun.
[01:15:49] The users asking what else we should do. The repo is called no spruce. I don't know what read
[01:15:53] me is. The repo is pretty bare. A placeholder read me in a fresh agents, a few natural extra steps.
[01:15:58] Update the read me describe what the no spruce actually is. Building the project description
[01:16:02] with any language tooling such as start building the code. Okay. What is no spruce meant to do?
[01:16:07] All right. So this is so cool. So you could say, well, this is, you know, the speaking naturally
[01:16:14] actually cost you tokens, but it's kind of fun. So well, this is my place to keep all my notes
[01:16:24] while going through the beginner boost with R W X Rob on his Twitch live streams.
[01:16:37] So there will be sample code and searchable notes here.
[01:16:48] And so it's going to say, it tells you what it thinks about. Great context. Let me update the
[01:16:56] read me in ages to reflect that description. So this is what it added. It said, okay, so it says
[01:17:04] owner notes boost description update with project description now says personal notes and sample
[01:17:09] code from R W X a beginner with live streams on Twitch. You can take searchable notes
[01:17:14] and code written during sessions. Do you want to edit this ages study file? Yeah, sure.
[01:17:20] So I'm going to say yes. Okay. How about this one? Do you want to change this in your read me?
[01:17:25] Notes boost personal notes and sample of a beginner with live streams on Twitch. What's new
[01:17:30] here? No, it's searchable. I mean, imagine having to do this. This is all marked down. Notes is
[01:17:35] searchable sample code written, blah, blah, blah, about beginner boost, a live stream series,
[01:17:38] by blah, covering financial skills for developers and terminal power users. It just added that.
[01:17:44] It's kind of nice that it figured that out. So you're going to say yes. And is this making you
[01:17:51] dumb? No, because you're still reading it. You're just typing less. So commit and push. All right,
[01:17:56] let's read it. CD into here and then get, add their new read me, add the agents file,
[01:18:02] get command. Okay, I know what that's doing and it's updating and then it's going to push it.
[01:18:05] It's going to push to get also. Like, who knows about here, but it's yep. So,
[01:18:13] you know, we're going to go ahead and push it here. Okay, done and push set up a folder structure.
[01:18:20] It's like it's giving you more instructions. It's like, oh, I can put notes and code here.
[01:18:24] You want me to set up the folder structure? The point of this is you really, this would be the,
[01:18:31] probably going to be near the end here. Because more and more, I am going to be telling you,
[01:18:38] in the beginner boost, the line is going to be your prompt. And so rather than writing a book
[01:18:43] or even making a video, I'm going to say, go ask your AI about this thing and ask it like this.
[01:18:53] Okay. All right. So, how about this? How can I be sure to get this session back after I exit?
[01:19:09] I know what they're going to say. It's like,
[01:19:13] you know, co-pilot, CLI documentation, it's going to check the docs. It's like,
[01:19:17] that's just just type slash resume. That lets you switch back and forth between your previous
[01:19:21] session by AD to find the session ID before you exit, run the slash session. All right. Let's try it.
[01:19:27] Session. Okay. Session one, navigate, enter, switch.
[01:19:36] Okay. This lets you switch back and forth.
[01:19:41] So, you could just come back in here and run that session again. But let me show you. If you do exit,
[01:19:50] can you make a script that I can run that I can run
[01:19:58] when in this repo to be sure to that you remember where I left off?
[01:20:14] Well, it's co-pilot. Let's see. It's thinking about it. It's like, I don't know. Let's take a look at this.
[01:20:27] So, thinking, thinking,
[01:20:37] create a session, raise a manuscript. Okay. It's like, do you want to make this?
[01:20:43] Always read the progress section below to understand where the user left off.
[01:20:47] Update the progress section at the end of each session with what was covered in the last text.
[01:20:52] Progress. Update. Last session. I'll start at the top of the cover. Not yet. Up next first,
[01:20:56] beginning of the session. Damn. Sure. That's a great idea.
[01:21:05] Shit in, shit out. Yeah. Yeah. You got it. You got to, you know, not, it can't be shit. Run the script
[01:21:15] to start the session and co-pilot will read agents. Oh, look. It's a script. It wants to make it a script.
[01:21:21] It's like, do you want to run a logical path? It's going to call it a boost script.
[01:21:26] Launch the co-pilot CLI. Run the script to start the session and co-pilot will read it.
[01:21:31] Pick up where you left off. CD into get pressure and co-pilot.
[01:21:39] I don't think I want to do that. Let's say, how about GH co-pilot instead? It's the same thing, but.
[01:21:56] Yeah. All right. It's going to write a script now. You don't know how to write scripts yet.
[01:22:02] So that's a little dangerous accepting that because it's like it's going to put a script
[01:22:05] in your system that you can run and you can, you've already learned about schmod. So you know what
[01:22:12] that is. So there you go. There's a beginner boost. Boost is run from the command line. So
[01:22:19] you can actually go into another window. You can click on another tab if you want. You don't know
[01:22:24] team looks yet. And then we're going to go CD into notes boost. And we now have a program in here
[01:22:32] called boost. Let's look what's in it. Cat boost. They see the program is a bash script that is going
[01:22:40] to CD into the top level and it's going to run get a co-pilot, which is fine. You don't really need
[01:22:47] that. You can just do get a co-pilot, but you can do boosts. And that this is kind of unnecessary,
[01:22:54] but do you trust the files in this folder? Right? So we're going to put, I'm going to put, I'm going
[01:22:59] to escape out of this because you don't really need to do that. Actually, you see what I said,
[01:23:04] resume any session with co-pilot dash dash resume. Let's actually remove boosts. It's like, I'm just
[01:23:10] going to use, let's do that instead. Can I just use a GH co-pilot dash dash resume instead?
[01:23:21] Understanding a question is half the answer, absolutely. That's just asking if they can use
[01:23:25] getting public answers to go back and blah, blah, blah, go back. Help. Do you want to run this? Yes.
[01:23:32] And it's going to show you the output.
[01:23:37] No, resume flag exists for GH. No resume flag exists for it. The resume command only works
[01:23:43] inside an active session. Oh, an agent that MD progress section is actually the better approach.
[01:23:49] It works regardless of the session. It always will read on the startup and the boost. When you
[01:23:52] keep the script, it should or simplify it further. How does the script know to read agents without
[01:24:02] MD file? Yeah, Socrates for sure. The script doesn't. The co-pilot does it automatically.
[01:24:13] Co-pilot respects the structure from these locations. So long as you launch GH co-pilot from inside
[01:24:17] the repo, co-pilot will always find the reagents. The script just makes sure you're at the repo
[01:24:22] root for launching. So it's always found no matter where you are. Okay, I don't need that script.
[01:24:33] And then because I will always be here. So I don't need it. We don't need a script for this.
[01:24:45] We could just say I want to run GH co-pilot. Do you want to remove the boost command and
[01:24:52] get committed? Move it necessary with launch script? Yes. I mean, that's AI. Sometimes it's
[01:24:58] going to get overly suggestive and I don't really need that. But that's the nature of this whole
[01:25:03] interaction. And that's really what I want you to see. I want you to get used to interacting with
[01:25:08] the AI, questioning it, being cautious about what it's doing, learning from it, teaching it
[01:25:14] not to do something that seems stupid and asking why it's doing things. Because those are all core
[01:25:20] skills. Those are the most important skills you could come away with the boost with having.
[01:25:25] If you don't have those skills and you can leave the boost, you can't even dream of having a tech
[01:25:29] career in 2026. So you should start doing this all the time. Starting today, you should start
[01:25:36] coming in here and you can say you can even play around with some other cool stuff. Here's some
[01:25:42] fun stuff you can do. What do you think are the most important skills in 2026 to learn to get a
[01:25:57] really good tech career that will be around in five years?
[01:26:14] Okay, look at that. What does the AI say? Great question for someone doing the beginner
[01:26:20] goose. Here's my honest say foundational never expires. Linux terminal fluency. It's almost
[01:26:27] like the AI knows me. And to be fair, in this context, it doesn't know me. This repo doesn't
[01:26:34] know of any idea that I am the one running it. It doesn't it doesn't know that. So get in version
[01:26:39] control, get a GitHub. That's what we've been doing. Linux internal fluency, getting a GitHub
[01:26:44] network basics, DNH, HTTP, TCP, and shell scripting. Guess what, guys, this is what I've been teaching
[01:26:50] in the boost since 2013. So these foundational things are still valuable. Tmux is one of the
[01:26:58] big ones we're going to use next year. Next week, high value in 2026, go or Python, both practical
[01:27:04] and employable. I would not have guessed that one. We're going to learn to code in go and Python.
[01:27:09] You know what's funny? It didn't say JavaScript. You know why? Because most JavaScript can be
[01:27:16] coded like by the AI instantly. Containers and Kubernetes. Yes, cloud fundamentals. AWS,
[01:27:23] Azure pick one. I don't think that's true. But that's fine. SQL and data literacy. Absolutely.
[01:27:28] Donate nor working effectively with AI tools, prompting agents code review, security basics,
[01:27:33] auth secrets, release privilege, reading and writing documentation clearly. Which is an
[01:27:40] obvious, uh, artifacts is beginner boost actually covers most of the foundation. Okay. Now I understand
[01:27:46] we already told Claude about the beginner boost. And now Claude knows what the beginner boost is
[01:27:51] about. So Claude is telling me, uh, what is in the beginner boost? So terminal Linux get,
[01:27:58] which is exactly the right starting point. Those skills underpin everything else and are
[01:28:02] was separate strong engineer. I couldn't have said it better. Uh, those, uh, and what separates
[01:28:10] strong engineer from people who only know one framework, uh, the five year safe bet, save system
[01:28:15] thinking plus terminal fluency plus one real language deeply beats knowing 10 tools shallowly.
[01:28:21] I don't fully agree with that. But anyway, um, what about JavaScript about web stuff?
[01:28:32] I don't know. I'm interested. Well, the skills are still very much alive. They'll escape HTML,
[01:28:37] CSS, or S worth learning one backend framework, SQL, because just heavy frontend frameworks like
[01:28:42] reg or useful then, but churn fast and AI is automating it. What did I say? What did I say?
[01:28:49] The jobs that are getting obliterated are the web jobs. How much of this pink album of priming
[01:28:54] since it mentioned Robert? I mean, I didn't yield. There's no way to know. There's no way to know.
[01:28:59] This is one way to ask. And then you can say, okay, pretend, pretend you didn't know I was doing
[01:29:08] the art of the X rob boost. Would, would you still answer the same way?
[01:29:23] Uh, honestly, pretty much yes. The advice is the same. Uh, I mentioned it because it was relevant
[01:29:28] context not to bother you. The terminal first fundamental first approach is genuinely what
[01:29:32] experienced engineers recommended 2026. It's not a unique or to be saying, it's just good advice.
[01:29:36] And what happens to teach? Well, all right, give me some other sources for your claim claims about
[01:29:46] this being good advice. Like, okay, give me your sources.
[01:29:55] If you know one language, you know the rest. Absolutely. That's why we're going to do it.
[01:30:00] Uh, give me some of those sources claims about this being good advice.
[01:30:04] Sources your mom's 10 medium articles. How is that better than what you would do?
[01:30:12] Most of the people that are doing the boost are like going by what's on fucking YouTube.
[01:30:17] So, yeah. Um, give me some other sources. Okay, web search. Uh, multiple independent sources
[01:30:36] back it up. CIO magazine skills for 2026 Linux cloud security and CS fundamentals.
[01:30:41] Tech gig. Goddamn. Look at how cool it says. I can't even pull the Python go cloud and strong
[01:30:46] fundamentals. Holy cow, nerd level tech. Uh, DevOps cloud and AI authoring triple 10 data
[01:30:54] structures algorithm system design. One, one thing to emphasize that I'd like to add AI literacy,
[01:31:00] not building AI, but knowing how to work with AI tools effectively. They're saying that not me.
[01:31:07] I'm an AI. But knowing how to work with it, tools effectively, that's increasingly expected for
[01:31:14] even junior engineers. Uh, right. My earlier advice holds up as well against all these. Okay,
[01:31:22] fine people who disagree. You can't, this is the best thing about AI is you can force AI to be
[01:31:31] critical of itself. So yeah. Searching work on training and tech career reviews.
[01:31:41] And it's got going to burn all my tokens, trying to find them because they're any.
[01:31:48] Uh, okay. Just learn frameworks.
[01:31:55] All right. Just learn to make skip fundamentals. Framework skates you hired faster. Many job postings
[01:32:00] like rectangle, that algorithms agree. Uh, AI tools handle a lot of the boilerplates,
[01:32:06] the deep fundamental matters less day by day. Also agree sources free code camp.
[01:32:16] Please stop advising people to learn frameworks blindly on free code camp.
[01:32:26] AI will replace coders. Why bother entry level grunt work is being displaced right now. The
[01:32:31] junior level market is genuinely harder. Some argue learning to code is like learning to drive
[01:32:35] a horse buggy in 1910. Um, Forbes will, AI replace upper engineers. Uh, my honest take,
[01:32:43] the AI replace quarters crowd has a real has a real point about junior rules specifically.
[01:32:48] That's the most disrupted tier right now, but the fundamental argument still holds for anyone
[01:32:52] wanting a five plus year career job, not just your first job.
[01:32:56] I mean, here's the thing. It's, it's no less or more biased than Google.
[01:33:03] This idea that the AI, at least you can challenge the AI and have it look up something else.
[01:33:09] You can't do that with Google. Google is going to give you what Google wants to give you,
[01:33:14] and you're going to take it because you don't have any choice about the algorithm at all.
[01:33:19] At least you have a choice now, somewhat. Maybe you have the illusion of choice.
[01:33:24] Being a junior was always hard. Um, so anyway, uh, what would you suggest?
[01:33:33] I learned first now that I have a GitHub, uh, notes repo cloned and know
[01:33:46] how to navigate the command line a little bit.
[01:33:55] This is, I'm just trying to model what you should be doing.
[01:34:00] Let's see, uh, get basics, the terminal more deeply, markdown.
[01:34:07] You're already using it for notes, learn the syntax. Okay. Uh, create a plan, uh,
[01:34:18] in, in a new document that I can follow and update as I go.
[01:34:33] Yeah. Yeah. I learned from past searches. Absolutely.
[01:34:43] So let's create a plan on MD or something. We'll look at this.
[01:34:49] Oh, do you want to make this? Okay. And you're right away.
[01:34:53] You're learning all about markdown. See us putting the little things in there.
[01:34:57] Beginner boost learning plan, a personal roadmap,
[01:34:58] follow along with already the experience. Check out the topics as you go.
[01:35:01] Stage one, terminal and gift foundations, navigate the file system.
[01:35:05] Uh, read and write files, catless, nano, VIM.
[01:35:10] Understand pipes and redirection. Get basic, status, add, commit, push.
[01:35:15] Uh, uh, understand what a commit actually is, uh,
[01:35:19] write notes and markdown and be them, like, get it.
[01:35:21] Stage two, shell scripting, variables, including conditions, loops, functions.
[01:35:27] Pick one, go or Python recommended for systems, Python, for systems.
[01:35:32] Uh, web and marketing, show HTTP works, code and DevOps.
[01:35:37] Um, uh, yes, will this get me a job?
[01:35:46] How can I focus on that?
[01:35:55] Yeah, let me, yeah.
[01:36:01] Yep. Um.
[01:36:06] Do, do, do, do.
[01:36:10] Let's see. It changed it. What did it change?
[01:36:15] Portfolio output, a project that deploys automatically on push.
[01:36:19] Interesting. Understand environment variables.
[01:36:23] This is basic. Portfolio output, a live deployed project with a URL you can share.
[01:36:27] Yeah. Portfolio output, a project that uses a real database.
[01:36:31] This is freaking cool. Um, yes. Yes. Let's do it. Make me a plan.
[01:36:43] Yeah. So add the job focus learning plan. Yes. Okay. Let's do that.
[01:36:51] I'm, I know it seems silly as on a beginner boost to sit here and use the AI the same way you
[01:36:58] would do without me, but I am trying to model how to manage your own learning with the help of an
[01:37:06] AI. You still have to step in and ask people in the industry, what do you think about this
[01:37:10] in this? But many times the AI is going to have more insight than the people that you're going to
[01:37:15] ask because they're not using AI. They're just going by based on what they know in the enterprise,
[01:37:19] which is valuable. So it's a single data point. And a lot of times AI is, is getting this information
[01:37:25] from multiple data points for better or worse. Sometimes mob mentality will make it answer wrongly,
[01:37:31] like stack exchange is famous for, but, but other times it's, you know, you're like,
[01:37:36] Oh, I didn't know about that. Right. And so it gives you, it's just another way to take in
[01:37:40] information. It's up to you to guide your own path and decide who and what you're going to trust.
[01:37:45] But this is one way to do it. You would be doing all this stuff the same way. You would just be
[01:37:50] doing it through Google and you would be trusting that search engine to give you the answers that
[01:37:54] you want and to put the articles in front of your face that are the ones that you want to see.
[01:37:59] And you're already putting your trust into some other tool. So this is just a more interactive
[01:38:04] way to do it. And I think it gives you much more control done. The key tip is from a generic plan.
[01:38:09] Every stage ends with something to show your employers. Okay. Great. Commit and push the plan.
[01:38:15] Okay. So open it for me. Go ahead and open it for me. Spinning tokens on. I'm too lazy to click on
[01:38:22] things. It's going to, it's going to use the wrong open actually. I need, I need to have it used to
[01:38:33] have been open. Yep. I need to escape. Use user been open for all opens because I have, I have an
[01:38:45] open that does something different. It's broken right now. All right.
[01:38:55] Yeah. Yeah. Now I want to open it. Yeah. All right. Here we go.
[01:39:01] Wait, what? Here it is. Job Focus Learning Plan. Stage one. Navigate. Look at what you can do.
[01:39:08] You can click on these and make, check them off when they're done. I understand pipes in the
[01:39:11] redirection, uh, portfolio output, Python ago, stage three database, is just math doing token
[01:39:19] prediction, not threat. Yep. That's not an all-knowing machine. Yes. The web,
[01:39:25] why most sufferers been connected, uh, token and DevOps, basics, know how to deploy separate
[01:39:30] juniors who get, get hired from those who don't, knows how to deploy, separates juniors from those
[01:39:38] who don't. Pick one, Docker provider provides something and get up action. Absolutely.
[01:39:44] I mean, if you did nothing but this stuff in this plan, you would, you would be a big candidate
[01:39:47] for an entry level job if they're still going to be an entry level job. Get a, right, a strong
[01:39:52] get a bio and your best repos, build a simple portfolio site, practice, explain your projects
[01:39:57] out loud to three technical mock interviews, the code easy, system design basics. I wouldn't
[01:40:03] easily code at all. That, that's a predictive thing. Contribute to a one open source project,
[01:40:08] give you docs. So, you know, this is the kind of thing that you would print out a plan and you
[01:40:13] have no idea whether it's a good plan or not. And then you find me or another mentor or something
[01:40:18] and say, what do you think of this plan? I was like, well, it's kind of weird that they would put
[01:40:21] lead code in here because that doesn't have anything to do with the other stuff. So, you see me,
[01:40:26] you need somebody to help you sanity check the AI and you probably want to get another person
[01:40:32] in industry to help you with that a little bit. Someone who's not anti-i though and because if
[01:40:37] they're anti-i, they're like, oh my God, that's such bullshit. Why are you doing that? You don't
[01:40:40] want that kind of person in your life at all. You don't. You want someone who's accepted the
[01:40:45] reality and has moved on and is willing to help you. They can have opinions about it and say,
[01:40:49] look, I don't like that it did this and this and this, but you're right. We just have to accept it.
[01:40:54] So, anyway, this is going to be the end of my beginner boost for today.
[01:41:00] So, the only thing that you really should have taken away from this is that the reality is
[01:41:07] that junior jobs are going away. And I'm not the only one saying it. There was just multiple sources
[01:41:11] cited that you can go read about that. They're not dead yet. So, you do have a chance perhaps in
[01:41:18] this year and next to get some of those entry level jobs and get going. And what are the
[01:41:23] core employable skills to earn? You read it, but I'm going to say it again. Learn how to interact
[01:41:28] with an AI safely. And I'm not just talking about chat GPT, although that's very wonderful.
[01:41:33] I'm talking about using an agentic AI that can actually write and commit code for you
[01:41:39] and create issues and all that stuff. You need to have that skill. Every single tech job is going
[01:41:46] to require that skill if they don't already for all their new hires. So, make sure you have that
[01:41:53] skill and that is what we did today. The rest of this is about knowledge management using AI.
[01:41:59] And I gave you an interaction about how to do knowledge management using an AI. But something
[01:42:04] that's really neat that I didn't really get a chance to get into is how you can actually share
[01:42:10] your knowledge with others. So, for example, one of the things I want you to be able to do
[01:42:16] with this is this. I want you to say, can you add the beginner boost, the RWX-ROM
[01:42:28] boost repo here, somehow, so that I can ask questions of you to you about it.
[01:42:45] This is where things get really next level. You can integrate other knowledge bases and other
[01:42:52] people's notes from this boost into your own knowledge base so that your AI can query all of
[01:43:00] them at once. This is the dream of the knowledge exchange grid, which I once started. And I'm
[01:43:09] already starting to use this in my notes. In fact, I created in mine, I created a thing that went
[01:43:14] through the GitHub archive and found anybody who's got a notes repo and evaluated them. And then I
[01:43:19] follow them and then they get added into mine so that when my AI does a query, it doesn't just
[01:43:25] query my knowledge base. It queries the knowledge base of the people I trust enough to follow.
[01:43:30] And yes, that's an echo chamber, but it's an echo chamber of my own creation. It's not an echo
[01:43:35] chamber created for me by Google. So, get some module, two good points, links into your repo,
[01:43:44] boost up holder, stays in sync. I can read all the files directly best for a reference. Just ask
[01:43:48] me, I can access artifacts boost on GitHub directly via my tools. Any time without needing to clone
[01:43:53] anything, no extra setup. Honestly, option two is simple, you don't need to manage the sub module.
[01:43:58] That's fine. So, what does RBX raw say about Tmux? It's very weird. Yeah.
[01:44:12] So, I don't think anybody's going to be okay with any of this without thinking it's weird. It's just
[01:44:18] is, it's fundamentally challenging what it means swimming around in your own concepts.
[01:44:26] That's, but that's not, no, when you use this Edelkast and you're going to look,
[01:44:30] hey, what's that, your black book of common commands? Like, what are my favorite commands
[01:44:34] that you that you want to keep? I don't, I don't use a knowledge base as much as I used to because
[01:44:39] I can just go to the AI, but I do like it because sometimes I want to say, well, what was that one
[01:44:45] way that I did it that one time that I captured in my notes or whatever? And then you can go look
[01:44:51] at it that way. Let's see. It's mandatory command. Here's what Rodid boost says about Tmux. It's
[01:44:57] a mandatory command listed in mandatory commands alongside BIM, Git Bash, SSH. You can, this is
[01:45:02] crazy. This is crazy in your own room set. So yeah, he considers it essential to learn he uses it
[01:45:10] heavily, his Tmux file, his Tmux account. She went into my Tmux account file. It shows a very
[01:45:16] customized set of prefix. This is insane. prefix change for control B like a screen, VIM,
[01:45:23] Scout, Cree, keyboard. I just can't even deal with how exhaustive and accurate this summary is of my Tmux.
[01:45:32] For splitting into the status bar to save all the prefers minimal look, custom streaming layout.
[01:45:37] I mean, bottom line, Arby's clearly expects you to learn Tmux. It's in his mandatory list and he uses
[01:45:42] daily for everything, including live streaming. It pairs with his VIM first terminal native workflow.
[01:45:49] I can't even deal. I can't even deal with how amazing that is. That just completely, I asked
[01:46:00] a very generic question. So what does Rob say about Tmux? And it nailed it. And I am Rob. And
[01:46:07] I'm telling you, it nailed it. It looked at my existence and looked at my Git repose and it totally
[01:46:14] nailed it. What's that? I just for fun. It's just narcissistic. What do you think about Bonzai
[01:46:24] in the age of AI? This is just me. This is very narcissistic. I made Bonzai. So referring to
[01:46:37] Art of X's Bonzai project, which is a go-framer for building command line tools. So it goes and
[01:46:43] downloads the whole repo. The philosophy is solid, composable, single binary. Bottom line,
[01:46:51] Bonzai is worth understanding. After you know, go well, it teaches good CLI design patterns. But
[01:46:54] as a beginner, I focus on playing OS X. In fact, absolutely agree. Learn the language before the
[01:46:59] framework is still a great example, but you can build once you go. What I'm trying to say is I
[01:47:04] completely trust the Claude Opus 4.6 model on co-pilot to be my surrogate mentor while I'm not
[01:47:12] there. Well, I'm not there for you. And I hope that I have demonstrated this to you over in the
[01:47:18] course of this boost. If I haven't done anything else today, I want you to realize how much work
[01:47:24] it's going to take for you to become a technologist, a platform engineer who's making good money and
[01:47:28] can survive in the tech industry. And number two, that you obtain the beginning of the best,
[01:47:36] most powerful tool that you can use to teach yourself those things as fast as possible, as fast as
[01:47:43] human with way, way faster than going through 40 hours of videos with me and way, way faster than
[01:47:50] going to a four year degree and coming out with $200,000 of debt. AI specifically co-pilot with
[01:47:58] Claude Son at 4.6 is your single best ally to getting a tech job. If you still want one, make sure
[01:48:06] you do it. Go have fun. I'm looking forward to talking to you next week.
