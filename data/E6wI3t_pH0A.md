# 🚀 Tech Career Beginner Boost 2026 - Day 6

Today on the Beginner Boost we wrote several new articles and made significant updates to the 2026 curriculum.

🔥 NEW: "Boost tools then and now" — A comprehensive evaluation of every tool and skill taught across previous Boosts and SKILSTAK (since 2013), honestly assessed for the agentic AI era. Covers why tech careers now require medical-school depth, why AI-assisted learning is THE meta-skill, and why you should trust AI exactly as much as a stranger on Stack Exchange. Featured prominently at the top of the Boost README.

🔥 NEW: "Keep repos small" — Why small, focused repos matter for fast AI agent session recovery and agentic workflows.

✏️ UPDATED: "Typing speed matters less than you think" — Expanded with a new section on the editor configuration rabbit hole (stop optimizing NeoVim configs instead of building things) and a section on tools that multiply your output like Superwhisper and agentic AI.

✏️ UPDATED: Hotlinked all Superwhisper references to superwhisper.com and added a recommendation to grab the lifetime license while it's still available.

Tools covered in the evaluation: git, GitHub, gh CLI, Markdown, terminal/CLI, secrets hygiene, tmux, reading code, containers, VMs, Proxmox, Terraform, Python, Go, JavaScript, bash, vim, pipes, data formats, HTML/CSS, Linux admin, typing speed, editor customization, GitLab, voice input, AGENTS.md, and more.

Key takeaways:
• AI is the Boost — use it to teach yourself and to deliver
• Tell the AI you are learning (put it in AGENTS.md)
• Tech is now like medicine — master multiple disciplines deeply
• Git + Markdown + terminal + tmux + containers = still essential
• Typing speed and editor configs = diminishing returns
• GitLab = missing the integrations that matter

`#techjobs #LearnToCode #AgenticAI #GitHubCopilot #ClaudeCode #SKILSTAK #TechCareer #AIAssistedLearning #Superwhisper #tmux #Git #Markdown #Linux #Containers #Proxmox #Terraform #VoiceInput #CodingForBeginners #TechSkills2026 #rwxrob`

## Transcription

