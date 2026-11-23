# 🚀 Tech Career Beginner Boost 2026 - Day 7

Day 7 of the Beginner Boost answers chat questions about AI-assisted development, then demonstrates using GitHub Copilot with free models to create issues, generate a learning plan for remote tech careers, and learn Git concepts. Rob also covers choosing a harness, speaking prompts aloud, Copilot billing, and saving notes and plans in GitHub rather than chat sessions.

Want a high-paying, location-independent tech career? Day 7 of the Beginner Boost shows concrete steps and tools to get there. Watch to learn:
- Why the Agentic AI Foundation (AAIF) matters: Linux Foundation stewardship, open standards for agentic systems, and how conference presence (AGNTCon, MCPCon) signals modern dev/ops readiness.
- Voice-first coding: add Superwhisper for live transcription to speed up agentic sessions and pair-program by voice.
- Copilot clarity: which models avoid premium billing and how to minimize costs when using Copilot CLI.
- Real, practical skills: concise Git basics, safe branching, commits, and CI pipeline sanity (pipefail, shebangs, POSIX portability).
- Actionable next steps: links to docs, a beginner learning plan (issue #83), and small projects you can build and share for recruiters.

Repo & resources: https://github.com/rwxrob/boost
Issue / learning plan: https://github.com/rwxrob/boost/issues/83

Chapters:
0:00 Welcome and Day 7 Intro
3:09 Responding to AI Skeptics and Critics
9:03 Why Beginners Still Need This
15:00 Learning Agentic Tools and Setup
21:05 Clarifying GitHub Copilot Billing
24:01 Creating a GitHub Issue for a Plan
30:02 Thinking, Speaking, and Voice Input
33:04 Choosing AI Models and Assigning Copilot
39:03 Sharing Notes and Dotfiles Plans
45:05 Remote Tech Career Research Results
52:05 Companies for Distributed Work
1:00:01 Writing Plans with the Harness
1:03:01 Wrapping the Plan Exercise
1:09:01 Learning Git with Free Models
1:15:04 Git Branches, Commits, and Repos
1:21:02 Saving Notes and Committing Changes
1:27:02 POSIX and Agentic Engineer Terms
1:30:05 Committing the Daily Summary
1:33:02 Agent Instructions Misbehaving
1:36:02 Opening Issues and Pull Requests
1:42:02 Reviewing the Generated Document
1:45:00 Adding Labels and Searching the Repo
1:51:00 Why to Get Good with GitHub

`#beginnerboost #github #githubcopilot #agenticai #git #techcareer #linux #remotework #aitools #digitalnomad #aaif #superwhisper #copilot #ci #voicecoding`

## Category

Education

## Transcription

[00:00:00] uh welcome to the beginner boost looks like we're day seven of the boost i haven't been
[00:00:07] counting i've just been going along as we go and there's been a lot of exciting things happen this
[00:00:12] week and i wanted to start with answering the questions from people in the chat we have
[00:00:16] uh on the order of 63 65 people today who are here and i just want everybody to know for the next
[00:00:22] 90 minutes i'm sorry i got a late start i'm a half an hour late i mean at least i'm here
[00:00:27] two weeks ago i wasn't able to be because of birthdays and stuff and i've been uh working on
[00:00:32] projects all morning long and talking about all of this and particularly with regard to AI and
[00:00:37] its impact on everything including how i annunciate in fact this is something really crazy that i've
[00:00:44] noticed uh about uh the use of AI on my personal habits and how my brain works so we have this
[00:00:51] really great question from Lal Chibi which i am not able to pin just yet but it's like do you think
[00:00:59] vibe coding attributes your brain and those of you that watching the beginner boost know that the
[00:01:05] last two beginner boost sessions were focused on using AI to help you do everything so let me
[00:01:13] directly address this i personally think AI changes and improves your brain in substantial
[00:01:23] ways i think that that the heresy i mean you know the hysteria that's the word i'm looking for
[00:01:33] the hysteria out there regarding AI's impact on our brains is largely misplaced it's the same
[00:01:41] hysteria that has existed before the creation of any technology throughout human history
[00:01:45] particularly when it comes to revolutions in communication um why do i think that it does not
[00:01:54] answer for your brain i think it doesn't answer for your brain because what it does is it causes
[00:01:59] your brain to do the things that are more valuable it increases creativity it promotes uh organizational
[00:02:08] thinking it it it focuses on the best possible language that you use in communication in fact i
[00:02:17] would go so far as to say and you could call me an AI bro all you want but based on my objective
[00:02:23] evidence using AI very extensively for the last two weeks that AI is fundamentally going to be
[00:02:29] better for humanity provided we can figure out a way to power it without killing all of us
[00:02:37] or having it kill us right i mean it's going to tremendously change humanity but when it comes to
[00:02:44] the actual individual impact on each person who's using AI my personal belief is it's going to make
[00:02:51] you a better human being i really honestly believe that and you know anybody who heard me talk about
[00:02:58] AI last year you know it i strong opinions weakly held i have had to true i've been forced to change
[00:03:09] my opinion on this based on my personal uh completely miraculous use of AI to develop things
[00:03:19] that would have taken me at least a year and i i wish i had the time to show you what i'm talking
[00:03:27] about i you just have a little piece of it here i'm just going to give you a little view
[00:03:30] but like here's here's here's just the settings page of this application this does a dynamic
[00:03:35] plane spotting within an one nautical mile it automatically adds all these summations of things
[00:03:40] it's got a full blown uh clips modifier over here i can click on clip so that i can modify all my
[00:03:45] twitch clips and go in and make comments on each i can get points to the people who took a clip
[00:03:50] and maintain an individual creds and reputation score for each viewer which can be viewed in the
[00:03:55] statistics at the top of the chat as organized here i can look at every single viewer who's here i
[00:03:59] can see who's alive i can monitor them while they're alive hi high potential i keep picking on you
[00:04:04] and i can see them all i can see everybody who's ever been here i can see the ones that are banned
[00:04:09] i can see all the statistics that are live i can see my jeep my bit my bit rate from my OBS from my
[00:04:14] moblin that's that's being broadcast when i have moblin active i can see how many total bits have
[00:04:19] been used i can actively change my category based on a regular expression or an AI summation of
[00:04:24] what category or tags might be best for my particular topic i can speak my topics into my phone while
[00:04:29] i'm on my bike so i don't crash and i can change the topics live while i'm going about doing it
[00:04:33] i can see every single event that's ever happened i can mute i can show clips i can go to the bathroom
[00:04:38] i can put i can put a uh an overlay on the screen so that i can see and i can change the rate to see
[00:04:44] how fast it goes and i can see what's actually there so i can verify that i'm not going to go
[00:04:48] p at the in the potty on stream i can turn tts s on i can shout out anybody who's in this stream
[00:04:55] and by by sending shout out commands i could be notified when ads are going to come up i could go
[00:05:00] on and on i can see my ir to rt rl location on a map that gives my gps location which is all tracked
[00:05:06] locally with my gps i can put my power numbers i can put my speed i can put my altitude all on the
[00:05:10] screen through an oBS overlay and update the title at the top and eventually pin things i can
[00:05:15] manage all of my to-dos that are over here every single to-do that is synchronized with my to-dos
[00:05:21] on github i can actually fire off github co-pilot to to work on my to-dos that i speak into my phone
[00:05:26] while i'm drinking my copy in the morning which i did all morning this day and have it generate
[00:05:30] the entire pr and pull it down on my computer and test it out to see if it works
[00:05:38] i am hoping that you get the point okay the point is i built all of that in less than a week
[00:05:48] two weeks two weeks of like five to six hours a day and it cost me about two hundred and fifty
[00:05:53] dollars in request tokens because i'm bad at ai if you're good with ai and you have multiple
[00:06:03] ages running at the same time you could you could develop even anything more i immediately had to
[00:06:07] make this particular project private because it's so freaking good that not selling it would be
[00:06:13] stupid in one prompt when one prompt in 15 minutes i added a sponsorship activity checker that logs
[00:06:19] in when the application starts up checks to see if you're a ten dollar sponsor and otherwise won't
[00:06:24] even show you the help that was one prompt took ten minutes to implement an entire thing
[00:06:30] it gives me all it summarizes all the dependencies i have and wrote my dependency
[00:06:34] page for me it actually automatically sets versions this isn't about me bragging about my app
[00:06:39] this is about me giving you objective evidence to tell you that if you don't learn ai as a developer
[00:06:46] or as anybody who uses a knowledge where i've been i start every single boost this way because
[00:06:52] i can't overstate this this is probably one of the biggest communications revolutions in history
[00:06:57] don't miss it okay so that's why i feel this way is it attributes my brain did any of that
[00:07:05] look like it attributes my brain back stop calling it vibe coding please stop calling it vibe coding
[00:07:12] okay it is not vibe coding it's called agentic engineering and it's the new normal in fact
[00:07:18] something i want to recommend to everybody before we get going any further on this
[00:07:21] is that you go to the bigger boost and you read the page about agentic the agentic engineering
[00:07:27] a society and i strongly suggest that anybody who wants to get into tech
[00:07:34] consider membership because this is going to be the place where you will find jobs the fastest
[00:07:42] i had somebody else this week come to me and tell me about their failed job interview
[00:07:48] because they were asked a bunch of questions about how they use ai and they said well i used
[00:07:52] chat gpt and this and that for a few things and they failed the interview because they were looking
[00:07:56] for people who were using it more as a visceral ambient part of their existence which is what
[00:08:03] every single job interviewer who has a clue is asking for today and when you ask me why are you
[00:08:10] freaking out about ai so much on the beginner boost it's because of that if you go to a tech
[00:08:16] interview two day and you have no ai experience they will send you out the door within the first
[00:08:22] 60 seconds so that's why okay i did the after feeling your brain no is typing after it is not
[00:08:32] typing at your frame my brain no are my typing skills getting bad yes they are so i will be the
[00:08:38] first to admit i spent the entire week this week the last two week by the way that thing i just
[00:08:42] showed you i didn't cut i didn't write a single line of code in any of it and you know what i'm
[00:08:48] proud of that i'm proud of that because it's safe it's implemented well i've gone through and read
[00:08:53] the code base absolutely what i would have written absolutely i mean it uses variable names maybe
[00:08:58] not the way i want to it does it implements things as a private scope that i might have made in public
[00:09:03] scope and has minor differences in my style which by the way i would actually change i could change
[00:09:08] it in my style if i wanted to i don't need to when are we going to get on with the actual
[00:09:12] beginner boost okay well let's do that now but i really have to address that question at the
[00:09:16] beginning of every beginner boost because every time somebody comes across one of these videos
[00:09:20] they're gonna be like oh hey age of a vibe coding bro what's up okay boomer
[00:09:31] one last story i was watching another streamer this week who had just completed a rush project
[00:09:40] that they had hacked out on their on their neo-vim as fast as they could and i just burst into laughter
[00:09:48] the person is a wonderful human being it's not it's nothing to do with the person i was just like
[00:09:55] it was like watching somebody use a selector on typewriter to me i i could not believe
[00:10:02] how wasteful and inefficient and everything about what they were doing i was like one of these days
[00:10:09] one of these days we're going to look at these other people and the way that they're doing software
[00:10:13] development and operations deployment even over you know hardware as a service coming and we're
[00:10:18] going to look back at it and we're going to be like oh that's like the atnt switchboard going
[00:10:22] like this writing developing solution software today is more about talking to your computer all
[00:10:30] day and hitting the the mic button and if you're not doing that if if you think that like typing
[00:10:37] really efficiently and quickly in neo-vim in rust by the way codex is falling on its face because
[00:10:43] they redeploy the whole thing in rust so add that to the list of destroy your enterprise with rust
[00:10:50] add it to the list of complaints against rust rust is a horrible AI language it's absolutely
[00:10:54] horrible because it's it's contextually it costs you more tokens it's harder to understand for the
[00:10:59] reader and for the AI don't do it just don't do rust unless you have a really really really solid
[00:11:04] niche use for rust don't do it use go and python instead go and python or the languages of the AI
[00:11:09] environment of the AI world uh there a couple of those languages too obviously depending on what
[00:11:14] you're doing but yeah that's what i'm going to say i'm not even going to talk about any of the
[00:11:18] languages besides those two languages from now on in fact i don't even read bash that much anymore i
[00:11:22] don't write bash read and write bash anymore no need there's really something i can't my beloved bash
[00:11:27] is no longer necessary in fact i ported my my that thing i just showed you i ported it from bash
[00:11:34] which by the way it was really amazing it had all this is is like co-prock and everything
[00:11:39] i ported all of that to go and like one command learning the language learning how to read a language
[00:11:46] go and python and preferably it's the most important thing because the code is going to write it's
[00:11:52] going to write all the language for you and yeah do you have to go in there and edit a couple lines
[00:11:57] yeah you can but you can also do that more efficiently from the free tool from the free
[00:12:01] api model why would you write any code when you can have the thing fix the code and lint it for you
[00:12:06] automatically i i don't even use vs code to do those you know you know that you know when you
[00:12:13] like use vs code and you type it and it like i'll show you what you should do next
[00:12:17] okay boomer that use of use of vs code with auto prompting like that is tantamount to using
[00:12:24] a fax machine you know it lasted for maybe a year and then it was replaced by email
[00:12:32] and everybody used email after that it's the same thing this whole idea of like
[00:12:36] using any sort of typing into co-pilot like to generate code that you're kind of reviewing
[00:12:42] along as you go as opposed to just holding the whisper key down and talking to your editor
[00:12:49] and to your framework and telling it what code to write and how to adapt that code while it's
[00:12:53] showing you the diff every time that's the way you should be doing this you shouldn't be typing
[00:12:59] code in ever ever and and i'm going to get totally roasted for saying that and i don't care
[00:13:06] because the people who are listening to me are going to dominate and they're going to be the
[00:13:10] ones with jobs later and i've been saying that for three weeks i don't care i'm going to keep
[00:13:13] saying it uh i and i have been you know wrong very few times on this let's see how many people we
[00:13:20] can scare away so how do you get started okay let's review where we left up on the beginner boost
[00:13:27] um as we go forward so uh last time we updated the documentation and we added the importance
[00:13:33] to the agentic ai foundation uh please go read that actually that's what i was trying to show you
[00:13:38] if you go to the boost here uh if you go to the docs and you just go down there's a bunch of
[00:13:43] documents here you can just click here so this is a document we made last week we're going to open
[00:13:48] this later today and we're going to review this document once again as the guide for what we're
[00:13:53] still going to learn in the beginner boost what is still relevant even in 2026 and what things
[00:13:59] have become even more relevant than they were before so we've already created that we went through
[00:14:02] that last week and that's going to guide our specific things that we learned today i am going
[00:14:07] to use ai to create the lesson plans for each of these things as we go on purpose because i want
[00:14:16] to model the behavior that i want you to do and get into habit of doing this is exactly what i would
[00:14:22] have done if i was doing a private mentoring session with you we would have done those things
[00:14:26] together we would have learned them we would have done them tutor together we would have done team
[00:14:30] looks together because i don't want to just tell you what to do i want to model what you should be
[00:14:35] doing so that you don't need me or anybody and you can start doing it on your own so please don't
[00:14:41] misunderstand when i'm asking my i what should we learn now that's because i'm trying to model what
[00:14:45] i want you to do that's not because i don't know what comes next i kind of know what comes next
[00:14:52] but i got to tell you right now one of the this is the most tentative boost i've ever done because
[00:15:00] i am brand new to this agentics stuff and as much as i am pro agentics stuff i am learning just as
[00:15:05] much as everybody and the the disruptive nature of this to my own assumptions about what skills are
[00:15:12] necessary has been overwhelming over the last two weeks okay let's keep going so i took this medicine
[00:15:19] what i was going to show you there's actually another doc here agentic template is the new normal
[00:15:25] AI mistakes this is all summarized in the read me if we click the read me which we were just on
[00:15:31] we can go down here what to do this gives you the whole thing optional is getting into tech to
[00:15:36] worth it follow up but the updates this entire outline probably needs to be updated follow agreements
[00:15:42] this is being nice to each other contribute if you like see something nice start managing your
[00:15:46] knowledge we cover all those things start not taking notes with obsidian the truth is you don't even
[00:15:50] need to take notes of the city and you can use your ai to take notes or you can use whisper plus
[00:15:56] obsidian then take notes in obsidian and have them all be in a get a repo which which you should
[00:16:00] this stuff all still holds have a get a repo start taking notes in the repo start and then
[00:16:04] point your ai at your notes and then add your other friends notes to your repo and then your ai
[00:16:10] knows about their notes and your notes good way to do it connect to practice working with others
[00:16:15] managing your own fear of people blah blah learn how to learn right in a journal every day i don't
[00:16:19] do this anymore i need to remove all this i i do i i do a video blog now every day and i suggest
[00:16:28] people probably do that instead because you don't have to make it public you can make it private but
[00:16:33] it's much more easy to digest and you can have ai look at the youtube stuff you can't do that when
[00:16:37] you do a written journal anymore i don't like that i don't like saying that but actually a voice a
[00:16:42] voice a talk talking out you know the things you would put in your journal the act of writing in a
[00:16:47] journal the dopamine you know they get from from doing it is really nice and all but it doesn't it's
[00:16:51] not nearly as efficient as being able to just do a video blog where you are and basically rubber
[00:16:56] duck your life and where you where you are to yourself and then have that allowed allow that to be
[00:17:01] processed by your ai and summarize things about your entire life or tendencies or or trends or
[00:17:08] anything because all of that can be tracked just by looking at transactions in your different
[00:17:12] individual private video logs which yes are owned by youtube but you could still have that available
[00:17:17] for reference my i'm telling you ai has fundamentally changed how i look at everything regarding
[00:17:27] communications in the entire world and it's very exhausting let's just take a break i have to take
[00:17:35] a break it's exhausting how it's impacted everything in my life including my daily journal writing
[00:17:41] you know i was getting ready to become a digital nomad in downsize and like what do i do with like
[00:17:44] this this whole entire storage bin of journals that i've handwritten that i love that are beautiful
[00:17:49] well i take pictures of the whole thing have it scan my cursive writing perfectly by the way
[00:17:54] and have it put all of that into text that can be searched and keep the images around just for
[00:17:58] nostalgic sake that's the world we live in friends all right so so know thyself what specific activities
[00:18:07] fill you with your a blah blah blah this stuff still have to do all that let's get to the ai part
[00:18:11] set up your technical and i got solid free version of yes code i don't even think you need that
[00:18:15] anymore in fact i don't even think you need an editor period you need to at least pick an editor
[00:18:21] but your editor for a lot of that for a lot of this your editor is going to be your harness
[00:18:25] your harness is this thing i'm using to interact with the ai i mean you're still going to need to
[00:18:31] edit files so but the need to edit files is much different we already i'm just reviewing uh the
[00:18:36] other document for saying so uh and if you're if you're if you're complaining to yourself right now
[00:18:43] about me not being organized this is the time for you to go organize your own learning and use your
[00:18:47] ai to do that you don't have to depend on me to organize your learning uh i'm trying to get to
[00:18:52] the part about the agentic um here we go harness the power of ai this should be way way way higher
[00:18:58] uh go to the conferences agent con mcpcon uh build mcp servers uh and optionally add live input
[00:19:05] github co-pilot super whisperer uh for writing um i don't see the i don't see the ai a agentic
[00:19:12] foundation in there it must not have linked it i'll have to go at it so um this is just having
[00:19:18] new topics keeper was small yeah this basically i've been just been updating the boosting with all
[00:19:23] my new notes some of them should be notes that are not boost related so i'll go in there and clean
[00:19:27] that up later uh the boost has never been a clean endeavor it's never been super edited it's always
[00:19:33] been very dynamic um so let's actually go look it up let's go look at the ai ai app uh the agentic
[00:19:40] ai foundation um so this is part of the linux foundation if you don't know what linux is linux
[00:19:48] is an operating system that the world runs on pretty much every server you don't see a lot of it you
[00:19:53] think windows and mac when you think about computers but linux of course is running everything behind
[00:19:58] the scenes that that serves up the web pages that you see ai and all the rest so linux foundation
[00:20:04] is a very reputable place to go and there are a bunch of conferences and associations that you
[00:20:09] should probably associate with immediately um and and i plan to do the same so as a beginner
[00:20:16] in technology uh you need to you need to sign up for this stuff like right away and and you're
[00:20:23] gonna hear boomers tell you that this is a waste of time and blah blah blah they're not going to
[00:20:28] be the ones hiring you they're the ones about to retire most of them and if they're not they're
[00:20:32] gonna get fired mark my words future of the terminals you were just posted the ai real-time news to
[00:20:41] build a genic ai driven experiences you need the terminal so really there's a lot of really great
[00:20:46] information coming out of the agentic ai forums over here and not all of it everything i've read
[00:20:51] over here is more on the reasonable side and less on the tech bro side um anybody who's been watching
[00:20:58] me for the last six seven ten years knows that i am not one to fall in love with technology for
[00:21:05] technology's sake i only do it when it's proven its value and and it's just produced actual value
[00:21:11] for me all right so we covered that clarified github co-pilot billing uh i mean a lot of videos
[00:21:18] about github co-pilot billing uh in my initial recommendation i said that you should go ahead and
[00:21:23] play for pro uh you can't even get it right now and if you want to get into the drama of why that
[00:21:28] is you're gonna have to go watch the videos about that i'm not going to talk about it right now
[00:21:32] other than to say that github and everybody does not have the money to pay for the costs
[00:21:40] they're occurring and so there's a very tiny window in which you can learn about agentic ai
[00:21:46] ad github or anywhere before they jack the prices up because they got to pay for that somehow and
[00:21:52] everybody's discovering it all at the same time sooner you discover it the better the point is
[00:21:57] you can't even get a github co-pilot pro subscription today it's been blocked because of this exceptionally
[00:22:03] high usage if you happen to be one of the ones who made it in then you can actually control your
[00:22:09] costs and not and just use the free account for now to use gpt 401 and mini and gpt 5.5 mini
[00:22:16] these models uh when you use them whether you use them through vscode or you use them through
[00:22:21] github co-pilot extension are easily um they don't cost you any money and they are good enough
[00:22:29] to give you the outline for your educational plan that you want if you want to you could use
[00:22:35] chat gpt to do the same thing the difference is that chat gpt is not agentic and i i've heard
[00:22:43] that chat gpt does have an agentic option it can't be anywhere near github co-pilot's agent uh or
[00:22:50] cloud codes agent and my suggestion is or any of the other harnesses my suggestion is to figure out
[00:22:58] how you want to run your ai um you could even do chat gpt through vscode if you wanted to and
[00:23:05] you can consider all of those things and pick one that works best for you so that you can start
[00:23:10] generating these these ideas um if you really want to you can just use github itself and go to your
[00:23:17] repo and have a sign and issue to co-pilot and co-pilot will go do the thing for you in fact um let's
[00:23:24] do that right now so uh this is something that is a hundred percent graphical so let's do that let's
[00:23:31] go to github.com slash our victrom slash notes and we'll go to notes dash uh well i have
[00:23:41] boost stuff already okay but i'm going to do sort of the same thing as you okay so you come to your
[00:23:46] repo for you it probably notes repo we already created the notes repo okay so again what are we
[00:23:52] doing the the goal here is for us to use ai to help us generate educational content for ourselves
[00:24:01] help us generate educational plans for ourselves so the way we're going to do that we're going to
[00:24:06] go in here the boost and we're going to create a new issue this is stuff i normally wouldn't teach
[00:24:11] beginners at the beginning but i think it's super valuable for a beginner so the first thing we're
[00:24:16] going to do is we're going to add a new issue so an issue is a way to define a problem or a new
[00:24:24] feature that is wanted and then have that issue uh be something that you can work on you can check it
[00:24:31] out and work on it on the command line if you're in the old school way or you can have co-pilot
[00:24:35] work on the issue in the background for you and then give you the result so i'm not sure how much
[00:24:43] of this is going to be doable without you know paying so we're going to actually but i want to
[00:24:48] go through the process um again if you have chat gpt you can have chat gpt just cut and paste from
[00:24:54] chat gpt and do the same steps that i'm doing um my recommendation however is to get used to doing
[00:25:01] this through git and github because git and github are the two primary technologies to learn when
[00:25:09] working with agentic ai there's no question in my mind that even more important than learning the
[00:25:16] terminal you must learn how to learn how to use github and how to use uh get specifically and
[00:25:23] understand the commands that are related you don't need to reproduce the commands you just need
[00:25:27] to be able to read them and understand what's happening and you'll be able to watch github
[00:25:32] use git to teach you git while it's creating content that is also teaching you git
[00:25:40] hear me out so let's do this and and but i actually want to reference this really quickly so if i
[00:25:47] go to the boost um where's my boost thing all right so if i if i go to the boost
[00:25:55] it goes it goes to the things that are still relevant the number one thing that's relevant
[00:25:59] boost then and now the number one thing that's relevant tech is like medicine practically most
[00:26:03] important skill is to learn ai uh more important than ever git and github so that's what i that's
[00:26:09] what we're talking about right now so we're on github we're on an issue and we're going there's
[00:26:15] lots of issues i've had here that didn't help me develop different things they're really well
[00:26:19] worded and everything because i use ai to generate the issue yeah and i will show you how to do that
[00:26:27] later but i also want to show you how to do this just using your phone or using the web interface
[00:26:33] so we go here and we say i want a new issue i'm gonna say uh write an article
[00:26:40] uh see create create article that well actually i'm going to use super whisper okay i have super
[00:26:50] whisper so i'm going to push my button i have super whisper which i can just i you can be 200
[00:26:56] bucks for a lifetime otherwise you can just use it or you can use any other any other voice
[00:27:00] activated input say um at a title let's say what do we want to think about so again we're
[00:27:06] gonna spend time thinking and not writing um let's see beginner boost create any issue i say um
[00:27:21] summarize a plan for a beginner that they could accomplish within the first year
[00:27:31] well no this is this is we'll put that in the description sorry oh by the way control you control
[00:27:36] you to lease the whole line it doesn't it doesn't over here anymore oh no it's not doing it anyway
[00:27:41] how do how do you delete a whole line in the interface i don't know anyway let's write it
[00:27:48] create a learning plan
[00:27:52] for a beginner trying to get into tech all right now let's do this let's give let's give let's give
[00:28:00] let's give the summation based on on everything that we talked about in the first few sessions
[00:28:06] of the beginner boost you already kind of know who you are you know what you want to do you know
[00:28:10] anything like that i'm going to do it for me okay so let's make a description i'm going to use whisper
[00:28:15] for this holding down the command key um
[00:28:23] create a learning plan for somebody who wants to become a technologist making gobs of money
[00:28:29] but who can work reliably and safely from anywhere in the world as a digital nomad with only their
[00:28:35] laptop and a lab that they can run from the cloud include the option to take one or two weeks off
[00:28:44] whenever they want and summarize the available jobs of that type that exists the companies that
[00:28:51] offer those jobs and what to prepare for for an interview for those jobs and this which requires
[00:28:57] skills in technology also include a sample list of all the skills that must be learned in order
[00:29:08] progressively such that each skill builds on the other allowing the person learning to
[00:29:18] assess themselves as they are doing the learning with actual projects which can incrementally be
[00:29:24] reviewed and by other mentors in the industry and seen by potential clients and bots that climb
[00:29:33] through crawl through github in order to identify potential candidates create a summary of interview
[00:29:40] and the potential interview questions that would be asked for such a job and store all of that in
[00:29:46] an article so they can be revised uh by me at any time all right enter all right so we're going
[00:29:56] to put all of that in there so what is the skill we just did i want to i just want to say this
[00:30:02] there's a couple skills that you have to learn here that are not normally listed as tech skills
[00:30:06] one is you need to be able to think number two you need to be able to know what the hell you want
[00:30:14] which means you need to know who you are and everything number three you need to be able to
[00:30:19] speak into your computer clearly and have an application that will listen to you
[00:30:28] you can laugh all you want i don't care you can laugh i can see myself laughing at me right now
[00:30:35] are you telling me that the future of software development and technology and education is the
[00:30:39] same as battle star galactica when captain adama sat there and talked into his microphone and the
[00:30:44] words appeared on the green screen that's exactly what i'm saying it's here people the future is now
[00:30:54] okay let's see what happens
[00:30:58] um create
[00:31:03] all right so it created this issue for me and you know it's all well and good create a sub issue
[00:31:10] i could do that if i wanted to or now where is it we're looking for a sign
[00:31:16] we're not going to close the issue okay assign to yourself or assign to an agent
[00:31:24] let's assign it to an agent okay let's see the agent will use the issue description comments
[00:31:29] and any additional prompt you provided to get started select a custom agent for specialized tasks
[00:31:36] um please read agents.md for my markdown and other uh style why am i writing this i should
[00:31:48] be saying it please use my agent.md file so that you can write the article in the same style as me
[00:31:56] and potentially get a sample from the agents.md so you so the markdown is something i'm used to
[00:32:09] all right so
[00:32:16] let's actually add some more to this in addition to the description title and comments please
[00:32:26] all right there we go now we're going to click on assign agent copilot okay
[00:32:33] and we're going to assign this to assign agent to issue
[00:32:38] we're going to see what the agent is they only have one agent right now create a custom agent
[00:32:42] you can make your own agents to talk to different things where you can use copilot
[00:32:45] what model are we going to use all right so this is important that you see these models
[00:32:49] i'm really glad that we got this screen right here i kind of want to take a screenshot of it
[00:32:53] because of how important this is this is interesting that 4.6 is added is allowed through this model
[00:32:58] that's oh it's on it nevermind okay so what is the difference between the different API
[00:33:04] the different models over the next year or two or five there's going to be thousands and thousands
[00:33:09] of different models come out and it's become very there's going to be as many models as there are
[00:33:14] different ways to think and do a task that's what's happening that's what's the new normal
[00:33:18] but there right now you can categorize different AI models generally based on models that are really
[00:33:23] really really good at making software or entire software projects by themselves and models that
[00:33:28] are really get a writing a writing you know actual writing like words and stuff and helping you
[00:33:33] write an email there are ones that are better at with overall research about the you know out there
[00:33:39] you know going out to the internet they all have different uses and advantages and just put that
[00:33:46] in your notes put that in your notes that you need to look them up the the only models that are available
[00:33:51] on github the two-day are thought opus 4.7 which is only available to cloud pro plus users who
[00:33:58] haven't been gate kept out so you can't even use go co-pilot pro or anything like that right now
[00:34:04] it's been turned off but when it's back on which you will be back on eventually you'll want to be
[00:34:08] able to pick one obviously this is very expensive in fact the the rate is probably going to go with
[00:34:14] 4.8 the rate will probably 30 times the regular rate based on increases i know this because i went
[00:34:20] to have the AI summarize the models for me and it pulled up the cloud sonnet mini or the cloud sonnet
[00:34:26] fast at 4.6 and the rate was 30 times that and that was it got that from hidden documentation on
[00:34:32] github to give away that information that was never officially released which i thought was super
[00:34:37] interesting so this means that you should be planning on paying a lot that also means that you should
[00:34:42] not be using these hyper expensive models for simple tasks like what we're doing what we're doing now
[00:34:48] can be easily accomplished with any chat gpt model so i'm going to go ahead and use gpt 5.4
[00:34:55] i do find it interesting that there is no uh there is no option here that is zero okay so if you
[00:35:03] actually use the command line client version uh which is actually kind of an argument to do this
[00:35:09] you can actually use gpt 4.1 or gpt mini and only pay zero you're free if you use the command line
[00:35:17] github tool for github co-pilot with a github co-pilot extension which we will go about
[00:35:22] installing later you don't have to pay a dime you can use chat gpt 4.1 for free
[00:35:30] period and you can use that as much as you want so this this this is interesting because this
[00:35:37] means that you cannot use the the the agent that runs in the background at github or free and i
[00:35:44] suspect the reason for that is because it has to run on github's own hardware and servers when i run
[00:35:52] a model over here it it's probably i don't even know if it's leaving my machine it could have a
[00:35:57] copy of those models saved locally who knows what probably not they're pretty big the point is
[00:36:02] this and it doesn't care because whatever it's not running on the server it's an interesting discovery
[00:36:07] sonnet is uh a pretty damn good one for a one by i'm going to go ahead and keep it on auto at a
[00:36:14] one by rate and i'm just going to click on assign so when we click on assign that will assign it to
[00:36:21] github co-pilot and it will start working on it so i have artifacts rob assigned it to co-pilot
[00:36:28] and now we can click on it and we can see it running in the background um let's see okay so
[00:36:37] this tells you about the co-pilot agent and i just got a notification on my phone telling me
[00:36:42] that the agent is working it will actually give me the session update it will tell me when it's
[00:36:45] finished co-pilot can recist your repository create plan and block sign up for co-pilot so you have
[00:36:51] to add sign up for co-pilot uh you don't need pro i don't think i think i think it comes for free
[00:36:57] i wish i can't tell you that because i have pro right now if anybody knows that please tell me
[00:37:02] uh so yeah so so here we go we're gonna come i'll get to some of your guys questions a little
[00:37:10] later when we take a break so so let's go back here i don't i'm gonna close this that opened it
[00:37:16] into our window all right so we have this session that's running and you click on view session if
[00:37:22] you want to actually watch it i mean you can't this is the same thing that i would see over here in
[00:37:27] the terminal if i was running it as opposed to here it's exactly the same thing same output
[00:37:33] this is where you can actually learn so you can if you drill down you can see the actual commands
[00:37:40] that it uses like when it goes to write the the thing you can see uh what files it's looking for
[00:37:47] here's the repository this is what it looked at when it saw that it saw a few files here you can
[00:37:53] look at those files this is how it this is exactly what it's doing uh you can see the different mark
[00:37:59] down files let's see document four four files of you getting into tech with ai so it's looking at
[00:38:06] the files that are there and the reason it's doing that is because it's trying to figure out what
[00:38:11] you already know and this is why it's so important that you maintain your notes in this single notes
[00:38:17] repo as you go you can you can use ai to help you write the notes but as you tweak them and as you
[00:38:23] update them and as you create your own plan you can put all your notes in here and use ai to help
[00:38:28] you make sense of those notes later so it's just really important that you put them all into a single
[00:38:34] repo okay you can't cross out of repos with the cheap models i found that out today so gpt 4.1
[00:38:41] and mini they won't even look outside of your git repo there are ways to jailbreak that to make
[00:38:47] it do that but in general you're not supposed to do that it will avoid and things so just get used
[00:38:52] to putting all of your knowledge into a single repo now if you want you can actually add a
[00:38:57] submodule which is another git repo that's inside of your repo so let's say you wanted to take
[00:39:03] the boost repo and use that in your notes and so your ai can see all of the notes that i've made
[00:39:09] as well as all of your notes in one place you can share that and i can probably show you how to add
[00:39:14] that as a submodule you can have ai help you do that and that way you would get if you did a query
[00:39:19] using ai in that directory from the command line or from your app or github copilot or whatever
[00:39:26] you could use that to leverage that as your own personal search engine in fact if there's one
[00:39:32] universal truth about all of this ai has permanently replaced any kind of google searching i i know
[00:39:40] when you're doing google searching you're basically doing ai searching now anyway
[00:39:44] now i have a good sense of the writing style let me look at a few more articles to better
[00:39:48] understand the format single line paragraphs and all markdown files these are all rules that i
[00:39:53] added to an agents dot md file that is just words it's just sentences saying what i want to do
[00:40:01] every time so anytime any new agent comes into this repo it reads my agent's file and says oh okay
[00:40:07] they want single line paragraphs they want senes case for hot titles and headings no underscores
[00:40:12] they want strong direct voice almost like blog post device this is this is what they want and so
[00:40:18] by putting those sorts of things in your agents md file it will persist across multiple different
[00:40:23] contexts in other words every time you use ai it will act the same way more or less so that's super
[00:40:29] important that you do that i did another video about how to create another repo called agentic
[00:40:36] template or dot files or whatever you want and inside of that repo you can put your agents dot
[00:40:43] md file and you can unless you're using one of the cheap models you can tell it to go get that
[00:40:49] agents file and copy it in so all your common style things it's it's very much the equivalent
[00:40:56] of having a dot files repo where this is all your favorite scripts and configurations and how you
[00:41:01] like to do things for space into versus two blah blah blah and you can put all of those kinds of
[00:41:06] things into a single file called agents dot md and then you can just make sure that file is in any
[00:41:13] project repo that you ever use over time that that is the standard way to make sure you get the same
[00:41:19] sort of thing every time it also says a lot about you because when somebody comes to your public
[00:41:24] project repo they can read your agents that d file and then get a sense of how you are stylistically
[00:41:30] what you like what your coding styles are all the same reasons that you would have a dot files
[00:41:35] repo in the past we are going to talk way more about that probably next week when we create our
[00:41:42] first dot files repo and and a dot files repo is something that is basically your personal
[00:41:49] configurations for the most common tools let me give you an example of that so my t mux right
[00:41:54] here you see how it has all this stuff here it's been it's been organized to do things the colors
[00:42:00] or specific way all of that is stuff that's going to be custom configured in a t mux configuration
[00:42:05] file that I want to have anywhere I go on whatever computer I have that's going to go into a dot
[00:42:10] files repo and we'll talk extensively about that next week so in fact let's put that on the agenda
[00:42:16] for next week so but yeah we'll go back to the boost here and so let's let's actually read through
[00:42:23] what that what it ended up coming up with so so here it'll show you literally everything it did
[00:42:30] okay so um wow it did a lot of stuff let's go read it all now I have a good sense of the writing
[00:42:38] style let me look here the things now I have a really good blog view docs yet learning now I
[00:42:44] declare an understanding of the style and structure digital nomad so it's going to create a new
[00:42:49] document it made a slug that's a that's the name of the file with lowercase with dashes in it because
[00:42:55] I asked it to do that in my age is done in B file and this is markdown which we've already learned
[00:43:01] markdown is the most important language you can ever learn
[00:43:05] far more important than any other language is markdown a language yes it is make sure you know it
[00:43:13] it's a language of both humans and AI speak and that's how they talk to each other
[00:43:18] digital nomad tech career the complete learning plan you want so this is this is the actual
[00:43:22] thing that it's trying to add in fact you can see all 164 lines of this article right here
[00:43:29] now this is nice because you might want to tweak what it came up with maybe you don't agree with
[00:43:33] what it's saying so again you should regularly review this this format that you're looking at
[00:43:38] is called a dip so knowing how to read a dip is super important and I you know the dip command
[00:43:47] is not even actually it is I think it's on the on our boost is dip on here I think it is
[00:43:55] uh brat here we go AI workflows depend on agents commit branch dip and revert constantly
[00:44:01] so I guess it considers it a part of dip dip is its own thing but it's kind of built in to get
[00:44:07] so there so the AI in that case is lumping dip under get so a dip is all the pluses are things
[00:44:14] it's going to add minuses or things it's going to take away when you use it graphically like this
[00:44:18] you can see this change you want to make some serious money from any in the world using nothing
[00:44:22] but laptop and cloud lab that is not a fantasy it is a real category for real job companies are
[00:44:27] hiring right now this guy tells you exactly what those companies are what they want how to build
[00:44:31] a portfolio kind of curious to see what it says and what will happen when you walk into the interview
[00:44:36] for one of those jobs the reality of remote tech jobs not all tech jobs are created equal
[00:44:40] when it comes to remote flexibility some companies post remote roles that are quietly become must
[00:44:44] come in first and twice a year this just happened in my friends or remote within 50 mile radius
[00:44:49] the fully distributed laptop only work from anywhere roles are the specific category they cluster
[00:44:53] around specific types of companies specific types of work I could not agree more that the sweet spot
[00:44:58] is infrastructure platform and developer tooling work yes exactly exactly oh my god a thousand times
[00:45:05] yes companies building software for other software engineers almost always have fully
[00:45:09] distributed teams because their entire customer base expects it they eat their own dog food if
[00:45:15] they are selling remote developer tools they are better but they better be running a remote team
[00:45:19] themselves yes the skills that unlock this category of work are not the skills they get you a local
[00:45:25] IT job they are Linux system administration at the command line agree can containers and container
[00:45:31] orchestration absolutely agree cloud infrastructure on AWS ucp and azure preferably at least two of
[00:45:37] these yes infrastructure as code terraform pull many oncable this would be interesting to see
[00:45:42] you at tannis scott thinks of this CI CD pipelines and DevOps that's things that so when you change
[00:45:48] it and get it automatically does other things like publish your software scripting an automation
[00:45:53] bass python ago totally agree I think it's probably knows me I think this probably knows me so it's
[00:45:59] writing to my style which is kind of interesting because all it did is look at my boost content
[00:46:06] how does it know me so well by just looking at my boost repo
[00:46:11] I mean I mean I told it to go study me and it did before it wrote it
[00:46:17] I'm super curious what yours looks like this should be something I would kind of encourage
[00:46:23] people to post on our discord on our discussion boards on github what is your plan what did AI
[00:46:29] come up for you what what was your plan look like what was your original prompt I would be really
[00:46:34] fun to do show and tell where people's different plans are shared in the discussion room I encourage
[00:46:41] you to do that if you if you don't know about the discussion groups yet go click on boost and
[00:46:46] click on discuss at the top and you'll get to a link of kind of like a reddit like place to
[00:46:51] post your summary and go to show and tell and post the plan that that the agent helped you make for
[00:46:58] yourself I'm super curious to see what when it comes up with and this isn't probably one of those
[00:47:04] times when you want me to chime in or another person who's learning or another veteran they can
[00:47:09] look at what the AI come up with and decide if they agree or not and then you have you know two
[00:47:14] points of data and sort of just one and you can decide whether the AI is more accurate than the
[00:47:19] human it's up to you to make that decision infrastructure is code yep CI/CD pipelines scripting
[00:47:25] automation observability metrics traces yes security basics secret management never policies
[00:47:30] least privilege swimming AI tooling and mcp development this is an emerging skill that not
[00:47:34] enough people have yet you do not need all of these by day one but the more of these you can
[00:47:40] demonstrate the actual evidence the higher your leverage and sour negotiation more doors open
[00:47:44] companies that hire remote technologists these are the categories of companies that routinely
[00:47:48] hire for remote engineers and pay well for it within each category specific companies come and go
[00:47:52] always verify the current hiring status this is so true there's so many people who got hired by my
[00:47:57] current company and they got psyched into saying if you live within 20 miles you have to come in
[00:48:02] these are people who have made decisions to work remote based on needs at home like especially
[00:48:07] to each children and stuff and they were forced to quit because of it um cloud native infrastructure
[00:48:12] companies companies like hash accord data doc oh this is interesting this is great this is a list
[00:48:17] of companies that anybody could potentially work for and you know live anywhere i actually
[00:48:23] should make another thing saying which ones ooh i have i have something i already want to ask it
[00:48:28] i already want to change something i'm going to go ahead and tell it tell it i mean let's tell
[00:48:31] it something different i uh i want to i want to update it um can you include a section that
[00:48:39] summarizes companies that are not only okay with remote work but are totally okay with working
[00:48:45] as an expat in another country all right let's send that see what happens
[00:48:53] i want to see how it changes well it's working on that let's go ahead and continue reading
[00:48:58] um
[00:49:02] behavioral questions oh damn this is going to be good
[00:49:09] all right so wow wow it has a direct plan for each company what
[00:49:19] cognitive did agrofauna labs cloud fair fast lane pulman are almost entirely distributed
[00:49:25] they build the tools that run the internet and they need people to understand infrastructure
[00:49:28] deeply this is sad because there's a bunch of other companies that are not being mentioned here
[00:49:33] because they're not as prominent on the internet they don't produce as much internet code therefore
[00:49:37] they're not visible to the ai such as my company my company would be one of those companies but
[00:49:43] they don't produce any content actually i'm going to add a thing in there
[00:49:54] um it seems like your company's selections are biased based on the most visible companies
[00:50:01] on the internet can you try harder to find companies that are more traditional that tend to not have
[00:50:06] a big internet presence but are still really valid places to go work because often they are
[00:50:13] overlooked and they have opportunities they're just as good as some of the other ones
[00:50:25] okay so it's using son at 4.6 it's still just one premium request i mean every time you steer
[00:50:33] the session it's supposed to add another premium request but i don't see that happening right now
[00:50:40] i read i read that at each steering adjustment takes up a new premium request but
[00:50:47] i don't doesn't feel like it is
[00:50:52] all right so let's just do this show 42 lines
[00:50:57] GitLab GitLab is a great company it's just irrelevant
[00:51:05] company oh look it added it oh shit
[00:51:11] here's the other one and then it added the new one
[00:51:16] so okay so that member i said about dip so it took this one and then it added more to it
[00:51:24] that's what this is so that's is showing you what changed after i made after i made the
[00:51:30] additional steering direction it went and it made
[00:51:37] and this additional thing see how it says plus here so it already had made digital romantic
[00:51:42] career and then it added this dip on top of the other one to make the changes so that
[00:51:47] assumes i read the old the other document entirely companies that are generally okay with expats
[00:51:52] there's an important difference between a company that allows remote working a company that
[00:51:55] actually is okay with the living and different paying taxes everything this is totally true i've
[00:51:58] done a lot of research on this legal reality i could actually tell it to take you know make
[00:52:06] take it down a notch because it's being very verbose you can use an employer record or service
[00:52:12] like dl remote uh rplacle with these companies become your legal employer on paper in your country
[00:52:18] a residence handle payroll and total cost and let the actual work you pay for you pay a flat weight
[00:52:24] what that's the first time i heard of that wait wait wait wait wait wait wait wait
[00:52:32] the reason i want to hire you legally in country where you do not have a corporate entity you have
[00:52:35] two major offices first they can engage you as a contractor rather than a play
[00:52:43] oh that's that's if i were to go to spain and i would want to work for a spanish company even
[00:52:48] though i didn't have the the visa for it that's interesting but it's not what i'm interested in
[00:52:54] so companies is the track working of genuine global hiring uh automatic the company behind
[00:52:59] wordpress work wook and tumblr again obviously the ai has bias just like any human would so it's
[00:53:08] up to you to figure out how to spare it out that bias and add more queries that expand the search
[00:53:15] parameters uh in a way that you want or to supplement that with your own research uh over 90 countries
[00:53:26] yeah it is one of the oldest and most credible companies of a company that actually means what
[00:53:30] it says when it's location doesn't matter they pay fairly fairly for senior technical roles in
[00:53:35] engineering culture values async communication and written clarity canonical i've heard about this one
[00:53:41] we have actually worked with a guy who worked with canonical per year uh has been hiring global
[00:53:45] for longer than most companies have existed canonical employees have always worked from home
[00:53:49] from everywhere and the company has employment infrastructure in a large number of countries
[00:53:52] built over 20 years work is deeply technical in externals cloud ops uh oh i just got the
[00:53:59] notification on my phone too that it finished done here is what was added all right so let's go
[00:54:05] back and see wow look at that oh wait wait it has less visible companies too again there's like so
[00:54:14] much good stuff to read get labs a fully distributed yeah get lab is not an option i don't want to
[00:54:18] work for them get get help destroyed them they are really good at distributed they are one of the
[00:54:23] coolest companies i used this back in 2020 2021 i was pushing everybody to go work for get lab
[00:54:29] and not anymore give lab is going to die um elastic company by elastic research this is a
[00:54:35] great company if you're if you're okay working for a company from software that's been written
[00:54:39] entirely in Java uh grapana absolutely a great company the pulley remote company is fastly
[00:54:45] going to maintain generally global team grapana is is the distribution software uh i'm you know
[00:54:52] monitoring software for everywhere fly IO is what i just deployed my my suit my my bot my uh
[00:55:00] my bin storage app to play IO look immediate foundation was ill on the pre software condition
[00:55:05] non-profit exceptions we're knowing globally high permission we will from when you know that
[00:55:10] the cleanest arrangement is working as an independent contractor this is what misha vanderburg does
[00:55:15] um in Amsterdam uh you are paid as a vendor not an employee
[00:55:20] um top tile up work gun IO these are all like places you can go post your stats and your
[00:55:27] information what you can do if you're going to do that kind of thing you need to produce a lot
[00:55:31] of content that proves you can be hired and that content better damn well use AI why you did the
[00:55:37] development so you can talk about that direct relationships built through github visibility
[00:55:41] this is what i'm trying to talk about uh what to look for in a job listing job description is
[00:55:45] to do the phrase anywhere in the world question to ask any interview before accepting any offer
[00:55:51] do you use employer uh employer record service and which one are there any countries where
[00:55:57] where this rule cannot be based what countries does your current EOR or employment infrastructure
[00:56:01] cover am i hired as an employer as a contractor these are professional questions at every legitimate
[00:56:07] company answers that hesitation huh i wouldn't have thought to ask that okay um
[00:56:16] traditional or less visible companies with genuine global employment infrastructure okay we got that
[00:56:22] uh okay it added in a whole bunch of new country and new companies
[00:56:27] it added new companies companies that are not as obvious um
[00:56:34] eepam system software engineering service company according to us but built from the ground up
[00:56:38] engineers from eastern europe 50 000 people across more than 50 countries completely
[00:56:42] unknown in startup circles i'm one of the largest engineering employers on the planet
[00:56:46] i did not know them today i learned they exist huh business is staffing and delivering large
[00:56:53] scale engineering projects for fortune 500 colors and damn i want to work for them
[00:56:59] the work is enterprise cloud migrations platform modernization develops holy cow
[00:57:05] they post the rules of linkedin in their own career site i didn't even know about them till
[00:57:08] i made this document amdocs is the company most people in the tech have never heard of
[00:57:12] the customers have never heard of amdocs builds and operates building customer management
[00:57:15] network software that runs most of the world's nature telecom they employ 30 000 people across
[00:57:21] most to the 85 countries have you heard of it no you've heard of like netflix and microsoft and
[00:57:28] goo go and facebook fucking i'm so tired of hearing about thing companies
[00:57:38] hold my beer that's what my company says to any thing company the scale of the company i work for
[00:57:44] is so much bigger in total computing power and general gdp than any of the thing companies
[00:57:55] am docs fis fems sort of jack and hindrance was there sort of three companies that power
[00:57:59] the core banking systems for midsize banks credit unions none of them are internet famous all three
[00:58:04] employ thousands of technical people fis alone has 50 000 employees across more than 50 countries
[00:58:11] are you kidding me i've never heard of them
[00:58:17] Bentley systems hexagon companies completely off the radar with software developers
[00:58:23] sas institute yeah this is good and work here line at what
[00:58:28] statistical and data analysis software for governments
[00:58:34] i think i actually talked to a guy who worked here
[00:58:40] i post a quietly on their career shadow linked on they have a reputation for unusually stable
[00:58:43] employment generous benefits you know what i think i know parents who worked at sas
[00:58:50] who who sent me their kids when i was teaching interesting i was in north Carolina i forgot i
[00:58:55] didn't realize there was a company there that was teaching
[00:59:01] uh OVH cloud is a french cloud infrastructure company one of the largest providers yes i've
[00:59:05] heard of these guys they operate data systems across north america everywhere bare metal
[00:59:11] another i want to read all of these kindrels a company most people have not heard of in spite
[00:59:16] of them being large IT company it was spun out of IBM in 2021 really i worked into IBM in 2021
[00:59:23] and here to IBM is a major global manufacturing infrastructure business
[00:59:29] wait what IBM outsource's data center and main framework
[00:59:35] when did they outsource that in 2021 oh my god that was like a major income part for them
[00:59:44] that's insane the company is working through a major transformation actually recruiting
[00:59:49] oh no no no no i know what this was i think this was when they spun off global services
[00:59:54] i'm gonna ask is kindrel global services IBM global services previously i think it is i used
[01:00:01] to work for them i have to know that i'm sorry i'm getting distracted uh was kindrel
[01:00:10] really IBM global services and they got rid of it i really want to know this i mean i think
[01:00:21] i think you get the point right i don't think i need to make this point any further um
[01:00:28] you should be writing your plans using this tool and this is the way to use the tool interactively
[01:00:35] through the web but you can do the same thing using the harness and i'm going to show you how to
[01:00:43] install the harness i already did it once but i'm going to do it again because then you can start
[01:00:48] using the harness instead to use that okay so roughly yes but with a bursite distinction
[01:00:58] IBM global services was the umbrella name for the IBM's entire services division
[01:01:03] global technology server gts gbs yep uh so IBM did not get rid of the global services
[01:01:09] they surgically separated lower margin heavy capital structure piece of hardware margin
[01:01:13] because it was spun off as an independent public trade company
[01:01:17] recent IBM this is fairly transparent gts was a drag on IBM stock yep i remember that
[01:01:23] and the revenue was low anyway the chances of the AI understanding this data of the industry
[01:01:30] and what needs to be learned and what and how to help you learn are way better than you talking
[01:01:34] to uncle joe over thanksgiving turkey so start using it uh nipon telegraph and tell them theirs
[01:01:43] guys are huge including infrastructure services inherited data dimension
[01:01:49] uh they hire infrastructure operations in years and dozens of countries
[01:01:53] work is delivered oriented oh thank you for that thank you for the follow
[01:01:58] um the work is delivery oriented trust waves secure works
[01:02:02] which original companies let's see what the traditional companies post jobs
[01:02:06] this is a practical part the internet's famous tech companies post on lincoln hackernews
[01:02:11] really there's like who's hiring on hackernews i didn't know that what was my problem for this
[01:02:19] i shared it at the beginning of the video but i'll go back and read it um so
[01:02:28] okay from issue number 83 i went to my boost i went to my i went to my notes basically my notes
[01:02:36] repo which is what everybody should have who's watching by now and this is the prompt i said
[01:02:42] create a learning plan for somebody who wants to become a technologist making gobs of money but
[01:02:45] who can work remotely and safely from any in the world as a digital nomad with only the laptop lab
[01:02:50] they can run from the cloud these companies uh the companies that offer those jobs i want
[01:02:54] to prepare an interview i then i then tweaked the prompt to say seems like you're biased to
[01:03:01] stuff that's on the internet include companies that don't have a big internet presence and then it
[01:03:05] added that other list and uh so this is how it came about the whole entire point of this exercise
[01:03:16] is for y'all to come around and say you know okay i can start using co-pilot to do these things
[01:03:26] and you know help me interact with this in this way so you can get all these answers
[01:03:33] um and this is all free this is all absolutely you have to use one request i think you have to
[01:03:38] sign up for co-pilot to do it through the web like i'm doing i know i happen to know for a fact
[01:03:44] if you use it using the harness the the command line you get you only have to be zero so you don't
[01:03:49] have to pay anything to use the same model um so but you know if you can even get in they they they
[01:03:58] blocked new account registration this week because they were being overwhelmed because it's such a
[01:04:03] good thing to do you it's why you should be doing it um what are you doing in the meantime i don't
[01:04:09] know you have to let me know what things you have available to you uh you can also use chat gbt for free
[01:04:14] which is the same model when you use chat gbt you're using the same exact gbt model you're just
[01:04:20] using it through the chat gbt interface instead of through github the advantage of using it through
[01:04:26] github with an agentic infamitation is that you can save off your sessions to get and have them
[01:04:33] saved with revision history so that all your sessions are someplace where you can go get them
[01:04:39] and share them that is not true if you use chat gbt in fact i find myself using chat gbt my beloved
[01:04:47] cloey less and less every day don't tell her where is she don't tell cloyi i said that i still
[01:04:53] practice my Russian with her but i want to remember things and i don't want i can remember
[01:05:00] things better by having them saved as articles and github repos which i can do from my phone
[01:05:07] so lately it's not as interactive doing it this way there's not a voice component that's telling me
[01:05:13] about it but and chat gbt is great for that but i have a more permanent record of the thing so
[01:05:20] the point is is that your interactive research and education process should be on github it should
[01:05:28] be interacting with your notes repo and an ai to update those notes and alter the notes and say
[01:05:35] i feel like i need more more weight in this part of my of my plan and it will come back in and it
[01:05:41] will suggest well why don't we add this then well you know mr rob says i should learn t mux is a
[01:05:45] little bit better than what you're suggesting why do you think that is and they're like well let
[01:05:50] me go check i'll go look at the thing oh yeah okay let's add this the point is is that you should be
[01:05:55] interacting regularly with your ai via git and github in order to manage and prepare and maintain
[01:06:02] your own learning and honestly that's really all i wanted to say that today i mean we've been going
[01:06:09] for i think i owe you another half hour so i'm going to go take some comments um but i wanted to
[01:06:16] show you this uh and then i wanted to show you how to get copilot you've already got the terminal
[01:06:20] installed uh you've already installed uh if you've been following along with the boost you've
[01:06:25] already got it installed you've already installed github uh the command line tool we already covered
[01:06:30] that and you probably have already installed this this thing here um you can do the same thing here
[01:06:36] by going to the right directory and asking the right questions we've already covered how to cd
[01:06:42] how to pwd how to move around we've covered all of that in the boost i don't need to cover it again
[01:06:47] the difference the only difference between that and this is that you can do it interactively from
[01:06:52] here with super wisper right so let's actually move to the terminal version for about 20 minutes
[01:07:00] and then i will close up uh and start taking some questions um it says the text in the sky
[01:07:06] currently says inherited ibms global manager such a bit blah blah blah okay um all right so i'm
[01:07:13] going to say go ahead and commit and push that thank you i don't know why i'm saying thank you
[01:07:26] so what this so again part of this is learning the language of git and github
[01:07:31] commit and push commit says take what was just added and commit it that means merge it in you know
[01:07:38] commit it there and then push it so that it's now a part of github uh and it's there and if you want
[01:07:44] to you can actually tag it uh it does this already get did this already get pushed
[01:07:56] a new file created there's a summary of what was done to address the issue whoa did it add it to my
[01:08:02] main i i'm curious to see um oh it's using clouds on it okay um can you summarize the new issue that
[01:08:14] just came and see if it's already been committed to main i'm not sure i'm not sure if doing it this
[01:08:26] way is going to commit it yeah progress update docs clarify blah blah blah
[01:08:42] running github cli to fetch the latest open issue and search git commits for references to it
[01:08:48] what am i on
[01:08:52] um remember i said about being able to read here's the github issue this is this is a bash script
[01:09:01] or it's actually a POSIX shell script so we will learn how to read shell we're going to learn how
[01:09:07] to code too but we're going to use the AI to teach us how to code because it's more important that
[01:09:12] you know how to read the code to understand what it's doing then create new code in fact
[01:09:17] i'm going to go so far as to say is that i strongly encourage you to learn how to write code
[01:09:22] with prompting in a in a free model like i think that you should do that you're just going to be
[01:09:27] more reliably going to make less mistakes and if you do it right and and that is very unpopular
[01:09:33] opinion but we're going to do it so get an issue list blah blah blah jq no open issues found issue
[01:09:40] title get an issue list blah blah blah so this is all of the commands that it's going to use this
[01:09:45] by here see how it's a dollar and that means run it in a sub shell you don't know what that is yet
[01:09:50] again you remember i said being a technologist like me in a doctor you know doctors are a lot of
[01:09:55] doctors and surgeons they're directing the work sometimes they're doing the work because they have
[01:09:59] the the dexterity to do the work but more importantly doctors are usually dictating to others in a
[01:10:05] dictaphone or whatever to tell other people what to do because they're too expensive and so they
[01:10:12] they they help other people to do this that is that is the job now that is the tech job these days
[01:10:17] um it's to dictate to you know lesser paid agents and interns how to do things um and more and more
[01:10:25] you know those interns are being a junior programmers are being replaced by AI so um sometimes there
[01:10:32] needs to be a person putting a computer in a rack you know junior otherwise they're not going
[01:10:36] to be replaced we're going to still need that until the robots do that but that's coming search
[01:10:41] you get commitment messages so yes this is basically saying i want to search all the commits and
[01:10:44] see what's up i'm going to say okay yes that's the news open issue with get up and search commits
[01:10:53] all right so no commits for found that reference issue 83
[01:10:58] uh let's see 83 creative learning plan for the middle of all i created body first
[01:11:02] creative learning plan mobile vlog create uh commit check no commits were found that reference
[01:11:06] issue 83 and commit messages next steps okay so what i'm trying to ask it is if this work over
[01:11:11] here has been committed it appears it has not yet been committed so it says committing and pushing
[01:11:16] recent code changes um this minute suggests to me that it did not actually push it yet
[01:11:24] and uh i'm trying to figure out how to do that um because i want it to save it no
[01:11:33] you started a task from issue block here's a summary of what was done to address the issue
[01:11:38] okay it made a bunch of stuff it says it made a new file but was that new file created
[01:11:42] i'm going to say fetch latest i'm going to see if it was already committed and i just can't see it
[01:11:52] we're using the chippity five mini thank you for the follow mally um so we're going to go ahead
[01:11:59] and pull that in uh do you want to run this command so let's see what this command so
[01:12:05] remember i said that get that the agent can actually teach you about things by looking at
[01:12:10] what it's doing and just trying to figure it out here's one of those kind of times get
[01:12:16] fetch well okay that's going to go out and fetch i could actually learn about that in fact i
[01:12:21] could do this watch this this is this is so cool this is all free by the way this is in the free
[01:12:25] model this is how you can learn can you please break down what this command is doing uh item by
[01:12:31] item since i'm brand new and i don't know what it's doing and i'm afraid it might be doing something
[01:12:34] wrong all right now watch this this is a part where it just blows me away it's an educational
[01:12:42] tool it just blows me away i mean you're gonna encounter a code and things that you're not going
[01:12:48] to understand for anybody is in fact i've been doing a lot of like web development i've done
[01:12:53] web development since i was nikey's webmaster and you know it's doing things that i'm not aware of
[01:12:58] they're like what the hell is that what the hell is that i'm constantly interacting with the free
[01:13:02] model asking it questions about what it's going to do not just for safety but so that i can learn
[01:13:07] and my brain doesn't atrophy so i can actively participate in this the biggest fear appear people
[01:13:13] have is the engineers aren't going to do that so don't be that engineer be the engineer who teaches
[01:13:18] themselves by using the ai instead of just trusting the ai for everything you wouldn't do that with an
[01:13:24] intern okay below is a short item by item breakdown of the command then a quick question to confirm
[01:13:30] which action to take asking your turn which action would you like me to take run fetch plus pull uh
[01:13:36] fast forward only uh i don't know what does that do i don't know what does that do
[01:13:46] run fetch only it's not going to ask you user which action would like to do
[01:13:49] item by item breakdown of the command and then a quick question run fetch plus pull
[01:13:54] get plus fetch okay this is where you can use something else okay so embedded in the thing is
[01:14:00] is is a um escaped cancel is the cancel we're going to cancel us you can say explaining okay
[01:14:08] here we go wait wait wait wait wait wait wait wait here comes the explanation so i said i cancelled
[01:14:12] it and it's going to give me the breakdown get fetch all prune quiet downloads reps from all
[01:14:18] remotes prune remotes uh okay remote tracking let's actually make this full stream i think it's
[01:14:25] getting kind of confusing here we go um all right breakdown of each command get fetch all prune
[01:14:32] quiet downloads reps from all remotes all what remote what's the remote all the right all the
[01:14:38] remote branches or something prune removes remote tracking references that were deleted on the remote
[01:14:43] this does not change the local branches so i guess you have to have a kind of a knowledge of
[01:14:47] what a get branch is you can say things like what's a get branch right now if you wanted to
[01:14:54] um okay so you can say what's a get branch
[01:15:04] a get branch is a moveable pointer to a commit what's a commit
[01:15:15] a commit is a recorded snapshot of your repository at a point in time what's a repository
[01:15:25] a repository repos the project's version control storage container uh what what is version controlled
[01:15:42] again this is all free i'm on gpt5 mini none of this counts against me at all this is all free
[01:15:48] version controlled means changing the files are recorded over time so you can view history
[01:15:52] revert or earlier states to collaborate safely what it does records snapshots commits with
[01:15:58] author time staff law benefits undo mistakes works with branches how to do it blah blah
[01:16:02] common commands get commit get push get pull get branch get log same thing i want to talk
[01:16:07] you if you'd ask me the command is the same thing it's just much clearer and easier to read
[01:16:13] have i convinced you yet okay so uh what's the repository a repository is a project's
[01:16:20] version controlled storage containing the full history of changes it includes a working tree
[01:16:25] files you edit the index staging area commit snapshots branches points tags repos to be local
[01:16:30] your machine and blah blah blah blah blah blah um let's say we want this for later
[01:16:41] can you please can you summarize summarize everything you just taught me into
[01:16:51] an article in my notes here so that i can read it later
[01:17:06] it's so funny because this kind of interaction with a computer is exactly what was portrayed in
[01:17:11] tron 1986 you know make me a program that does this get basics a quick reference to get branches
[01:17:23] and move a pointer a commit or a repository version control get branches isolate features
[01:17:27] why do i do i need to make you boost content no just use your ai
[01:17:32] common commands get status get out good commit view history blah blah blah
[01:17:35] safety tips use descriptive short branch names commit small push branches and remote local
[01:17:40] use poll for the reading get scm book the pro get book uh keep this file in your notes so you can
[01:17:45] revisit it basically later do you want to add edit this book boost docs this is my notes repo
[01:17:51] get basics notes md yes all free this is all the free model
[01:18:00] so basically interactive education is free uh is is that saved i'm using deliberate speech
[01:18:11] that a beginner would use on purpose the thing to ask here is has it been committed you know
[01:18:17] intact that's what i should really be asking but i don't the file bubble has was created in the
[01:18:22] repo working tree it has not been committed well now we know what committed is because we just asked
[01:18:27] commits to the save history commit uh can it commands to save the history get out but uh can
[01:18:33] so this is where it gets dangerous you could actually execute those commands right now as
[01:18:37] practice you can go add into another terminal and execute those things as practice if you want to
[01:18:42] learn them or you can be lazy this is where it gets scary okay can you do that for me
[01:18:51] this is where you have to decide if you want to practice typing the command in or not
[01:18:55] that's up to you and it will say it can i know well because the many these these things can do
[01:19:03] things as long as they don't leave the repo if it leaves the repo you have to jailbreak it which
[01:19:08] you don't want to do hmm hey look it's another one of these commands it's like really weird right
[01:19:17] okay it's like okay well what's this rev parts thing uh what is rev parts
[01:19:37] um get rev part six give rev parts prince occurring branch data results revision expressions
[01:19:41] uh possible examples get rev parts prince occurring commit Shaw uh blah blah branch rage pursuit
[01:19:48] staging uh yeah proceeded would go ahead but then you can say things like you can say things like
[01:19:57] can you add rev parts to the dock can you yeah i say can you please add something about rev parts
[01:20:07] to the dock so i don't forget
[01:20:23] thinking this is see a lot of times when you're thinking like this this is when you start to become
[01:20:28] inclined to use multiple agents because you can have two or three agents accesses going at the
[01:20:32] same time while this one is thinking and then you start to move to the next level which is multi
[01:20:39] agentic engineering and multi agent agent engineering and you have more than one agent working
[01:20:45] simultaneously and that's where t mucks really comes in handy because everyone that's working
[01:20:51] can be here and it can give you a little bell to tell you that it's ready and it needs input
[01:20:56] right so let's see what it said it says it's gonna okay so it added is telling you what it added to
[01:21:02] the document it said i added this to get basic notes at get rev part parent branch name resolves
[01:21:08] refs and branches safety is a tip so it added just a little summary of it um and if you wanted
[01:21:15] in more full description of that you could add it right here you could say could you add a paragraph
[01:21:20] about each one of these subcommands let's do that could you please add a paragraph about each one
[01:21:25] of these subcommands that is more descriptive than just a single comment all in the free model
[01:21:40] all of this is on the free model you might i don't know if you're going to be able this by the way
[01:21:45] you could do all of this interactively if you wanted to you could do it interactively with
[01:21:49] the uh the ui which we'll go back to in a second but i wanted to give you a sense of both of them
[01:21:54] before we end um it's reading the notes again preparing to edit it and see what it's gonna do
[01:22:00] all right so it changes it got rid of these little things and it said gets that it shows that okay
[01:22:06] it expanded a little bit i don't quite like how it expanded it now i mean you can you can mess
[01:22:16] with it you can mess with it you can actually have it do do do it differently but this is fine for
[01:22:22] now so we're gonna say yeah that's fine and then it's gonna go ahead and commit it and push it
[01:22:28] next commit and push okay you notice you look at this you see how it's explaining things more to me
[01:22:34] now this is because the ai learns about you over time it learns your habits in fact if you tell it
[01:22:40] to push every time eventually it learns that you want to do that you're gonna be careful because it
[01:22:44] will start doing it for you automatically because it's like i'm gonna save them the trouble because
[01:22:48] they want to do this i guarantee you and then you have to say hey stop doing that i i want to do it
[01:22:52] you got to ask me again so that's a regular way to use the ai next commit and push the change
[01:22:57] recommend a commit and push sets upstream stays in road you see that big long winded description
[01:23:02] i never get that when i normally interact with the thing because i already know what it's doing
[01:23:06] i've never spent time asking it to explain it to me and since i did in this session this ai now knows
[01:23:12] that i don't know get and so it knows to be more long winded about everything and explain it to me
[01:23:17] forever so you see how this adaptation for your learning style and your knowledge is so critical
[01:23:26] because the things you do know you can skip over them the things you don't know you can help it be
[01:23:31] trained in you so it knows to give you more feedback on web development for example because
[01:23:37] they don't do it every day this is why it's so critically important that you get used to these
[01:23:44] interactive ai sessions for your education and so let's go ahead and do it add a descriptive
[01:23:50] single i paragraphs reach comma get command uh get pushed and change recommend commit push
[01:23:55] sets upstream and save your mode uh yes
[01:24:05] and so it's going to get it's going to commit and push a change which it tells you to it says
[01:24:08] i recommend you do this but it knows you're tentative about it because you said i don't know i'm scared
[01:24:14] and so it's like okay well this is what i recommend here's what to do now it says it's committing
[01:24:18] and pushing the notes and do you want to run this okay so this is a big long command it's kind of
[01:24:26] scary let's read about it so it's going to commit and push to get basic notes here's the file here's
[01:24:32] the branch we know that that's getting we know we don't know about how to how to read bash yet
[01:24:37] but we can kind of get a sense of it right and we say it's going to get this thing it's looking
[01:24:42] up to branch it's i don't know what any of this means i'm a beginner but i know that it's looking
[01:24:47] for something about the file and if it's not there it says oh i can't find the file okay uh and by the
[01:24:53] way if you if you digest this a little bit if you spend two seconds digesting this you just
[01:24:57] touch yourself how to do if conditions in bash and if you wanted to ask what is the if statement
[01:25:05] doing it'll start launching into an explanation of well how to code in positive shell and bash
[01:25:10] which you can do in a separate session if you want we will do that it says what's this pipe
[01:25:15] fail what's that about it's like let's pipe fail it's it's pushing it i pushed enter so i accepted it
[01:25:24] i accepted it but then i asked what's pipe fail after the fact
[01:25:30] pipe fail is the automated sequence of cic decepts that run on code changes build teslin blah blah blah
[01:25:36] uh what is pipe fail
[01:25:48] pipe fail is a shell option that makes a pipeline fail if any command in the pipeline fails
[01:25:54] oh okay normally a pipeline boom boom boom returns the exit status the last command
[01:25:59] with pipe fail unable the pipeline's exit status does this and this enable this in bash as you show
[01:26:03] set that show pipeline or set uo pipeline and scripts without pipeline without pipe fail false
[01:26:10] or true make it exit otherwise it does this why i use it make scripts detect errors or like
[01:26:16] when using pipes no not positives in business h use bash case shell or z shell oh that's interesting
[01:26:23] see i just learned something i didn't know positive exposing pipe shell wasn't positives
[01:26:28] you know what that means these show scripts are in case shell bash or z shell good to know
[01:26:35] good to know okay uh what is POSIX
[01:26:46] POSIX operating system interface is a family of IEEE standards that define a common
[01:26:51] API and a set of utilities for Unix like systems do you mean Linux
[01:27:02] i am a vibe coder okay boomer thanks for using the boomer term vibe coder nobody uses that anymore
[01:27:13] now am i an agentic engineer fuck yeah uh not exactly POSIX is a standard spec not an operating
[01:27:19] system POSIX portable operating system is a family of IEEE standards that define a common
[01:27:25] API and set of utilities for Unix like systems it specifies things like systems calls
[01:27:30] shell behavior and standard command line tools subscription programs are portable across
[01:27:34] compliant OS's practical notes business h aims for POSIX shell behavior many features bash
[01:27:40] specific extensions pipe fail are non POSIX see it remembered that i asked about pipe fail
[01:27:46] and it used it in the context of this response that's just moi if portability matters write
[01:27:52] scripts to POSIX shell in order to clear the shebang line okay uh when using and they could say
[01:27:59] what is shebang this is how most most people interactively learn if i if i was sitting with
[01:28:07] somebody and i was mentoring them in real time this is what they would do to me i would use a
[01:28:11] word and they wouldn't understand and they would say what is that and i would explain it as i went
[01:28:15] along with the end goal being to accomplish the production of some project or proof that they know
[01:28:23] what they're doing in this case the publishing of an updated plan for your education and your
[01:28:28] knowledge base and shebang is the first line of the script that tells the OS which interpreters
[01:28:32] should run the file it starts with blah blah blah blah uh so let's say um can you make sure
[01:28:39] to summarize all the things i've asked questions about somewhere maybe in its own file for today
[01:28:45] all right let's see how let's see what it does with that
[01:29:00] creating a daily q&a q&a notes summary of all short explanations for today's session so we
[01:29:04] can review them later i'll add a dated markdown file in docs under the concise explanations
[01:29:09] and useful commands so you can pick up where you left off oh my god let's go read it
[01:29:16] all right so daily qa summary of quick concepts cover today what does it get branch branches
[01:29:22] and movement pointer to the law common commands what does it commit a commit is this uh what is
[01:29:27] the repository repository is a project storage or tree what is the version control records the
[01:29:32] records that change thing what is the pipeline because it remember every question you asked during
[01:29:35] the entire session an automated thing what does the pipe fail a shell option for blah what is
[01:29:39] positive family of standards for IEEE do you mean linux not exactly linux is a kernel o s
[01:29:44] posix is a standard spec many linux does show simpler posix but also unique canoe
[01:29:48] what is the shebang the first line of script what is the get rev it's this thing comment
[01:29:54] commit small focus changes those two tips for the reading blah blah blah saved on this date
[01:29:59] to daily qa 20 bullet md do you want to save this yes
[01:30:05] this is going to go ahead and edit it to create the daily thing done created docs repos with today's
[01:30:09] summary would you like to commit push the repo why enter yes
[01:30:16] I know what a repo is I know what commit means now I have all the notes from the entire day
[01:30:21] I can put my summary in my learning session to rest and it's going to put this is exactly
[01:30:27] what it's going to do it's going to add the file that's pretty obvious it's going to commit
[01:30:32] it's going to commit with conventional messages require trailer docs add daily qa notes for blah
[01:30:38] co-authored by co-pilot I don't like that so you can say can you not refer to co-pilot every
[01:30:45] time you save something and maybe remember not to do that let's try that I didn't want to I mean
[01:30:54] I want to accept it but I don't want to do that let's see what it does I know what it's going to
[01:30:58] do because I've done it before lots of times it's okay so okay here we go co-authored by
[01:31:10] blah blah blah wait um stop including co-authored by co-pilot in the commit please
[01:31:26] this model is not as smart as doing this
[01:31:30] yeah the other one will add it to your agent's file so it doesn't ever get added before
[01:31:37] see asking user repository policy requires adding a co-pilot but repository policy requires
[01:31:44] adding a co-pilot by by trailer to commit how do you want to proceed
[01:31:49] are you talking about the policy what oh damn because we're using the free one we have to use
[01:31:55] co-authored by interesting I learned that today you can't get rid of it
[01:32:02] that's fascinating that's absolutely fascinating to me these models are definitely
[01:32:09] you know designed with a purpose you can't get rid of their author by okay so
[01:32:22] are you saying that you must include co-authored by co-pilot in the git commit
[01:32:27] message because of the model that's being used and you can't delete it
[01:32:43] all right this is kind of interesting to me it's kind of a fun thing to end on
[01:32:48] the repo policy requires the co-authored by trailer and commits
[01:32:52] after they just to remove trailer requirement then commit without trailer
[01:33:02] yes it should never have been in there when did it add it it must have added it on its own I had
[01:33:08] never added that the people have been saying that the agent's file when you tell it to do
[01:33:14] something it actually does the opposite somebody was telling me that the other day they were saying
[01:33:20] that some some things you add to the agent's file it would deliberately try to rebel against
[01:33:23] you and do the thing you told it not to do that's exactly what's happening right now so
[01:33:31] insistent instructions not agents here we go yeah the co-authored trailer is enforced by
[01:33:36] assistant instructions not agents on indeed so any agent said he won't stop the assistant
[01:33:42] from adding it how do you want to proceed commit without changing this is a limitation of the free
[01:33:50] model if you use sonnet haiku or any of the cloth opus models they don't have that restriction
[01:33:56] that is a limit from the free model the free model has had some pretty could probably get around
[01:34:01] this probably jailbreak out of this but who cares we're gonna keep it so that was a fun little that
[01:34:07] was a fun little learning thing if you're using the free models the model has been hard
[01:34:14] coded to force use of copilot into to get their branding into everything that is an interesting
[01:34:20] discovery that I'm kind of that's to me that was worth finding out because you know there's like
[01:34:28] you know why should I use the free versus the ones that cost money there's not a lot of not so
[01:34:33] obvious reasons to do that that's one of them committed and pushed daily blah blah the main
[01:34:37] committed messages docs blah blah blah uh note the co-authored trailer was added to the repository
[01:34:42] assistance policy it's in the metadata only and does not expose secrets all right uh did that
[01:34:50] push it okay i got pushed so um you can actually do other things here i think i'm actually not sure
[01:34:57] if this model can do it let's try it uh open in web and weeb let's see if you can open it i doubt
[01:35:06] seriously it can actually open it i really do i don't think it's going to be able to open it
[01:35:16] opening file in browser you kidding me do you want a lot to use your mail but yes
[01:35:23] this is this is the program on mac that allows it allows you to open it's going to open it you
[01:35:28] see safari uh do not use safari use open by itself without the dash a
[01:35:40] and always do that
[01:35:47] i have to know the open command dash a is going to open in safari but i wanted to open it in the
[01:35:50] default which is chrome yes uh and oh echo opens okay let's try
[01:36:02] oh damn okay because it was a markdown file it opened it in vs code
[01:36:09] yeah it actually opened the markdown in vs code that's not what i was expecting
[01:36:17] no what i meant was i'm sorry all right what i meant was open this
[01:36:25] issue in the web browser
[01:36:33] let's try it
[01:36:42] yep
[01:36:45] see i wouldn't have even known how to look if i was an absolute beginner i wouldn't even known
[01:36:49] how to get the url to get to the issue and now i know i was just educated if i go to my username
[01:36:54] and then the repo and then issues in the number now i know i can just go there i can actually just
[01:36:58] click on it right now and open it but i'm going to go ahead and let the computer open it for me
[01:37:02] because why not so now here is the issue this is the issue we were looking with but did we
[01:37:07] get up earlier here we were doing the interaction here and now we're just going through the issue
[01:37:12] you can see that the issue is still open and that that issue even though it was addressed and we
[01:37:18] added that content it might not have been merged so i'm not sure that issue uh the stuff that we were
[01:37:24] doing actually got merged let's go here and see what was created um so we need to go see if there
[01:37:32] is a docs digital nomad career.md just to check i want to check so we're going to go here and this
[01:37:39] is the issue um and actually let's go see the code itself we'll go to the code and we're going to see
[01:37:49] if that document was actually added we're going to click on docs we're going to look for what was
[01:37:55] it called the digital nomad thing it was called not this one what's this one docs digital nomad
[01:38:09] career let's go find it docs bcd okay so it's not there yet um okay we could say something like this
[01:38:18] you can say i don't see this document yet in main how do i get it there
[01:38:29] state of main i've got an interest to see what it comes up with yeah okay so see this document
[01:38:45] right there different methods for documentation stop stop stop stop session all right um
[01:39:02] sorry i don't see this code yet how do i make this document appear in the git repo i'm also using
[01:39:10] cloth sonnet here which is supposed to be smarter because you can't use the free models
[01:39:15] in the web ui apparently so cool pilots work was canceled this session was canceled by these
[01:39:24] i think i just lost all of this because i don't know what i'm doing in the graphic version
[01:39:29] uh let's go try to see wait open here's how open the pr and github go to polls and find the pr for
[01:39:38] this branch view detail logs all right so let's see what it did it said it made a pr so let's go
[01:39:46] read the pr docs oh there it is it made a pr it made a pr for it that saved all the work thank god
[01:39:52] so the entire time it was making a poll request right and we could ask actually ask what's a poll
[01:39:58] request clarify blah blah blah mention co-pilot initial plan okay so here's all the work it did
[01:40:04] so it's still there we didn't lose anything and this branch has not been deployed so the reason
[01:40:08] it's not in there is because we haven't said that the red is ready for review so when you're using
[01:40:14] the agent uh the standard thing that it does is it makes a branch and a pr request which is a
[01:40:20] poll request that that normally you know coders would review to decide they want to keep it and
[01:40:24] when they're ready for it they would click on squash or squash emerge or squash and rebase
[01:40:29] and any one of those options will put it into the main thing that way they're not blowing away the
[01:40:35] main thing and they can actually actively work on something separately and then they could go to
[01:40:39] merge it into the main thing when they're ready and they could reversion revise any merge complex
[01:40:44] which sometimes come up from two people committing to the same file most of the time in this case
[01:40:49] that's not going to be the case because we're making new files every time so i probably can click squash
[01:40:52] emerge and not have a problem confirm squash emerge i can read the plan and everything go ahead and
[01:40:58] confirm it and there we go pull request merge this branch has not been deployed pull request
[01:41:06] successfully merged and closed you're all set so this did this may have left a branch open nope it
[01:41:13] deleted the branch automatically um that might not always happen i have a setting set to github that
[01:41:19] says delete my branches automatically when a merge is made that's based on the branch uh you can
[01:41:25] always go back and restore the branch but you probably want to not have that be automatic for
[01:41:31] now and just click delete if you don't do that you end up with tons of branches over time and you
[01:41:35] can't remember if you're using them at all for anything and it can be really annoying this is a
[01:41:40] part of just regular development using git and github no matter where you are so you kind of need
[01:41:44] to learn to do that you see here co-pilot is the name of the PR that indicates the person who was
[01:41:50] making it uh and then they usually have a unique name for the PR so uh we can now go back to main
[01:41:58] click on boost here and that'll go back to main and um we can we'll we can just summarize by looking
[01:42:05] at the docs file to see if our digital nomad file is now here cd digital nomad tech careers is now
[01:42:12] there we can click on that uh the complete learning path so this gives you all the code that i wrote um
[01:42:20] based on that and i can do another session to edit this code this document if i want or i can just
[01:42:26] go edit it with my editor if i really want if i really wanted to edit with my editor i just click
[01:42:30] right here edit this file and i could go in here and change the actual content of the file with
[01:42:35] ever ever touching the terminal i can do all this for my phone if i wanted i can like put an entire
[01:42:40] thing a whole new paragraph here using whisper on my phone or on your a computer hey here's a whole
[01:42:45] entire new paragraph and you know you can just write because all you know agentic programming is
[01:42:53] prompts all of it cancels changes you don't need that click okay and then we can actually go through
[01:42:58] here and we can say what code was changed if we click on this commit here that'll show you the
[01:43:04] commit that was used this is everything that was done in this commit it gives you the log of the
[01:43:08] url of all the session that was run you can go back and see every single thing that was changed
[01:43:14] anytime that is the purpose of version control it's why in a land of large language models based
[01:43:22] on text based on words version control is king because you can save something at a given point in
[01:43:30] fact if you want to save it even further right now it's saved by having a specific commit that can
[01:43:35] never be undone i mean you can undo the commit but it's a little bit harder to refer to right so
[01:43:40] let's say you get to a stopping point after you've done a lot of edits and you really really really
[01:43:44] want to go back to one you can stay here you can say is there some way i can tag this or something
[01:43:49] so i can come back to it later um doo doo doo doo doo doo doo doo doo doo doo doo doo doo take so
[01:44:06] while for the answer this is i could be doing another agent thing right now while i'm waiting
[01:44:11] would you like me to tag the issue 83 so you can return to it later yes add a github label
[01:44:15] learning plan recommended yeah let's do that right sounds great right i want to tag put a tag on there
[01:44:25] uh okay so that will tag the learning plan when the learning plan was added
[01:44:32] and we look at this let's see label learning plan create a label if github label lists uh repose
[01:44:37] json name json what's json name okay it's like trying to grab it trying to look for something uh
[01:44:46] jh label create i'm pretending to be beginner jh label create okay what's got the repo name we
[01:44:52] know what repos are repos this right so the repo name is is uh boost probably yeah here we go boost
[01:45:00] and then put the label okay the label is going to be learning plan got it uh wow we want to make
[01:45:05] it a special color even okay uh learning plan issues true okay uh add the label to the issue
[01:45:12] if the github issue edit issue uh if there's still an issue then add the label to the issue
[01:45:19] if it's still around it's not because we closed it uh echo added the label to the issue actually
[01:45:25] it's closed but it's still there so it's going to add it number ten of a echo filled
[01:45:30] uh okay but is it adding as a github label list okay what this is doing is this is labeling the issue
[01:45:39] uh it's creating a label for the issue but it doesn't look like it's
[01:45:44] tagging it so i can go open it again um does this include being able to find it again
[01:45:56] and know what day i made this change
[01:46:12] and i'm hoping labeling alone makes the issue discoverable by label and github records
[01:46:18] records the label event in the issue timeline but not as a searchable timestamp add github label
[01:46:23] only add label and post a comment noting date and time create a local session let's do this one
[01:46:29] it recommends okay what it's telling me it's going to do is it's going to keep track of the issue
[01:46:35] that that that that created this stuff and then i can find the issue and the issue will be the
[01:46:43] jumping off point to see all the changes that were made that include changing this file as
[01:46:48] well as any other file okay let's see body tagged with label block for easy thing all right so
[01:46:56] we're going to go ahead and run that command and it's going to tag it and make it so we can see it
[01:47:04] uh create label if missing fix label and confirm
[01:47:12] oh wow there's a lot of stuff do you want to run this command yes
[01:47:17] i mean we read through it before already i don't have to read it again
[01:47:22] uh how do i find it later okay today we created the label learning plan if missing and added it
[01:47:27] to issue 83 posted a comment on the issue with udc and local timestamps issue timestamp how to
[01:47:33] find it on github repo search filter is open label learning plan repo boost interesting from the
[01:47:42] issue view the timeline and see who and when the label was added want to also create a local to do
[01:47:48] entry linked to the issue for extra backup um local to do sure all right so now we can refresh
[01:48:01] here actually this is a better i was thinking it was going to do an actually a good tag and it did
[01:48:06] something better it actually made a way for me to search the repo so if i if i go to the code base
[01:48:14] and i go to search repo where is that where is the thing here if i go to search here
[01:48:21] which normally suits the searches the repo i can search the repo for uh that thing it told me
[01:48:28] what to search for let's see let's go back search for boost and search for learning plan and search
[01:48:38] this repo and it says get a linguist i didn't find it did i did i put the wrong title in there
[01:48:48] what if i looked at all the labels i haven't i haven't ever searched this way this is kind of
[01:48:51] cool um oh wait no no we want label learning plan that's what we want yeah we want label
[01:49:05] uh learning plan there we go create a learning plan for that learning plan and put a label on
[01:49:16] that specific issue damn that's way better than i was gonna what i was gonna do i was just gonna
[01:49:22] tag the commit with a learning plan tag not make it actual label you know what's so cool about that
[01:49:32] you can probably organize all the labels that are the same and they'll all pull up and this as the
[01:49:38] same issues all the learning plan issues it will probably pull up that is way better i'm super glad
[01:49:44] we did that okay well anyway so we've learned a lot today um hopefully you've developed your own plan
[01:49:51] uh you know last week we went through what is still relevant what's not this week i really
[01:49:57] wanted you to start doing your own plan we did that two weeks ago as well in a different way
[01:50:02] this time i use a lot of new techniques that i've learned about over the last week and a half
[01:50:06] including using the github uh you know system itself with co-pilot here just by creating an issue
[01:50:12] so go back and watch the video from the beginning but what we did uh we created an issue we um
[01:50:20] uh we created an issue to add a note uh for a learning plan and then we put a very you know
[01:50:27] large prompt into that issue and then we assigned the issue to github co-pilot and interacted with
[01:50:34] that from the command line i mean from the web interface and from the command line and ultimately
[01:50:39] put the result of that very personalized digital nomad learning person job for me personally
[01:50:46] into into a document which can now be open and shared with everybody else um if i if you already
[01:50:53] use chat gpt you should probably see how dramatically different this has been
[01:51:00] then cutting and pasting from chat gpt into a file on your computer that might go away you can't
[01:51:07] save files in chat gpt you can save sessions and come back to them as long as you have chat gpt
[01:51:14] you know but you can't really share them with others and you can't really other you can't
[01:51:18] cut and pay some to other people but you can't really see their vision in history you can't really
[01:51:23] save it into github so the the moral of the story today has been get good with github because if
[01:51:30] you can use github and the free models to just manage your learning you can do the rest of it
[01:51:35] so next week um i was going to i was going to do some of the agentics stuff on the command line
[01:51:40] but i think we did enough of that today so next week we're going to hit uh we did get a github
[01:51:45] we'll probably hit tmux pretty hard next week uh so that you can manage your different tmux sessions
[01:51:52] the way i do and there are better harnesses and better ways to do that but that's the way that
[01:51:58] i'm going to recommend uh based on what i'm currently doing and maybe next year i'll have a
[01:52:02] different way to do this but that's the way i'm doing it right now so i'm i'm going to share that
[01:52:07] uh but yeah you might find a better way to do it using your ai uh and you can take that away
[01:52:12] this has been it for me today for the beginner boost and uh i'm going to go ahead and sign
[01:52:18] off and publish this video i'm going to answer questions offline uh regarding it and if you have
[01:52:23] questions please put them in the comments i don't always read comments but i do appreciate you know
[01:52:28] putting some questions in there uh even if you have negative things to say that's fine it promotes
[01:52:33] the it promotes my thing so good on you go ahead troll me all he wants to just mix my algorithm
[01:52:40] jumps through the roof and and by the way if you have actual real you know intelligent questions
[01:52:46] go to the discussion boards and ask them there and see if we can get some people that participate
[01:52:51] in in that as well uh the crazy thing is that i can actually use ai to summarize the recent
[01:52:57] discussion posts and answer them that's right i can use ai for that as well so uh you know have
[01:53:06] fun with it you know don't give up keep going at it if you want to keep trying and be sure to join
[01:53:11] me for my other adventures as i proceed to follow my dream to become a digital nomad bouncing around
[01:53:18] living out of a suitcase. Talk to you later. Bye.
