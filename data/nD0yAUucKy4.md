# 🤖 Your agentic AI template is the new dotfiles

Rob explains why every developer should keep an agentic AI template repo containing an AGENTS.md with their coding preferences, writing style, and conventions, and reuse it across new projects. He shows how it saves setup time, signals skilled AI use on a GitHub profile, and can be synced into existing repos by an agent. He also recommends running terminal-based agents inside tmux and previews a future tmux video.

A decade ago, the first thing a serious developer did when setting up a
new machine was clone their dotfiles repo. Their shell config, their
editor settings, their aliases, their keybindings — all of it portable,
version-controlled, and ready to go in minutes. It said: this person has
been doing this long enough to have strong opinions about their
environment, and they maintain those opinions deliberately.

In 2026, the equivalent signal is your agentic AI template. ## What
dotfiles said about you

Dotfiles were never just about convenience. They were a statement of
craft. A well-maintained dotfiles repo told anyone who looked that you
understood your tools deeply, that you had iterated on your workflow
over time, and that you took your environment seriously. Interviewers
noticed. Teammates noticed. It was a proxy for how you approached
everything else.

What an agentic AI template says about you today

An agentic AI template is a starting point for any project that uses AI
agents — a repo you own that includes a structured AGENTS.md, your
conventions, your rules, your architecture patterns, and your current
stack. When you start a new project, you fork it. When you learn
something new about working with agents, you update it.

Maintaining one says:

-   You work with AI tools deeply enough to have developed real opinions
    about how to structure that relationship
-   You understand that context is the bottleneck — the agent is only as
    good as what you tell it
-   You have iterated on your workflow and codified what works
-   You treat your AI tooling as infrastructure, not as a search engine
    you occasionally consult

That is exactly the signal dotfiles sent a decade ago. ## The practical
reasons

Beyond signaling, there are hard practical reasons to maintain your own
template.

Context is everything. Every time you start a new project without a
solid AGENTS.md, you spend the first part of every session re-explaining
your conventions, your preferences, and your current state. That is
waste. A good template eliminates that from day one.

Consistency across projects. When your rules live in a template, every
project you create inherits them automatically. Your commit style, your
file naming conventions, your secrets policy, your code style —
consistent from the first commit.

Portability. Your template goes with you. New job, new team, new machine
— you clone your template and your entire way of working with AI agents
comes with you.

Onboarding speed. If you ever work with others, your AGENTS.md becomes
the fastest possible onboarding document. A new collaborator — human or
agent — can read it and immediately understand how the project works and
what the rules are. ## The employment angle

Hiring managers in 2026 are starting to ask the same questions about AI
workflow that they used to ask about version control hygiene.

-   Do you maintain your environment deliberately?
-   Do you have strong opinions about how you work?
-   Can you show me something that reflects how you think?

A public, well-maintained agentic AI template answers all three. It is
not just a tool — it is a portfolio artifact. It demonstrates that you
have moved past copy-pasting from chat windows and into deliberate,
repeatable, opinionated AI-assisted development. ## Start one now

If you do not have one yet, fork rwxrob/agentic-ai-template and make it
yours. Add your rules. Add your conventions. Use it on your next
project. Update it when you learn something. Leave TODOs in it for the
agent to populate later for your specific project.

Treat it the way the best developers of the last decade treated their
dotfiles — as a living document of how you work, maintained with the
same care as the projects it spawns.

The developers who thrive in this era will not be the ones who used AI
the most. They will be the ones who built the best relationship with it
— deliberate, structured, and always improving. Your template is where
that relationship lives.

Chapters:
0:00 Why I need an agentic template
1:00 Building a GitHub template with AGENTS.md
1:58 What your template says about you
2:55 Syncing AGENTS.md into existing repos
3:52 Running agents in tmux
4:40 Get started and use AI everywhere

`#agenticai #agentsmd #ai #dotfiles #tmux #github #claudecode #developer #terminal #devtools #career #techjobs #buildinpublic #softwaredevelopment #coding`

## Category

Science & Technology

## Transcription

