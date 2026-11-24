# 🤖 Look at Gas Town for Multi-agent agentic engineering

Introduces Gas Town, a multi-agent workspace tool that keeps persistent state across agent sessions. Contrasts it with a current tmux-based multi-agent setup where agent context is lost when the session dies, and with using an agentic template file to carry preferences between sessions. Notes that Gas Town reportedly supports syncing context across 20 to 30 agents, with a deeper look to follow.

Chapters:
0:00 Why look at Gas Town
0:37 Current tmux multi-agent setup and its limits
1:30 Persistent context across many agents
2:09 Agentic template as a workaround
3:01 Wrap-up and AI engineering advice

`#gastown #aiagents #multiagent #agenticengineering #aiengineering #tmux #softwaredevelopment #agenticdevelopment #programming`

## Category

Science & Technology

## Transcription

[00:00:00] I just want to do a quick video this morning about gas town.
[00:00:04] So I kept it from YouTube, I mean from Twitch, told me about it because they've been watching
[00:00:11] me do my programming or eventually doing a Gentic multi-agent programming right now.
[00:00:17] And something that's really cool about it is that it actually allows you to do persistence.
[00:00:23] So you can have multiple things happening at the same time and have each session remember
[00:00:30] it.
[00:00:31] And that's actually one of the biggest things that's kept me from doing any kind of multi-agent
[00:00:35] stuff that's not my own creation.
[00:00:37] This is my own customized Tmux config that the AI helped me make.
[00:00:42] That shows me all my stuff going on as of a given time.
[00:00:47] And I'm going to approve it for that session.
[00:00:51] So anyway, I'm using Tmux, I'm using notifications and updated things to see what's going on.
[00:00:57] And this is how I'm doing my multi-agent right now.
[00:00:59] The problem is as soon as this Tmux session dies, I lose all this agent context.
[00:01:04] No matter how much I put into my agent's MD file, it doesn't remember exactly the last
[00:01:09] task it was on.
[00:01:12] And so that can become an issue.
[00:01:16] And I have to interact with it a lot and I'm not as willing to say, hey, just do everything
[00:01:21] in this separate PR to babysit it.
[00:01:25] So a tool like Gastown, this is really an eating babysitting right now.
[00:01:30] So the tool like Gastown allows you to use up to 20 or 30 agent.
[00:01:35] But the key is that as the AI was telling me that it's niches that it's persistent.
[00:01:41] In other words, it keeps all the context and it lets you run an entire town of agents,
[00:01:47] all the different personalities and roles and context.
[00:01:50] That means they all remember everything differently.
[00:01:54] And so it's worth a look.
[00:01:55] I'm going to take a look at it right now and I'll report back.
[00:01:57] So far, I've looked at some of the other ones and this was my favorite one.
[00:02:01] I haven't really deep-dived into any of them because none of them interest me until they
[00:02:06] can do this, which is to remember a persistent state.
[00:02:09] The closest thing to that, by the way, made a video about this is to create an agentic
[00:02:14] template.
[00:02:15] So every time I remember that I want to have, you know, no options, I want to use Bonsai
[00:02:21] for my going things or I want to have Markdown be a single line paragraph, I put all those
[00:02:28] into my long-term agent side and deep file and into a template.
[00:02:33] Every time I start up a new session, my thing is that it remembers it and it says go use
[00:02:39] the agentic.md and synchronize it in and then start using it all the time.
[00:02:44] So anytime I start up any new session, it goes to check my major agents on a deep file.
[00:02:50] That kind of stuff is covered apparently in the mirror of Gastown in order to hand off
[00:02:55] that.
[00:02:56] Those kind of context syncs to everybody else that's working.
[00:02:59] So it's going to be fun to look at.
[00:03:01] I'll report back more, but go ahead and peek at it.
[00:03:03] If you leave a comment down below on YouTube or come join me if you want to see how I'm
[00:03:07] using multi-agent to development, the best twitch power tool in the world or the storage
[00:03:13] bin organizer, which I've taken private because I want to sell it, it's so good.
[00:03:17] If you haven't got on board with the AI engineering and development, you're going to get left
[00:03:23] behind and I'm not going to harp on that anymore.
[00:03:26] It's just like, I'm not, I'm not, it's like there's either people who are going to do
[00:03:30] it and there's people who are going to not do it.
[00:03:32] You really need to look at it, I'm sorry.