[00:00:00] Welcome to the beginner boost for what are we, what are we, day six, okay, and we did
[00:00:12] skip a week and because I was largely, I was, first of all, I had a family thing. Secondly,
[00:00:17] I was, I've been largely blown away is the word I have for how AI has impacted everything
[00:00:28] that I know about technology, technology careers, technology developments, and what to tell beginners.
[00:00:35] And you saw a lot of that the last time I did the boost in the last boost, boost video I got,
[00:00:40] I told everybody what I thought was really important and I cannot overemphasize this now. So since
[00:00:46] the time of the last boost, I've produced four high quality, not AI slop, high quality applications
[00:00:56] using AI for my personal use and some for company use. One of the things I've been doing for my
[00:01:01] company, including this very objective long-winded project manager speak for recommendations about
[00:01:09] how to modernize our Pearl code base has saved me weeks of time and created opportunities to
[00:01:17] collaborate and understand one another that were not possible before because the document to write
[00:01:22] it would have taken me a day or two just by itself not counting all the research, the highly
[00:01:28] detailed research the AI was able to do for me. The takeaway from this statement is that if you
[00:01:36] are not learning AI, people, people say that their extreme AI bros and stuff like that are
[00:01:44] overstating it. I'm not overstating it. And you can call me whatever you want, but the very few
[00:01:49] people who listen to me right now are going to be around and alive and financially independent.
[00:01:56] And those who don't listen to me will be out of jobs looking for other service jobs. And I
[00:02:03] am not exaggerating. And let me justify how this is going. Okay. Before I begin the beginner boost,
[00:02:09] one second more, I want to justify my overzealousness to some people about AI. And I'm going to put it
[00:02:16] in very specific financial economic terms as to why this is going to change everything. And I mean,
[00:02:24] everything you've already heard about this. But I'm going to tell you why it is the first
[00:02:29] the first reason it's going to change everything is because within a year the cost of using AI,
[00:02:36] the way it's being used today by the by the early adopters, the one percenters that are using it,
[00:02:42] it's still not be it's 2026 is the year of AI validation and adoption by the enterprise,
[00:02:49] by a lot of a lot of forward thinking enterprises have already done it. Oracle let go of 30,000
[00:02:53] employees, lots of others have done that. People think it's a rash, rash, bad decision. I actually
[00:02:58] fully agree with that decision now, which I can't believe I'm saying. I can't believe it. But I
[00:03:03] know why I agree with it. And I'm going to explain it to you. So the very first piece of this is
[00:03:08] that these companies that have been investing trillions of dollars, trillions of dollars
[00:03:16] into AI, agentic, and the rest open, open API and all of them, they're not making any money.
[00:03:26] And if you know about the bait and switch kind of idea, so medium did this, they got everybody
[00:03:30] the blog on the platform, they couldn't pay a dime for it. The people who founded it walked away
[00:03:35] with millions of dollars and the people left behind had to decide how to make money and boom,
[00:03:39] they put up a paywall. And everybody was like, what the hell? This was supposed to be free and
[00:03:44] everything and they put up a paywall because the economics of it started to hit reality.
[00:03:49] And I'm going to make a prediction here. I think that 2026 is the year that enterprises actually
[00:03:58] realize the value of AI. They're going to realize the value of AI. They're already starting to do
[00:04:04] it. But with the Claude Opus 4.6 model and beyond, we're already starting to see this trend. So
[00:04:10] let me spell it out for you. Chat GPT and stuff like that, $20 a month, blah, blah,
[00:04:15] Claude comes around, charges 200 a month, and people are like, that's a good deal,
[00:04:20] because they're doing thousands of dollars of work for $200 a month. And it keeps going up.
[00:04:26] Agentic, let's see, anthropic, the company behind Claude has problems and they're starting to feel
[00:04:35] the financial woes of this whole thing. And they're starting to wonder if they should have given
[00:04:40] over access to their models to GitHub, Microsoft, and all these other people. They're like,
[00:04:46] how are we going to make money on this? These people are selling undercutting us. We're already
[00:04:51] seeing the trends for this. So the model for AI called Opus 4.6 is three times the regular rate
[00:04:59] of others, like code X is one by, right? And there are some that are nearly free, chat GPT,
[00:05:05] you know, GPT, many, these are all models for doing different things. They're all different
[00:05:09] levels of intelligent and better at doing different things. So along comes 4.7, which was yesterday,
[00:05:16] yesterday or the day before, 4.7 is 7.5 times more expensive than 4.6, which was three times
[00:05:27] more expensive than the previous model, which was one times that rate. And the comments are,
[00:05:36] in the comments right now are that Cod Opus 4.7 is a 30-day discounted rate. So that means that
[00:05:47] the rate for the latest Cod Opus model for software development, which is hands down,
[00:05:52] the best model for software development is 4.5 times more. And it's probably going to go up
[00:05:59] by it to at least 12 times that amount by the end of the 30-day, you know, premiere position.
[00:06:07] At the same time, all of this is happening. There is another model called mythos, which is so good
[00:06:13] at finding vulnerabilities in source code and stuff that when they started using it,
[00:06:19] even anthropic, belts a need to not give it away to everybody because they're like,
[00:06:25] because it's going to destroy security. And there are a few people in our chat right now
[00:06:30] who have been given premium access to mythos to use it. The risk of mythos being able to blow
[00:06:36] open the doors of every major, including the Linux kernel itself, is massive. Why am I sounding
[00:06:45] this alarm? Because all of these things are coming together to create an economic situation
[00:06:52] that is going to directly affect you if your job involves words. That's what a large language
[00:07:01] model is. All of this stuff is based on words. If your job uses words, you will be impacted in
[00:07:08] the next five years to the effect that you may not even have a job, but specifically the things
[00:07:13] that are currently being affected are the software jobs. Those are the first ones to be affected,
[00:07:18] but people are not even calling it vibe coding anymore in Forbes. Forbes Magazine is now calling
[00:07:22] it agentic engineering and others because that's what it is. It's using an LLM model to do your daily
[00:07:31] job, whether it be writing HR postings or writing the next software as a service in a day, which I
[00:07:41] have done. In fact, I made a storage bin organizer with a QR code that scans and uses AR so you can
[00:07:47] look at it with your camera, your glasses and see what's inside of the bin. I made that in less
[00:07:51] than six hours. In fact, it's so good. I took it private because I think I can actually get
[00:07:56] seed capital for it. That's how bad and how good it was. Is it worth $200 for me to make that
[00:08:01] application? Hell yeah. And you know what? Not just to me, to everybody else. Why do you care?
[00:08:06] Because there's a problem. There's a fly in the ointment. Who's going to pay for all this?
[00:08:14] Who's going to pay for it? We're like at a very interesting time in the world right now,
[00:08:20] where everybody is using these tools for a fraction, I mean a hundredth or more
[00:08:29] of the percentage that it takes to pay for this. And so, you know, the roosters are going to come
[00:08:38] home to rooster, whatever the saying is. And I predict that at the end of this year, enterprises
[00:08:45] will have realized two things on scale at mass. We're not just talking about the early adopter
[00:08:51] enterprises. We're talking about big worldwide traditional, you know, boring companies.
[00:08:59] They're going to realize two things. One of them is a gentic AI is the fastest way for them to make
[00:09:05] money. That's the first thing. And the second, and I'm talking across the board. I'm not at first,
[00:09:12] yeah, software first, operations, yes. But it's also an every other thing that involves words.
[00:09:18] They are going to and met a gardener group and met a who do these conferences that these big
[00:09:23] ass CEOs listen to all the time. They're already saying these things. And they are really good at
[00:09:28] convincing the upper brass that doesn't know technology things about what's coming. And they're
[00:09:32] already saying this. So number one, enterprises are going to realize that this technology can save
[00:09:41] them millions or trillions by making everybody more efficient at doing what they're doing.
[00:09:52] And the second thing they're going to realize is they can't pay for it because they don't have
[00:09:57] enough money because at the same time, oh, look, I got bubbles. Yeah, balloons. At the same time
[00:10:04] that these companies are realizing they can't live without AI, they're also going to get hit with the
[00:10:10] bill for AI. So the rates, the cost to use right now for enterprise for me, it's free.
[00:10:19] But it's not always going to be free because a topic in the gang, they're making it all free
[00:10:25] because people are still testing it out and trying to get into it. But their goal, make no
[00:10:29] mistake, their goal is to pay back that debt and make money for their shareholders. And they have a
[00:10:34] lot of debt to make up for, which means that the prices for using this agentic AI are going to
[00:10:42] skyrocket. They're going to skyrocket. They're going to go, it's not just going to be 10 times
[00:10:46] or 7.5 times like we have a 4.7 today. It's going to be like 30, 40, 50 times the cost to use it.
[00:10:55] And as soon as that happens, and I predicted will happen by the end of 2026,
[00:11:00] by the end of 2026, we are going to see these costs increase because these companies are going to
[00:11:06] start feeling confident enough to charge what they think it's worth because more and more
[00:11:13] enterprises are going to sign up for it. They already are. And so we are at a very interesting
[00:11:20] time between then and now where people like you and me can use these technologies that are going
[00:11:27] to be unattainable for most people of our technical expertise. Like being able to use the models
[00:11:33] that are coming out as on hobby projects, those days are going to end. Now they're going to end,
[00:11:40] they're eventually they'll come back, like in five, 10 years, whatever, they'll come back because
[00:11:44] the open source community will create their own versions of all these models. And the businesses
[00:11:50] want that because then they don't have to pay anthropic or open AI for that money. But there's
[00:11:54] going to be a time when they're going to jack the rate up. And this is why you care about this.
[00:12:00] Because right now is a golden time for you to teach yourself all the lessons about how to use
[00:12:08] agentic AI, everything that you need to know about it, and believe me, there are many more
[00:12:14] skills besides prompt engineering that you need to know about how to use multi-ages that I created
[00:12:19] entire summaries of this in my boost repo for you to go read about. But the biggest thing you need
[00:12:24] to learn about is how to have the agentic AI teach you how to use AI. The people that learn
[00:12:32] how to manage their knowledge in conjunction with the AI's are the ones that are going to excel.
[00:12:38] And we talked about that last week. But this is what this is a real real climax of this story. Okay.
[00:12:46] When the enterprises discover one that they will pay anything to get this because they are able to
[00:12:52] turn around solutions faster than any other company in their competition. So they'll pay anything.
[00:12:56] And they start paying anything. That means they need to find the money. Where are they going to find it?
[00:13:04] They're going to do what Oracle just did. Oracle fired 30,000 of its employees. The number one
[00:13:10] biggest expense I've lived through multiple resource actions that are doing the same thing.
[00:13:14] They don't look at your performance review. They don't look at how good a person you are.
[00:13:18] They don't look at how long you've been with the company. They look at one thing. How much do you
[00:13:22] cost and are you producing value for them in terms of dollars? Who is going to be producing
[00:13:30] the most money for the company in technology? The ones who can drive these super high expensive
[00:13:40] models. We have people in my chat today who are already experiencing this. They are not being
[00:13:48] allowed to use the expensive models at work. The staff and senior developers are.
[00:13:58] I'd be worried because then as surprises increase, where are they going to find the money? They're
[00:14:05] going to fire everybody but the engineers who are the best at using AI. They don't even have to be
[00:14:12] the best programmers. They have to be the best at making AI safely do what the company wants.
[00:14:20] They have to be fundamentally inside and out literate in the use of the high-end models and
[00:14:27] these high-end harnesses. Mostly people don't even know what the word harness means. The people
[00:14:33] who understand the terminology of AI, but not just that, they are using it actively in their daily
[00:14:38] lives. They are producing value. They are producing projects so they can show and prove it, who are
[00:14:43] regularly sitting there quietly in the meetings where everybody talks shit about AI. Guess who's
[00:14:51] going to get fired? The senior project manager above them who's responsible for the money,
[00:14:58] he or she is quietly sitting there listening to all the people who are complaining about
[00:15:03] AI. Oh wait a minute, this AI slop that. None of these people are even trying it. They're not even
[00:15:09] trying it. They're not even attempting to use it to be productive. They just don't like the
[00:15:14] existence of AI and so they're finding ways to say it's bad so they can feel better about themselves
[00:15:20] and ignore it. When it comes time to make the decision about who stays and who goes, guess who stays?
[00:15:29] The people who are adopting AI, whether you like it or not, the people who are adopting AI,
[00:15:34] the people who are getting good with it, who know how to use it, who have made the mistakes
[00:15:39] on their own and learn from them, the same as deleting your college paper and then realizing
[00:15:46] you have to make a backup. The people who are learning how to safely and productively use AI
[00:15:52] will be the ones left and they won't even be the best. They'll just be the people who are literate
[00:15:58] in AI. The people who are not literate in AI will be cut and so that manager who is sitting there,
[00:16:05] the upper, they won't even know it yet. The senior manager who has to make the decision,
[00:16:08] why not even be a technical person? I am now starting to hear middle and senior level managers
[00:16:14] saying how crappy they're, they're basically, they sound like boomers because they're like,
[00:16:19] I'm not going to use that. That's bad for them. I think fine, it doesn't matter. The person above
[00:16:23] you who's going to make the money decision is going to cut you and if you don't believe me,
[00:16:27] go read the news today. People are being cut everywhere and the people that are getting cut
[00:16:32] are the ones who don't know AI. All right, I'm done. I cannot overstate this. I'm going to get
[00:16:40] all kinds of shit in the comments because I always do. It's like, oh, it's another AI, bro.
[00:16:44] I'm not. I am a realist and I'm telling you, I have used AI to produce real value for myself
[00:16:50] and my company over the last two weeks that has fundamentally changed my opinion on all of this
[00:16:55] and made it to the point where I am going to shake people by the shoulders and say,
[00:17:01] try this shit. If you don't at least try it, then you'll never know. Stop commenting on things
[00:17:07] you don't know about. Give it a try. See if you can make it work in your life and use it safely.
[00:17:15] If you are making mistakes or you're afraid of it, that's because you don't understand how to use
[00:17:20] it. You haven't spent enough time helping it to check out itself, helping to run it in a safe
[00:17:25] environment, helping to put it into a VM. And guess what? The best thing is to teach you all that.
[00:17:30] The AI itself, the AI itself knows how to use the AI safely and will help you learn to do those
[00:17:36] things. You know, I know because I wrote five separate independent articles that I tweaked as
[00:17:41] I was going using AI that are in the boost repo right now to talk to you about these very things.
[00:17:48] So and I now now I have to talk about something. So the message from that big long rant that you
[00:17:54] probably pass forward through is one thing. Try AI as soon as possible. As soon as humanly possible,
[00:18:04] start integrating AI into everything you do if you want to be a technologist. And frankly,
[00:18:10] I think any you want to do anything that involves words. And look,
[00:18:16] am I a pro AI, bro? If you want to put a label on me like that, fine. I am here to tell you,
[00:18:21] I'm trying to help you. I'm trying to help you. I'm trying to help you because I'm sitting back
[00:18:25] listening to people who are criticizing, I who are not using it. I'm saying, yep, good luck having
[00:18:30] a job in six months. Because because the objective use of the AI, I'm putting out project reports
[00:18:38] and summations of things and strategies and develop and porting like hundreds of lines of
[00:18:44] operations like immediately stuff that I would have spent a long time even establishing whether
[00:18:48] I was going to do it or not, because it would have taken so long to actually code it. I don't have
[00:18:51] to do it anymore. I just do it because it's easy and it can be reviewed and I have to read the code.
[00:18:56] You still have to know that I code to read it. So these are these are all things that I have done.
[00:19:01] And everybody else is sitting or complaining about AI. Meanwhile, I'm getting shit done.
[00:19:06] So be a doer. Be somebody who tries it. Be somebody who gives it a shot. Be somebody who
[00:19:12] adopts it early because the people who wait are going to be fired because they're going to have
[00:19:17] less experience than the people who adopt it early. I'm done saying that I can say it. I can say
[00:19:22] that I'm blue in the face. It doesn't matter. I'm telling you, learn this stuff. And it's not
[00:19:29] you're not going to learn everything overnight, but you need to you need to like get the AI on your
[00:19:34] side to help teach you how to use the AI. And then you can become good and you can teach yourself
[00:19:39] out of code. And that brings us to the next part of the beginner boost. I'm going to take a little
[00:19:45] brief break after that rant. I know it was a long rant. It was like a 20 minute rant. If it
[00:19:49] doesn't serve its purpose, I don't care. I've done my best. All right. So after all that big rant,
[00:19:57] we have to ask a really important question. So many of you have watched my other boost videos.
[00:20:04] And I'm leaving the boost videos up there in my archive playlist. But I have to go through them.
[00:20:09] I have to go through the technologies that I taught in the in the in the beginner boost. And I have
[00:20:13] to talk about very frankly and realistically how relevant those things are now in the face of AI.
[00:20:20] And I got to tell you, I was not anticipating what I discovered. And I'm going to share that with you.
[00:20:28] And let me just to give you a sense of this. How important is it to learn them?
[00:20:34] Much less important, much less important. How important is it to learn bash? How important is
[00:20:40] it to learn the Linux terminal? How important is it to learn Tmux? We're going to go through
[00:20:45] and we're going to evaluate all the tools from the beginner boost that I've taught over several
[00:20:49] years with extreme passion for all for a number of reasons. And then we're going to talk about why
[00:20:54] those reasons have changed dramatically. And I want to show you how they've changed. Okay. So
[00:21:03] the first thing is typing. All right. Now I have to start with a story this week. So I have been
[00:21:13] spending eight to nine hours a day. I have been I've been building amazing applications on the
[00:21:18] side while I'm in meetings during my co-working. And I'm paying attention in the meeting, but I'm
[00:21:23] also babysitting agents working on projects of my own at the same time. And while I love typing,
[00:21:31] everybody knows I love typing. And there's like a whole culture around typing. Typing is optional.
[00:21:37] That's right. That's right. Hear me out. Typing is optional. And the most important tool that I
[00:21:46] would add to the list for beginner boost in 2026 is something like super whisper. So I have super
[00:21:54] whisper right now. I'm just going to mention it. I want you to go look at super whisper today.
[00:22:00] Because the method of coding in with the use of AI has become
[00:22:07] using words effectively. And so I'm going to try this right now. So we're in the beginner
[00:22:13] boosting right now. And I'm going to actually do this very thing. I'm going to use super whisper
[00:22:19] by a tip. I'm going to hold down the key. And I'm going to say. Can you help me create an article
[00:22:28] summarizing the importance of learning a tool like super whisper over obsessing with typing speed
[00:22:34] and best possible configuration of neo of import example.
[00:22:41] Enter. Could I have typed that? Yeah. Do I have to? No.
[00:22:47] Let's see what the AI comes up with.
[00:22:52] I see there's already a reference in the outline 36 to optional. Sorry, looking at the code I've
[00:22:56] already written the actual documentation. And typing matters less now.
[00:23:02] Build MCP servers. Oracle already exists and covers the topic. I'm trying to figure out
[00:23:06] whether the user wants me to expand on this. Should I expand on the missing type of matters
[00:23:09] less now and also cover the stop of sisting over neo am config angle? Yes.
[00:23:16] I just said enter, but I could have like said yes.
[00:23:20] You have any times that my job has become yes. Yes. Yes. Yes.
[00:23:27] There are people that are watching me do this. They're like, how have you possibly given in?
[00:23:32] How have you fallen so low to allow yourself to do this? How many of you have watched Star Trek
[00:23:38] or any science fiction where they're actually talking to the computer? I enter into evidence
[00:23:44] Tony Stark. Thrill me. His favorite thing to say when he wants something to like burn, you know,
[00:23:50] to make a new Tony Stark outfit? Thrill me. Tony Stark does most of his development using
[00:23:57] audio voice. We are in the Tony Stark era. We have come full circle. We are there. And if you don't
[00:24:04] buy into this fine, you can wait for three years and be behind the rest of us.
[00:24:10] The era of speaking into your AIs and your prompts is here. Conversational coding is here.
[00:24:19] Prompt engineering, agent engineering, conversational interfaces are here. And I am so glad I made
[00:24:26] Bonsai because already the AI community is latching on to my Bonsai framework because it was designed
[00:24:32] from the ground up to make conversational command line interfaces period. No dashes, no nothing.
[00:24:39] Because that is the new normal. And people who have made a living like typing really fast in like
[00:24:48] seeing their auto completion pop up and like, oh, and all these crazy stupid shit that they
[00:24:54] added in Louis to do the thing. Yeah. Okay, boomer. Enjoy using your new of them configuration. Nobody
[00:24:59] cares. In the age of the harness, the harness is the thing that we're using that that is textual
[00:25:07] that you're interacting with. Your editor doesn't matter. If you're a hacker, great. Use the editor
[00:25:14] that's on the system is even been from my position on editors has never been more valid. I have always
[00:25:22] said that being fast with the existing editor that's on a system is more important than being
[00:25:29] really, really good and fancy on a single system. In fact, I gave up using new of him this year because
[00:25:35] it's too slow to start up. It has to do tree prompting has to do all this stuff. I don't need any of
[00:25:41] that. I just needed to open a file quickly. And that's that's never been more true. I still have
[00:25:46] to edit files with AI. I just don't have to do it as often. And I can actually do things more
[00:25:51] efficiently with the AI, including like all the things you would do was said and off guess what?
[00:25:55] The AI uses said an oct and Python and parole and everything else to do the editing. And you still
[00:26:00] need to learn how those things are what they're doing. But one of the best ways to do that is
[00:26:04] watch what your AI is doing. It'll show you it'll show you how it's using pipelines and stuff.
[00:26:08] Being able to read the functions that are being passed to the Linux command line,
[00:26:14] especially pipelines and logic that has ampersands in it, we're going to go through all of that in
[00:26:19] the boost. But being able to read what is happening is more important than being able to do it,
[00:26:23] which means that the number one thing about your editor that you need is you need to be able to
[00:26:28] occasionally edit a file as effectively as you can and on anywhere that that exists in containers.
[00:26:36] The editor is not even installed usually if you want to stay with Neil have been fine. But why?
[00:26:40] What purpose? Seriously, this is a challenge to those out there. Why do you want fancy code
[00:26:46] completion in Neil VIM in 2026? If your answer is because I still edit my code using my editor.
[00:26:56] Okay, all right, that's fine. Let's go see what it's just for the article I already had written
[00:27:06] about this. Stop optimizing your editor instead of building things. The typing speed trap has a
[00:27:12] close cut because in spending weeks configuring Neil VIM chasing the perfect VMRC watching YouTube
[00:27:16] videos about someone else who will plug and set up an endlessly tweaking key bindings.
[00:27:19] The same pattern shows up in Emacs, Tmux Doc files, shell prompts and terminal color schemes.
[00:27:24] This is all stuff that I love. This is why it's so hard for me people. For me, this has been
[00:27:29] blowing up my cognitive dissonance because the things that I love, you guys all know how much I
[00:27:35] love the terminal, that doesn't matter anymore. Certain things in a terminal matter like your Tmux,
[00:27:40] and we'll talk about that in a second. This is a little overzealous on the Tmux thing. Actually,
[00:27:45] in fact, I'm going to tell it that. Can you tone it down on Tmux because Tmux is still a very relevant
[00:27:51] tool for multi-agent engineering? I think Tmux does, but
[00:28:03] even though there are other tools out there for it as well. Which ones, it's more about your
[00:28:09] harness, right? Then Tmux, I just don't know how to use harness as well. Cmux, there is conductor,
[00:28:16] Tmux, it is a relic from the past for servers, really. Yeah, I still think Tmux is worth learning,
[00:28:22] but I'm still learning about it. The same pattern shows up in Emacs, shell prompts,
[00:28:29] and terminal color schemes. None of this is building anything. It feels productive because
[00:28:33] you're learning and making decisions. You have to put in a config file, help you exit text,
[00:28:36] marginally faster. Meanwhile, the person next to you with a stroke of VS code install and super
[00:28:40] whisper shipping features by talking to their agent. Editor configuration is a form of procrastination
[00:28:45] that disguises itself as professionalism. Holy shit! I don't think there's a better quote in that
[00:28:50] entire article. People, people writing their editor instead of doing things. It signals depth to
[00:28:57] other, to other enthusiasts, but employers don't care how many plugins you have. They care whether
[00:29:00] you can deliver working software. Well said, this doesn't mean editors don't matter. Pick
[00:29:05] when it works, learn it well enough to not fight in it, and move on. The diminishing returns of
[00:29:09] editor configuration sit fast, usually within the first few hours. Everything after that is
[00:29:14] hobby time, not career investment. Couldn't have said it better myself. Learn tools that
[00:29:19] multiply your output instead. Super Whisper is a good example of a tool that actually changes
[00:29:22] how fast you work. Speaking of 200 word prompt takes about 90 seconds. Typing it takes several
[00:29:27] minutes over the course of a day spent working with AI agents voice input saves hours, not because
[00:29:32] it's a novelty, but because it removes the genuine bottleneck between your brain and the machine.
[00:29:37] The same logic applies to learning Git deeply. Understanding containers, writing good prompts,
[00:29:42] and knowing how to read code. There are tools that compound a faster niobim can pick does not
[00:29:47] compound if plateaus almost immediately. If you have an hour to invest in getting better at tech
[00:29:51] works, spend it on something that changed the shape of your workflow, not something that shapes
[00:29:55] milliseconds off keystrokes, you should be making the first place. Well said. Well said, AI.
[00:30:07] We're not touch typing. If you don't touch that at all, spending a week to learning
[00:30:10] homeroom position is worth it, not for speed, but so you can look at the screen white type,
[00:30:14] hunting and pecking while staring at the keyboard splits your attention in ways that slow things
[00:30:19] down, not just fingers. Bottom line, don't let slow typing or an unoptimized editor stop you
[00:30:24] from starting bottleneck in tech work today is thinking, not typing, and certainly not having
[00:30:28] the perfect niobim setup. Use voice input, long prompts, autocomplete per code, and save your
[00:30:33] keystrokes for the things that actually need them. Invest your learning time and tools that
[00:30:36] change the way you can do, not tools that make you marginally faster at what you already do.
[00:30:42] And that is it. That is it. So with that sentiment in mind, I'm going to go ahead and commit this.
[00:30:49] With that sentiment in mind, we now need to start looking at, look at this, it's going to
[00:30:55] commit it automatically. Look, you can study what it's going to do. It's going to cd into my directory,
[00:31:00] and if that works and if that fails, it fails. That means it's a pipe, it means it's a logic line.
[00:31:05] And then if that works, it's going to do a git add, this particular file, and then if that works,
[00:31:11] it's going to commit it with this document. This is a conventional commit. Doc's expanding
[00:31:16] the article of the thing, and it says, do you want to do that? Yes, I would. Do I don't want
[00:31:19] to type that in? No, I don't. People say, you're not really coding. I had somebody say that this
[00:31:26] week. I said, okay, boomer. If you want to spend time wasting time and say that I am not a developer
[00:31:38] because I'm not typing the actual code or the writing, and be my guest, meanwhile, I'm going to
[00:31:44] do things that matter. So they're done. The thing calls out Neobex rabbit holes, learn tools and
[00:31:50] multiply ball. All right, so here's the actual thing. It just made it committed it. This is now
[00:31:55] in my beginner boost repo. You can go look at it. And I can actually ask, did you link that
[00:32:00] from the main read me as an optional thing to read? I think it's already linked.
[00:32:12] All remarks is optional. Okay, thanks. Thank you for that. So this is now in there. Learn the
[00:32:17] tools superwister is a good example. And stuff. I mean, you can do like little things. I could
[00:32:23] do something like this. Watch this. Watch this. Hot link any reference to superwhisper to the
[00:32:30] actual page where you can get it. Make a suggestion about maybe getting lifelong membership now while
[00:32:34] you still can. And I hope that be doing this during the boost convinces somebody to try it.
[00:32:53] Uh, here's what is changing. Superwhisper has got the link there. That's good. That's fine.
[00:32:59] It's like, could I have done that by hand? Yes. Is it worth burning the tokens? Yes.
[00:33:04] It is to me. Um, I want to, you know, go rock climbing or something. Do you want to run this
[00:33:12] command? Go ahead and commit the latest changes. Yes. The thing, I hope you're seeing the fact that
[00:33:19] what this is doing is this is enabling me to do things ridiculously quickly. And that
[00:33:26] reduces the tension, the mental tension to want to make a change. Because it's so easy,
[00:33:32] I can make the changes that I've always wanted to make that I didn't have the time or I wouldn't
[00:33:37] dream of doing, including big ones. Like I re-implemented an entire project that was in Python and Bash
[00:33:42] and go in less than an hour because I was able to, if I had not to go through and write all that
[00:33:47] code and understand it, I would have had to architected everything. I didn't have to do any of that.
[00:33:51] And the code's fantastic. I read through the code myself to check it. So, you know, it's like,
[00:33:57] and there we go. Now we have a link. I mean, that took less than, less than two minutes.
[00:34:03] So, um, this is kind of where we're at. And I just, I wanted to make that point really quick.
[00:34:09] All right. So let's actually go through the list of tools that are from the boost effect.
[00:34:12] I'm going to do this right now. Can you summarize the tools that I normally teach
[00:34:17] from previous beginner boosts and make a, an evaluation for how important they are today
[00:34:23] to still learn and what the better tools might be to learn instead.
[00:34:31] Include things like harnesses, models, Git, and such things.
[00:34:44] I got boost wrong, but it'll fix some swelling. He'll do that.
[00:34:54] Focus on tools that were taught in previous beginner boosts and if necessary, you can look
[00:35:00] in other branches from previous years.
[00:35:15] You can include the rbx-rob/skill-stack, S-K-I-L-S-T-A-K repo in your evaluation.
[00:35:38] All right. And this is why I need to have two agents running because I could be doing
[00:35:42] something else while it's thinking, right? And that's why I have this going on, right?
[00:35:48] In fact, I might actually work on some of my TW issues right now.
[00:35:56] Create an issue about chat messages from the admin PWA being duplicated both on Twitch and
[00:36:06] in the log output view. All right. Let's go back and read what it came up with.
[00:36:16] All right. Here's the second.
[00:36:23] Did you include skill stack in your evaluation?
[00:36:42] It's using the mcp server. Actually, it's reading the content.
[00:36:54] Yep. And I'm going to go take a peek.
[00:37:06] Accomplices the tools traditionally taught on skills stack previous boosts,
[00:37:09] typing keyboard skills, basic learning how to really type.
[00:37:12] Or skills stack previous boost, get up, throughput, like, god damn, it's like
[00:37:16] summarizing everything so well.
[00:37:24] I can actually have it study the content of my previous videos and I can actually have it
[00:37:29] look at the transcripts of the videos and figure that out if it actually, if I wanted to give it
[00:37:33] even more detail. I feel like it's covering most of it though. New network fundamentals,
[00:37:39] Kubernetes, Ansible, Homelab hardware, skill stack method, tracking.
[00:37:47] Let's create the article still and again, I can still do it.
[00:37:58] Each of us should appear exactly once.
[00:38:03] Yep. I need to build that command.
[00:38:16] Create an issue to reduce the number of default historical messages to
[00:38:23] one and a half screenfuls on a mobile phone.
[00:38:33] All right. Let's read the article I came up with.
[00:38:37] And this is based on the data and the stuff that I've been writing. You should see the whole
[00:38:40] stuff we learned today about literary writing and training your own model against your
[00:38:46] own writing and your favorite literary influences and style guidelines in order to use it to write
[00:38:51] in your same voice. Boost tools in and now, the beginning of this has been running since 2020,
[00:38:56] skill stack has been teaching text skills since 2013. Over the years, the tools and skills were
[00:39:00] taught bald, the arrival of Gentige has forced the sharpest reassessment yet.
[00:39:05] Some tools that were one central have become optional, others that it seemed like power
[00:39:08] user luxuries are now essential. And some in China, we need categories of appear that did not
[00:39:12] exist in previous booths. Here's the honest evaluation of every tool and skill in the
[00:39:16] booth and skill stack up traditionally covered how important each one is today and what you
[00:39:21] should prioritize instead of something when something has shifted more important than ever.
[00:39:26] Get and get up. Oh my God. I totally agree. I totally agree. The single most important skill
[00:39:32] is get and get up. You have to get get and get up before you can get co-pilot and before you can
[00:39:38] start even we're having any sort of agentic AI work on your code and your knowledge by putting
[00:39:44] it into a gear repo so that you can revert it. This idea of managing knowledge is source.
[00:39:49] Okay. I'm going to actually add it. I'm going to add some tweaks to it. I have some tweaks to add
[00:39:53] already. I'm going to go add my tweaks. Add something about get and get up being important
[00:40:02] because knowledge is managed as source code these days with revision history and everything
[00:40:10] more now than ever. Include a strong emphasis on markdown, get a flavored markdown because
[00:40:21] it is the language of knowledge that can be revised. Make sure people learn that instead of
[00:40:27] proprietary tools like anything from Microsoft Word. All right. We'll let that word for a second.
[00:40:39] Let's see what the proposed solution is. Okay. So, when opening an admin PDBH app,
[00:40:43] you may have started a commission or a loaded by default. I'm going to phone this means a long
[00:40:47] scroll of history to reach the current conversation. Make it hard to catch up.
[00:40:50] Reduce the default number of historical shot messages on initialness so they feel roughly
[00:40:54] 1.5 screenfalls on a typical mobile device. It has to be configured by a VOSMR.
[00:41:00] Acceptous criteria to follow the circumstances of capture. This is exactly what I want. Thank you.
[00:41:08] Okay. We want to, I'm working on two things at once, create an issue to remove the mute button
[00:41:21] next to the send a message field on the chat log view.
[00:41:34] All right. Let's read the latest that came up with.
[00:41:48] But the beginning of this has been running since 2021.
[00:41:54] It's been, Git has been in every boost since the beginning. It was always important. Now,
[00:41:57] it is the foundation of everything. Every agenda guy I work for runs on top of Git,
[00:42:02] agents commit def branches and revert constantly. GitHub is where your proof of work lives,
[00:42:06] where employers look, where AI agents operate in a lay through GitHub and GitHub actions,
[00:42:11] Git work trees, which were barely mentioned in previous booths.
[00:42:14] booths are now essential for running multiple agents in parallel in the same repo.
[00:42:18] But Git is no longer just a tool. Knowledge itself is now managed in source code.
[00:42:22] Your notes, your documentation, your learning journal, your personal knowledge base, all of
[00:42:25] it belongs in Git repos with full revision history. Every change is tracked. Every version is recoverable
[00:42:30] and collaboration happens to pull requests and issues. This is how professional management
[00:42:34] of knowledge happens now. This is how you should manage yours from day one. Again,
[00:42:40] a repo full of well organized markdown files beats any proprietary neural kicking app because
[00:42:44] you own it. You can search it, you can version it, and no company can take it away from you or
[00:42:48] change the format out from under you. Then, important tool, now you had to see back then,
[00:42:54] important tool you had to learn for code. Now, the single most important tool in your stack for
[00:42:58] code, knowledge, documentation, and everything else, markdown. Every boost taught markdown as
[00:43:03] part of web development and note taking, it was always useful. Now, it is something more fundamental.
[00:43:07] Markdown is the language of knowledge. Every read me, every agents on MD, every obsidian ball,
[00:43:12] every GitHub issue, every AI prompt, every piece of documentation that matters is written in Markdown.
[00:43:17] It is plain text, which means it works with Git. It works with grep. It works with AI. It will
[00:43:21] still be readable in 50 years. No proprietary format can make the promise. Learn GitHub flavor
[00:43:26] Markdown specifically. Do not waste time learning Microsoft Word, Google Docs, or any other proprietary
[00:43:30] document format for your own knowledge work. Those tools lock into thinking inside someone else's
[00:43:34] software. Markdown files are yours. They live in your Git repo with full revision history. They
[00:43:38] are under beautiful and obsidian in GitHub, in any static site generator, and in every terminal.
[00:43:42] They are the universal format for human and AI communication. If you take one thing from the
[00:43:47] boost, make it this, write everything in Markdown stored in Git and never depend on a proprietary
[00:43:52] tool for your own knowledge again. Then basic web skill and note taking format. Now, the lingua
[00:43:58] franca of AI assisted development, knowledge management, and professional communication.
[00:44:03] Terminal and CLI Florence fluency. Every boost spent significant time on terminal basic
[00:44:08] file system navigation processes, that in, that out, that they're permissions, the whole PWA CD thing.
[00:44:14] This investment pays off more now than ever. A Gentic AI lives in the terminal.
[00:44:18] GitHub co-pilot CLI cloud code every serious AI coding tool runs in a terminal application.
[00:44:23] You need to read output, understand exit codes, spot failures, bury, bury, and log output and not
[00:44:27] panic when something goes wrong silently. Then it was core curriculum, the terminal velocity section.
[00:44:32] It's even more central. The terminal is now the primary interface for AI assisted work.
[00:44:38] Tmux. Previous first type, Tmux is terminal multiplex or anti-forkeeping sessions live in
[00:44:42] splitting pains. Skills Act Linux MD even showed synchronizing pains for configuring multiple
[00:44:47] machines at once. That was useful. What Tmux has become is something else entirely. A multi-agent
[00:44:52] orchestration layer, multiple agent AI agents and parallel Tmux pains scripting them with send keys,
[00:44:56] managing work trees with cross sessions. This is exactly what the mare, what is it called?
[00:45:06] The mare application does. It uses Tmux to do all this.
[00:45:09] There's a real multi-agent workflow and it beats every Google tool that's right on the problem.
[00:45:16] I have something to add here. I have to go all the way to bottom.
[00:45:22] Please make sure to mention that the session maintenance with a remote system during terminal
[00:45:32] crashes is still valuable for Tmux as well. Since using Tmux and even screen is still
[00:45:45] a common way to keep a running process on a remote system even after you're disconnected.
[00:45:52] All right, let's see. I want to have that updated a little bit.
[00:46:01] Accept this criteria. Do you want to run this command?
[00:46:05] I'm switching gears there. Jesus, you create pics, remove the mute button from the chat
[00:46:09] sunfield. There's a mute button. Especially, do you want to run this here? Yes. I'm just making
[00:46:16] issues for stuff that I'm thinking about that I want to work on later. I'm using GitHub for that.
[00:46:20] It's using the GitHub command line to create the issues. Which is another reason GitLab is not
[00:46:24] even a thing. I'm actually going to put that in here. Adam mentioned that GitLab is no longer
[00:46:34] relevant at all because it can't be used with AI. There's no GitHub command line tool for GitLab.
[00:46:49] All right. What else can I do? I created issue 99. I'm trying to think if there was some
[00:46:55] other issue with the UI that I was trying to do. I think we got the pinch thing.
[00:47:19] Create an issue
[00:47:30] to show the current number of users and bit rate when available.
[00:47:46] And number of moderators in the chat and number of VIPs in the chat
[00:47:53] as a summary at the top of the chat log.
[00:48:10] All right. Let's go read it again, see where it changed. A lot of hardware typing speed.
[00:48:18] Stimulancy assist data formats. That's still important. Yeah.
[00:48:23] Okay. T-mucks. Turn on C-line fluency.
[00:48:31] Something's on top of that. Let's see. If your connection drops, the process keeps running,
[00:48:34] reattach later and blah. Essential for both, it's a real purpose and the best multi-language
[00:48:39] orchestration to available reading code. It was always taught reading code, but it was bundled
[00:48:42] with learning to write code. Those two skills now have diverged completely. I have something to add
[00:48:49] right away. Add emphasis to learn to read the code that is most likely to be
[00:49:08] in the language model that is being used. This means languages like Python and Go,
[00:49:20] which have large code bases as well as web languages are more likely to work.
[00:49:31] Compare writing a multi-process daemon in bash to Python, for example.
[00:49:44] Also make a reference to languages which are easy to parse because of their simple syntax are
[00:49:53] less expensive when doing agent engineering and easier to review and scan
[00:50:01] during the agent driven development.
[00:50:13] All right. Propose solution. Okay. When using the advocate of your chat view,
[00:50:20] there is no quick glance at stream health status. Broadcast for us to leave a chat view to check
[00:50:25] view count and bit rate. Add a compact summary bar at the top of the chat log view showing.
[00:50:42] Add a note to make this a generic part of all log view types
[00:50:53] that can be omitted simply by not adding fields to it.
[00:51:03] It should always be just text and emojis and very small with relation to
[00:51:12] the other chat content and should never scale with the main content.
[00:51:24] All right. Let's go back and read where they came up with now.
[00:51:29] Less speed, Linux, HTML, CSS, bash scripting. Okay. So
[00:51:40] reading code. Okay. We always thought about reading code. The developers who get burned
[00:51:44] are the ones who stopped reading output and started just running it. Reading code, reading
[00:51:47] diffs, reading terminal output. This is now the single most valuable technical skill you can have.
[00:51:52] I mean, is it? I don't think so. That's like overstating it.
[00:52:05] Stop being so hyperbolic about everything. Reward stuff so that it's more
[00:52:18] accurate.
[00:52:25] For example, you said learning to read diffs is the most important skill you could have,
[00:52:30] but in fact, the most important skill you could have is thinking creatively about solutions
[00:52:38] and drawing corollaries between different systems to create efficiencies that bring value.
[00:52:56] All right. So let's see what this said now. When using the admin PWA, there is a quick glance
[00:53:03] with Sifova as to leave the chat variable game. Add a generic fixed summary bar component at the
[00:53:09] top of log style views. The bar is a reasonable component shared across all log view types,
[00:53:14] chat, debug, et cetera, displays key bag fields in its pocket. What I'm talking about, by the way,
[00:53:19] for those of you who want to know, is this thing here. So this is the, I had the agents,
[00:53:25] this was entirely coded with AI. I didn't code any of this. And this actually is a full chat
[00:53:32] bot with all of the colors and everything. And down here, I can test different things. I can,
[00:53:39] I can list only the priority people. I can take out the different events and only see the chat.
[00:53:45] And that was all coded with a Gentic AI. I can jump back and forth between the home.
[00:53:49] I can click on my settings. So I can do all this from my phone from anywhere.
[00:53:52] I can change the category. I can, I can go to RTRL, RTRL.com and go see where I am on the map.
[00:54:02] Here, this API for RTRL is unpublished. And the AI reverse engineered the push API
[00:54:10] that was used by the application to, to generate the GPS location in order to allow me to immediately
[00:54:18] push, activate it and push to the RTRL by just clicking on a button. So it's not letting me push,
[00:54:27] push right now, which is probably because I just added, I just added a new scene switcher.
[00:54:33] This will turn my clips on. So if I tap that today, I turn it clips off.
[00:54:39] I have all of my bugs right here. I can simulate subscribe events. Yep. And I can get this, get
[00:54:46] notified audibly by the whole thing. And this entire thing was built in less than a few hours
[00:54:53] by using AI and reviewing the code as I went as much as possible. It's still in POC mode,
[00:54:59] which means it's not final. But when it is final, I will review every single line of code that's
[00:55:04] there and go through it. So, so that's what I'm working on on the side while I'm also doing
[00:55:10] the beginner boost stuff. But yeah, I was trying to show you if I, if I tap, I think I might have
[00:55:14] to refresh actually. Yeah, I haven't, I haven't updated this in a while. You have to refresh it
[00:55:20] every time. I don't know if the push button is on. No, the push button is not enabled right now.
[00:55:24] I think it only allows me to put the push button on when the IRL stream is the, is the topic that
[00:55:29] was a recent change. So I was going to try to show it to you without, with the main screen. So that
[00:55:34] sounds like all, I sounds like another issue. I'm going to add, I'll go add it right now.
[00:55:39] I'm going to go add the issue right now. Let's go through the boost though. So let's go back to
[00:55:45] the boost. I'm, well, before I forget, I want to add this to, wait, which one is that?
[00:55:52] Which one am I listening to? I'm going to, I see these little robot things. That means that
[00:55:56] there's a robot prompt for me to go look at, and it puts notifications in my Tmux windows.
[00:56:01] Boost, so we're going to do that. Boost writing tool evaluation article,
[00:56:05] Tmux creating get a issue. Okay, so that's, yeah. Okay, that reusable components, this is,
[00:56:12] I want this, yes. All right, so, and then we're going to make, I'm going to make another issue
[00:56:17] really quick.
[00:56:24] Create an issue to allow sending GPS and RTRL data, even when not using one of the IRL scenes.
[00:56:35] All right, so let's go read this again. I reworded it to, like, be less hyperbolic. I
[00:56:43] could probably should read the whole article again, but I'm going to try to scan it. I don't
[00:56:46] want to waste the release time, but hopefully this will give you a document that you can go
[00:56:52] read right away and follow after this boost is over, which is in a few minutes.
[00:56:57] So, boost tools in and now, the bigger this is running, blah, that's the seven-time category, so I'm
[00:57:05] excited to do this, okay? Okay, here's an honest evaluation of every major tool.
[00:57:12] Before getting specific tools or saying, you see how it used sentence case here? That's because I
[00:57:17] set, I set up in my agentic template to use sentence case anytime I was using Markdown.
[00:57:22] You see how it's using single lines for my paragraph? So, they're easier to read and wrap.
[00:57:28] That's also a generic rule across the board that I put in my agent, my agent sign, deep file,
[00:57:32] and my agentic template. These are skills managing and a centralized agentic template that has your
[00:57:38] preferences is a skill that's just as important as learning how to use Tmux or VIN in 2026,
[00:57:45] learning how to put your preferences into something that's going to be used every time AI fires up.
[00:57:51] It's called context management. Before doing a thing, more important than ever,
[00:57:57] get a note. Okay, so, just a tool that I'm going to change. I trust a note on GitHub specifically.
[00:58:06] The boost is always recommended GitHub over alternatives. The AI and the AI era has made the
[00:58:10] recommendation stronger GitHub co-pilot. JCL, I get up actions in the agenda guy ecosystem,
[00:58:14] or built on GitHub. GitLab has no equivalent command line tool, no native AI agent integration,
[00:58:19] and no clear path for an agentic workflow that defines modern development. If you are starting
[00:58:22] fresh, GitHub is the right choice. Good. I asked it to add that. Foundation for code
[00:58:28] knowledge management documentation and agentic workflows should be good. It doesn't matter what
[00:58:31] you think about the company. It doesn't. Every boost top markdown as part of the web development
[00:58:36] note-taking, this is the same thing as before. Learn GitHub flavored, pretend or format for AI.
[00:58:44] Yeah, terminal CLI. Learn that. Okay, Tmux. Look at that.
[00:58:51] Reading code. This is the one I asked it to dial down a bit. Boost always taught reading code and
[00:58:56] bundling it to write code. But it was bundled with learning to write code. Those two skills have
[00:59:00] diverged. AI writing writes most of the code now. Your job is to direct it. Verify what it produces
[00:59:05] and cache mistakes before they ship. The ability to scan a diff, trace logic, and spot when something
[00:59:09] is off is a core part of working with AI agents effectively. This is more important than knowing
[00:59:15] how to write code or type bust, is knowing how to read what the code is, what's happening and
[00:59:20] how it's changing the code. Those dips that we've been looking at, we're looking at a dip right now.
[00:59:25] What do the pluses mean? Why aren't they there? How can I make sense of that? What is, you know,
[00:59:29] all of these things, these are all way more important than knowing even how to configure
[00:59:34] the Neo-Vim. This does not replace creative thinking and systems reasoning. There are still the skills that some people generally value
[00:59:40] of. But reading code is the mechanism prerequisites that applies to think care.
[00:59:44] Then part of learning to code. Now a critical verification skill that sits alongside creative
[00:59:49] problem solving containers. We've done containers many, many times. I'm going to go ahead and save
[00:59:56] this one. All right. So, skills act taught us to see containers early on and the boost was moved
[01:00:02] to Podman. Containers are how modern software ships, every CI/CD pipeline, every cloud development,
[01:00:09] every reproducible dev environment, Gente Gei makes this even more true because
[01:00:13] agents often run inside containers for isolation and reproducibility. Because you want them to do
[01:00:18] safely. Then important for off-shark is that's what everyone learning at OSAC and playing
[01:00:22] container engine. Okay. So it missed something and I'm going to ask you to add it to ask that.
[01:00:32] Add something about learning to use containers and VMs that is essential to running
[01:00:39] powerful, agentic, automatic AI workflows safely without risk to host systems.
[01:00:52] Okay. So I wanted to like fix that one section a little bit for the issue. All right. So what
[01:00:58] other issues can we go into? Yeah. I don't think I already have one for that. Was it still working?
[01:01:11] Okay. Do we have an issue for screenshot snapshots of OBS to preview what people are seeing?
[01:01:28] Yeah. It's works in open code. Right now, I don't know about open code. I know about GitHub
[01:01:45] co-pilot because that's supported at my work. That's the one I recommend people learn first.
[01:01:51] Have you made me a burger? I know. I almost good. All right.
[01:02:22] The containers. Here we go. It's got like the containers in the booth room from public containers
[01:02:26] or how shop for ships block. Jenna guys, add a new dimension. When you give an AI agent access
[01:02:31] to your terminal, it can run arbitrary commands on your system and containers and virtual machines
[01:02:35] provide the isolation layer that makes it safe. Running agents inside a container or VM means
[01:02:39] they can sell packages, modify files, execute code and make mistakes without the risk to your
[01:02:43] system. This is not theoretical. It is how responsible agentic workflows operate in practice.
[01:02:47] Understanding containers and VMs is no longer just about deployment. It's about safely running
[01:02:52] powerful automatic AI workflows that would be reckless to run directly on your machine.
[01:02:58] To ask me how I know, I blew away my OBS not doing this. Yeah. So, you know, learn those lessons
[01:03:09] early. And now before you do that at work, I have blown away so many systems in my home lab.
[01:03:16] Guess what? I didn't blow those same systems away at work because I blew them away in my home lab
[01:03:24] or on my laptop. So, I have been learning about the powers of root access to gentic AI firsthand
[01:03:32] by trying it and learning from it. And I am encouraging you to do the same.
[01:03:39] Cloud code is also, I'm not using Cloud code right now.
[01:03:43] Cloud code, I prefer a gentic open AI. I prefer to cloud model running on the
[01:03:50] GitHub co-pilot harness. That's my current preference. All right. So, because I can use it at work,
[01:03:58] I can't use cloud code at work for reasons I don't want to get into. I made a video about it if you
[01:04:04] want to go watch. It's also more expensive. And you can add more tokens to GitHub co-pilot. You
[01:04:11] can't to cloud. You can pay your 200 a month. You run out of tokens. You're done.
[01:04:15] So, there's a number of reasons to pick this. This is where the conversation should be, people.
[01:04:20] You should be making having conversations about what harness use, not what new of
[01:04:24] them, not what editor use. You should be having conversations about what model is more powerful
[01:04:28] to do, what things. Those are the things you should be talking about if you want a job in tech today.
[01:04:33] That's where most of your conversations should be happening. If you're spending time
[01:04:37] fighting over what language you're writing in, or which editor is better, or the best color scheme
[01:04:44] or window manager, or what's the best desktop Linux, then you're wasting time reading code.
[01:04:50] The boost always taught reading code blah, blah, blah. All right. Containers are virtual machines.
[01:04:56] We did that. Still worth learning, but the depth has changed. Programming language is Python
[01:05:02] Go and JavaScript. Still sack top Python JavaScript and go simultaneously. The boost covered coding
[01:05:07] fundamentals. Writing code for scratch is still useful skill, but AI has reduced the
[01:05:10] advantage of being a fast coder. What happens more now is understanding code well enough to
[01:05:14] direct AI efficiently and verify what it generates. I could not have said that better myself.
[01:05:26] No, you can use, you can use, no, I've made all my main projects using opus cloud model
[01:05:32] under GitHub. Publish your reading fluency on the languages that AI knows best. Language models
[01:05:38] were trained on massive code bases in Python Go and JavaScript and TypeScript. These are the
[01:05:42] languages where it's through TypeScript, didn't I? I didn't say that. Or AI output is more reliable
[01:05:47] and more abundant. If you can read these language confidently, you can review the vast majority
[01:05:50] of AI agents produced. This also means using the right language for the task matters differently
[01:05:54] now. Consider writing a multi-process statement in bash. That means fragile background job, trap
[01:05:59] or app or PID files and signal gymnastics that are hard to write and hard to review. My AI knows
[01:06:05] that because I made it do it. In Python or Go, the same name is a straightforward program with
[01:06:09] clerical currency primitives that both you and your AI can understand easily. The language is that
[01:06:14] as easy as for AI to generate correctly and easiest for you to scan and verify as the right choice.
[01:06:18] Languages with simple concise syntax have a real advantage in the genetic development,
[01:06:22] goes minimal syntax, no exceptions, no inheritance, no operator over lending,
[01:06:25] means there is less to misread during a fast code review. Python's readability has always
[01:06:29] been a strength and it pays off even more when you are scanning AI generated output rather than
[01:06:33] writing it yourself. Complex languages with heavy syntax and many implicit behaviors produce code
[01:06:38] that takes longer to verify and slows down the agentic loop. So then learning three languages
[01:06:46] was a major curriculum investment. Read fluency across languages matters more than right fluency
[01:06:51] in any single one. Prioritize languages, AI knows best and that are easiest to scan.
[01:06:58] Bash scripting. Every boost covered batch from basic through shell scripting with shell check
[01:07:02] shell format, knowing the batch for writes, quiz script, chain commands, understand what AI
[01:07:06] generated. But deep bash mastery, complex traps, parameter expansion tricks, associate arrays,
[01:07:11] matters less than when AI can generate and maintain those scripts for you. I don't
[01:07:16] install bash on max anymore. I used to, I don't anymore because I can use the ancient version
[01:07:21] of bash for anything that I would do with bash. And for anything involving concurrency, networking,
[01:07:26] our system game, as you are better off in Python or go, the whole argument between Z shell and
[01:07:30] bash, for example, is totally stupid now. Where the code is easier for both you and your AI to get
[01:07:34] right. Then deep curriculum ties on its own section, learn the fundamentals, let AI write the
[01:07:39] complex stuff, use a real language for anything beyond the simple. I want to add something.
[01:07:52] Add something about being really good at reading single line shell commands because that's what AI
[01:08:04] uses and displays for validation to do everything, particularly the use of logical and
[01:08:13] and logical or as well as redirects of output so that
[01:08:25] keys stay out of agentic AI sessions.
[01:08:33] Simple things like writing secrets to files, rather than saving them as environment variables
[01:08:39] are now substantially more significant or overall safety.
[01:08:55] No shit.
[01:08:59] Of course, you can. You can use Claude, the Claude Opus model
[01:09:04] with co-pilot, which is the same thing. It's exactly the same thing.
[01:09:09] It's just a different harness, is it? In fact, it's better because co-pilot, I've noticed co-pilot
[01:09:14] is more likely to not do something without asking you. They all eventually will do they'll see that
[01:09:22] you like doing something and they'll start doing it automatically. You have to tell them not to.
[01:09:26] But Claude, in my experience, very brief experience was more likely to do that. I've also read that.
[01:09:34] That's that's that's that. Yeah, agents reading secrets from files. Yep.
[01:09:42] Environment variables are horrible for that. You should be putting secrets in files
[01:09:49] and not. Look, if you think putting them into your environment is going to be, you say, no.
[01:09:58] Yep. I don't trust anything from Y Combinator. I don't even read that crap.
[01:10:05] Y Combinator is a source of hot air and no actual information. In fact, I'm going to put
[01:10:13] a comment in here to do that. Okay, let's go back to the boost tools and focus on that.
[01:10:24] Yeah, create an issue to explain why reading Y Combinator is a waste of time, 90% of the time.
[01:10:55] All right, so back to
[01:11:08] secrets belong to V one secret and they belong in vault. But if you're going to do automation,
[01:11:14] you can't use vault because you got to push your you got to unless you're going to do something
[01:11:18] really fancy and there are ways to do it.
[01:11:29] Bash scripting. All right, here we go. Everybody's covered bash. Existence names are off.
[01:11:35] You're better off with Python or go. Okay.
[01:11:39] Let AI write the complex stuff. Okay, so
[01:11:46] yeah. All right, so what's even boost out of them in the context of internal text editing at
[01:11:50] Ed Vivim nano. Now knowing how to open a file, make quick edit, save and quit is a survival
[01:11:56] skill for machines where VIM is the only editor, but investing serious time of VIM motions.
[01:12:00] Custom VM configs a little plug in the ecosystem is no longer a good use of learning hours.
[01:12:04] Snip can correct you on time on editor options of VIM. Learn I escape WQ search DDP. That is
[01:12:10] enough unless you enjoy it as a hobby. Python filters in the unix way. The boost I always taught
[01:12:16] unix philosophy, small tools doing its job well, understanding study out and et cetera,
[01:12:20] grip sort blah, but memorizing dozens of text commands less than now with AI than before.
[01:12:26] Core philosophy with deep command coverage understand the concepts and the command common
[01:12:30] commands. But I understand the that AI handled the exotic awk and said one liners, data formats,
[01:12:36] JSON, YAML, and tunnel. The skill stack web module and boost both cover and structure data formats.
[01:12:42] You will still encounter these constant config files, API responses, MCP definitions. You do not
[01:12:46] need to be an expert, but you need to recognize the syntax of spot errors when AI produces broken
[01:12:51] YAML and now form JSON. This is true. Yeah. If you're, if you're still doing Kubernetes by hand,
[01:13:01] which is going to be less than you need lots of YAML, HTML and CSS, skill stack web module,
[01:13:06] it was significant part of previous boost learning HTML, CSS, some basic websites.
[01:13:10] Today and I generate HTML and CSS as fast as you ever will. The skill that matters is
[01:13:14] understanding what it produced, not writing from scratch. Basic web literacy is still useful,
[01:13:18] but is moved from a core. Linux administration systems, skill stacks, Linux IDB covered,
[01:13:24] covered buying hardware, choosing distros, VMs, et cetera. The boost taught Linux is user-friendly
[01:13:30] skill. This is administration still matters for certain career paths, SRE platform engineering,
[01:13:35] but for most beginners, the path to a tech job now runs through AI fluency more than
[01:13:38] through configuring, configuring Prokmox clusters. Let's throw them at them before typing speed.
[01:13:45] I don't have to say anything about that. Homelab hardware.
[01:13:48] This tech start had detailed advice on buying laptops, mini servers, tower servers for a home
[01:13:53] lab. For certain career paths, not a home lab still has value, but for most beginners,
[01:13:57] laptop with GitHub, co-pilot, subscription, and container engine gets you further than any hardware
[01:14:01] investment. I don't agree with that.
[01:14:15] Emphasize having a Prokmox server with virtual machines on it in order to use AI combined with
[01:14:22] tools like Terraform to automate the creation and deployment of virtual machines and full environments
[01:14:31] and to test our interaction using AI from a centralized jump host.
[01:14:51] You don't need to know your shit. No, you don't. You need to learn AI to teach you to know your
[01:14:57] shit. Yes, you need to learn it, but you should learn how to use AI first so that AI can teach
[01:15:04] you how to do those things. I don't know how many times I have to say that. I was like,
[01:15:09] I'm leaving AI alone. I'm going to learn all this stuff. How are you folks supposed to learn it?
[01:15:14] Are you going to do a bunch of Google searches? You're going to learn AI is going to teach you
[01:15:19] the stuff that you need to learn so that you can read it while it's doing it and know what it's doing.
[01:15:25] In fact, creating a project from scratch at home and asking the AI to help you do it and telling
[01:15:31] the AI teach me what you're doing while you're doing it is a much better use of your time than
[01:15:37] trying to suffer through all of that on your own. I don't know how many times I have to beat this
[01:15:43] point over the head. There's still resistance from people against AI and that's fine, but I
[01:15:51] want to make this very clear. If you want to do anything that involves words, you need to learn it.
[01:16:05] I'm stating things strongly because the few people who actually listen to me are going to survive.
[01:16:14] It's that big a deal. This is that big of an existential threat and I am not overstating it,
[01:16:19] and that is after two and a half weeks of experience being convinced fully of this by myself and
[01:16:26] having been one of the cynics. I was going back and watch my videos from before. I was just a
[01:16:32] big a cynic and like, "Oh, I'm not so sure. Maybe it's good for helping you get with education."
[01:16:36] I was like kind of out there on the edge like that, and then I used it.
[01:16:48] Typing speed is no longer needed. Deep editor customization no longer needed. GitLab is no longer needed.
[01:16:58] This had a home lab stuff in it. It got rid of it. Thank God. GitLab not needed.
[01:17:03] Agentic AI tools, new skills that did not exist in previous booths. Compile with CLI cloud
[01:17:08] code. No previous booths covered this. You should at least learn cloud code since it's one of them.
[01:17:12] It's the main one. It's the number one one right now. Voice input with superwhisper.
[01:17:18] MCP servers. This is how agents connect to real system building MCP servers. One of those more
[01:17:23] in-demand skills in tech right now because a few people know how to do it well.
[01:17:27] The skill is impossible to teach in any previous booths because the protocol did not exist.
[01:17:31] That's true. You do need to learn that. Agents and agentic project templates is true. You need this
[01:17:36] skill stack method revised. It was really built around the idea of imagining your personal
[01:17:39] skill stack tracking what you're now scoring a master identifying blah. The concept is more
[01:17:43] relevant than ever, but the skills on the stack have changed. The evaluation framework still works
[01:17:48] and the items on the list are updated. This is what this article is for.
[01:18:00] We need to really emphasize that the most important skill is to learn how to use the AI
[01:18:11] to teach you to learn what you want to learn based on your interests and demonstrate what you
[01:18:19] know and that you can use AI to deliver those things. In other words, yes, it requires a significant
[01:18:28] amount of technical expertise to make good use of AI for development and deployment of operations
[01:18:34] infrastructure, but it requires you to use AI to learn that stuff.
[01:18:52] It just has an extra needed abstraction. I agree. I was about to drop MCP. I'm glad you said that
[01:18:58] because I agree. As nice as MCP is, I think it's going to die here pretty soon.
[01:19:04] It is getting used heavily right now still though, but I think creating an MCP is not a project
[01:19:11] that I would put in the boost. I think creating an application that provides value is more
[01:19:16] important than an MCP. I'll have it add that in a second. I think we're done for the day.
[01:19:33] I think we're done for the day and people are like, "Well, you didn't really teach me anything."
[01:19:39] I never have taught you anything. I've always shown you what you need to go learn. What you
[01:19:44] need to go learn right now is AI and how to open a terminal and then ask the AI what you need to
[01:19:52] learn. If you don't like what it says, run it by another person or another AI. No, you still have
[01:20:05] to get impacted. That's another thing. Thank you for reminding me. There's another big, big
[01:20:11] piece of this that I talked about last week that I want to emphasize in this book even more.
[01:20:21] Remove any reference to MCP since that's not a beginner thing at all.
[01:20:32] And then I'm going to make an O and
[01:20:44] add something about approaching tech careers as preparing for a professional career such as a
[01:20:56] doctor, an optometrist, or something like that since the junior and mid-level jobs in tech are
[01:21:05] gone. Therefore, making the early decision about entering into a tech career should include a much
[01:21:18] bigger commitment to learning a broad but deep number of skills that can be understood as they are
[01:21:33] used by AI. Previous boosts may have presented the idea. This is actually a problem with this
[01:21:47] harness. This is a problem with this harness. It doesn't let me, it goes back. You see what I'm
[01:21:52] saying? I made a really good prompt and it got blown away. This is actually a down part. I wonder
[01:22:04] if you want to add an anniversary to me.
[01:22:13] I'm going to add, I think what we should do is a separate prompt. I've had this happen twice now
[01:22:18] where I've gotten a really good prompt started and then it pops up and throws my prompt away.
[01:22:24] And that would not happen if I was using a graphic tool. So, you know, I still like the
[01:22:30] terminal-based approach, but all right, so here we go again.
[01:22:43] First, add something about approaching the decision to work in tech as a decision to become a doctor
[01:22:50] since the junior and mid-level jobs are gone, leaving the requirement to master multiple
[01:22:59] technologies relatively deeply in order to guide the AI to create the systems and solutions
[01:23:06] needed by enterprise. Yeah, I wonder if that's going to do. See there, while that prompt's working,
[01:23:29] I wish I could work on another prompt. This is something, it's like doing at least two prompts.
[01:23:35] All right, let's see what it added. Okay, so this is good because it's only the things
[01:23:39] that changed. I should have probably been doing this all along. So, there's a dip. Tech is now
[01:23:44] like medicine. Before anything else, understand what has changed about the career itself.
[01:23:50] AI has eliminated most junior and mid-level jobs. The entry level positions where you could learn
[01:23:54] on the job, write credit and points, build simple UIs, maintaining straightforward infrastructure,
[01:23:58] being handled by AI agents now, will remain as senior roles that require deep understanding
[01:24:02] across multiple technologies and the ability to architect systems, not just implement them.
[01:24:07] This means approaching a career in tech is now more like a decision to become a doctor.
[01:24:11] You're committing to mastering multiple disciplines at a meaningful depth,
[01:24:14] not because it's fun to collect skills, but because the work that still needs as human
[01:24:18] requires someone who can guide AI across complex systems and confidence. An AI agent can generate
[01:24:23] the Kubernetes deployment manifest, but it takes a person who understands networking, storage,
[01:24:27] security and application architecture to know whether that manifest will actually work in production.
[01:24:32] An AI agent can write a database migration, but it can't, it takes someone who understands how
[01:24:37] data modeling consists of guarantees and their specific business domain into whether the migration
[01:24:42] is safe. The good news is that AI itself is the fastest path to acquiring this depth. This is
[01:24:46] exactly what I was saying. Thank you. You are now studying from textbooks alone anymore or not.
[01:24:52] You are, you can use an AI to teach yourself interactively, build real things as you learn
[01:24:56] and reach working components in a technology faster than any previous generation of engineers.
[01:25:02] But you have to actually do the learning. There are no shortcuts to understanding only faster paths
[01:25:07] to it. Yeah, and then I would say,
[01:25:18] add the biggest boost to your learning is AI itself. AI is the boost.
[01:25:32] Okay. Good. Using AI to teach AI, AI is the boost. You are not studying from textbooks alone anymore.
[01:26:02] It even found the right place to put it. You can use AI to teach yourself interactively,
[01:26:10] build real things as you learn. Has it been listening to me? And I literally just said that.
[01:26:17] And reaching, working components in a new technology faster than any previous generation of engineers,
[01:26:22] the depth that, wait, adds something to remind the reader not to forget to tell the AI that you
[01:26:33] are learning while you are doing it so that it explains things more thoroughly and does things
[01:26:40] more safely. This is a perfect thing to add to your agents.md file for every project.
[01:26:52] I just love interactive writing like this. It's like so much more efficient.
[01:27:02] Is it generating? Do I get credit for writing it? I don't know if I need it.
[01:27:09] You know, sometimes it comes up with the best stuff there. This is the first thing people
[01:27:12] realize about AI is when they start having it write their emails for them and stuff.
[01:27:18] You know, one critical tip. Tell the AI that you are learning. Put it in your
[01:27:24] agents.md file for every project. Something like the person working on this project is actively
[01:27:28] learning these technologies. Explain this is certainly call up potential pitfalls and prefer
[01:27:32] safe well understood approaches over clever shortcuts. When the AI knows you are a learner,
[01:27:36] it explains why it made a choice instead of just making it. It warns you about things a
[01:27:40] senior engineer would catch on their own. It teaches you as it builds. Goddamn this is well written.
[01:27:45] Without the context, the AI optimizes for speed and assumes you already understand the trade-offs.
[01:27:50] The difference is the way you learn from each session is enormous. Oh my god, that's so good.
[01:27:56] Hell to the yes. Well done, AI. Easier to talk than type. Oh yeah, it is.
[01:28:05] Now, I'm typing very little if you haven't noticed.
[01:28:09] Okay, so this is what it's going to do. It's going to go into the boost directory.
[01:28:14] If that works, it's going to add this document that it just wrote. By the way,
[01:28:18] I told it to use slugs as titles in my agents.md file. That's why it does that.
[01:28:23] Then it's going to add the docs readme file, which has a link to this file.
[01:28:27] It does it commits the docs and adds a boost tools and then a new evaluation article.
[01:28:36] How visible is this in the main readme? I feel like this should be really emphasized at the very
[01:28:42] beginning of the readme file.
[01:28:57] It's period is an optional item under what do I need? Yeah.
[01:29:03] Okay, it made a change. Good. Oh my god, fine. An hour is this and then read.
[01:29:08] Boost tools then and now. Tech careers now require medical school depth. Junior roles are
[01:29:13] disappearing. AI is both the reason and the solution. Read this first to understand what
[01:29:18] skills matter now and why AI is still learning is more the most important skill you can develop.
[01:29:27] Yeah, damn. Okay, I think that's pretty good. Is there something else?
[01:29:33] Junior roles are disappearing. AI is both the reason and the solution.
[01:29:36] Read the first to understand what skills matter now and why AI is still learning is more important.
[01:29:40] The most important skill you can develop. What to do? Okay, so I say yes to that.
[01:29:48] And go ahead and commit that. Yeah, and that's going to remove it from the other location.
[01:29:55] So that's not optional reading anymore. That's mandatory reading.
[01:30:00] Compressed that I wish it would be tool and skill taught across previous
[01:30:02] business relevance. Do you want to run this command? Yes. And yeah. Yes. It's going to open
[01:30:16] in an obsidian for me. Okay, here's the tools committed to open an obsidian. We'll still
[01:30:25] send in now. Let's go back to the read me. Where is it? Here it is. All right. All righty then.
[01:30:33] So we got to read me. Best reading enter that allows collapsible blah. Get ready to even bother
[01:30:38] with the boost until you have achieved the following. Get a basic computer. Okay, get a
[01:30:41] compile subscription. Plan an hour a day of AI assistant learning. Boost tools then and now.
[01:30:48] Techers now require medical school debt. Junior roles are disappearing. AI is both the reason and
[01:30:51] the solution. Read this first to understand what skills matter more now. And why AI assistant learning
[01:30:58] is the most important skill you can develop. Boost then and now. The beginning of this is running
[01:31:03] simple skills. I've been teaching blah blah. Tech is now like medicine. Anything before. Okay.
[01:31:10] Most important skill you can develop is how to use AI to teach yourself.
[01:31:16] More important than ever. Getting GitHub. Markdown. Terminal and CLI.
[01:31:24] Secrets, hygienic and egenic workflows. Teamux. Reading code.
[01:31:30] Containers, virtual machines, home lab, proxy mocks. So I'll probably update this document as
[01:31:37] we go because we're going to be talking about different things. But this actually, I like this
[01:31:42] because this gives me an outline for the boost next time. Which is what I want to do. The goal
[01:31:47] for today, and we're wrapping up here, that the goal for today always was that I would identify
[01:31:57] in very detailed form using AI, the stuff that has changed and the relevance of all the technologies
[01:32:04] that have always been a focus of the beginner boost. And to talk about it in very specific terms
[01:32:11] based on my own experience over the last two weeks, two or three weeks. And what the AI would
[01:32:16] have to suggest in addition to that, along with our other contributors in the chat. And they're
[01:32:23] relatively quiet right now, but they've been very vocal over the last two weeks about some of the
[01:32:27] best choices here. So on that note, I think I'm going to go ahead and leave you guys.
[01:32:36] This, this outline needs some work. I'm really seriously thinking about dropping this outline.
[01:32:45] I started the outline using the old school approach to the beginner boost and I kind of
[01:32:49] want to, I kind of want to move away from that. But I will continue to do it and modify it a
[01:32:55] tweak it. So I encourage you to go out there, make sure you, if you want to, you can sub and follow.
[01:33:00] The truth is you don't need to follow me at all. If you, if you get, if you get an AI, you trust out
[01:33:04] there, you know, start using that and trusting that and learning to trust it. And that is one of the
[01:33:11] important skills is learning to trust the AI. In fact, I want to, I want to add a note about that.
[01:33:20] Add that one of the most important skills is learning to trust the AI as much as a human by
[01:33:25] interacting it with just as with the same as you would with a human that you should never trust
[01:33:31] or one who posts to stack exchange that is going to, that's learning to trust the AI as much as a
[01:33:41] human by interacting with just as the same as you with a human that you should never trust or who,
[01:33:45] or who posts to stack exchange. Yeah, I need to add that a comment about that. Because that's,
[01:33:51] that's, that is a skill learning. It's scary to say it because I am still mastering that skill.
[01:33:59] You need to learn how to trust an AI just as much as you would trust a human companion.
[01:34:06] I, it still makes me uncomfortable saying those words, but it's true. One of the most important
[01:34:11] skills to develop is learning to trust the AI exactly as much as you would trust a stranger who
[01:34:15] posts an answer on stack exchange, which is to say not at all until you verify it. Perfect.
[01:34:22] Interact with AI the same way you would interact with a human you have never worked with before
[01:34:26] assume confidence, but confirm everything. Read its output. Question is choices. Test its code.
[01:34:31] The people who get burned by AI are the ones who either refuse to use it or trust it blindly.
[01:34:37] The people who get the most out of it treat it like a competent colleague who is sometimes wrong,
[01:34:42] useful, fast, and worth double checking everything. Perfect. Um, that's great. Yes, please add that.
[01:34:54] So we're going to add that. You know what? It's like, I don't care how many
[01:35:03] upvotes your stack exchange answer got. It's still fucking wrong. Whoops, I swear.
[01:35:09] You have many times I'm about to go to the, the, the, the fifth thing under there to get the
[01:35:13] right answer for a thing. And I'm like, can I please just probably time I'm swearing already.
[01:35:20] It's probably, that must signal. That must be signaling. It's time for me to, to leave.
[01:35:27] A goody something else. Uh, it's been really fun. I promise I'm not just an angry old man.
[01:35:33] I am really here. Nobody's going to make it to the end. All the people that left after I yelled
[01:35:37] at them are already gone. But for those of you who are still here, thank you for being here.
[01:35:42] Honest to God, I have your best interests at heart. I am trying my best to help you succeed
[01:35:48] in a tech career as much as I am to survive in the tech career myself well into my upper 60s
[01:35:55] and, and profit from it. And I got to tell you, it's not all anger and, and stress. It's really fun.
[01:36:02] It's really freaking fun using an AI. In fact, AI, I've been talking about this a lot on my walks.
[01:36:08] AI has added a new obsession to my life with regard to creating things. I made the QR
[01:36:16] storage bin organizer. I made the world's best Twitch command line, IRL tool. I have got other
[01:36:22] projects in the works. And for the first time in my life, I can think of a thing and make it real
[01:36:28] myself, my own founder, my own startup. And that is exciting. Even if you don't end up taking on a
[01:36:34] tech career because you don't want to learn as much as you would have to be a doctor,
[01:36:38] you can still play around with this stuff and have a great time making things that you could
[01:36:43] never make before now that we have AI in our world. And I don't want to get into the philosophical
[01:36:50] implications of AI and its origins. That's not relevant. It's not relevant. It is and it is going
[01:36:56] to you only get better and for better or worse, honestly, but it is here. It's here to stay,
[01:37:03] learn to love it, learn to have fun with it and stop being so boomer about it. All right.
[01:37:13] [BLANK_AUDIO]
