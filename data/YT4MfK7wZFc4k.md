# 🎄🚀 Shell Redirection, Pipes, Here Docs, and tee (Holiday Boost 2024, Part 15)

Walks through shell redirection and pipelines, including standard output, standard error, standard input, process substitution, here strings, here docs and tee, with notes on which features work across different shells. Also shows Perl and Vim filters as examples of the Unix philosophy, and ends with a change of position on using Bash for scripting.

Chapters:
0:00 Intro and plans to drop Bash scripting
2:08 Redirecting and appending output to files
4:17 Redirecting standard error and /dev/null
10:25 Pipes and filtering with grep and Perl
13:52 Unix filters, bc and Vim
15:20 Building pipelines and redirecting input
17:20 Reading files into variables and loops
19:53 Process substitution and here strings
25:12 Here docs and multiline comments
30:14 Here doc indentation, variables and quoting
34:24 Viewing and saving output with tee
37:49 The Unix philosophy
41:01 Choosing shells and rethinking Bash

`#bash #linux #shellscripting #unix #commandline #terminal #perl #vim #coding #shell`

## Category

Education

## Transcription

[00:00:00] Okay, so Merry Christmas, it is Merry Christmas time, and what better day to learn?
[00:00:06] Shell redirection, shell directional streams, we're gonna spend hopefully less than an hour
[00:00:12] talking about this, and today we're also gonna compare several different shells because this
[00:00:19] thing that we're gonna talk about doing is, has extensions that are possible in certain
[00:00:25] shells and not in others. I know this has mostly been about bash, spoiler alert, I am
[00:00:31] banishing bash for my life for 2025. I am going to make a summary of that. I'm also taking
[00:00:37] bash out of my book and as a scripting language, but not as an interactive shell. I'll more
[00:00:43] on that later, so stay tuned. Today, let's talk about redirection. Okay, and this is
[00:00:50] pretty basic. At this point in the video, you've already watched all the other videos
[00:00:54] and you know about standard input, you know about standard air, and you know about standard
[00:00:59] input. Okay, so let's talk about those again. When we do echo, when we do echo hello, it
[00:01:08] goes to standard output, right? If we wanted to read in a program, you know how to do that,
[00:01:16] right? We already did that with read and line, and we did a little project last time. And
[00:01:22] what we're gonna do now is, so like we already talked about redirecting that stream to, you
[00:01:28] know, I did this, right, and I didn't tell anybody what I was doing. So let's go through
[00:01:32] and let's actually talk about this. Let's see, ran back crying, but you do what you want.
[00:01:41] You broke up with bash before. I did, I broke up with bash big time before, and then I ran
[00:01:46] back. I did. I don't know if we're gonna do bash interactively, but here's the thing.
[00:01:51] We don't have to say only use bash interactively. And I want you people watching right now to
[00:01:56] be able to help me make this decision because before we can have this conversation, you
[00:02:00] have to know how all the redirections work. So let's get through that and let's have the
[00:02:04] conversation. People want to have the conversation. We were already talking about that earlier.
[00:02:08] So how do I take that standard output and put it someplace else? What if I want to put
[00:02:12] it to a file, okay? If I want to write that to a file, then I use this greater than sign.
[00:02:17] It's not greater than. You'll hear us refer to a technology as the right angle bracket.
[00:02:23] People call it that's what they mean. And because it's, you know, it's, you know, in
[00:02:28] that case, it's not less than, right? And that says, I want to take a low and I want
[00:02:31] to arrow it. I want to write it into a file. So we'll put it into teppoo. And what that
[00:02:35] does by default, you may have no clobber on, which will say you can't do that a file exists.
[00:02:41] Most people don't have that on by default. But what that does is it writes out to that
[00:02:46] file and overwrites the file, zeros it out and writes the truncate. That's what they call
[00:02:50] it. And then it writes that new thing to the file, okay? And now I can actually look at
[00:02:54] the file with cat and it'll show me what's in there. If I want to add another thing to
[00:03:00] the file, I can put two of them. And then that just adds to the bottom of the file and we
[00:03:06] can't the file. I mean, this is, this is like shell 101 stuff, right? So now you know, so
[00:03:11] we can look at the thing. And you already know that cat will show you all these add these
[00:03:16] to your notes. Now you already know that, that cat will show you these things. A lot
[00:03:21] of people don't know this, but there's also tack, which will actually reverse the order
[00:03:25] of the lines and print them out. And there's two other commands to memorize here, head
[00:03:30] and we'll do head one temp foo that says, show me the first line. And then we'll do tail
[00:03:36] dash foo. That's on the bottom line. And you can use tail in addition with a dash F so
[00:03:41] that if you add something to the file, you'll actually show you as soon as it's added, this
[00:03:47] is useful for monitoring logs, tell foo. And so then up here, if I do, if I do, where's
[00:03:54] my, where's my cat? So echo there, again, and it traded to the end and you see, you
[00:04:00] know, it adds on to the end. So that that is everything to do with redirecting standard
[00:04:06] output to a file. Now, what you probably want to know after that, we already know how to
[00:04:11] edit files, we talked about that, but now we're going to do, let me see here. So let's
[00:04:17] actually, let's see now, so we've done that redirection out. Occasionally, something will
[00:04:25] have an error and you need to like redirect the error. And you don't want to see this
[00:04:28] is a very common usage for redirecting the errors. In fact, almost always, you're going
[00:04:33] to want to redirect the errors. Let me give you a good example. If I do a find here, and
[00:04:37] I say I want it to be, I don't know, maybe I want to have it grep something, right?
[00:04:44] And I want to have an exec, you don't know about, you don't know about this command yet,
[00:04:47] but if I did exec grep, I wanted to search for a thing for hello in all the files. Let's
[00:04:58] see, let's see, wait, I have to comment that out. Okay, so you see all that right there,
[00:05:03] see all those errors, there's a lot of errors there. And you know, that's not showing you
[00:05:07] your useful information. So this is one of those cases where you'd want to shut it up.
[00:05:11] So this is one of those cases where you would redirect it. And so what you do is you say,
[00:05:16] I want to redirect the errors, which are coming from two to dev know, and that says, right
[00:05:23] all, instead of writing those to output to the terminal, write them to dev know, which
[00:05:27] is just called the bit bucket. So it throws them away. So now we only get the things that
[00:05:32] we want to see, and we don't have to, we're not forced to see all the other stuff. You
[00:05:36] know, there's a bunch of files that are written there. And you know, you see only the files
[00:05:41] that exist that have the thing in there. So that has been the redirection of standard
[00:05:47] error. Now, occasionally you'll want to write to standard error, which we did in the two
[00:05:53] being standard error. Yes. And one is standard out and zero is standard input. A lot of people
[00:05:58] don't know this, but you can actually define your own file types for output, which you
[00:06:03] could combine in interesting ways, but that's out of the scope of this beginner kind of
[00:06:07] stuff. So, um, but like what we should do now, so like, let's say I want to write, I want
[00:06:12] to echo something echo. Uh, there was a problem, but I don't want this to be in the output.
[00:06:20] Maybe I want my program to output a number or something and have an error. Um, and, and
[00:06:27] so then, uh, we're going to go ahead and do there was a problem here. And we're going
[00:06:32] to, you know, normally that would just do that, but now we can make it go to the other stream
[00:06:37] and the other stream is, uh, so by default, the mainstream is one, but we're going to
[00:06:41] send it to standard error instead. And so you put it, you put that whatever the ampersand
[00:06:46] in front of there. Um, that's not an ampersand, isn't it? Yeah, well, no, it is. Okay, you put
[00:06:51] an ampersand in front and it still goes to the screen. Um, but now it wouldn't be saved
[00:06:56] if you were to put it to a file, right? So I could say this. Now if I say, right, that's
[00:07:02] a tempfue, you're going to see that foo is empty now. So cat tempfue, you see that it's
[00:07:08] empty. WC tempfue has no lines in it as well as one line over there. Oh wait, that's a
[00:07:14] fail. I failed. I failed. Oh no. I did it in the wrong order. Oh, I've done this before.
[00:07:23] I do this all the time actually. Yeah. Ah, that's a good error to do on stream. Yeah.
[00:07:30] That is a really good error to do on stream. The order matters people apparently. You just
[00:07:40] saw, I always do that wrong. So be careful. So here we go. So we have, so this says redirect
[00:07:48] standard. Um, yeah, it says redirect standard output to tempfue, but redirect standard errors.
[00:07:59] No, wait, is that what am I doing there? I was like, right at cat tempfue. That's interesting.
[00:08:10] Okay. Yeah. So I guess I asked to come first. Anyway, you can look up the order yourself.
[00:08:13] The point is I'm redirecting. I'm re redirecting standard error to tempfue. No, I'm not though.
[00:08:25] That's the thing. This one I wasn't this. This one is redirecting. That one is still working.
[00:08:33] I have to look this up. Yeah. So anyway, two, two is standard error, right? Yeah. Actually,
[00:08:55] what we're doing here is not something you would normally do because you would have two
[00:09:00] echoes, right? You'd have a log error and then you'd have another program. Let's let's actually
[00:09:04] do that. So let's do that. Let's say there was a problem. We'll make that write that to
[00:09:08] the errors. Okay. This, this is a much better thing. At least we put it in a script. Let's
[00:09:13] put it in a script. But this is the same thing as a script. So echo, uh, hello there. Okay.
[00:09:19] So this is what we want to actually have appear. And, um, it puts them, it prints them
[00:09:24] both out. Right? But if I redirect them to tempfue, you still see there was a problem.
[00:09:31] But tempfue is still there because tempfue was redirected and standard error was redirected
[00:09:36] to there, right? Okay. So if I wanted to, if for this particular thing, if I wanted to
[00:09:42] shut up the errors, I could do this dev null and I, it would still work. So now there would
[00:09:48] be no errors and tempfue would be changed. When I put the parentheses around it like
[00:09:53] that, I turned it into a sub show, which essentially turns it into a script. And so that whole
[00:09:57] thing is as if it was written in a little tiny script. Okay. So that's standard error,
[00:10:03] standard out. And it's, it's redirection and appending to a file. Um, there are, are lots
[00:10:09] of other things you can do here, but 90% of the stuff you're going to be doing is either
[00:10:14] appending to a file, redirecting to dev null, uh, or, um, you know, making a new file and
[00:10:21] by just, you know, writing your output to a file. So that's the main way to do that.
[00:10:25] Um, so about this time, it's worth talking about, uh, piping. So we haven't talked, this
[00:10:32] is all output stuff, right? We're not gonna talk about input. We already did with the
[00:10:35] read, but we're gonna, we're gonna do output. So output more and more output. Okay. So we
[00:10:39] can say, what if I wanted to take the output of LS, uh, LS dash one, let's say, and I wanted
[00:10:47] to do something with it, right? And there's lots of things you can do here, but I'm actually
[00:10:52] going to use, show you some fun stuff. We want to say, I, now Grepp already does this,
[00:10:57] but we're just going to, I'll just play around with this. Okay. So let's take that output
[00:11:01] and say, I only want to see the ADOC, right? So we can use the grip command and we can
[00:11:05] say ADOC. And that will show you that there's only the ADOC there, right? Now more likely
[00:11:10] you don't want to do something that only shows, yeah, you want to use a pre-rigger expression.
[00:11:15] And for this, I'm going to use one of my fun ones. Uh, we're going to use, uh, PAE. And
[00:11:21] I'm going to say, uh, something like, um, let's say we, we'll, we'll, anything that's
[00:11:29] got a, an arc in it, let's say anything that's got a doc in it. All right. Uh, and prints
[00:11:37] and say, and saying we get read it to that. And so that prints out the lines and we stop
[00:11:43] to organize the lines and everything like that. Um, but you know, you could do that similarly
[00:11:48] with grip. Uh, you could do grip, anything that's got doc in it. Same thing, except for
[00:11:53] takes out the blank lines. Um, PAE is a parole dash a, which we're going to talk about a
[00:11:59] lot. We're going to do a lot of parole 2025. So I wanted to kind of show you that in advance.
[00:12:03] But, um, so another thing too, you can do with this kind of filtering is you can transform
[00:12:07] things. So parole dash, uh, this one we're going to do, uh, PE. And we're going to in
[00:12:15] place. We're going to make it all lowercase. So let's just say LC and see what happens
[00:12:21] if we can do that. Let's do that. Let's say, um, let's do LC. Let's see here. Um, I think
[00:12:32] we can just do this one. Do do do do. I think I have to reassign it though. Yeah, it's probably
[00:12:40] an easier way, but that one will probably, there we go. So that's one way it could like
[00:12:44] lowercase everything. Um, now if I wanted to make everything all uppercase, I could use
[00:12:50] see, the point is, is that we're taking this text from one program and we're sending it
[00:12:55] to another program in this case, Pearl, which is 100 times smaller than bash. We just found
[00:13:00] that out today. Um, and more powerful, it's at least 1000 times more powerful than bash.
[00:13:06] So we're going to be doing a lot of parole in the new year. Um, and it's because of these
[00:13:10] transformations that it's, that it was created and it's pretty amazing. Um, and that's, you
[00:13:15] know, a pretty realistic thing to do. Another thing too, you can do here is we could actually
[00:13:19] on a separate line, we could add how many matches we have. So if we actually, um, well,
[00:13:25] if we wanted to add a match, we can count them and there's just a bunch of little, the cool
[00:13:29] things you can do here. Um, and I don't want to get too sucked in the weeds on this. This
[00:13:33] is just really fun. But what I'm trying to mainly tell you is that this pipe here says
[00:13:37] take the standard output and attach it to the standard input. There are other simple things
[00:13:42] to do. So you can send it to WC accounts, how many numbers of lines here. If you only
[00:13:47] wanted to count the line numbers, um, you could do dash L. And so this, this idea of
[00:13:52] attaching things in a pipe is the, that is the essence of the Unix philosophy. And that
[00:13:59] is also the base essence of Unix filters. Um, you can do all kinds of things this way.
[00:14:06] So you can say this, you can say echo, uh, you know, 23 times a day, uh, times blah blah.
[00:14:14] And you can send that to a command line calculator and it will calculate the number for you.
[00:14:19] That exact thing can be done within a file while you're editing it. So in fact, let's
[00:14:25] take the exact code and use it as a filter. And we're going to do temp foo. And we're
[00:14:31] going to write the same code right here as if we had just like what we were like writing
[00:14:35] a blog or something. And we want to do some math, right? And we just want to put that
[00:14:39] math here. So, um, so there it is. We don't need the echo anymore. Um, in fact, we don't
[00:14:46] need any of that. We can just get rid of all of that. And now we can just do bang, bang
[00:14:52] and send it to the BC command. And that line will be replaced with its output. Why? Because
[00:14:58] of the way Unix works. Vim filters are based on Unix. Unix is a, you know, largely a bunch
[00:15:06] of things that pipe their text input to something else. And that's how they work. And so everything
[00:15:10] is designed to take standard input and do standard output, whether it be something as simple
[00:15:14] as sorting everything here, boom, boom, sort, right? Now I could, I could have done that
[00:15:20] same command. Let's see how I would do that by, by just taking the output of that command.
[00:15:25] If I were to take that command, let's say another one. So I just want to try it. So let's do
[00:15:30] this one. Okay. So let's take that command and, and let's use the cat command. Don't
[00:15:35] do that. Actually, no, let's do the, let's do the input now. Should we do cat? Well,
[00:15:40] let's show you. Okay. So what does cat do cat dump stuff out, right? We're going to don't
[00:15:44] do what we're about to do, but I'm going to show you this is usually an anti pattern
[00:15:48] because it masks things, whether you could cat, you could pipe it into what, right? So
[00:15:52] let's do this into sort, right? So you can do cat, it said it gives a thing. But now
[00:15:57] you can take it into sort now that they're together, you can set it to another command
[00:16:00] called unique. And then cuts on all the ones that are unique, right? And then maybe, maybe
[00:16:05] you only want the ones that have a D in them. So we grep a D. You see how this works, right?
[00:16:11] So you can incrementally build up these pipelines that do this kind of thing. And that would
[00:16:15] be one of the cases where you might want to cat the file. Normally, though, you would,
[00:16:19] you would want to do this and this, this introduces the redirection of standard input. So instead
[00:16:24] of, you know, angled right, we're going to go angle left now. And we're going to say
[00:16:27] this, we're going to say I want to sort everything in this file. Now this, you know, sort I think
[00:16:33] it takes a file name. Yeah. So a lot of these programs will actually take a file name and
[00:16:38] they'll assume that. But some don't some you have to pass the thing. And in fact, I don't
[00:16:42] think WC does. Let's see WC WC does. Okay, so WC does do the file. But you can do dash
[00:16:49] L. But most programs are also designed to take standard input. So that says, take that
[00:16:54] in, right? Now you can actually cat is one of those things, right? So cat takes either
[00:17:00] an argument, which is the file name, you can do several file names, actually, and then
[00:17:04] it'll it'll concatenate all of them together. Or you can send something to cat and it will
[00:17:10] just send it out, right? It'll send the output. So you can do cat and you can send it like
[00:17:14] that. And it, you know, it outputs the thing. Um, there, there are a number of tricks here.
[00:17:20] One of the tricks is that you can put that entire file into a variable using the redirect.
[00:17:27] So you can do this, you can say, um, you can say var, let's see, uh, foo content, foo
[00:17:38] content equals any redirect temp, boo. And now, yeah, it's safe. Now it's saved into
[00:17:44] a variable and you can echo foo content and it'll have all the stuff in there. But you
[00:17:49] notice how put it all together on a different line. You know why? Because echo, if you print
[00:17:54] up that watch, it'll be, it'll only do the first one. That's because there's not quotes
[00:17:59] there. Yeah. So she'll check would be yelling at us. We're not doing quotes there. Yeah.
[00:18:03] There we go. So as you can see, and you can get a little, you get a little lesson in shell
[00:18:08] expansion there, right? Because I didn't go around it and only looked at the first thing
[00:18:11] because it just replaced it onto the line at that point, which is what it does by default,
[00:18:15] which can be dangerous. Um, she said, oh yeah. So, so that has been, you know, those are some
[00:18:23] tricks, uh, for standard input. So you can actually do the same thing. Uh, so we could
[00:18:30] do this, we could say, while, uh, read dash our line, you guys know about reading is reading
[00:18:36] a line. We already did that when we did our prompt program, right? And you can do echo
[00:18:40] line done. And then we can send in a temp, boo. And that will give it every line. And this
[00:18:48] is kind of cool because, you know, it's, uh, if you wanted to redirect, um, a command,
[00:18:54] you could do that. If to redirect a command, you just put the command here, LS dash one,
[00:18:58] and that'll redirect to that thing. And you could, if you wanted to do this, and you can say echo,
[00:19:03] uh, prefix, you know, colon line, you could enter a prefix in front of the line like that.
[00:19:09] You know, so that is an example of, you know, reading standard input into a thing. You could,
[00:19:15] it could be, you could do it through a for loop. You can do it through a while loop. Um,
[00:19:19] and we learned those already. We learned for a while already. Um, so there's a, there's a bunch
[00:19:24] of really cool little tricks. So you can do that. Um, and so, uh, so that, that is, you know, it's,
[00:19:33] that's, that's pretty much file redirection in direction. Okay. That, everything we talked
[00:19:37] about so far about standard input, standard output and, and, and error applies to every
[00:19:43] Unix-like shell that's ever been made. Every POSIX compliant shell, uh, all the way back to
[00:19:49] 1979. And because it's fundamentally a part of how the Unix command line has always worked. Um,
[00:19:56] now there are some additions, um, to, to this that have made it easier to do things, um, that are
[00:20:04] not supported by all POS compliance shells. And a couple of them, at least one of them is really
[00:20:10] important and is really valuable. And that is what's called a here string. So, um, and what it does,
[00:20:17] there's two, there's two things. There's a here doc and there's a here string. So what, what a here
[00:20:22] string does, um, uh, where's there two? Because this here means take this into a file. Okay. So let's,
[00:20:31] this means anytime there was a file. So let's, let me, let me, that's what I'm doing here. So
[00:20:36] instead of it being temp file. Okay. So when you, when you do the here from a file. So anytime you
[00:20:43] have this, it says send the, the, you know, that file, send that file as input to the thing. That's
[00:20:52] what it's saying. Send the file as standard input into the thing. It's redirecting from the file
[00:20:58] into this thing right here, this program. And the trick that I did here, this is one of those
[00:21:04] tricks where this says, well, we don't have a file. We want to pretend like LS-1, the output of that
[00:21:12] was written to a file and then read into, and we could do that indirectly if we wanted to, right?
[00:21:18] We could do LS-1, temp, uh, LS output. And in the old days, we had to do this. And, and then we would
[00:21:25] do something like this, we would say, uh, you know, we'd have temp, uh, uh, and we would actually make
[00:21:33] temporary directories for this and stuff. But you can get away with just skipping that step. Oops.
[00:21:39] I'll put, um, all right. So you see the point, it's exactly the same as, as replacing that step
[00:21:46] with that. So this just says, take, take that, take that command and use the command as if it were
[00:21:55] in a file. And it produces a file descriptor and everything in case you're wondering. So, um,
[00:22:02] yeah. So that says, it actually, the parentheses mean a sub shell that says, run this stuff in a
[00:22:09] sub shell. And whenever it comes out of there, pretend like it's in a file temporarily and then
[00:22:13] use that as a file and send it in. Okay. So now there's, there's another angle on this and that
[00:22:20] this is it right here. So if I could say this, um, and this is, this is where we want to say,
[00:22:29] I want to send in a few strings, right? So I can say some, uh, thing, I don't know if you even can
[00:22:37] do line returns here. I don't think you can. Nope, you can't. You can't. So this is called a, a
[00:22:44] here string, uh, just about everything. They were graphics cards, web binaries. Yes, you can.
[00:22:51] I said parentheses equals a sub shell. Didn't I? It does parentheses means a sub shell no matter
[00:22:55] what. Yeah. Usually always it means a sub shell. Um, something. So the only time I've ever used
[00:23:02] this is when I wanted to cheat. Okay. There's some, for some reason, some program is designed
[00:23:10] to take standard input and only standard input. And there are programs out there like that. And
[00:23:16] ENTR comes of mine and, um, you want to send just a single string as the first line about, of input.
[00:23:25] That's what this does. This is called a here string. And, um, what it says is this isn't a string at
[00:23:33] all. This is a file that's got one line in it that is called something. And by the way, you, you,
[00:23:39] you, we just tried making it into two lines and I don't think you can. I think that has to be a
[00:23:43] here doc for that. Um, uh, it needs, no, you're missing a, uh, uh, you need two of them. You need
[00:23:52] this one right here and then a space and then you need the other one next to the parentheses and
[00:23:57] they have to be connected to the parentheses. Otherwise it won't work. Okay. So, so here we go.
[00:24:02] We've got this one here and we have something preferred something. So this is called a here string.
[00:24:09] Um, I've never used this for anything more than just a single string. Um, but that is
[00:24:15] sometimes useful. Uh, that is an exceptional thing though that is not supported in any
[00:24:23] shell besides bash. Um, you know, the, the, the extensive shells like, like bash and, and z shell
[00:24:30] supported. Um, it is not supported in dash, ash or k shell. Actually, I think it is supported in
[00:24:36] k shell. Didn't we, didn't we already tested? I think k shell supports it. I think that's where
[00:24:40] it came from. K shell is a really old, uh, shell extension. I mean, let me just check and see.
[00:24:47] Yeah. Okay. So k shell supports it. So k shell came shell history, uh, is especially actually,
[00:24:54] let's try that too. Cat, um, ls dash, ls, ls dash shell. Okay. So, so that's supported by k shell as
[00:25:06] well. Um, yeah, that's the special token. That means, Hey, this is a file ish kind of thing.
[00:25:12] So k shell supports those things. And the very last one that we're going to have, which we
[00:25:16] almost never use interactively from a shell. So let's actually put this in a script. Um, so we'll
[00:25:23] put this in our, uh, what we did was our sample test. Was it called lab sample? I don't remember.
[00:25:29] Yeah. So let's put this in here. Let's say, um, let's copy prompt to, uh,
[00:25:39] let's say, I don't know what to call it. Um, I'm trying to think of something we should do for this.
[00:25:47] This is never something I have to teach in any other of the languages. So I'm trying to think of
[00:25:51] something on the fly. What could we call it? We could call it, um, long, I'll just call it long.
[00:26:00] And the CD and the long description. And I've got to use a user of any of your vash, which
[00:26:06] I'm never going to do again, but that's another video. Um, anyway, we got all this code and stuff.
[00:26:11] Let's do this. I want to say, I have a lot of stuff I want to put on lots of different lines,
[00:26:16] right? So I could do, uh, one line, two lines, three lines, right? And I could just do this.
[00:26:28] So it could be long. And that is fine, right? Um, but what if I wanted to do something else with
[00:26:34] it? What if I, what if I wanted to use that as input someplace? Um, I mean, you know, I could do
[00:26:42] that, right? I could do while, while, uh, read, dash, dash R line, do echo, uh, line, line, done.
[00:26:58] And then I could send that, um, with a string variable. Yeah, but see how it's not happy now.
[00:27:05] Yeah, it's gonna, it's gonna yell at me. All right. So this actually might work.
[00:27:11] Yeah. So that's, you see, that's a here, um, with a space is not the token. No, you need to get rid
[00:27:18] of the space. Yeah, there's two different less than signs. There's one before it. And then there's
[00:27:24] one out that I always forget that. So anyway, um, you see how this stuff at the top and the bottom
[00:27:30] is kind of like, do we really want that? That does work, right? But there's another thing you
[00:27:37] can do here. And it's a little bit cleaner than this. Uh, you see how this gives you that extra
[00:27:43] line above it and stuff. You can't put this on a different line like that. It doesn't work. So
[00:27:48] there's another thing. It's called a here doc. And this is supported in every version of music
[00:27:52] set there is. And you get rid of one of these things. And then you put the name of the thing to
[00:28:00] look for at the end EOM in this case. All right. And it says, oops, I get rid of this here. Okay.
[00:28:08] And now that's called a here doc. And what that says is, okay, get ready. Whatever comes on the
[00:28:15] next line is the beginning of what I'm going to send you. And I'm going to keep reading until I get
[00:28:20] to the end of this message. It could be anything. EOM is generally preferred for that. So now I can
[00:28:26] run it like this. I can run long and it does the whole thing. And I don't get those extra lines
[00:28:30] because of the string, right? And it's pretty frequent. There's a lot of common uses cases for
[00:28:36] this. Um, let's say you wanted to put an extensively long comment in your code. You can use it with
[00:28:44] the on this is called the, uh, the no lop. It's just a colon by itself. It doesn't do anything.
[00:28:49] But you can send EOM and say, this is a very long descriptive, uh, comment. I guarantee you
[00:29:00] at least one unix veteran just saw that and didn't know you could do this. It's a very common thing
[00:29:05] to do. Um, and, you know, it's, it's, it's kind of worth doing, except for I did it wrong.
[00:29:14] I totally did it wrong. It might be helpful for me to do it, right? Yeah. You can,
[00:29:20] yeah, don't use that of a file such a different thing. Uh, EOM is a totally different thing. I
[00:29:25] would just end a message if yours you. So, uh, so there you go. So we got that. You notice that this
[00:29:30] did not print anywhere. And it's just easy to write a long comment that way. Um, if I wanted to print
[00:29:35] the comment, you know what to do, right? I would just have to do print here, echo. And that would,
[00:29:40] um, it would do it. Um, uh, actually, I'm sorry, cat, right? I forgot to say that because this is
[00:29:47] an incoming. This is the same as like sending in standard input. I always, I always screw that up.
[00:29:52] So you could go like this and suddenly it'll say it, uh, you know, replace it with the cat. But if
[00:29:56] you just put the null up there, then it just, it just won't do it. Okay. So, um, so you don't put
[00:30:03] star in front of you. Yeah. Um, you can use EFF if you want, but EOF means end of file and that's not
[00:30:09] this is right. So this is really, this is just a token. Okay. There's one last thing to consider
[00:30:14] here. And that is the standard shell way. So you're like, would it be great? This feels like it's
[00:30:21] kind of invading my space here, right? I wish it were not doing that. Uh, and by the way, since this
[00:30:26] is in a script, why are we cramming this all into multiple lines? Why don't we just put it here and
[00:30:30] save it? There we go. Okay. So yeah, there we go. Artabic shrub. But would it be nice if this were
[00:30:36] kind of indented and weren't kind of all mushed together? Well, we put a dash here, then we get
[00:30:42] indentation. And I don't know if you noticed this, but, um, but this is what you get. Uh, yeah, T cell
[00:30:48] instead is even slower. Why are you still running? I'm still running our build on T cell. Yeah. So,
[00:30:55] you guys, I mean, you can use, uh, you can script and bash me one. I'm, I'm just going to try to do
[00:30:59] pausing shell and purl for everything. So you saw what I did here. As soon as I put a dash in there,
[00:31:04] shell check and show up empty, very happily set list. They set my, my lines to have tabs in the front
[00:31:12] of them. And it's very important to understand this indentation in shell, standard shell,
[00:31:18] standard shell indentation is tabs, not spaces. And I know if you've noticed, but every time I run
[00:31:22] SHFMT when I save, it puts a tab there. And I don't care about tabs versus spaces,
[00:31:28] because I'm using SHFMT. If you're not doing that, you're doing more work than you have to.
[00:31:32] And there are a lot of people who are veterans who are doing more work than they have to. I promise
[00:31:36] you. And so don't do that. Don't be them. It's just, just standardized on SHFMT. And I mean, I even
[00:31:44] got indentation for free just by adding the dash when I saved, because shell up empty knows about it.
[00:31:50] It's like, okay, you want to indent? You're thinking, Oh, is it going to print with indentation? Nope,
[00:31:55] it's not. Because why? Because it knows to trim that indentation. If you want, you can also have
[00:32:04] this be a tab. If you really want, it can be a tab as well. I'm pretty sure. So you can have it be
[00:32:13] really clean. And you know, have the whole thing be indented. That is also valid. Although my SHFMT
[00:32:22] is fond of putting it back over there for me. So I kind of have to convince it to not do that. But
[00:32:27] it's not happy right now. So I'm just going to keep it that way. The point of it is this is
[00:32:31] called a here doc, here strings are three, here docs are two. There are occasions when you might
[00:32:38] want to put a variable in here. So let's say a name equals Rob or something, two lines. And I
[00:32:45] want to rob it here, or name. And you can tell from my formatter that this is considered a
[00:32:52] variable at this point. Okay. And this will actually print the variable inside of there. And that's
[00:32:59] because the default context for a here doc is double quotes. These are exactly equivalent,
[00:33:05] it'll probably change it. Okay. Oh, wait, maybe not. That's interesting. Huh. I thought I thought
[00:33:15] that was going to allow quotations to guess not. I guess I was wrong on that. I all this time,
[00:33:22] I thought those two were the same. All right, well, they're not. So the other one is single quotes,
[00:33:27] right? If you put single quotes, it says it's not used anymore, because I just stopped it from being
[00:33:33] used. When you put single quotes or double quotes there, apparently, that says that your everything
[00:33:39] in the EOM block is going to ignore variables completely. And this is actually one of the reasons
[00:33:46] you would do this is like if you wanted to include back ticks, something, you know, it would actually,
[00:33:52] if you don't do that, it'll try to run that, right? And that is something you could do. You could have
[00:33:56] it be like LS dash L, you know, and have that be a back tick and or a thing. And it will actually
[00:34:04] run it, but that's probably not what you want, right? So say it says, yeah, that's old. All right,
[00:34:11] so if if you do this, you can say long and you say it actually injects into the middle of your
[00:34:16] thing, the LS command, because it's not doing it. If you wanted to actually print it out,
[00:34:20] you put the quotes around it, and that'll do the right thing. So that's it. That's it. We've
[00:34:26] learned about standard out. We learned about standard input. We learned about redirections,
[00:34:31] and we learned about pipelines. Probably the only thing left to tell you about pipelines is what
[00:34:36] if you want to see the output, but also rewrite it to a file. So there is one command for this,
[00:34:43] that's really important that you know, it's called T. And what T does is it splits the standard
[00:34:49] output stream. And yeah, it splits the standard output stream, sends it to you and also writes it
[00:34:56] to a file. This is particularly useful if you're monitoring logs or something and you want to
[00:35:00] copy all those logs to go back to, but you still want to see them. Now you can accomplish the same
[00:35:05] thing by redirecting your output to a log file and then tail dash effing the log file, which we
[00:35:11] already did, we just did that. But T kind of does the same thing. So you could say, you know, while
[00:35:18] through do echo, hello. And you know, sleep, point three, and then done, right, this is going to
[00:35:31] print hello's. But let's like, if we print that to a file, temp temp hello's, right, I can't see it,
[00:35:39] I can't see it, or can I, right, I could, I could do this tail dash of temp hello's. And I can see
[00:35:46] it coming now, you can't actually, let's add the date stamp to it. So you guys can see it, it's date.
[00:35:53] I'll say hello on date. And so, okay, so now we can do tail dash F. And we see each date, and it's
[00:36:01] as it's getting written. All right, so actually, we should make it more fun. Let's make it random
[00:36:10] colors, shall we? So Rand, Rand, color, hello. How about that? I wonder if that'll tell properly.
[00:36:22] Yeah, there we go. So there's our hello's coming in. And we did the random color thing already in
[00:36:28] another video. And you can see them coming in. Now, if you wanted, I personally don't use T that much,
[00:36:35] because I always forget to do it. And it's just, just, it's just as easy to go tell the file.
[00:36:41] You know, so, but if you wanted to start the program and have it be readable while you were
[00:36:47] doing it, instead of redirecting to hello like this, you just do, you pipe it to T instead.
[00:36:53] And you see how it takes an argument as the file name instead of, of that. And now,
[00:37:00] if you go down here and we do our tail again, you'll see it's the same exact output. Okay.
[00:37:04] So now, now we get, we get the T output and we get the output from just a regular tell that,
[00:37:11] but you can see that they're the same thing. They're ultimately the same thing.
[00:37:16] You know, and the downside of having T there is that if you wanted to, you know, change the way
[00:37:23] you viewed it or something, you know, it would be now if you, you can, you can also send this
[00:37:28] into a pager too, if you want, you can send it to a pager like less or more. And it will,
[00:37:33] you know, happily page for you. Watch it'll stop. Okay. Because it's still sending them,
[00:37:38] but now I'm hitting space to see the next ones and catching up, right? So again, the same thing,
[00:37:43] if you want to, if you want to be able to stop while you're doing, and I don't know if you can,
[00:37:49] can grasp this right now, but this, this is a particular command that is a really good one to
[00:37:54] end our conversation about bash programming and scripting, because I just did a lot of things in
[00:38:00] this line at the same time that illustrate every single thing that we talked about. Okay. We just,
[00:38:08] if you look at this line right here, over the last, you know, with three or four sessions of bash
[00:38:14] scripting that we've been doing for the holiday boost, this line that we just did kind of encapsulates
[00:38:19] a little bit of every single thing we've done. We have a boolean type, we have strings, we have
[00:38:25] embedded, right here, we have an embedded sub shell command. Here we have the same exact sub shell
[00:38:30] command using back ticks instead of this notation, we're echoing, we're, we've got line returns for
[00:38:36] that for those individual lines, we are piping to T. So we got standard output coming in,
[00:38:42] and we tell dash F down here, we're actually using, you know, we're, we're, we're using standard
[00:38:48] input, we're tailing the program against standard input. You know, we've got a pager here, which we
[00:38:54] talked about how to page through the different things you want to see. We've got the colors going
[00:38:57] on. So there's a lot going on on this single command line. And we kind of just wrote that
[00:39:02] together really quickly. That's the power of Unix. And I'm saying Unix, because the Unix is the
[00:39:08] origination of this Linux is the fanfiction of Unix on the at the end of the day. It really is.
[00:39:13] And Unix is the true master Unix is the true OG system that Linux has built itself around.
[00:39:22] And quite frankly, it's an interesting point. We're going to talk about this later, but I still
[00:39:26] think Unix is going to dominate. Unix is, you know, and I personally like BSD Unix more than Linux.
[00:39:33] They're all Unix like operating systems. So listen, I agree to disagree if you like something else
[00:39:37] about another one. But they all originated with this, this absolutely brilliant idea from Ken Thompson
[00:39:43] in the gang to pipe together in Unix philosophy, little things that do one thing really well,
[00:39:50] and that integrate with others that play nice with others. You know, a lot of people forget that
[00:39:56] second couplet of that, you know, Unix philosophy statement. The do one thing well, that's regularly
[00:40:03] cited as the Unix philosophy, but it's not. That's only half of it. Do you think one thing well,
[00:40:09] and integrate well, I say play nice with others. And that's that is what and then use text that
[00:40:15] you can do the search for Unix philosophy. You'll see all of that. There's way more than I have
[00:40:19] whatever want to cover in a video. But that that is the essence of Unix philosophy. That's where the
[00:40:23] power comes from. And I hope you've seen how mastering Unix philosophy, the idea of piping
[00:40:30] and filtering, and one thing, you know, reconnecting one thing and VIM filters and all that stuff,
[00:40:36] which most VIM people have no idea about VIM filters at all. Like, oh, what plug-in are you
[00:40:40] using? I'm not using a plug-in. I'm using Unix. And I've been doing it since 1996. So, you know,
[00:40:46] is this something that needs to plug it? So, if you truly, I honestly believe this, friends,
[00:40:50] if you learn Unix the right way, you're you're the way that impacts what you learn,
[00:40:56] everything else will be impacted by that decision. And we're going to talk about some of those
[00:41:02] other things later that will extend your terminal based speed and integration. And we're going to
[00:41:09] talk about, you know, why you should never use said or ock and you should use Perl instead.
[00:41:14] That's a very hot topic, hot opinion. People think I'm crazy, but I'm going to make the case
[00:41:19] completely for that. And, you know, what go, how does go even play into this, right? When would you
[00:41:25] want to write something and go instead of bash or Perl or, or, you know, case shell or Z shell,
[00:41:30] which of the shells is the best in everything? And quite frankly, your interactive shell,
[00:41:35] it really doesn't matter because your interactive shell, as long as it's Unix-like, you're fine.
[00:41:40] So, so next time somebody wants to fight with you about Z shell versus bash versus fish,
[00:41:46] just say it doesn't matter as long as you understand the essentials of shell scripting
[00:41:51] that you just learned, you can use those anywhere and it'll just work, right? It'll just work. There's
[00:41:56] a few things that don't work. And I actually mentioned some parameter expansion ideas and things that
[00:42:02] you could use that work in K shell, Z shell and bash. But I'd prefer to not mention them at this
[00:42:08] point because they're, quite frankly, they're better done in Perl. And that includes like
[00:42:14] converting something to lowercase. And you'll have to stay tuned and watch another video about that
[00:42:19] later, which, which I will do. So there are a lot of programming languages out there to learn.
[00:42:26] But if you, right now the your your main take is I just want to be able to use my shell
[00:42:32] interactively. The goal of this these last three videos or five videos or so has been being able
[00:42:39] to to mostly to use your command line appropriately. I started kind of incorrectly by trying to model
[00:42:46] this part after after bash or after Python and quickly realized that that's really not the
[00:42:52] that's really not the point here. The point here is for you to be good on the interactive command
[00:42:58] line in such a way that you can understand your bash RC or your Z shell RC file when you go to
[00:43:05] customize your shell later, which is going to be the next video. So the next bad video, but I told
[00:43:11] you to use bash and it was the only way to go. I totally changed my mind. Yep, I did. I changed
[00:43:15] my mind. I've been talking about it all morning. You're gonna have to watch the big long live video
[00:43:19] version. If you want to watch that instead, you can watch that. But I was wrong. I told people
[00:43:25] for two years that they should just use bash is the only show that they should ever write in
[00:43:30] for lots of reasons. And I'm writing and I'm going to do a whole video about how wrong I was on that.
[00:43:34] And I'm going to cite the reasons that I was wrong on that. And I'm going to tell you why I
[00:43:39] think that now. And if you if you stay tuned for that video, I there's nothing wrong with learning
[00:43:45] bash, particularly as an interactive shell. Welcome to flip flop Rob. That is I am flip flop Rob.
[00:43:50] I I I test something for an extensive amount of time. And then when something goes bad, I change my
[00:43:55] mind back. And if you don't like that, you're in the wrong place. You're also in the wrong career.
[00:44:03] Because if you think things are going to stay static in technology, this is a wrong place for
[00:44:09] you to be my friends. Merry Christmas. And we'll see you later. Hey, it's the guy that flip flops.
[00:44:16] Yep, that's me. Yes, I consider it a badge of honor that I do. Do you know how many people
[00:44:21] don't flip flop and stay with the old thing? And then they retire because they don't want to
[00:44:25] learn a new language or they don't want to take in something new? I never want to be that guy.
[00:44:32] I never want to be that guy. Bye. I'll see you in a bit.