[00:00:00] How fast can route make this video with AI?
[00:00:03] All right.
[00:00:04] So it just occurred to me.
[00:00:05] I've been using Aegis.md file, which is standard for any agentic AI in every one of
[00:00:10] my repos.
[00:00:11] And I'll talk about that elsewhere.
[00:00:12] But what became really obvious is that I need to put the things I prefer all in one place.
[00:00:21] I prefer to use, you know, POSIX bash or POSIX shell over bash or Python or this or I want
[00:00:26] a full paragraph and markdown, here's my code, my writing style, use this particular writing
[00:00:31] style when you're writing everything, everything you would ever want that makes you you, including
[00:00:39] leaving agent references and co-pile authorship out of your stuff.
[00:00:43] There's a million things that I've found that as I have a new GitHub repo for every one of
[00:00:46] my projects that I, you know, fire up with a GitHub co-pile in my case or a cloud code
[00:00:52] that I wanted to know about it immediately, and I might be late to the party on this,
[00:00:57] but I was like, how can I do this faster?
[00:01:00] And so the obvious easiest way is to make a template, an agentic template that has an
[00:01:07] Aegis.md file, it has a readme with Bill and the Blank kind of stuff there, and it has
[00:01:11] all of your preferences.
[00:01:12] I mean, your stylistic preferences, everything, so then you can just go use that.
[00:01:17] And if you do it as a GitHub template, other people can copy the template and the repo
[00:01:21] will start out that way, or the AI can do that.
[00:01:25] You can say, hey, go make this new repo using this template and fill in the rest as if it
[00:01:31] was this particular project, because this is what the project is going to be about, and
[00:01:35] the AI can go out and do all of that and copy it over for you.
[00:01:38] Can you make an AI that just pulls down the Aegis.md file?
[00:01:42] Yeah, you can, but there might be something else about the repo that you want to be common
[00:01:46] and consistent across your projects, whether it's a Git ignore or whatever possible other
[00:01:52] thing.
[00:01:53] Maybe it's a licensed file that you really like and you don't want to have to recreate
[00:01:56] every time.
[00:01:58] But it says a lot about you, right?
[00:01:59] Because it's not like your doc files, people go into your doc files to see, oh, hey, here's
[00:02:04] how this person operates, here's what they do, wow, that's a cool tool there.
[00:02:08] You can never know now whether they came up with it or AI did it for them.
[00:02:13] But nobody cares anymore.
[00:02:16] What they care about is that you're using AI and you're doing it intelligently.
[00:02:19] Well, the best way to communicate that is to have an agentic AI template in addition
[00:02:24] to your doc files and list that up there nice and high on your GitHub profile so people
[00:02:29] can see, no, this person knows how to use AI.
[00:02:32] They know how to manage multiple team looks and windows that are all running different
[00:02:36] agents at the same time doing different things from writing a gentleman's etiquette guide
[00:02:43] to the beginner boost to yoga training to my storage bin organizer.
[00:02:47] I have agents running doing stuff all the time.
[00:02:51] And every time I want to make a new one, now I just say, hey, go grab that one.
[00:02:56] In fact, I've been going back through some of these other ones.
[00:02:58] I recently did this in this one.
[00:03:00] I said, hey, oh, now that I have the agent, you know, the agents.md file in my template,
[00:03:07] go find that template, go grab that file and make sure I'm not missing anything in the
[00:03:11] agents.md file in this project.
[00:03:13] And it went out, fetched it, got all the stuff, added the conventional commit rules that weren't
[00:03:18] there and put it all in the agents.md file and committed it in less than 10 seconds.
[00:03:24] So people, this is, this is it.
[00:03:27] Yeah, and you've somebody, some people, some people put their stylistic preferences.
[00:03:32] Yeah, I think sometimes you have to tell the AI not to put it in your read me because some
[00:03:38] of the AI's will put it in your read me.md file, like, hey, put that in the agent's file,
[00:03:42] make the read me for the users so that it talks more about the project and not so much how
[00:03:46] the project is being executed or installed or created with the agent's file.
[00:03:52] So that's it.
[00:03:53] That's it.
[00:03:54] If you don't have an agentic AI template, you can copy mine.
[00:03:58] But I strongly, strongly recommend that everybody watching this starts using whatever terminal
[00:04:05] based agent that you want to, you can stay tuned and I'll show you how to, you can go
[00:04:10] look at my dot files for my Tmux config if you want.
[00:04:12] You should be using Tmux for this.
[00:04:14] I've seen people with like entire windows with little teeny tiny terminals all over the place.
[00:04:21] That's ridiculous.
[00:04:22] But if that's what you want to do, fine, you should really be using terminal.
[00:04:25] You should be using Tmux.
[00:04:27] You can go through each one of the windows and cycles for them.
[00:04:30] It will tell you when it's, when it needs attention, that's the whole point of it.
[00:04:33] And I'm using control AW, which is giving me this list so it's not like building the
[00:04:38] bottom.
[00:04:39] We'll do a whole video on Tmux.
[00:04:40] Stay tuned for that.
[00:04:41] But for right now, go check out the template.
[00:04:43] Go get started with the template.
[00:04:45] Go watch the beginner boost R to be X Rob slash boost, which is entirely based on AI and
[00:04:50] doing development and using AI to teach you what you need to know to get whatever job
[00:04:56] you want.
[00:04:57] But not just that to use AI for everything.
[00:05:00] I mean, anything that's knowledge based related can be done in here, including writing books,
[00:05:05] creating boost content, filling out the description of this YouTube video.
[00:05:09] Yeah, all done automatically renaming the video when it's saved to whatever my OBS title
[00:05:14] is on the top of the screen.
[00:05:15] All of it, all of it is done making a web socket.
[00:05:18] That's all been done with AI and it can be done instantly.
[00:05:22] So get on the bandwagon, accept AI as your lord and savior and start having fun making
[00:05:29] the things you want to make. Bye.
