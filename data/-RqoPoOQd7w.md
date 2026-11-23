# The (Actual) UNIX Philosophy

"This is the Unix philosophy: Write programs that do one thing and do it well. Write programs to work together. Write programs to handle text streams, because that is a universal interface. (Doug McIlroy)

Doug invented UNIX pipes, so yeah.

People get this wrong all the time. They stop with the first part "do one thing well" and conveniently forget the rest.

Personally, my favorite list of clarifications is from Mike Gancarz (who helped create X):

1.  Small is beautiful.
2.  Make each program do one thing well.
3.  Build a prototype as soon as possible.
4.  Choose portability over efficiency.
5.  Store data in flat text files.
6.  Use software leverage to your advantage.
7.  Use shell scripts to increase leverage and portability.
8.  Avoid captive user interfaces.
9.  Make every program a filter.

This is why I find myself preferring to script in bash than to do anything else unless absolutely necessary. Developer productivity is far more important than the rest.

    #unix #philosophy #linux #composition #filters

Thanks sponsors, subs, and followers:

-   GitHub: https://github.com/sponsors/rwxrob
-   Twitch: https://www.twitch.tv/subs/rwxrob
-   Twitter: https://twitter.com/rwxrob
-   Discord: https://discord.com/invite/9wydZXY

See http://rwxrob.tv/schedule for scheduled streams.

[ZETID:20210823020554]
https://github.com/rwxrob/zet/tree/main/20210823020554

## Transcription

