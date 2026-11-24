# 🎄🐹 Coding from the Get Go - #4

Continues learning Go from zero by using entr to rerun code and tests automatically whenever files change, then factoring code into subroutines. Explains the difference between procedures and true functions, covers return values and variable assignment, and writes simple math functions checked with Go's built-in example-based tests.

Is that _really_ a function? Procedures, subroutines, more on variables. Use entr to automatically run tests. Example-based testing builtin to Go

Learn practical computer science and programming with Go as a first language.

Chapters:
0:00 Rerunning Go code automatically with entr
6:00 Joining strings with the concatenation operator
9:03 Factoring repeated code into a subroutine
15:01 Functions, procedures, and subroutines explained
21:00 Testing procedures versus true functions
27:02 Watching all Go files and fixing tests
33:02 Return values and assigning them to variables
39:03 Side effects and returning strings with Sprintf
48:00 Simplifying functions and writing more of them
54:00 Basic math, increment, and decrement operators

`#golang #programming #learntocode #coding #testing #functions #entr #computerscience #educational`

## Category

Education

## Transcription

[00:00:00] All right, here we are, we're back to the code.
[00:00:03] We've done our Hello Friend program.
[00:00:06] We've got it installed.
[00:00:08] We've organized ourselves a little bit,
[00:00:09] and we start time to learn the rest
[00:00:12] of the basic parts of Go.
[00:00:15] We're gonna cram as much as we can into this hour
[00:00:17] and see what we can cover.
[00:00:18] So we have our program Hello Friend,
[00:00:22] and we know how to install it with Go Install.
[00:00:24] You can see that on the screen.
[00:00:26] Now, what if I could make it so that I could rerun it
[00:00:29] any time the file changed?
[00:00:31] So I'm gonna use something called ENTR,
[00:00:32] which is only available on Unix or Linux.
[00:00:36] If you're doing good programming,
[00:00:37] anything else it won't work.
[00:00:39] So here's how it works.
[00:00:41] ENTR, we'll use bash, you could use shell or bash,
[00:00:45] doesn't matter, -c, it means the whole command.
[00:00:47] And then we're gonna say,
[00:00:50] we're gonna clear the screen,
[00:00:52] and then we're gonna run the program.
[00:00:57] Go install dot slash cmd slash hello.
[00:01:03] So that should install it.
[00:01:05] And then we wanna run it, and yeah.
[00:01:08] So we could just do Go Run here,
[00:01:10] but let's go ahead and just do that.
[00:01:13] Make sure it install properly and everything.
[00:01:15] And then done.
[00:01:16] So this is the command that's gonna be run.
[00:01:20] In terms of the loss to be covered basic shell scripting,
[00:01:22] that's we have to go to for that to understand it.
[00:01:25] And then we're gonna do,
[00:01:27] in fact, that could just be vensh.
[00:01:30] It doesn't really have to, it could just do sh here.
[00:01:33] Yep.
[00:01:34] And then now this, however, is a Z shell,
[00:01:38] k shell or bash thing,
[00:01:40] we're gonna say if the file of one has changed.
[00:01:44] So dot slash cmd main.go.
[00:01:47] That means if this, whoops, hello slash main.go.
[00:01:52] What this command does is it says,
[00:01:54] if that file changes in any way, run this program.
[00:01:58] So, which it doesn't like,
[00:02:02] is there no such thing as sh-dushy?
[00:02:05] Well, I didn't know that.
[00:02:07] I guess it's just bash.
[00:02:09] Wait, what?
[00:02:11] Boom, boom, boom, boom, boom, boom.
[00:02:14] Go command dot install hello.
[00:02:19] Oh, I put it done on there.
[00:02:21] There's no necessary for that.
[00:02:22] I don't know why I did that, it was done.
[00:02:24] All right, there we go.
[00:02:25] So, now it's clearing the screen and it's running it.
[00:02:28] And then just to prove it, it's running every time.
[00:02:32] Let's do this.
[00:02:33] Let's say, let's slash cmd hello main, oops.
[00:02:39] Come on, Rob.
[00:02:43] Dot go.
[00:02:45] I don't know if you can see everything on there.
[00:02:47] The screen's a little bit weird.
[00:02:50] I mean, print it down just a little, how's that?
[00:02:53] That's better, okay.
[00:02:54] So, I mean, it's kind of better.
[00:03:01] So, we're doing chat right now.
[00:03:04] We're making a video about coding and go.
[00:03:08] So, here's the program.
[00:03:11] If we change it to friend, we can say hello, Rob, I guess.
[00:03:14] Let's say Doris, let's do Doris more fun that way.
[00:03:17] You see how the program changes?
[00:03:19] So, I can actually reduce the size of this a little bit.
[00:03:22] I'm just doing control A and then J, J, J down.
[00:03:25] This is a Tmux config that you can learn
[00:03:29] about internal velocity.
[00:03:32] So, anyway, so this is the program, right?
[00:03:35] And, but wouldn't it be great if we could make this,
[00:03:39] instead of saying hello, we could maybe make
[00:03:42] another program called Greet and then we would give it
[00:03:45] the name, you know, here, so that the command
[00:03:49] would be Greet, Space, and then a thing.
[00:03:52] So, we're gonna get to there today.
[00:03:54] I know that seems like a simple thing,
[00:03:56] but I wanna go through it kind of slowly meticulously
[00:03:59] so you can deconstruct everything that's going on.
[00:04:02] So, the first thing is to introduce variables,
[00:04:06] which we already talked about variables
[00:04:08] in a programmatic sense of, you know,
[00:04:12] in an argument in parameters sense, you know,
[00:04:16] 2x plus 3, 4y minus 2 or something.
[00:04:21] So, the x and the y, those are variables.
[00:04:24] In this case, they're also arguments of parameters.
[00:04:27] I mean, they're parameters.
[00:04:29] And we talked about that already,
[00:04:31] but I just wanna remind you about that.
[00:04:33] So, what I wanna show you here is that the equals,
[00:04:36] in this case, does not mean assignment.
[00:04:40] It means is equal to, or this is this thing.
[00:04:44] And in that sense, it is kind of a definition.
[00:04:48] So, you know, and we're gonna actually make one of these later.
[00:04:51] Well, let's keep that up there
[00:04:52] because we're gonna make this later.
[00:04:54] Let's put it to do there.
[00:04:56] You know, we'll make an actual function in a bit.
[00:04:59] But for right now, let's just keep it as it is.
[00:05:02] And so, let's say if we wanted the word Doris
[00:05:04] to be in a variable, we could define a variable called,
[00:05:08] and I'm gonna change this up, don't worry.
[00:05:11] So, we wanna have the name equals Doris, right?
[00:05:16] And notice there's no semicolons or anything.
[00:05:18] Declare to not use.
[00:05:20] This is a warning from Go, BIMGo.
[00:05:23] So, you know, in shell,
[00:05:24] we would have done something like this, right?
[00:05:26] Well, that's not a thing.
[00:05:28] That's not a thing in Go at all.
[00:05:31] There's a number of things we could do here
[00:05:33] because it's print Ln, print Ln is special.
[00:05:37] It automatically adds a space.
[00:05:40] And, you know, and it will automatically interpret
[00:05:45] whatever the type is.
[00:05:46] So, you know, print Ln is kind of special,
[00:05:50] but it doesn't work.
[00:05:51] I'm just telling you about it
[00:05:52] because you can put a period here
[00:05:53] and you see it's gonna put a space there, right?
[00:05:55] So, again, print Ln is special
[00:05:57] because it doesn't concatenate them.
[00:06:00] It does each one and puts a space between it,
[00:06:02] which is useful for like basic output,
[00:06:04] but not for what we wanna do here.
[00:06:05] For this, we wanna use the concatenate operator or the plus.
[00:06:09] And so what that would say is it's like,
[00:06:12] I want this to be added to the other string, right?
[00:06:16] And now you see it says, hello, Doris,
[00:06:19] and there's no space, so we have to add a space here.
[00:06:22] And it'll give us everything we need.
[00:06:24] So, one last thing that you can also do
[00:06:28] is you already know this from the last video,
[00:06:30] but you can use print F instead,
[00:06:32] and you can use a placeholder here,
[00:06:35] and you could say percent S, oops, V, sorry.
[00:06:39] S is shell, and then name.
[00:06:42] Now, that says, let's put this thing wherever we want to,
[00:06:47] and do it that way.
[00:06:51] I already showed you this,
[00:06:52] but we're not gonna go into this.
[00:06:55] You can actually read about it.
[00:06:56] I just pushed capital K,
[00:06:58] and you can go read about print F,
[00:07:01] and other things like it.
[00:07:03] There are a whole host of things you can do
[00:07:06] to the V to make it different.
[00:07:12] So it's not line returning, for example,
[00:07:14] let's put the line return there,
[00:07:15] or sorry, the line feed, whatever you want to call it.
[00:07:19] If I put 10 here,
[00:07:24] and now I change the name,
[00:07:26] so I can say name equals,
[00:07:27] I want to show you the variable is just a box.
[00:07:29] So name equals Rob, and you'll see that it will do both,
[00:07:35] but you see how it space them appropriately, right?
[00:07:41] And that is because of the 10.
[00:07:44] Now, if you dash, it'll do the opposite of that,
[00:07:50] and it's like making sure there's 10 spaces
[00:07:52] before the period.
[00:07:53] I don't know why you would do that,
[00:07:54] but you get the point.
[00:07:56] You can do formatting and line things up and all that jazz.
[00:08:01] Sometimes we might want to put a color in here,
[00:08:03] which we're going to get to in a couple sessions,
[00:08:08] but so this is print F.
[00:08:10] And so this has been an introduction to variables,
[00:08:13] how they can change,
[00:08:15] and how they can hold different things,
[00:08:18] and particularly in this case of string.
[00:08:20] So we've only talked about a couple of basic types,
[00:08:23] strings, bullions, and numbers.
[00:08:26] We're going to break down all the primitive types today,
[00:08:28] and we're going to break down complex types,
[00:08:32] which are made up of other types.
[00:08:35] So we're going to do all of that within the next hour.
[00:08:38] And trust me, this is going to be a lot to cover.
[00:08:41] So let's keep going.
[00:08:44] The next, the first thing you need to know here
[00:08:46] is that when it comes to variables, there is the scope.
[00:08:51] So you can decide where the variables live.
[00:08:55] And if we want to make another subroutine,
[00:08:59] I'm using that word very specifically,
[00:09:03] we want to put another couple,
[00:09:04] maybe we want to factor these things out, right?
[00:09:09] Because it seems like I could,
[00:09:11] you know, I'm changing the variable
[00:09:13] and I'm recalling the same thing.
[00:09:15] So let's factor that out.
[00:09:17] How do we factor that out into another subroutine?
[00:09:20] And I promise you, I'm going to define subroutine
[00:09:23] and procedure for you in just a second.
[00:09:25] So let's do that.
[00:09:26] Let's do funk.
[00:09:30] We'll call this, I don't know, greet.
[00:09:33] You could say, say hello, you could say greet, whatever.
[00:09:36] And now we have a function.
[00:09:38] So a function is defined as being, you know,
[00:09:41] having the keyword function at the beginning.
[00:09:43] In this case, I said it was a subroutine
[00:09:45] and a procedure, stay with me.
[00:09:48] And we're taking the steps here,
[00:09:50] then the main ones that we're going to put it inside of here.
[00:09:53] And it kind of goes without saying, right?
[00:09:55] Well, where do we get the name variable from, right?
[00:09:58] Well, now we have to pass an argument.
[00:10:00] So we're going to say name, we're going to put it here,
[00:10:03] but we're going to give it a type.
[00:10:04] So now it's a string.
[00:10:05] This is the first time, since you've been with me,
[00:10:08] that you've used a type, the name of a type.
[00:10:11] So we're actually saying this thing is of type string.
[00:10:16] So as I said before, the parameter and thing,
[00:10:19] X and Y, in this case, these are, you know,
[00:10:22] if you're doing algebra, these types are always numbers, right?
[00:10:25] Or particular type of number.
[00:10:27] In this case, whole numbers are not in whole numbers.
[00:10:29] We're going to get there.
[00:10:30] So right here, we have the name thing.
[00:10:32] Let's get rid of this, we don't need that.
[00:10:34] You can actually pass that as a variable, by the way.
[00:10:38] And so once you figure out how much space you need.
[00:10:43] So here we print and greet, and we have name here.
[00:10:46] Now, what happens if I leave it off, right?
[00:10:49] Let's do that first.
[00:10:51] So the point of this is, as soon as we get that in there,
[00:10:54] we don't need this anymore.
[00:10:56] And we can now do this instead.
[00:10:58] We could say greet, and we could say Doris.
[00:11:03] And we can pass the argument,
[00:11:05] not to be confused with the parameter,
[00:11:07] into the parameter variable.
[00:11:09] And now we can do that.
[00:11:11] We can change this whole code,
[00:11:12] it's to greet Doris and greet Rob.
[00:11:15] And now we've got, it's starting to yell at us.
[00:11:21] Why is it yelling at us?
[00:11:23] Because we don't have name,
[00:11:25] we didn't open up a parameter variable slot-ish thing,
[00:11:30] up here in the signature.
[00:11:32] So we're going to add one.
[00:11:33] We're going to say name and string.
[00:11:35] And now that'll open it up,
[00:11:37] so that it allows it to be passed in.
[00:11:40] That strict typing of parameters
[00:11:44] is one of the single biggest advantages
[00:11:47] of Go over other languages.
[00:11:50] Oh, hey, how you doing Raiders?
[00:11:52] Great to see you.
[00:11:53] All right, so we're just coding ago, we're making a video,
[00:11:55] but I'm just going to keep on talking.
[00:11:57] Appreciate you being here B7.
[00:11:59] So we are doing just a quick little thing for my Raiders.
[00:12:04] You'll see the little flashing red,
[00:12:06] that means I'm recording videos for YouTube.
[00:12:07] Thank you for being here, I really appreciate it, love you.
[00:12:11] And we are coding from the get-go,
[00:12:14] coding from the get-go it's called,
[00:12:16] and we are on the third video of coding
[00:12:19] and go from absolute zero.
[00:12:21] So there's two other videos on YouTube,
[00:12:23] you can go check that out, okay, great.
[00:12:27] And your chat is safe though,
[00:12:29] it's not on the screen, so you're all good.
[00:12:31] All right, so here we go, we've got a function,
[00:12:35] we broke this function out,
[00:12:36] and down here you can see it running
[00:12:37] at the bottom of the screen.
[00:12:39] And by doing that, we simplify it, right?
[00:12:44] And I call it a subroutine,
[00:12:47] so let me talk about the terminology here for a bit.
[00:12:50] And this is actually written about in here,
[00:12:54] so document all the things, hi there, let's talk about it.
[00:12:57] Okay, so what we have, let's call the function,
[00:13:02] we have a procedure,
[00:13:07] and we have subroutine, okay?
[00:13:12] And a lot of people are gonna use these terms differently.
[00:13:15] I'm gonna tell you how I think they should be used.
[00:13:19] A subroutine is any collection of steps
[00:13:28] or instructions, period, within a block.
[00:13:35] It's usually a block, and what's a block?
[00:13:38] What's a block?
[00:13:39] A block is anything within curly brackets, and go.
[00:13:47] You guys know the other languages,
[00:13:48] you know that blocks are defined differently.
[00:13:54] And so anything with curly brackets,
[00:13:56] anything collection of steps, anything today.
[00:13:58] A procedure is a specific procedure.
[00:14:05] Specifically, a collection of instructions in a block,
[00:14:14] in a subroutine, right?
[00:14:16] In a subroutine, okay?
[00:14:20] And a function is a, let's see,
[00:14:27] internal calculation or instructions
[00:14:34] with a specific output return value, like math, okay?
[00:14:43] So, this is sometimes called a true function.
[00:14:50] Why do we have to say true function?
[00:14:52] Because the keyword funk, or at the end,
[00:14:56] depending on the language you're talking about,
[00:14:57] has been taken over, it's been taken over,
[00:15:01] and it's become known to use everything,
[00:15:04] but in Pascal, anybody?
[00:15:06] Hold on up there, Pascal.
[00:15:07] Pascal, SQL, there are several languages
[00:15:10] where you have to use a different keyword
[00:15:12] to define a different collection of instructions,
[00:15:15] a subroutine, a block, whatever you wanna call it.
[00:15:18] And it's super important that at this stage
[00:15:21] in your learnings that you've just learned a code
[00:15:23] that you think differently about them,
[00:15:27] because it will make you a better coder from the first day.
[00:15:32] A function is defined as being something
[00:15:35] that has a very specific return value
[00:15:38] that, in general, has no side effects, Pascal.
[00:15:43] We love it, don't we?
[00:15:45] And it has no side effects.
[00:15:47] And by side effects, I mean,
[00:15:49] it is affecting things outside of its block.
[00:15:53] You remember, the block is everything
[00:15:54] with incredibly bracket brackets, right?
[00:15:56] So, and there's actually one other thing here
[00:15:59] that we're talking about, and that is called scope.
[00:16:02] It's like, how visible a thing is to other things.
[00:16:09] That's really all scope is.
[00:16:11] And it's the same in English.
[00:16:12] So, when a function, we would say in programming,
[00:16:19] we say a function has very limited scope.
[00:16:23] That means nothing happens outside of its block.
[00:16:28] And everything, any change to the system
[00:16:32] that's gonna happen is not gonna happen.
[00:16:34] It's gonna come as a return value.
[00:16:36] And then something called the caller.
[00:16:40] The caller is the thing that calls the other thing.
[00:16:49] That's called the caller.
[00:16:50] How's that for an academic?
[00:16:55] Oh God, the crack was over.
[00:16:57] The caller is the thing that calls the other thing.
[00:17:03] I like having simple definitions
[00:17:04] because they're just so much easier to, you know.
[00:17:07] Anyway, so sometimes usually the caller
[00:17:11] is another subroutine procedure function or something, right?
[00:17:17] But the caller has its own scope.
[00:17:19] But that's important that you know that, right?
[00:17:21] So, you have the one thing.
[00:17:22] It's kind of like you have one program
[00:17:23] that runs another program.
[00:17:25] That's the caller.
[00:17:26] Okay, so, and the scope.
[00:17:30] So, the scope of a function is, you know,
[00:17:33] all of the things that are gonna happen,
[00:17:34] they happen inside of the block.
[00:17:36] And the only thing you know about it
[00:17:38] is that it returns something.
[00:17:40] And the thing that comes out of it,
[00:17:41] like a machine or a factory sort of thing,
[00:17:44] is it can then be used by the caller.
[00:17:46] And the caller can decide what it wants to do with the thing.
[00:17:48] Okay, and this is actually one of the greatest advantages
[00:17:50] when it goes to first language
[00:17:52] is because the return types are called
[00:17:55] are strictly typed.
[00:17:57] And this is actually one of the reasons,
[00:17:59] this is kind of a side note that I struggled so heavily
[00:18:03] to help you learn coding with a language like bash
[00:18:06] or even Python, because the return values
[00:18:11] are kind of all over the board and stuff.
[00:18:13] And you're gonna see here what I mean by that.
[00:18:16] So, a procedure, a subroutine is any,
[00:18:20] so both a function and a procedure are a subroutine
[00:18:22] in my world, but a procedure is not a function.
[00:18:27] A procedure is a bunch of steps, you know,
[00:18:31] like you would give the military even or somebody to do
[00:18:34] that are gonna affect their environment.
[00:18:36] They're gonna go do this, go do this, go do this now,
[00:18:39] and everything they do is gonna affect their environment.
[00:18:43] Whereas a function is more like a machine,
[00:18:45] you put stuff in the machine and the machine does what it says
[00:18:48] and then it comes out and it gives you something out of it.
[00:18:51] So, thinking in terms of a procedure versus a function,
[00:18:55] even though they both have a funky word is worth it to me.
[00:18:58] And I'll tell you right now,
[00:19:00] even though they both have a funky word,
[00:19:04] if you keep your functions separate from your procedures
[00:19:07] in your code, your life will be easier.
[00:19:11] Because raise your hand, which one do you think
[00:19:13] is easier to test?
[00:19:14] We're gonna write a unit test case here,
[00:19:16] we already did one, we're gonna do another one.
[00:19:18] What one is easier to test? Pretty obvious, right?
[00:19:22] It's obviously easier to test a function.
[00:19:25] Because a function, you always know that you can just
[00:19:30] run the function, give it a set of parameters
[00:19:33] and arguments into its parameters,
[00:19:35] and then you can look check for it
[00:19:37] if the result is the expected value.
[00:19:39] That's super, duper, duper easy to test, right?
[00:19:43] Let's say you wanna test a procedure
[00:19:46] that makes several changes to the system,
[00:19:49] creates a file, it does all this other stuff and everything.
[00:19:53] How do you test that?
[00:19:57] A lot of these procedures, by the way,
[00:19:59] will return a return value
[00:20:00] about whether it succeeded or it failed,
[00:20:03] and that would be chill.
[00:20:04] Was it able to do all of the changes
[00:20:07] to the system that you told it to do, right?
[00:20:10] And if so, great, you get a success return value,
[00:20:14] and then you have to trust the return value
[00:20:17] to mean that all of your requested changes have been made.
[00:20:21] It's almost like giving commands to a general or whatever,
[00:20:25] and you're saying, okay, go do this thing,
[00:20:27] and it's like, okay, all the things you ask for
[00:20:29] have been successfully completed.
[00:20:31] But if I were gonna validate that, how do I do it?
[00:20:36] I have to have something or someone out there
[00:20:40] validating the criteria for success for every single thing.
[00:20:46] I'd have to have the measurement of this effect over here
[00:20:50] and the measurement of this effect over here
[00:20:51] and this effect over here.
[00:20:52] In order to test the thing,
[00:20:54] you have to have a comprehensive system
[00:20:58] that is able to know about the entire system.
[00:21:01] And so it's much harder to test a procedure
[00:21:05] than it is to test a function,
[00:21:07] and this is the fundamental argument
[00:21:11] between people who argue for procedural programming
[00:21:15] versus functional programming.
[00:21:17] And at some point you get drawn into one of these arguments
[00:21:21] and now you know what the argument is about.
[00:21:25] And by the way, both of them have limitations obviously,
[00:21:28] but the functional people would turn everything
[00:21:31] into a function that's got one specific return value
[00:21:35] and that can then they would combine a bunch of functions
[00:21:38] to make to increase complexity.
[00:21:41] But now you know the fundamental idea behind that.
[00:21:44] When we talk about programming paradigms,
[00:21:47] which I should put another word here for you,
[00:21:50] a paradigm is how to look at the world.
[00:21:56] So a programming paradigm is like,
[00:21:59] how do we approach programming?
[00:22:01] What do we make it?
[00:22:03] How do we make programming look at the world
[00:22:05] as if everything was an object
[00:22:08] or everything was a function or everything is an event?
[00:22:12] And so this is the language.
[00:22:15] I don't wanna get too deep in the woods on this,
[00:22:16] but now you at least know what these things are
[00:22:19] so you can talk about them.
[00:22:20] So back to variables, right?
[00:22:22] So let's get back in the code.
[00:22:23] So we're now looking at the code.
[00:22:27] And while we're at it,
[00:22:28] since we just got done talking about functions,
[00:22:30] let's go ahead and for the fun of it.
[00:22:33] This is actually a procedure.
[00:22:37] Okay, by the way, can anybody think about
[00:22:39] how I might be able to make this into a function
[00:22:42] instead of a procedure?
[00:22:45] Pause the video and test yourself.
[00:22:47] How could I, let's make a function first,
[00:22:49] but I want you to start thinking about this.
[00:22:51] How can I make this a function?
[00:22:58] It can be done, all right?
[00:23:00] So what does this appear? Right now it's kind of a procedure,
[00:23:03] right?
[00:23:04] So let's like another one, let's make it say calculate slope.
[00:23:08] What is it, line?
[00:23:11] Let's just say double.
[00:23:14] Let's say double, double X, okay, but what is X?
[00:23:18] X is now a number, let's call it an int.
[00:23:20] So this is your second type that you know about.
[00:23:23] And we can say, okay, it's gonna turn it.
[00:23:25] But now this is different.
[00:23:27] This is a function.
[00:23:28] That means it has a return value.
[00:23:29] We haven't seen one of these before.
[00:23:30] So here it goes.
[00:23:31] The return value comes right here.
[00:23:33] And we're gonna say what type of thing
[00:23:35] is gonna be returned?
[00:23:36] Well, it's gonna be an int.
[00:23:38] We don't know about the name.
[00:23:39] If we wanna give the name a, you know,
[00:23:43] we wanna give the return value a name,
[00:23:44] we can do that and go.
[00:23:46] And sometimes it's valuable to do that.
[00:23:48] We'll get into that more.
[00:23:49] But most of the time it's not necessary.
[00:23:51] So we can just say int.
[00:23:53] And then it's giving me a problem.
[00:23:55] You know, I'm just gonna say return zero for now.
[00:23:58] And because it's not done yet, right?
[00:24:00] So let's do that.
[00:24:02] So let's say f of x equals two x, all right?
[00:24:07] So this is an actual function.
[00:24:11] The same as a pure versus on pure functions.
[00:24:13] Yes, that's what I call them, or true function.
[00:24:16] That's, the people have had to say that
[00:24:18] because the name function has been commandeered.
[00:24:22] I feel like that's one of the greatest failures
[00:24:24] of computer science is so many people
[00:24:27] using the word function for procedures to subroutines
[00:24:29] when it really isn't a function at all.
[00:24:32] And it's kinda sad.
[00:24:34] So I had to go into this big spiel about it
[00:24:37] so you would know the difference.
[00:24:39] These days you'll have people say true function
[00:24:42] or pure function, that's what they mean.
[00:24:44] And so that's all we're gonna talk about that.
[00:24:48] But here you see we have, this is a very, very true function
[00:24:51] because we have it returns one value, right?
[00:24:53] Now currently it's broken, right?
[00:24:55] So let's actually write some code to test this, right away.
[00:25:00] You already know this, we did it already.
[00:25:02] But let's write, we already did this, let's go in our command.
[00:25:09] I'm gonna go D and dig down here.
[00:25:12] And we wrote a test code already
[00:25:15] and we're gonna write main.test.
[00:25:16] And so we have another thing to test, okay?
[00:25:19] So funk, and we're gonna try this
[00:25:22] as an example based test for now.
[00:25:25] And we're gonna say example, double, all right?
[00:25:31] So, and by the way, I don't know if you noticed
[00:25:34] but the name has to be the same as the function
[00:25:36] which is a whole thing we'll get into later.
[00:25:38] What is the output gonna be?
[00:25:40] Well, I don't know.
[00:25:40] Let's say that if I call double, double two,
[00:25:46] what should the answer be?
[00:25:47] Four, right?
[00:25:50] All right, so by the way, let's change our test.
[00:25:55] Now, so I'm gonna change our test.
[00:25:59] Oopsie.
[00:26:01] I'm gonna change our test.
[00:26:04] I just am not coding very well today.
[00:26:07] We're gonna change our test
[00:26:08] and we're gonna say rather than doing all that,
[00:26:12] let's do this.
[00:26:13] Let's do E-N-T-R, go test, go, let's see, go test.
[00:26:20] All right, and there's no test files here, right?
[00:26:22] So, what we wanna do is we can go test.slash.dot.dot
[00:26:27] and that will test everything, okay?
[00:26:29] All the way down in your program.
[00:26:32] So, what we're gonna do is we're gonna change
[00:26:34] our E-N-T-R program to clear the screen
[00:26:37] and to do go test and that will not only test this
[00:26:41] but any test here or down and that is a go thing.
[00:26:45] That is not a shell thing.
[00:26:47] So, that's gonna, instead of, so that's gonna run our test
[00:26:52] for us and you can see we're failing
[00:26:54] a couple different tests here, okay?
[00:26:57] At this point, it's getting kind of hard
[00:26:59] to see the test on the same screen.
[00:27:02] So, what I'm gonna do is get rid of this
[00:27:05] or break it out into its own screen,
[00:27:07] which I don't remember the command for that.
[00:27:11] There is a command to break out a T-mux window
[00:27:14] into its own pane into its own window
[00:27:16] but I haven't done it in a long time.
[00:27:17] I'm gonna ask my API, I mean, in my chat,
[00:27:20] how do I break out a T-mux pane into own window?
[00:27:28] I think it, is it Z?
[00:27:30] I think Z is zoom but it doesn't break it out.
[00:27:34] So, I wanna break it out.
[00:27:35] I wanna break that pane out into its own thing.
[00:27:37] I don't do this very much.
[00:27:38] So, I usually just start with separate windows
[00:27:41] but I made a pane because of the stream.
[00:27:44] So, okay, so let's see here.
[00:27:50] Control B, yes, I know.
[00:27:53] And that, we'll move the active pane
[00:27:54] to a new window with the same session.
[00:27:57] It says, exclamation point, we'll move the active pane.
[00:28:01] Interesting, okay, let's try that.
[00:28:05] Let's try that.
[00:28:11] I mean, double quotes just splits it.
[00:28:12] That's not what I wanted.
[00:28:14] So, exclamation point.
[00:28:17] Yeah, there we go, that's what I wanted.
[00:28:18] Okay, so it was exclamation point.
[00:28:20] That's what my AI said.
[00:28:22] So, now we have these two things
[00:28:24] and by the way, these are both windows.
[00:28:26] I use windows over these little things across the top
[00:28:29] 'cause I can never read them.
[00:28:30] One of the reasons I like this better
[00:28:31] is it gives me my directory.
[00:28:32] It also shows me the file that's open.
[00:28:34] So, this is kinda cool because now I don't have to close
[00:28:37] the file, I can do, you know, I can do CMD
[00:28:41] which is, you know, my Neo-Vam likes a lot better
[00:28:45] when I don't close it all the time
[00:28:46] 'cause you see it's updating it.
[00:28:48] This is a Tmux thing, control A, W to see the windows.
[00:28:52] Okay, so, and then I have my test here.
[00:28:56] I can actually update this with a comma and say test
[00:29:00] so now I can see all my windows
[00:29:02] and, you know, you might have your own way of doing this
[00:29:04] but this is how I do it.
[00:29:07] Okay, so we're running main
[00:29:09] and main seems to be failing, right?
[00:29:11] Because we changed the output.
[00:29:13] So let's go ahead and fix that unit test
[00:29:15] 'cause we changed it without changing our unit test.
[00:29:18] That was bad of us, so me.
[00:29:20] So I'm gonna go ahead and make a new one
[00:29:22] and I'm gonna CMD a low main_test
[00:29:27] and I can now change this.
[00:29:29] We know we're not getting a little friend anymore
[00:29:31] and so we know what we're getting
[00:29:32] so I can actually make the test pass.
[00:29:35] I can actually, I do this all the time.
[00:29:37] I can just copy the output of the test
[00:29:40] and put it into the test case and make it succeed.
[00:29:46] You know, which is horrible of me to do, right?
[00:29:51] So I just copied it.
[00:29:52] There's an easier way to do that
[00:29:53] but I'm trying to save my stuff for you.
[00:29:55] Okay, so that did not update.
[00:29:58] Okay, the reason that didn't update
[00:30:00] is because our ENTR is too limited.
[00:30:04] What it's doing is it's only looking for main.go, changing.
[00:30:09] So we're actually gonna change this to be a list
[00:30:15] and we're gonna say, I mean, you can do LS-1,
[00:30:20] you can do find, there's a whole bunch of things
[00:30:21] you can do here.
[00:30:23] I'm gonna do findanything.anything
[00:30:30] that has the name.go.
[00:30:32] Okay, if any of those files changes, I wanna rerun.
[00:30:36] Okay, so now it fixed it.
[00:30:39] So, but the other one is failing.
[00:30:41] So let's make that one not fail by implementing it.
[00:30:47] So we can say to here, you can put 9, 9, 9, 18,
[00:30:51] put 18 here.
[00:30:54] All right, so there's a little bit of our test code.
[00:30:57] All right, so now let's go back
[00:30:58] and update the test code.
[00:31:02] Well, why isn't that one showing the program?
[00:31:06] It's testing, that one should have, oh, there we go.
[00:31:09] Okay, and then we're gonna go back into the main here.
[00:31:13] So let's make it work.
[00:31:14] So instead of returning zero,
[00:31:18] I don't really need to do a variable here, right?
[00:31:20] I could, I could say, you know, something,
[00:31:24] some, and this is a walrus operator.
[00:31:27] So this is exactly the same.
[00:31:29] So var, var doubles, if I want, I'm not doing this.
[00:31:36] But if I did, I could say var doubled isn't int.
[00:31:41] So we declare it.
[00:31:42] And then we say doubled equals x times two, right?
[00:31:50] And then declared, but not done.
[00:31:52] Now we return doubled, okay?
[00:31:55] I'm deliberately writing this
[00:31:57] the way a beginner would write it
[00:31:59] because it doesn't always come to you
[00:32:01] that you can simplify this.
[00:32:03] So that's the first iteration, right?
[00:32:05] So, and you might wanna keep this in your notes.
[00:32:10] You know, I'm actually gonna keep it in here
[00:32:13] just so you guys can see it.
[00:32:15] Because I want you to see that it's getting simplified.
[00:32:18] So let's actually rewrite this.
[00:32:22] So let's first of all see if it's working.
[00:32:24] So let's go look at our tests.
[00:32:27] We have to go back to the other window to test it,
[00:32:28] but I can just toggle with a, a, in my case.
[00:32:32] Let's go to the tests, where is it?
[00:32:36] Here we go.
[00:32:37] So, wait, am I running the tests?
[00:32:42] Oh, here we go.
[00:32:47] Wait, what?
[00:32:49] Oh, let's go test on this one test.
[00:32:51] All right, so, yeah, there we go.
[00:32:53] So that's, we got, this is my dog.
[00:32:56] So we got a test, the test is still running
[00:32:58] and we're still failing the test.
[00:33:02] Why are we failing the test?
[00:33:05] Why are we failing the test?
[00:33:07] I don't know, let's try again.
[00:33:10] X double.
[00:33:14] We should not be failing that test.
[00:33:20] Why are we failing?
[00:33:21] What am I missing?
[00:33:24] We're missing something obvious, I don't know what it is.
[00:33:30] Oh, we're not printing it.
[00:33:32] We're just returning it.
[00:33:33] Oh, that's an important thing.
[00:33:35] So the value is being returned, but it's being thrown away.
[00:33:39] So we need to take that value and we need to assign it
[00:33:41] to something and print it, right?
[00:33:43] We could say, we could say doubled equals, right?
[00:33:50] This is, normally you wouldn't do this, right?
[00:33:52] But I want to show you, so doubled, it's like,
[00:33:56] we used wireless operator, okay?
[00:33:57] So doubled actually infers the type
[00:34:01] that's coming out of the thing.
[00:34:02] So it doesn't need to be, this is called a wireless operator.
[00:34:05] And it says, okay, doubled.
[00:34:07] And then we can print doubled, empty, print all in.
[00:34:10] You guys already know about this, doubled.
[00:34:14] All right, so that's going to get us our four,
[00:34:18] but what about the rest, right?
[00:34:19] So we need the 18.
[00:34:22] Well, we can do the same thing again.
[00:34:25] This is very painful for me to do,
[00:34:28] but I'm doing it on purpose.
[00:34:30] Thank you, because I want you to see the pain.
[00:34:32] So we're going to break something here.
[00:34:34] What's going to break?
[00:34:35] Before I save this, is anybody,
[00:34:37] can you think about what's going to break here?
[00:34:40] What's going to break here?
[00:34:43] I really want you to see this.
[00:34:45] Okay, it says you can't put another one here.
[00:34:47] Why?
[00:34:48] Because we are using short hand.
[00:34:49] Let me go back to the long hand here.
[00:34:51] And if you're a beginner, knowing a long hand,
[00:34:53] don't do the long hand, but know about it.
[00:34:55] Because what we're actually doing,
[00:34:58] with the wireless operator is this.
[00:35:00] We're saying, var doubled is an int,
[00:35:02] and then we're saying doubled equals a butt.
[00:35:04] And then down here, we're doing the exact same thing again.
[00:35:10] This is what we,
[00:35:13] when we use the wireless operator the way we did,
[00:35:15] this is what we, ultimately, this is what we were doing.
[00:35:19] And you see how doubled is getting redeclared here?
[00:35:22] It's like, you know, so that doesn't make any sense, right?
[00:35:27] So we could either do this.
[00:35:28] We could get rid of it here,
[00:35:30] and have it be declared in both places
[00:35:31] that will pass the test, or,
[00:35:35] or we can make one of them,
[00:35:37] if we want to get rid of this part,
[00:35:40] then we can do this.
[00:35:40] We can put the wireless operator here and get rid of this.
[00:35:43] Because doubled is defined as being a function
[00:35:47] that gives us an int, right?
[00:35:50] So, the program can infer from that
[00:35:54] that this thing should be an int.
[00:35:57] And that happens a lot in a lot of other programming languages,
[00:35:59] too, that inference about what the type is.
[00:36:02] It saves you from typing a bunch of stuff, obviously.
[00:36:04] But that's what this operator does.
[00:36:05] This wireless operator, it's an assignment operator.
[00:36:08] It takes the thing on the right
[00:36:09] and puts it into the thing on the left,
[00:36:11] making a new one and declaring it at the same time.
[00:36:14] Okay, that's a lot to put in that little operator.
[00:36:17] And some people criticize go for being too magical in that sense.
[00:36:21] But it makes it, you know, that's that Goldilocks thing.
[00:36:23] It's just enough to help us not have to write
[00:36:26] a whole bunch of crazy stuff.
[00:36:28] And then down here we have an equal assignment.
[00:36:30] If I do this again, it's going to fail because why?
[00:36:33] Because it's like, no, you're trying to make a new one,
[00:36:35] and you already have one, you can't reuse that, right?
[00:36:38] If you want to use it, just do this.
[00:36:40] And that uses it as a variable.
[00:36:42] In other words, it's another, you know, it's a value
[00:36:44] that's coming out of it, and it's going into the other one,
[00:36:47] and it's just replacing the thing that was there
[00:36:49] in the previous example, and then it's printing it out.
[00:36:52] Now, this passes the test, but this is unnecessary.
[00:36:56] And what I want to show you is,
[00:36:58] because it's so easy to just pass these things,
[00:37:01] we can get rid of the variable altogether,
[00:37:04] and just call double two is a very functional way
[00:37:06] to do things, and we could say down here,
[00:37:10] we could just say double nine.
[00:37:13] All right, and now we have two very simple programs.
[00:37:19] There's even a simple way to do it later,
[00:37:21] which I'll show you, but it's got some redundancy in it
[00:37:25] that we can get rid of later with a loop,
[00:37:26] but we're not there yet.
[00:37:29] So that's it, so we've got it, that's a pure function.
[00:37:32] We have taken in some things, we've changed those things,
[00:37:35] and then we have given out another thing,
[00:37:37] and then we print it.
[00:37:38] So what I want you to notice here is,
[00:37:40] what is different between main and this?
[00:37:45] And this gets back to the earlier question I asked
[00:37:47] about how can we make greet,
[00:37:53] how can we change greet from being a procedure
[00:37:56] to a function, a testable function?
[00:37:59] Now, it just so happens, this is one of the cases
[00:38:01] where Go's amazing unit testability
[00:38:05] is kind of hurting us in terms of learning,
[00:38:08] because what these example-based tests do
[00:38:11] is they use something called reflection
[00:38:13] to look at the output and compare it
[00:38:15] to the thing that's being tested.
[00:38:17] And so it's kind of magical,
[00:38:18] and it's not completely apparent what's going on,
[00:38:21] but basically, main is being called the procedure main.
[00:38:26] It says function, it's not.
[00:38:28] It never has been, it never will be.
[00:38:31] The main procedure, which is called a function,
[00:38:33] and everybody will call it a function,
[00:38:35] and it's a procedure, it says run these steps,
[00:38:39] and it doesn't even have a return value.
[00:38:41] So it is the definition of a procedure,
[00:38:44] a subroutine if you wish.
[00:38:46] So it runs this thing, and you're looking at it,
[00:38:47] and you're like, okay, well, what's going on here?
[00:38:50] I have no idea, and it's because the side effect
[00:38:53] of running main, in this case,
[00:38:55] is printing stuff to standard output.
[00:38:58] That is a sure sign of a subroutine or a procedure.
[00:39:03] It is affecting its environment,
[00:39:04] and in this case, its environment
[00:39:06] is the standard output data pipe.
[00:39:09] It's putting it out there, and it's printing it.
[00:39:10] And I know you guys think I'm in the weeds here,
[00:39:12] but I promise you, you'll be better coders
[00:39:14] by annoying this up front.
[00:39:15] So by running main, it takes it,
[00:39:20] and it just runs those steps,
[00:39:25] and what are those steps?
[00:39:26] Those steps are other procedure calls that say,
[00:39:30] hey, or subroutine calls, whatever you wanna call them,
[00:39:31] go do these other things, right?
[00:39:34] But there's no return value.
[00:39:36] What's the difference?
[00:39:37] Down here, nothing happened until I captured the return value
[00:39:42] and did something with it, right?
[00:39:45] So double is a pure function.
[00:39:47] It's a pure function, whereas main is a procedure function.
[00:39:51] And that means it's just a bunch of steps.
[00:39:53] But how can we fix this?
[00:39:55] Well, let's go ahead and test this.
[00:39:57] Let's, by the way, if you ever wanna yank
[00:39:59] an entire function and go, Y-A-F.
[00:40:02] That says yank the outer function.
[00:40:05] All of it, including the, you can do I-F,
[00:40:08] which is just the lines inside.
[00:40:09] If you U-A-F, it's the whole function.
[00:40:11] So I just grab the whole function,
[00:40:12] come down here and push P,
[00:40:13] and I can copy that whole function in one command, okay?
[00:40:16] So that's very valuable.
[00:40:18] I promise you, because it doesn't see blank lines as sub.
[00:40:23] Like D-A-P or Y-A-P would do.
[00:40:26] So here we have example main.
[00:40:29] And we wanna make it not main.
[00:40:31] And we wanna make it greet.
[00:40:33] We wanna test greet, right?
[00:40:35] All right, so we have greet here.
[00:40:38] And right away, this is gonna blow up, right?
[00:40:40] Because it's like, no, we don't have that thing.
[00:40:42] There's not enough arguments.
[00:40:43] So let's put an argument in here.
[00:40:45] Let's say Doris, give it a string Doris,
[00:40:49] and let's try it again.
[00:40:52] And of course it doesn't blow up there,
[00:40:54] but it's not right, right?
[00:40:55] It's not doing both of them.
[00:40:56] And then I could have greet Doris,
[00:40:58] or I could have greet Rob.
[00:41:00] So now I can test, okay, that's passing, right?
[00:41:05] Do I really need to test the main program anymore?
[00:41:10] Really don't, right?
[00:41:11] Because we just need to test greet.
[00:41:13] But there is a better way to do this.
[00:41:16] And I'm gonna leave the main test here
[00:41:18] for just a second, just to make a point.
[00:41:20] So what if we turned greet into a function
[00:41:25] instead of a procedure?
[00:41:27] What if we made greet return a modified string?
[00:41:32] And this is the very much the Unix way.
[00:41:34] You know, pipelines at the end of the day
[00:41:36] are just connected functions
[00:41:39] that are operating on string data.
[00:41:41] So here we have greet with string,
[00:41:46] and we have this thing.
[00:41:47] So rather than FMT printing it,
[00:41:49] what if we did this instead?
[00:41:51] What if we just returned it, okay?
[00:41:54] Okay, we got that comma there.
[00:41:55] So, huh, we were doing that fancy replacement.
[00:41:59] So you gotta learn a new function.
[00:42:01] So here we go, FMT, now we could,
[00:42:04] you guys know I could just join it, right?
[00:42:08] Probably the more efficient to do that, let's do that.
[00:42:10] Rather than to do, let me show you another way
[00:42:12] we could do it and keep it exactly like it is.
[00:42:15] We could do S print out, okay?
[00:42:18] What does S print F?
[00:42:19] S print F is exactly the same as print F
[00:42:22] except for it returns a string instead of send,
[00:42:27] instead of actually printing it to standard output.
[00:42:29] So, and that way nothing gets printed
[00:42:32] until we actually print it.
[00:42:34] But that is exactly identical to the other thing
[00:42:38] that we just did, and I'm gonna make a little comment here
[00:42:43] 'cause I wanna make sure that I cover a sprint F.
[00:42:46] And P sprint F, all right.
[00:42:48] So, and so we covered that, but you know,
[00:42:53] that is a little bit of an expensive operation.
[00:42:55] And so let's just give it a string.
[00:42:58] So let's see, we want hello,
[00:43:01] and we don't really care about the line return, right?
[00:43:05] That's not, in fact, you know.
[00:43:07] So let's go ahead and give hello name,
[00:43:10] and let's join it together with the plus
[00:43:12] Kencatenate operator.
[00:43:14] And now we have this.
[00:43:16] It says the string literal is not terminated.
[00:43:18] Hello, whoops, there's an extra quote there.
[00:43:21] All right, so, and because it's so small,
[00:43:23] we can actually do this, and we're good to go.
[00:43:27] Now, in some languages in JavaScript,
[00:43:29] you can actually take this one step further.
[00:43:31] It's just one of the reasons I love JavaScript.
[00:43:34] In JavaScript, you can actually get rid of the return value
[00:43:36] because it's the last thing on the line.
[00:43:39] And in JavaScript, you can also do this.
[00:43:42] You can change the function definition to be
[00:43:46] something like this instead.
[00:43:48] It gets really, really fun.
[00:43:50] You could actually have it be,
[00:43:55] see, it would be, I gotta spend a long time
[00:43:56] since I've done it.
[00:43:58] But you can actually get really functional about it
[00:44:00] so that it's just, you know, that.
[00:44:03] And if you've done any Python,
[00:44:05] it's like a single line lambda.
[00:44:07] You could do that with a lambda function.
[00:44:10] But once it becomes like a function that's just doing
[00:44:13] one small transformation and returning a new value,
[00:44:15] it starts to really feel functional.
[00:44:18] And you'll notice this over time.
[00:44:21] I'm spending a lot of time on these paradigm differences
[00:44:23] because you are going to run into these things.
[00:44:26] And now you'll be able to speak about them.
[00:44:28] But that's very, very, very functional at that point.
[00:44:31] Now, obviously, main is gonna fail now, right?
[00:44:34] Why is main gonna fail?
[00:44:35] Because it's not doing what we told it to.
[00:44:39] There's, it's not printing anything.
[00:44:41] Why isn't it printing anything?
[00:44:43] Because we told it that Greet was no longer a function.
[00:44:46] Greet is now a procedure.
[00:44:48] I'm sorry, a function, it was supposed to be a procedure.
[00:44:51] So we have to print it, right?
[00:44:53] And we can do a bunch of things here, right?
[00:44:55] So this is, I mean, for right now,
[00:44:58] we're gonna do it the long way based on what you know.
[00:45:01] But we're gonna say print a line, Greet Doris,
[00:45:06] and you know, FMT, print a line.
[00:45:08] I could've done that at the same time, but I will.
[00:45:11] And we're gonna run that.
[00:45:14] And we go back here, and it prints it out.
[00:45:18] We forgot the periods, but other than that, it looks fine.
[00:45:21] So we need to update our, yeah,
[00:45:26] I guess I can kill the period there, right?
[00:45:28] All right, so, wait, what, what?
[00:45:33] What's going on?
[00:45:37] Oh, right, because this, I don't, wait.
[00:45:41] Why isn't it doing it?
[00:45:44] That should be passing.
[00:45:48] Hmm.
[00:45:52] That should be passing, people.
[00:45:54] Why isn't it passing?
[00:45:58] That should be passing.
[00:46:05] Oh, wait, it's an example, Greet that's failing.
[00:46:08] Yeah, it's a different thing.
[00:46:10] Main was passing.
[00:46:11] Did you see that?
[00:46:12] Example, Greet's failing.
[00:46:13] Okay, I was checking the wrong thing.
[00:46:16] So this one is the one that's failing.
[00:46:19] Oh, right, because why?
[00:46:20] Because we're not printing anymore, right?
[00:46:22] But here's, this is where stuff gets kind of interesting.
[00:46:25] So I'm actually gonna show you another unit test right now,
[00:46:29] and that's using the testing library.
[00:46:32] And so instead of having an example,
[00:46:35] we're gonna change this one to be testing, testing, right?
[00:46:39] And we're gonna test Greet.
[00:46:41] Now, when you do test Greet,
[00:46:42] now that you know what an argument is,
[00:46:44] we're gonna go ahead and pass it an argument.
[00:46:46] So the standard argument is testing dot t,
[00:46:49] and we're gonna send it a t,
[00:46:51] and this is, you just have to know this.
[00:46:54] You don't know what pointers are yet, but you'll learn it.
[00:46:56] And so now we can actually say
[00:46:59] that we wanna do more of a test on it.
[00:47:03] And, you know, this doesn't fail
[00:47:07] unless we exclusively make it fail.
[00:47:10] And I honestly don't wanna do that with you right now.
[00:47:14] I'm gonna make it back to examples.
[00:47:16] I regret my decision immediately,
[00:47:17] because I have to tell you about pointers
[00:47:19] and you don't know about them yet.
[00:47:20] So let's do example Greet,
[00:47:25] and let's actually do the print, right?
[00:47:27] FMT to print on N.
[00:47:30] I mean, you already know this
[00:47:31] because this is exactly what Maine does.
[00:47:34] So if Maine is passing, you know this is passing.
[00:47:37] This is new of him.
[00:47:39] So print on N, and we'll go do this one.
[00:47:43] And now our tests should be passing.
[00:47:47] Yep, okay, so there we go.
[00:47:48] That's the passing test.
[00:47:50] All right, so let's regroup.
[00:47:51] We're burning up time here.
[00:47:52] We got about 15 minutes left,
[00:47:55] and we've done a lot of things.
[00:47:57] So we've done a lot of things.
[00:47:57] So please, like, slow down and process this
[00:48:00] and see all the differences here.
[00:48:03] But we're not gonna introduce pointers yet.
[00:48:07] No, God, no.
[00:48:08] We don't know where we're close to pointers.
[00:48:09] We haven't even talked about typeset.
[00:48:11] So we're gonna go ahead and talk about,
[00:48:25] Maine.gov, okay.
[00:48:26] So, all right, so we have our function here.
[00:48:29] We have the old one that we did here.
[00:48:30] Can you see, let's take a moment to regroup on the code.
[00:48:34] Can you see a way to make this more like this function here?
[00:48:39] So, right here we have,
[00:48:42] this can be radically simplified, okay?
[00:48:44] But you see it.
[00:48:47] Should I jump right to the answer here?
[00:48:50] Let's jump right to the answer here.
[00:48:52] We can make this entire thing much, much simpler.
[00:48:56] Call refactoring, we can return X times two
[00:49:02] and get rid of these lines.
[00:49:05] All right, how's that?
[00:49:07] Something that's kind of cool about functions
[00:49:09] is when you put them next to each other,
[00:49:12] the formatter will automatically make them line up,
[00:49:16] which is really great.
[00:49:18] So if you're writing, you know,
[00:49:19] if you're writing operations functions,
[00:49:22] like, you know, things that double things
[00:49:24] and multiply things, I mean,
[00:49:26] it probably goes without saying that in math,
[00:49:27] the plus sign represents an operation.
[00:49:30] And the two things on both sides plus two are operands.
[00:49:37] A lot of people don't know this,
[00:49:39] but I want to make sure you know
[00:49:41] because you should learn this, you really should.
[00:49:45] So what is an operator, okay?
[00:49:48] An operator performs some action on one
[00:49:55] or more operands, okay?
[00:49:59] And an operand is the thing in the idea of a plus
[00:50:04] is the thing that's receiving the action,
[00:50:06] receives the action of an operator.
[00:50:11] We're gonna come back to these terms a lot,
[00:50:13] so it's important that you know them.
[00:50:17] Again, if for no other reason,
[00:50:18] then being able to talk intelligently
[00:50:20] with a computer science person, that's what they are.
[00:50:24] So when we come back here, two is,
[00:50:29] so f of x, x is the parameter.
[00:50:32] You know, we put the number in there,
[00:50:33] becomes our argument.
[00:50:34] So the operands, in this case, are x and two.
[00:50:38] The operator is the star, okay?
[00:50:42] And the star represents multiplication.
[00:50:45] So there are a number of other basic mathematical operators
[00:50:52] in Go, and I'm gonna quickly introduce you
[00:50:56] to a number of them right now
[00:50:58] because we're covering functions, okay?
[00:51:01] So, and we're gonna write them really quickly,
[00:51:05] but I'm pretty sure you could figure out
[00:51:07] how to do this on your own.
[00:51:09] So if you wanna pause the video
[00:51:11] and write these on your own,
[00:51:13] write a function that divides by two,
[00:51:18] we'll call it half,
[00:51:20] write a function that increases something by some amount,
[00:51:27] and write a function that decreases something
[00:51:29] by some amount.
[00:51:30] So let's actually write them, okay?
[00:51:33] So I'll give you the stubs for these.
[00:51:36] And let's see here.
[00:51:39] So you could, this is a place where you could write code
[00:51:41] to write code, actually.
[00:51:44] So you want me to do that?
[00:51:48] All right, let's do this.
[00:51:49] Let's say decrement, increment, multiply,
[00:51:59] let's see, multiply by,
[00:52:03] let's say multiply, divide, divisor, I guess.
[00:52:11] What?
[00:52:12] These all have actual things.
[00:52:14] How can I decrement, multiply, we could do exponent,
[00:52:19] exponential, right?
[00:52:20] We could take the divisor of a thing.
[00:52:23] There's a bunch of them,
[00:52:25] and I'm trying to decide which ones to show you
[00:52:27] because there's so many cool ones.
[00:52:30] But I don't wanna lose you.
[00:52:31] So just try these, okay?
[00:52:33] I'm actually gonna write some code here.
[00:52:35] So, where I in
[00:52:41] do echo, bunk, I, let's say x.
[00:52:55] We still change and multiply to have,
[00:53:00] and it'll have the y to be double.
[00:53:04] 'Cause we wanna just be on,
[00:53:05] operators on a single operand.
[00:53:08] So, I mean, there's a two there, but still it's implied.
[00:53:12] And then we wanna say return int.
[00:53:16] So we have x be an int, and we have int here.
[00:53:21] And what else do we have?
[00:53:26] Wait, wait, I did that wrong.
[00:53:27] Int, so we say return x times whatever, right?
[00:53:34] We're gonna change that though, so done.
[00:53:38] Does that look right?
[00:53:39] F function, actually, blah, blah, blah.
[00:53:42] Okay, so I'm gonna send this whole thing to my shell.
[00:53:46] I'm gonna send it to bash,
[00:53:48] and actually generate the code for that.
[00:53:52] You could do that with a macro other ways,
[00:53:53] but we're just gonna do it that way.
[00:53:55] So let's change these decrement, decrement.
[00:53:57] We could say x equals, all right?
[00:54:00] So return x minus one.
[00:54:03] We could say x plus one.
[00:54:07] Now, I'm gonna show you a better way to do this.
[00:54:10] In half, we could say divided by two.
[00:54:12] We could say times two, okay?
[00:54:14] So these are the basic operations in Go.
[00:54:19] And there's a number of other ones
[00:54:21] that we could get into, modulo and everything.
[00:54:25] But just so you know, these are the basics.
[00:54:28] Decimate and increment actually have two other useful alternatives
[00:54:34] that are just shorthand, plus plus,
[00:54:38] I'm sorry, minus, minus, and plus plus.
[00:54:42] What that does is that as one,
[00:54:46] does it need to be at the end of the line?
[00:54:47] I was afraid of this.
[00:54:48] I go, Go does not like these.
[00:54:50] See you can do this, other languages you can do this.
[00:54:52] Go doesn't want like this.
[00:54:55] So it's not gonna let me do it.
[00:54:57] I have to do it on, it has to be on its own line.
[00:54:59] And that's because in other languages,
[00:55:01] you don't know what the options are when it happens,
[00:55:05] like whether it happens before or after.
[00:55:07] So dash dash and minus, minus, minus and plus plus
[00:55:11] are kind of frowned upon.
[00:55:12] Unless they're on their own line and Go, you can't even do it.
[00:55:15] But other languages will let you do that, no problem.
[00:55:17] So I guess we'll just keep these for now.
[00:55:20] It's probably good.
[00:55:21] So how do we test all these?
[00:55:23] You know how to write the test code.
[00:55:24] I am not gonna write the test code.
[00:55:26] We are approaching the end of this particular video.
[00:55:28] I encourage you to go write your own functions
[00:55:31] that can, that can, you know, do different things.
[00:55:35] And, you know, write your own.
[00:55:37] Proaches don't have to return mathematical values.
[00:55:40] Obviously they can return transformations on input.
[00:55:43] They don't even have to have input at all.
[00:55:45] You could have them actually grab things
[00:55:48] from their environment, which is not modifying
[00:55:51] their environment, but inspecting their environment
[00:55:53] to get something new and to return it to you.
[00:55:56] And that's kind of a gray area when it comes
[00:55:59] to functional programming because, like, is that functional
[00:56:01] or not?
[00:56:02] I mean, it looked at it's a universe to see,
[00:56:04] but it didn't alter the environment at all.
[00:56:06] But it looked at it.
[00:56:07] So does that count as functional?
[00:56:09] I don't know.
[00:56:10] I'm not a computer science nerd to that degree,
[00:56:13] but other people are, you could go give them a,
[00:56:15] give them ask.
[00:56:16] This has been a lot to cover.
[00:56:18] This has been an hour or so,
[00:56:20] but we've covered a lot less review.
[00:56:22] So we've covered, you know, what a function is,
[00:56:28] what a subroutine is, what blocks and scopes are.
[00:56:30] We did cover an additional type.
[00:56:33] We learned about operators.
[00:56:35] We talked about paradigms,
[00:56:36] particularly the functional paradigm.
[00:56:38] And I don't know if you've noticed,
[00:56:39] but I spent a lot of time on the functional paradigm.
[00:56:42] And quite frankly, this probably should have gone
[00:56:46] into, you know, another, another thing.
[00:56:49] So right now it's saying we're saying hi there,
[00:56:52] and we're using greet as a function,
[00:56:55] as opposed to procedure.
[00:56:56] But now we're actually ready to start documenting things.
[00:57:01] We are gonna do one last thing before we do that.
[00:57:03] I'm gonna put another one here.
[00:57:05] And we'll probably put the,
[00:57:10] I think we should probably put the age calculator here.
[00:57:14] So this is, this is something that, you know,
[00:57:22] well, I don't know if we should do that.
[00:57:23] The calculator, calculator, which is kind of stupid,
[00:57:30] but, you know, that's what we did.
[00:57:32] We use the calculator.
[00:57:32] So let's actually, the next, in the next session,
[00:57:36] we're gonna use all the functions we just made.
[00:57:38] And we're gonna, we're gonna make them the brains
[00:57:40] of a command line calculator,
[00:57:42] which obviously already exists,
[00:57:45] but it's good to see how that's going on
[00:57:47] and what's going on.
[00:57:49] And that'll help us learn some other,
[00:57:51] some other important things out there.
[00:57:53] And we'll also get us ready for, later on,
[00:57:57] we're gonna actually make our own domain specific language
[00:58:01] where we do date calculations between two points in time
[00:58:05] and some really cool things that actually have bearing
[00:58:08] with regards to, you know, your real world work,
[00:58:11] but are also really fun when it comes to making
[00:58:13] a text adventure because you can also calculate
[00:58:15] the real world time that it has elapsed
[00:58:17] and decided things are happening.
[00:58:18] So all of these functions and procedures and stuff,
[00:58:21] this is all gonna help us organize our code
[00:58:24] and move on to the next things that we're doing.
[00:58:28] So one last look at the code before we break today.
[00:58:32] So we've got, again, we've got the main procedure,
[00:58:37] you now know, I'm gonna keep calling a procedure.
[00:58:40] You might wanna not call it that around another go person.
[00:58:43] You and I know we have a secret, okay?
[00:58:45] We have a secret.
[00:58:46] But if you use that word around another go person,
[00:58:49] it'll look at you like you have nine heads.
[00:58:52] But now you know what we're talking about, okay?
[00:58:54] You know the inside secret.
[00:58:56] So here we have a procedure for main
[00:58:59] and we have several functions.
[00:59:02] We have three mathematical, four mathematical functions
[00:59:06] and a string transformation function,
[00:59:09] which is, you know, taking something in,
[00:59:11] it's changing it and then returning it, okay?
[00:59:13] Go ahead, have fun with those
[00:59:15] and we'll talk to you later.
