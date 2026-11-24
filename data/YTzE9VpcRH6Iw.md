# 🍅 Readable interface docs in golang

Contrasts two ways of documenting Go interfaces: long comments placed inline above each method, versus a short summary above the type with the longer explanation kept below the interface. Argues that the second keeps the interface easy to read, and shows a trick for checking that a struct implements an interface while developing against it.

Chapters:
0:00 A readable layout for interface docs
1:11 Checking that a struct implements an interface
2:45 Why long inline method comments hurt readability
5:12 Short inline notes, longer docs below

`#golang #go #documentation #interfaces #programming #vim #coding #protips`

## Category

Science & Technology

## Transcription

[00:00:00] All right, so one of the biggest pet peeves that I have about the Go language and some
[00:00:05] of the standard libraries is the way people write their interface documentation.
[00:00:10] And what I'm showing right now is the documentation that I use, my technique of doing this is
[00:00:16] there's a few of the people that have done this in the past, I've seen them, but, and
[00:00:20] I want to show you the contrast a little bit so you can see the difference.
[00:00:24] Right away, when I see the documentation here, I see a little summary, and then I have the
[00:00:29] actual interface.
[00:00:30] So I can see what the interface is, and particularly if you get more than one, you usually only
[00:00:33] have one or two methods, but in this case, like file info, you know, there's more than
[00:00:37] one.
[00:00:38] So, and, and then the, the, the longer winded documentation comes down below.
[00:00:43] And in my, this is something that I do, but I'll add a summary of each of the interface
[00:00:49] actions, um, so that you can actually go ahead and I'm going to, I'm in the middle of doing
[00:00:54] that.
[00:00:55] So here I am like writing it right now, right?
[00:00:56] So this is what it looks like, but I mean, this is a really big block of documentation.
[00:01:02] Right.
[00:01:03] So what is the alternative to this and why do I do it this way?
[00:01:06] The main reason I do it this way is because of the reason I just said, I can exit out
[00:01:10] of here.
[00:01:11] So this is me.
[00:01:12] This is another little trick trick here.
[00:01:13] If you don't know this trick, this is a way for you to test whether you're struck implements
[00:01:16] an interface while you're developing it.
[00:01:19] And then you can comment that out and then it'll, it'll, it'll show you whether, whether
[00:01:23] you fail to implement that.
[00:01:24] That's a separate little thing.
[00:01:26] If I, if I actually commented any of these out, uh, might change the name of this, for
[00:01:30] example, uh, this will start to fail because they'll say, Oh, you're not implementing driver
[00:01:34] anymore because you don't have all the methods, right?
[00:01:37] Separate tip, separate video on that, but, um, and now I save it and I'll get it, but,
[00:01:42] but like, you know, if you're writing, if you're writing a driver or you're writing an implementation
[00:01:46] of interface, you're frequently want to probably pull up the interface.
[00:01:48] So this is actually a really great way to develop against an interface is you create
[00:01:53] a struct, you create a little technique like this to say it implements the interface and
[00:01:58] then you can go back to this line and do capital K and pull up the interface definition and
[00:02:04] read about the contract that you have to fulfill with the methods and what they, how they need
[00:02:08] to perform and everything while you're doing it.
[00:02:11] And then you can go back.
[00:02:12] Um, if you, if you're in the middle of it, you might want to, you know, actually another
[00:02:16] reason, uh, to have that sort of summary at the top is if you have T marks or something
[00:02:20] like it, I mean, you could make a tool to do this or you could just use T mucks and then
[00:02:26] go bam and then grab a couple interfaces out and exit out and go back to, um, to, to
[00:02:32] pasting those in with T mucks.
[00:02:34] And now you can paste your signatures and or something, but you actually don't need to
[00:02:37] do that.
[00:02:38] Um, it is fun, but you don't have to do that.
[00:02:40] So that's a quick technique for, um, the reason for doing that.
[00:02:45] Um, I promise you, if you look around hard enough, you'll see people that do this instead.
[00:02:50] They will have, you know, they'll have like, I'm just going to, I'm going to do one of
[00:02:54] them so you can see how messed up this is.
[00:02:57] Um, let's take the, let's take, well, let's see, and take the clear, let's take the three
[00:03:02] lines of clear dock and put those in front of clear.
[00:03:06] So this, there's lots of standard libraries that do this, um, and I absolutely detest
[00:03:12] it.
[00:03:13] Um, and let me, let me show you why I don't like it.
[00:03:16] Um, so by doing it this way, hey, how are you doing?
[00:03:20] So by doing it this way, someone argue, oh, it's like written right there by the thing,
[00:03:25] but this makes it very hard to see the interface when you're doing the editing over here.
[00:03:31] So, and most of the time, honest to God, I don't need to see all the details.
[00:03:36] I only want to look at them if I need them.
[00:03:38] I just want that little summary.
[00:03:40] So I'll go to the driver again.
[00:03:41] Let's go look at it now.
[00:03:43] And whoa, wait, what just happened, do I not save?
[00:03:50] What just happened?
[00:03:52] What just happened?
[00:03:59] Something is happening, my friends.
[00:04:02] What driver is it pulling in?
[00:04:07] That that is weird, LSP didn't update you think.
[00:04:17] Interesting, what is going on?
[00:04:24] You think I need to exit and then reopen?
[00:04:27] Yeah, I've been finished loading packages.
[00:04:30] Okay.
[00:04:31] Yeah.
[00:04:32] Oh God, that was weird.
[00:04:33] Yeah.
[00:04:34] Okay.
[00:04:35] There we go.
[00:04:36] Oh my God.
[00:04:37] Please, no, please don't do it that way.
[00:04:42] If you spend enough time programming go, you will run into this kind of inline documentation
[00:04:48] that is just a pain in the ass to digest.
[00:04:51] You want to see, as a developer, I want to see exactly what's happening and I want a
[00:04:56] short summary.
[00:04:57] So I'm going to rest my case at that point and I'm immediately going to delete this
[00:05:01] back out of here because we also learned that the LSP doesn't update unless you restart
[00:05:05] the computer, I mean, the editor, which makes sense, but annoying, right?
[00:05:12] So I'm not against like one line of documentation in here.
[00:05:16] So you can get a nice, quick idea of what it does.
[00:05:19] But then you can, and there's nothing wrong with putting the big, long stuff here, right?
[00:05:23] You can leave it there, just, just, you know, just do it that way and then you get this
[00:05:29] nice, oh God, look at how beautiful that is.
[00:05:31] It's like so pretty.
[00:05:32] It's like all organized at the top and then I can zoom down here.
[00:05:35] I want to read more about it.
[00:05:37] It's absolutely perfect.
[00:05:38] Uh, in TypeScript, the inline comment gets picked up by the LSP, which calls the function
[00:05:42] is it the same ago.
[00:05:45] Do not know.
[00:05:46] Do not know that.
[00:05:47] I wish I had an answer.
[00:05:48] That's all for that video.