[00:00:00] Okay, I guess we go, we'll go for it.
[00:00:05] The actual Unix philosophy, what is the Unix philosophy?
[00:00:10] This video is going to be short and sweet, but we're going to be talking a lot more about
[00:00:14] the Unix philosophy throughout all these videos that I have, and I really need to clarify
[00:00:19] what it is.
[00:00:20] There's been a lot of misunderstanding about what the Unix philosophy is out there, so I'm
[00:00:24] actually going to cite from the people who created it.
[00:00:27] This is indirectly from Wikipedia, and what do I have his name here?
[00:00:33] Oh, I'm spacing on his name, he's an Oxford professor, he gives us a great presentation
[00:00:37] on this, but I can't remember his name, I'm really sorry.
[00:00:41] So this is it.
[00:00:43] Doug McIlroy wrote, and he's the guy who invented pipes, you know, the idea of chaining something
[00:00:47] together in a pipe.
[00:00:49] He says, "The Unix philosophy is this.
[00:00:51] Writing programs that do one thing and do it well, and I'm going to interject, that's
[00:00:56] when everybody stops, and I think that's it."
[00:01:00] But as this professor suggests, and many others, it goes on to say that you need to write programs
[00:01:07] that work together, and write programs to handle text streams because it is the universal
[00:01:14] interface.
[00:01:15] So these two secondary parts to the Unix philosophy are forgotten all the time.
[00:01:22] They are forgotten all the time, and people wonder what's up with pipes and stuff.
[00:01:27] And the reason I have to explain this is because you'll hear me go off on other technologies
[00:01:32] that I will not necessarily throw into the bus right now, I'll wait until another day
[00:01:36] to do it.
[00:01:37] But usually what I do is because they use a monolithic approach that discounts all three
[00:01:43] of these, okay?
[00:01:45] And I'm going to let you imagine what they are, and if you want to take a guess right
[00:01:47] now at some of the biggest applications to be used in the Unix world, the Unix and Linux
[00:01:52] world, are not actually following the Unix philosophy.
[00:01:56] And you're like, "Well, why?
[00:01:57] What's the benefit of following the Unix philosophy?
[00:01:59] What do I get because I follow the Unix philosophy?"
[00:02:01] And that, we're going to kind of go on.
[00:02:03] So let's finish this here.
[00:02:05] People get this wrong at the time, they do the one thing well, and if we have the best
[00:02:08] personally, my favorite list of certifications.
[00:02:09] So this, one of the designers and creators of X, the X window system, which has had problems
[00:02:15] but when it came up, it was nice, Mike Gankers says, "Small is beautiful, make each program
[00:02:21] do one thing well, build a prototype as soon as possible, choose portability over efficiency,
[00:02:28] store data in flat text files."
[00:02:31] Okay, JSON, yes, YAML, yes, but maybe just, you know, column files with white space between
[00:02:38] each line, one thing for line.
[00:02:40] Use software leverage to your advantage, in other words, take that each piece of software
[00:02:45] and compare, you know, use them combined.
[00:02:48] Use shell scripts to increase leverage and portability.
[00:02:51] People don't like hearing this, but this is where, this is why creating a shell script
[00:02:55] is way better to initially get an idea of what it is you're building if you even want
[00:03:00] to build something else later.
[00:03:01] Avoid captive user interfaces, I have to use this graphic user interface, I have to use
[00:03:07] this one Unix program and nothing else, sort of some, you know, takes on that these days
[00:03:14] because, you know, we have kind of a monolith model and then we have nine, every, make every
[00:03:19] program a filter and people don't know what filters are, a filter is just taking the output
[00:03:26] of one program and feeding it into the input of another program.
[00:03:30] This is the most fundamental idea of Unix pipes and if you don't know about Unix pipes,
[00:03:35] maybe we can talk about this separately, but that's what's up, that's when you take the
[00:03:39] idea, you take, and this allows you to do things like this, let's say I wanted to put
[00:03:43] the date right here, so I can type, you know, exclamation point, exclamation point and then
[00:03:50] I can type H now and this is a program, so this causes my VI to read the input on that
[00:03:57] line, replace the current line with the input from the program that's going to run.
[00:04:03] So this runs a program and it puts that thing right there, I didn't have to do any extension
[00:04:07] to VI, I could have done this with VI and not any, not even Vim, it would have worked
[00:04:11] because these are, these tools in the Unix world have all been built to use the Unix philosophy
[00:04:18] and people throw out the benefit of writing filters and tools like this all the time and
[00:04:24] they put everything into a single program, let me give you another idea, so another example,
[00:04:28] so you'll see me doing this all the time.
[00:04:29] So I can actually write a program site, ZetLink, this is a program that runs myself in the
[00:04:35] cast and searches for everything that has this word in it, philosophy for that keyword,
[00:04:41] and then it outputs all the lines of that, of those little cast and to the output.
[00:04:47] Now I can send this line to the bash command line underneath and take its output and replace
[00:04:53] this line with itself, so you can write code inside a VI that generates output, could be
[00:05:00] even another code, so let me show you what I do, so I go the exclamation point, exclamation
[00:05:04] point bash that sends that line to the bash, takes its output and replaces the line with
[00:05:10] the output and I get a line that it went out fetched from my repository, which thing has
[00:05:16] a unique identifier if it were more than what it would have done that and it puts that there,
[00:05:20] that is not a plugin, that's not a plugin, that's just using the Unix philosophy, so I
[00:05:25] had to give a little quick demonstration of that, I'll do other videos on using Vim filters
[00:05:29] and combining Vim with filters, but this is, the Unix philosophy is the reason that when
[00:05:36] people approach learning the terminal and Unix, or Linux, that you need to consider the ecosystem
[00:05:43] of it, it's not like just Vim, or just this IDE, or just this or that, it's the combination
[00:05:52] of all the pieces together that make it powerful, and when you see me make decisions about what
[00:05:57] I use and what are the most powerful pieces of that tool set that combined make a singular
[00:06:03] experience, that's why, that's why, you have a hard time pegging me down on which development
[00:06:12] environment that I like, or this or that because it's not just one thing, it's the entire thing,
[00:06:18] and you have to understand the basis for the Unix philosophy before you see the value of
[00:06:23] any of these other things, and a lot of people don't, a lot of people don't, if they do they
[00:06:27] don't use it properly, because they don't leverage all of those things, so yes, I absolutely
[00:06:32] use multiple text editors, I use ed and vi, sometimes ed is a better text editor than vi,
[00:06:37] you know what can't be done that way, Emacs, and I'm gonna just say, I have a lot of really
[00:06:42] good friends that use Emacs, I will never use it, why, because it doesn't follow the Unix
[00:06:46] philosophy of their own admission, and installment says Unix philosophy is not the big a deal,
[00:06:50] the guy who made, who ported, ported, not made, all of the commands and stuff that ended up
[00:06:56] being a Linux for GNU, doesn't even think there's value in the Unix philosophy, pause
[00:07:02] on that for a second, even Torvalds uses Emacs, a micro version of Emacs, so I'm not against
[00:07:08] Emacs, if you wanted a really monolithic, all things are done in this thing, you can't escape
[00:07:13] it, that's fine, but don't you dare say that that is consistent with the Unix philosophy,
[00:07:20] because it is fundamentally and categorically against the Unix philosophy, Unix philosophy
[00:07:24] is writing lots of things that do one thing really well, and having those things connect,
[00:07:29] and having their method of communication be simple text output, text input and output,
[00:07:35] that's it, that's it, and then you add filters and everything, and you can get around all
[00:07:40] those different things that are happening, okay, so one last little quick example of
[00:07:44] this before we leave it, so like if I want it, you know, the idea of like, you know, you
[00:07:52] could echo something, right, and then you could send that to something else, right, and you
[00:07:59] see people do different commands all the time with set and lock and TR and all that, I don't
[00:08:03] necessarily like those, but you could, you could change it to do any number of things,
[00:08:08] you could say, I wanted to go to TR and I want all the S, all the S's to be, to be capitalized
[00:08:14] with S I guess, and I'm doing it wrong, I might have to kill this video, oh there we go, so
[00:08:20] that just capitalizes, so that's the idea, right, TR is just a tool that does one thing,
[00:08:24] it does one transformation as it goes, and you can pipe one thing to the next thing to
[00:08:28] the next thing to the next thing, so pipes are an implementation of the Unix philosophy,
[00:08:33] the very most important implementation of the Unix philosophy, everything in Unix is
[00:08:38] a pipe, everything in Unix is a file, and it can be piped as something else, including
[00:08:43] everything you type, all the processes are all in slash proc, and we'll talk about that
[00:08:47] another day, so the moral of the story is, hey look there's our people, I prefer VIMB,
[00:08:56] okay I'm gonna end the stream there, there's lots of opinions on this, I do there would
[00:08:59] be
