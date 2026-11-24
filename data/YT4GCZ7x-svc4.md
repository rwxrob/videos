# 🤑 We found GitHub's AI financial backdoor (save $100s while you still can)

Explains how GitHub Copilot's premium request billing counts a long, detailed issue prompt as a single request, while every interactive prompt in the harness costs one request times the model multiplier. Covers using free models for routine issue management, pulling down and testing pull requests locally with make deploy, and why precise systems-design thinking saves money.

Here's why M$ is rushing as fast as possible to get on a "tokens" based financial model. Here's how to game the system while you still can.

Chapters:
0:00 The Copilot premium request loophole
1:05 Interactive prompts burn premium requests
3:07 Free models versus Haiku and Opus
3:54 Gaming it with long detailed issues
4:40 Testing PRs locally and from a phone
5:39 Systems design as the key skill
7:27 Why interactive Opus is wrong

`#githubcopilot #agenticai #ai #claudeopus #softwaredevelopment #systemsdesign #promptengineering #beginners #github #copilot #money`

## Category

Science & Technology

## Transcription

[00:00:00] All right, everybody.
[00:00:04] We have figured out the back door to GitHub's financial ruins.
[00:00:18] We finally figured it out.
[00:00:21] Here's the thing.
[00:00:22] No matter how complex you're prompt, and I don't even know how long they can be, let's
[00:00:28] say you submit a two-page prompt as an issue to GitHub co-pilot, which you can submit to
[00:00:35] cloud opus, you know, 4.7 at 7 point times the cost, which means it would cost you 7.5
[00:00:43] premium requests is that that two or three page prompt, which is highly specified, which
[00:00:51] means there's not going to be any additional prompting needed.
[00:00:54] There's no steering required cost you 7.5 or one, basically one premium request times
[00:01:02] whatever their rate is.
[00:01:05] The same achievement, if you were to try to achieve the same thing by interacting with
[00:01:11] the GitHub co-pilot harness using the opus model, every single time you enter anything
[00:01:19] into the prompt, you are burning one full premium request times the rate, 7.5.
[00:01:29] Think about that for a second.
[00:01:31] I have discovered this the hard way.
[00:01:33] I, as you know, everybody knows this is the first time I've ever used all of this AI
[00:01:37] agentic AI, and I've been learning a lot, and I've been sharing it with you.
[00:01:40] And what I'm trying to tell you is that I actually discovered this because I was starting
[00:01:46] to, I was creating a to do system in the, in my Twitch master control program here, where
[00:01:52] I can, you know, tap on it to do and send it to co-pilot.
[00:01:57] And I've got a system that will auto deploy it to from my phone so I can actually test
[00:02:01] it in a blue-green environment and decide if I want to keep it or not.
[00:02:04] It's a really cool thing.
[00:02:05] But in the process, I was like, you know, what's up with my to-dos?
[00:02:10] So I started querying co-pilot itself and looking through the docs and I realized that
[00:02:17] any prompt of any length in an issue is one, essentially one request.
[00:02:23] Every single interactive prompt on the command line is also one premium request times the
[00:02:29] times of adjuster.
[00:02:31] What is that saying?
[00:02:33] That means that all that stupid stuff I did, like out of absolute laziness, open it.
[00:02:41] I thought it was so cool being Tony Stark.
[00:02:43] Open it.
[00:02:44] Do it.
[00:02:45] Throw me.
[00:02:46] Every single time I did something like that to tell it to continue, I was burning a premium
[00:02:52] request, premium request.
[00:02:54] One, full beam, so just to see it open up on my screen.
[00:02:58] Every time I have asked for it to create a PDF or to summarize my issues and forgot
[00:03:07] to change my model to one of the free models, one premium request.
[00:03:13] All of that work can be done with the free models, the GPT, you know, many in the GPT
[00:03:18] 4.1.
[00:03:19] Like managing your issues and summarizing your issues and, you know, helping you write
[00:03:24] documentation, all this stuff, that can all be done absolutely for free with Copilot using
[00:03:29] the right model.
[00:03:30] Even haiku is one premium request.
[00:03:34] That means like I was, if you're interacting with haiku and you're interactively cleaning
[00:03:39] up your issues and like understanding where they are and getting summaries, which is a
[00:03:43] really great thing to do, say I had to do, that every single time you do that, you're
[00:03:47] burning one premium request, even though it's haiku because it's not one of the free models.
[00:03:54] So how do you game the system?
[00:03:57] You game the system by writing the longest possible prompt with the most specific information
[00:04:04] possible because that will be submitted as a single issue, a single request, time 7.5
[00:04:11] per opus, and that will result in a very accurate, very safely implemented PR that you can then
[00:04:19] pull down and test.
[00:04:21] Now, if you want to use AI to pull down and test it, you're going to be paying for that.
[00:04:27] Each time I have the AI actually deploy and check out my thing, I am paying for it.
[00:04:33] So the obvious fix to this is to add a system that can be run by you where you pull down
[00:04:40] the PR, run make deploy, you run make deploy, thank you for the cheer, and you're able to
[00:04:46] see your whole thing without any AI interaction.
[00:04:49] And that can be automated.
[00:04:51] I know that because I'm building it into my phone.
[00:04:53] My goal is to be able to code all of my to-dos from my phone on my bike while I'm drinking
[00:04:58] coffee, everything, because you can, everything you need to do to any kind of development can
[00:05:04] be done through, thank you, any kind of development you could possibly want to do can now be done
[00:05:11] through your phone because it's all about the most accurate prompt, which, and I can
[00:05:16] go on and on.
[00:05:17] I actually made an entire video about this and didn't suppose to yet, I'm going to talk
[00:05:20] about it in the beginner boost is a plug for the beginner boost Saturdays at one o'clock
[00:05:24] my time, mountain time, make sure to join us.
[00:05:26] We'll talk more about AI development and getting started in a technical career, what
[00:05:30] it takes, particularly now in the age of agentic AI, and a big piece of that is now, and I'll
[00:05:39] kind of spoiler alert this, learn software development patterns, learn business systems
[00:05:46] design, because thinking in terms of how the system should work and how to communicate
[00:05:52] how the system should work should be your number one priority.
[00:05:57] The number two or three or four priorities are be literate in technology, know how to
[00:06:03] read code, know how to understand a command line, know how to understand how network architecture,
[00:06:10] you don't necessarily have to type it or do any of it, you have to understand it, you
[00:06:13] need to be literate in it, but the most important skill you're going to learn as a senior technologist
[00:06:19] is systems design, how does the system work?
[00:06:24] And if you start thinking in terms of how the system works right now, you can game the
[00:06:30] system financially from GitHub, because the more precise you are, and the more verbose,
[00:06:37] and the more clear your expectations of the system and requirements are of the system,
[00:06:43] the more your prompt will save you money.
[00:06:46] You submit one issue, you have it working in the background while you're doing whatever
[00:06:49] the hell you want, you get notified of it being done, and you pull it down without paying
[00:06:54] a single token and test it out on your system.
[00:06:57] And then you say, yes, I want that, you merge that without paying a token, and then you
[00:07:03] go back and you do the same thing again.
[00:07:05] You save your low level interactions with your free models so that you can do, it's a little
[00:07:12] bit frustrating because the free models may be faster, but they, they're not as smart,
[00:07:17] you know, but they, but they do tend to understand how to manage issues and stuff like that.
[00:07:21] So they help you write documentation and things like that.
[00:07:23] So you use your cheaper models for your overall harness interactions, but I'm going to end
[00:07:27] this video with a very, very harsh statement.
[00:07:32] If you are using an interactive harness with Claude Opus 4.7, you're doing it wrong.
[00:07:41] And I'm going to let you think about that for a second.
[00:07:44] Why, why is it wrong to use Claude 4.7 in an interactive harness of any kind?
[00:07:53] At least on GitHub.
