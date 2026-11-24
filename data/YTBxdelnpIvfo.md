# 🌟 Yank/Delete Whole Functions with Vim af

Demonstrates the Vim text object af for deleting, yanking, filtering and commenting out whole functions, including swapping functions pasted back and forth with an AI chat window. Shows the relevant vimrc and Neovim treesitter text objects setup, including a plugin fork that adds Perl function support, and compares behavior in Go code with the inner function object if.

Yank and delete whole functions with vim af and here's how to add to Perl as well (yes Perl).

Chapters:
0:00 Intro to the Vim af text object
0:33 Why whole-function editing matters with AI
2:20 Delete and yank functions with daf and yaf
3:35 Replacing functions and reviewing with git diff
4:21 Commenting out functions with gcaf
5:36 Vimrc and treesitter text objects setup
7:00 Adding Perl function support to the plugin
8:40 Trying af and if in Go code
10:25 Wrap-up and comment toggle question

`#vim #neovim #texteditor #treesitter #linux #terminal #perl #vimrc #nvim #tips`

## Category

Education

## Transcription

[00:00:00] or recording. All right, this is a quick video about why you want to use VIM AF.
[00:00:10] Yeah, like DAF, YAF. There's also IF, which is inner function, but it's not as useful and it's
[00:00:19] not as well supported across the board. And I want to show you how to enable this. It's actually
[00:00:28] not enabled in Perl. I actually made it enabled in Perl using text objects. But this is about
[00:00:33] something called text objects. So let me show you the problem. You've got a function.
[00:00:40] This is a particular problem. If you're not fully integrated in your AI, you want to use
[00:00:45] copy and paste snippets and functions back and forth between another thing. And I know that
[00:00:50] that's not the best way to do it. I know that there's a better command line way to do it.
[00:00:55] Unfortunately, that doesn't count and you can't use it. It's a whole bit of a video about,
[00:01:01] I got used chatubt still for this and I don't use claud. Because I don't care and I already
[00:01:05] got my $20 a month for that and I just want to use the same thing. So unfortunately,
[00:01:09] that means I have to use a different window. As far as I know now, I think there is another way
[00:01:12] to do that. We'll do another video on that. But anyway, so here I have, I went to, I went to,
[00:01:17] there's some functions that you read right in the script. And so I handed it off to my AI.
[00:01:24] And this is just one workflow for why you would need this. You know, deleting and moving around
[00:01:30] functions that have spaces and blank lines in them is a problem for VIM users. It has been for a long
[00:01:37] time. Because unless you have to have a, your VIM can figure it to use to know about the syntax
[00:01:44] of a function, what a function looks like, right? So for me, you know, I can go, that's worked forever.
[00:01:49] So here we have, this is a replace your YouTube, the AI with this one, right? So I click over here
[00:01:54] to click copy and that gives me it in my bumper. And in this case, it's fine because there's no
[00:01:58] spaces here. So I can go look for the YouTube API. Actually, that's not it. Let me, let me,
[00:02:05] let me find the actual one. So YouTube API, here it is. Okay, so here we got this function. And I
[00:02:10] don't even know what the difference is. I guess I could look really quick. It looks like it's more
[00:02:15] or less the same. But anyway, so let's say I want to delete this, right? So from the middle of it, I do
[00:02:20] DAF. Now that just to lead you the entire thing and put it in my VIM buffer. But now I can do a
[00:02:27] system paste. So in this case, control C. And I paste the one that I copied from over here.
[00:02:33] So you see, see how nice that is? And if I just wanted to get, if I wanted to copy the whole thing,
[00:02:40] I could just do YAF. In fact, I can take the whole function and pass it to a command with
[00:02:44] exclamation point AF. And then I can, you know, pass that off. If I wanted to save that, I can,
[00:02:50] I can, you know, echo, or I could echo, I could tap that to temp. I mean, there's, there's a million
[00:02:56] different things you can do there. I'm, or PV copy. That's another one, right? So like, if I have
[00:03:02] other ways of getting it into my buffer, PV, PV copy is the Mac way to get your buffer. But you
[00:03:06] could, you could send that entire function to your buffer by passing that, you know, exclamation
[00:03:12] point, you know, and then you can paste it back into your AI. I didn't want to do it. But that's,
[00:03:17] that's just, again, you know, there are better ways to get you to the AI. I don't want to hit
[00:03:21] comments that I'm a YouTube. Oh, you dummy, you should have just done this instead. I'm just trying
[00:03:26] to show you how to cut and paste entire functions and once and how it happens to be relevant when
[00:03:31] you're going back and forth between two windows. So here I have set YouTube live titles. So copy,
[00:03:37] I'm going to go look for a set YouTube live title. There is down here. Right. So this one,
[00:03:44] I have to delete it. It could be a head who knows how long it is, right? I don't want to have to go
[00:03:48] to get all that thing. So DAF. And now I just insert and I paste back my other one and I replaced
[00:03:55] those two functions. So then I can do a get dip to see what actually changed. If I wanted to
[00:04:02] get dip, show me that those, how those functions changed. And, you know, we can, you can see how
[00:04:09] I took out the tokens. And that's usually the best way to study those kind of things. So I just
[00:04:14] want to make a quick video about a app. So DAF, YAF, and you know, exclamation point a app.
[00:04:21] One other quick one, a lot of people don't know this. I had a friend tell me this the other day.
[00:04:26] You may not know about this, but if what if I want to comment out that entire function,
[00:04:31] I want to leave it there. Do you guys know this one? G-C-A-F. Yeah, I just did that.
[00:04:40] I commented out an entire function with one command, G-C-A-F. Now let's say I want to reactivate it,
[00:04:47] G-C-A-F. Well, that one goes against the next one. I'm going to undo that one.
[00:04:54] I thought it was, well, that works for paragraphs too, by the way. So I don't know why that wasn't
[00:05:00] working. That's it. I'll have to look into that one. But usually you can do G-C-A-P, G-C-A-P,
[00:05:05] and you'll be able to comment, uncomment, comment, uncomment, uncomment. But in this case,
[00:05:10] it's not doing it. I don't know why. If somebody knows, put it in the comment.
[00:05:14] This is only for Bash. So yeah, let's do this one right here. Let's see if we can do this one.
[00:05:20] G-C-A-F. Yeah, I want to undo that and then undo my last one. So I guess you could just
[00:05:26] undo it. There is a way to do it, but I think the text objects for this are not right. So
[00:05:32] how do you set this up so that it does all that if it's not doing it already?
[00:05:36] But before we leave the video, I want to show you the portions, the relevant portions of the VIMRC.
[00:05:42] If you go into my VIMRC, by the way, and you want to go into my dot files,
[00:05:45] rvichrobs/dot.vimrc, make sure you're looking at my cleanup branch right now,
[00:05:50] which is where I'm working on all this stuff. So here's this section that's relevant as it's
[00:05:57] posted in my plugins. That's right. I have a VIMRC and an init.lua,
[00:06:02] which I'll talk about in another video, but I do this because I want to use VIMRC at work.
[00:06:07] I don't have NeoVIM. I do, but I don't always have it. So I use VIMRC when I have it, and then
[00:06:13] I've got a lot of code in here that checks to see if there's NeoVIM on the machine and if not,
[00:06:17] I'm using that. So my init lua checks to see if I have a VIMRC and it does slow start up a little
[00:06:22] bit. That's my biggest complaint about NeoVIM right now. That and the blistering pace of change,
[00:06:29] where they break things all the time. But if you put, so here's the main relevant
[00:06:37] stuff you need. You need NeoVIM tree sitter and NeoVIM tree sitter text objects. Now,
[00:06:43] I've got a PR submitted against this project and even a tree sitter on project to add the pearl
[00:06:54] stuff to that. So I've done a lot of pouring of old Pearl code that submits to PBS. 19,
[00:07:01] which is this ancient batch system and I'm modernizing it to submit the slurm.
[00:07:05] And we have to do a lot of Pearl coding in there. So I'm working with that and actually added
[00:07:10] that line to do the AF thing, which you can go. That's actually Sam. I think I might have it
[00:07:18] somewhere. All right. So actually, if you want to do this without, you can just use my plugin
[00:07:25] as got it. But if you, because you can't do that with Pearl right now, it's not supported by NeoVIM.
[00:07:30] But if you use mine, then you'll be able to do it. Otherwise, you can just go edit the
[00:07:37] the NeoVIM lines of what mine does. I can't remember where I put it.
[00:07:51] I don't even know where it is. I just know that it's in the plugin now.
[00:07:55] Oh, that's probably why. Yeah, I got rid of my personalized one and I put it in the actual
[00:08:00] plugin, my version of the plugin. So what it was is it adds the idea of a function to Pearl
[00:08:12] so that when you do the AF or it doesn't have I up, but if you do AF, it knows what a Pearl
[00:08:20] function is and that was missing from the NeoVIM two-seater text object. So it's in this version
[00:08:27] of the plugin if you want to add it. If you're doing Pearl, that's really the only reason to
[00:08:31] do mine. Otherwise, it's usually the other one. And eventually that one, hopefully they'll get
[00:08:35] approved. It takes them. There's like PR from December that haven't been approved. Maybe they'll
[00:08:40] get there someday. But yeah, that's how and it works for everything, by the way. So like if I'm
[00:08:47] you know, doing go code, cd-boost, cd-monzai, it works everywhere, right? So we can do a monzai
[00:08:56] test, my go code. So here we have some example-based tests that got line spaces in them,
[00:09:02] everything, right? I mean, this stuff works already because this is always working go
[00:09:07] with or without the text objects from the NeoVIM. The go plugin has always done this and that's
[00:09:13] kind of spoiled me. That's why I was upset. G-C-A-P. Yeah, that one didn't. Now that's G-C-A-P. Let's
[00:09:22] see this. G-C-A-F. All right. So there we go. That can go. Now let's see. I want to see if the
[00:09:27] go one toggles G-C-A-F. No, it doesn't. It doesn't. Is it G-P-A-F?
[00:09:41] I don't know. But yeah. G-C-A-F. No, G-C-A-F.
[00:09:48] And then Y-A-F and D-A-F. Now, go-go's also got I-F, right? So I can do this. I can do D-I-F.
[00:09:58] And that's languages that have like a really intense
[00:10:03] signature line, like the argument line at the beginning. They usually benefit from having an
[00:10:10] I-F. That's what I just did there, right? So I did D-E-I-F and deleted the whole
[00:10:14] body of the function. I can actually rewrite it. If I want it, you know, as
[00:10:18] opposed to D-A-F, I wish it's the whole thing. So I think that's probably it for today on the
[00:10:25] particular thing. Let me know if you have questions or anything. If I'm missing something,
[00:10:28] particularly help me understand Y-G-C is not... I relatively recently learned about that. I really
[00:10:34] want to know why it's not toggling comments on and off. I'm doing something dumb. So if you
[00:10:38] know, let me know in the comments. Bye! Oh, I have to turn you off now. Here we go.
