# 🎄🚀 Bash Scripting Basics: Permissions, Shebang Lines, ShellCheck (Holiday Boost 2024 - #8)

Introduces Bash by showing that typing commands is already programming, then turning those commands into executable scripts. Compares how compiled binaries and interpreted scripts run, explains permissions and portable shebang lines using env, and shows how to set up ShellCheck and shfmt and learn Bash from ShellCheck warnings.

Chapters:
0:00 What a shell is and boost goals
1:38 The command line is already coding
3:26 Running processes and subprocesses
5:54 Saving commands into a script file
8:09 File suffixes and executable permissions
10:58 How Bash identifies commands with type
15:03 Why execute permission is required
17:13 Testing an executable Perl script
20:54 Compiled Go binaries versus text scripts
28:36 How the shebang line works
32:06 Hardcoded interpreter paths on Linux and macOS
37:47 Portable shebang lines with env
46:52 Installing ShellCheck and shfmt
48:51 Vim linting and formatting with ALE
52:30 Learning Bash from ShellCheck warnings

`#bash #shellscripting #linux #shellcheck #commandline #vim #coding #perl #shell #unix`

## Category

Education

## Transcription

[00:00:00] all right so for this boost welcome to the boost I don't remember which one we
[00:00:05] are on but we're gonna do bash we're gonna learn bash in an hour and we're
[00:00:10] only gonna learn enough of bash to be dangerous and by dangerous I mean you
[00:00:16] know understand what's in your bash RC file which is where you know that's
[00:00:19] where you keep you know all your configurations or stuff like that and so
[00:00:25] what does that mean right so if you know bash then you know that you know it's a
[00:00:32] shell language what is a shell a shell is the thing that you're interacting with
[00:00:37] in the terminal to make you know things happen it's called a shell because it's
[00:00:41] kind of like the outer shell and the kernel is in the middle and it's the
[00:00:44] thing that we humans interact with in order to have something happen that's
[00:00:48] what a shell is a command shell is and so and you know you can configure this
[00:00:54] thing this is where you put all your configurations and we're gonna talk
[00:00:58] about what all this stuff is so by the end of this video hopefully in an hour
[00:01:04] so maybe 90 minutes but hopefully we'll keep it under an hour we should be done
[00:01:08] and you should be able to understand everything that's in this video in this
[00:01:13] this particular file including conditions and this thing here is called a
[00:01:19] function we're gonna talk about that this is an exported function we'll talk
[00:01:22] about that there are some parameter expansion things happening here that we
[00:01:26] may not have time to get to we will talk about why we're not gonna talk about
[00:01:31] regular expressions and what those are but you know you gotta know the shell so
[00:01:38] the first thing to know about the shell is that you you are already coding so
[00:01:43] when you are interacting with your terminal on the command line you are
[00:01:48] writing code and I'm gonna say it again you are already a programmer a second
[00:01:55] you start using the terminal whether you did it from you know was term or the
[00:02:01] built-in terminal or just the terminal is built into VS code as soon as you
[00:02:05] entered a command on the command line you wrote shell code what do I mean by
[00:02:10] that so a shell is built around another thing called a REPL a read evaluate
[00:02:19] print loop and what that means is that you like you type a thing LSTS shell for
[00:02:24] example this is a command and so the shell is pausing it's waiting around on
[00:02:29] me until I execute the command and I through the hit enter it it reads in that
[00:02:35] line LSTS shell parses it apart and then it says okay let's turn this
[00:02:40] into commands for the kernel and in this case you know and that's why we call
[00:02:45] bash and interpreter I covered that in the last video but so what's the
[00:02:50] difference between if you haven't watched the other beginner the other boost
[00:02:52] video that I just did a holiday boost it was we went through all the languages
[00:02:56] and what's the differences between interpreted compiled languages so it
[00:02:59] goes to the bash interpreter and the British interpreter interprets what you
[00:03:04] gave it these things LS space - L all that and interprets that into a bunch of
[00:03:11] system level commands that get communicated to directly to the kernel of
[00:03:16] the system now it's not directly the way it works but that's for you that's the
[00:03:21] way to understand it in general any any time you do this anytime you you
[00:03:28] execute a command it kicks off a process and a process is is another topic altogether
[00:03:34] but essentially what it is is it's a running program and while we're at it
[00:03:38] let's look at all the running processes on the system you can type type top or
[00:03:43] h-top and you can see all of the running process on the system a lot of you
[00:03:46] probably already familiar with this but these are all of the things that are
[00:03:50] running on the system not every one of those is a process that started from a
[00:03:55] command line but let me just give you a sense of this if I wanted to do that I
[00:03:59] could do well through do sleep one echo hello done and then we have a running
[00:04:10] process that is now you know sending its commands is doing its thing in fact if
[00:04:16] we wanted to we can open up another window here and we can actually look at
[00:04:20] it so and let's let's grab I wonder which I want to process let's do ps3
[00:04:27] oops brew install or you can do apt install ps3 this is not covering this I'm
[00:04:36] just gonna do this really fast but it's important you understand processes
[00:04:39] because because you know this is kind of a part of learning how to code on the
[00:04:43] shell is knowing signals and stuff and we haven't really covered that yet and
[00:04:46] processes so let's do C and then that's a ps3 alright so here you can see all the
[00:04:56] running processes and and you know who where their parents came from and stuff
[00:05:02] it's interesting it didn't render it in the fonts the way it probably should have
[00:05:06] so okay so here you can see my T mux this is my T mux running and then you
[00:05:12] can see the bash this is an interactive bash shell as I said it's a running
[00:05:15] program right my current bash shell is an ongoing program that's running it's
[00:05:21] running in a trip or the bash interpreter and it's waiting around for a
[00:05:25] command and it runs it and then it runs another command and then it runs it so
[00:05:28] there's it looks like there I have neo-vim open in another terminal okay
[00:05:32] here's another one here so here's here's bash okay look at that there's the
[00:05:37] process that I ran that started that kicked off the sleep and then it's just
[00:05:42] it's continuing you can see too that this sleep command itself is a sub shell as
[00:05:47] well it's a sub process and this is gonna be really important when we come back
[00:05:51] to things so the first thing I want you to understand is that is that what we're
[00:05:54] running here is you know this this this is a program right it is the
[00:06:02] programming language it's it the bash interpreter is running so that every
[00:06:06] single line is is a program and those lines go into a history file which you
[00:06:10] can look at and stuff but if you put those same exact lines like I just did
[00:06:14] inside of a file this one here let's actually do it I can turn this into a
[00:06:18] string and let's write it to a file we can write it to something in temp we
[00:06:23] don't care temp who I guess all right so we're gonna we're gonna deconstruct what
[00:06:28] I just did there but I wanted it I want you to see this so now when I when I
[00:06:32] look at the content of that file you can see that it has a script in there
[00:06:37] right well all I really have I'm trying to show you that the stuff that I did on
[00:06:41] the command line is code so temp boo and now let's say okay so actually let how
[00:06:48] would we run it in here well I can say hey bash interpreter go run the stuff in
[00:06:52] this file and I can say that and it'll do it right I can also do it a different
[00:06:58] way I can say hey bash I want to send you a new file on standard input we're
[00:07:04] gonna get to all this direction later we you should have already learned the
[00:07:07] command line a little bit but we'll repeat it really quick so let's do this you
[00:07:12] could say hey bash I want you to read I'm gonna give all of the content at a
[00:07:15] file to you as if it was typed in every line into bash and it will do the same
[00:07:20] thing both of these are identical these are I could do another one here's another
[00:07:25] one I could do this I could say cat bash temp boo into bash all right this is an
[00:07:31] important one right so I can send it into bash right so and and and frankly if
[00:07:39] you know them let's actually well I'm getting carried away but so let's go
[00:07:44] look at this so so I have this thing so but this is kind of hard to read the
[00:07:48] semicolons are just line returns that's it they're line returns and you can put
[00:07:53] those in there and put them out there like that you can save it and now it's
[00:07:59] the same thing so bash temp boo and it runs right all right so next thing can I
[00:08:09] just do temp plug people like this and make it into a program no you can't why
[00:08:13] not because it doesn't have the right permissions on it so it is only a file
[00:08:19] right now so the takeaway of this is and let me just make a mention of this so
[00:08:25] a boo to temp boo dot SH or if you want dot bash okay and boo dot bash I'm just
[00:08:38] I made videos about complaining about this before and I'm gonna tell you why
[00:08:43] I'm gonna show you why today so you see how this has a suffix on the end of it
[00:08:49] the takeaway if you're the longest order it is is it's the best practice to not
[00:08:53] put a suffix on a file unless there's a need for it and most of the time there's
[00:09:00] not a need for it and this is one of those times though like if if if you have a
[00:09:06] file that's meant to just be executed by typing bash explicitly or and we haven't
[00:09:12] gotten to yet but included in another file then you know it makes sense for you
[00:09:19] to leave it with the suffix on it if you want to turn it into an executable then
[00:09:24] you should drop the suffix so that it can kind of live by its own self you know
[00:09:28] and let's actually do that let's let's move it so what happens if I move the
[00:09:33] temp boo dot bash file into temp foo first of all and then I give it more
[00:09:38] permissions so we already did this ready to that let's actually add some
[00:09:42] permissions on schmod I have schmocks I have schmocks I have a command called
[00:09:46] schmocks because I just I type it so much it's fine so we're gonna make
[00:09:51] everything executable you know all the permissions we haven't gotten
[00:09:55] permissions but this is fine for your personal system and make sure you
[00:09:59] understand permissions before you do this but it's easy to type so just types
[00:10:03] mod plus like CH mod whatever you want to call it schmod I've been saying schmod
[00:10:08] my whole life somebody probably thinks it's funny but whatever so now when you
[00:10:13] do a lss shell and temp boo you see it's a different color it's executable and
[00:10:17] everything and now I can just type temp boo and it works okay why does it work
[00:10:23] now there's probably at least one or two veterans out there there's probably one
[00:10:28] or two veterans out there who are going to look at this and go why is that working
[00:10:33] what's it missing I this is a trick question pause the video I'm gonna go
[00:10:39] ahead and answer it now go ahead and I'm gonna think what why is that working I
[00:10:44] should not be working right my veterans ship my veteran coders out there
[00:10:49] scruff clips you're like how the hell is that running there's only one reason
[00:10:56] this is running the reason this is running is because this is what happens
[00:11:02] okay I'm gonna go through the steps when you when the shell you remember that
[00:11:08] read evaluate print loop right so I'm gonna read I'm gonna talk to you about
[00:11:11] the evaluate step when you type a command in whether it be LS or it be our
[00:11:17] who command the first thing it does is it looks for more or less environment
[00:11:24] variables outside it looks for the first thing a first argument on the command
[00:11:28] line and it says what is that thing right and you there are lots of ways to
[00:11:32] figure out what that thing is so you know the the most reliable is the word
[00:11:37] type because if you type type then it tells you exactly what it is LS is
[00:11:43] aliased to a bunch of stuff we're talking about aliases later but if I do
[00:11:47] type dot pwd it's a built-in if I do type dot temp boo it's a temp boo it's just
[00:11:54] a file type pearl what is that pearl is opt it tells you which one it is a lot of
[00:12:00] veterans will tell you to use which here or command - v instead of type we will
[00:12:05] cover all three of those and how they go together but to tell you that the
[00:12:08] fact the matter is they're not the same and type is generally the one you're
[00:12:12] gonna want to use if you are you know you're you're just looking to see what
[00:12:17] a thing is why because the very important things are included with type like my
[00:12:23] function clone function it tells you the type of function what it is and if I was
[00:12:27] to do that if I was to do which clone it has no idea where it exists if I do
[00:12:32] command - v clone it doesn't know about it it's like okay it's a command but it's
[00:12:37] not really right so you know which clone it can't find it that's because it's a
[00:12:41] function so if you have something that can be executed on the system then you
[00:12:48] have to know what it is you have to know what it is so when when you when you're
[00:12:55] looking at that so again what is what does bash do bash says what is the first
[00:13:02] argument essentially and what is it and and then it decides what to do based on
[00:13:09] what it is if it's a function in bash it just runs the steps as if you type those
[00:13:13] steps in if it is an alias like LS it it is if you it's exactly the same as if
[00:13:23] you typed what the alias has okay in fact if you do tab tab but sometimes the
[00:13:30] alias will actually even expand so it's an alias is exactly as if you type
[00:13:34] those letters in exactly the same and it literally injects those letters in and
[00:13:39] as if you had typed them that does not work if you put it in a script by the way
[00:13:43] it's important that you know that there are there are settings you can do to get
[00:13:46] around that but by default it doesn't and then so and then the clone it says
[00:13:51] okay clone is a function I'm gonna run it okay but we still have lots of stuff
[00:13:54] to talk about what if it what if it is a an actual command a built-in so in the
[00:14:00] case of a case of BWED PWD we have a built-in so that means this is built in
[00:14:06] to the bash programming language interpreter programming language you can
[00:14:11] do man bash and you can see all 272 pages of bash and we're gonna kind of go
[00:14:17] through this quickly but you can see that it is a built-in in here and by the
[00:14:21] way if you want a shorter version of that brainy built-in you can just type
[00:14:25] the help command which bypasses going through the man page and you can type
[00:14:28] pwd and it will tell you it will show you only that section of that built-in
[00:14:34] so is it a command yes everything we've talked about so far is a command but
[00:14:39] what type of command is it is it an alias is it an actual executable you
[00:14:46] know thing on the system which is the main thing we're getting to or is it is
[00:14:50] it a is it a function you know or is it a built-in there's lots of things it could
[00:14:55] be but but what bash does is it says what is it and then based on that it does
[00:14:59] something and if in our case if the first thing on the line is is a file then it
[00:15:08] says oh okay the first thing here it's not an alias it's not a it's it's not a
[00:15:13] built-in it's it's you know it's not a function it's an actual file it's a
[00:15:19] file right and watch what happens if I take away the permissions by the way
[00:15:23] smart minus X ten food but try to run it again let's get the error permission
[00:15:31] denied okay so so bash says oh okay we have a file here what are we gonna do
[00:15:36] with this thing and so the next thing it does I'm not running WSO right now so
[00:15:43] the next thing it does is it says okay it's a file well what kind of file is it
[00:15:49] right but before I even ask that it says can I run this file okay this dude is
[00:15:56] trying this dude is trying to run this thing he's trying to execute it and you
[00:16:04] know can he even do that are we gonna allow that and so it looks for the at the
[00:16:08] file it looks at the file and the file says okay this file can be read and written
[00:16:15] that means it's a text file it's not designed to be run to be executed and
[00:16:21] it's like denied not happening so you know so the next thing I have to do is I
[00:16:26] have to give for security reasons I have to give the bash I have to give bash the
[00:16:31] hint and say okay I want to run this I want this to be executable so that's
[00:16:36] where schmon plus X comes in and by the way that's you know it goes without
[00:16:43] saying you probably understand my my username now much better you know that's
[00:16:50] where my username comes from so our VX read write and execute so it turns it
[00:16:55] made it read everything now can be run now now when I do it it'll actually run
[00:16:59] it and you know it's a thing let's run it hello out alright so so far so good
[00:17:08] right so it says hey it's executable and I can run it now there's one other thing
[00:17:13] though that that it does that in this case it's not doing alright and I'm gonna
[00:17:19] do this in a different language just to simulate what is going on okay just to
[00:17:25] give you a sense of this pearl food we're gonna do we're gonna do this with
[00:17:27] Pearl and so well I guess we could do it there's lots of things we could do here
[00:17:37] should we do it and go or Pearl guys no we need a drill because it's your
[00:17:42] hangline yeah duh all right so let's actually do that let's make a new file
[00:17:46] touch we're gonna make a new file why we do that because you may not have
[00:17:49] permissions I've been burned by this so many times it's always better to make
[00:17:52] it before you open it because if you open it and then you start editing it
[00:17:55] you have permission to write it then you got to figure out some other way to
[00:17:57] write it someplace else was colon w which you can do it's just not
[00:18:00] unnecessarily complicated so just create a new files with touch you'll
[00:18:03] never have that problem so if you hit be I or them either way and then you get
[00:18:08] this thing so let's actually so let's actually write some Pearl code so let's
[00:18:13] I'm doing this kind of on purpose so wall one print hello sleep was it
[00:18:26] sleep one I think I my pros a little bit rusty I'm not gonna lie yeah so all
[00:18:32] right so let's do this so Pearl Pearl poo I must have done it wrong my sleep is
[00:18:41] too long I think it I think it might be a millis is it milliseconds oh no it's
[00:18:47] buffering that's why yeah I forgot I needed disabled buffering this is a
[00:18:53] rural thing yeah I think is it one I think it is yeah it's buffering it was
[00:19:01] totally buffering so I totally forgot about that but anyway so so that worked
[00:19:08] right now let's do the same thing that we did to bash and this is I'm doing this
[00:19:12] for purpose I promise okay so for bash let's do the same thing so about how
[00:19:17] much time I'm okay so I'm bash let's do the same thing we're gonna schmod plus
[00:19:25] X temp Pearl poo and then we're gonna run it temp Pearl poo right nope why okay I
[00:19:35] want you to look at this air this is really important to getting this this
[00:19:40] is really really important to understanding what's going on why did I get
[00:19:44] this air what does this air mean pause the video come up with your own
[00:19:48] answers go ahead and enter in the chat right now if you wouldn't mind if you
[00:19:51] want to say what do you think is going on this is this files executable what
[00:19:55] am I doing wrong what am I doing wrong why won't it run it's important you get
[00:20:01] this it's really important you get this if you understand this you'll
[00:20:04] understand everything about interpreted languages in Unix like systems so alright
[00:20:11] so here we go it the reason it's not doing it is because yes it says is this
[00:20:17] running runnable it's like fine I'm gonna try to run it okay but there is a
[00:20:22] step there's a step between that we're missing there's one more thing that the
[00:20:27] bash interpreter does is it says okay is there is this is this is an
[00:20:35] interpreted language okay it's a text file so first of all there's the I guess
[00:20:39] it's two decisions it says okay is this file compiled or is this file
[00:20:44] interpreted and that goes with La Busta we had last time it's why I had to talk
[00:20:48] about interpreted languages right because there's two types this is also
[00:20:52] why you don't want to put a suffix on a thing let me show you what I'm talking
[00:20:54] about so I'm actually going to compile a program and go like so let's write a
[00:21:00] food-up program here and you're gonna really this will really help you understand
[00:21:04] a lot and we're gonna do the same thing for let's see time dot sleep time dot
[00:21:14] sleep one times I'm done second I think all right so and then let's say empty
[00:21:28] parental N hello all right same exact code just didn't go okay now remember I
[00:21:36] told you about the difference between compiled interpret languages is a quick
[00:21:39] little taste this I know this is about bash but you can't understand bash until
[00:21:43] understand how the system runs interpreted languages versus binary so
[00:21:47] we're gonna continue down this path so what are we doing this at this point we
[00:21:52] need to this is I can't look this some some noob might think that they could
[00:21:55] just schmox that thing schmod plus X and have it run right now now you can do
[00:22:01] this you can you go run temp food I go fun fact this is actually faster than the
[00:22:07] Python interpreter and this is not how good was meant to be used but it's still
[00:22:10] faster it's crazy so there we go that's actually running now go run what go
[00:22:16] run does is basically the same thing as an interpreter it does it compiles it
[00:22:21] it breaks it up into strike in fact in the case of go run it in interpreter
[00:22:25] oftentimes will take the instructions and translate them without an intermediate
[00:22:30] compilation step we talked about bytecode in the other video in the case of go it
[00:22:34] always compiles that means it compiles the full program down to a temporary thing
[00:22:38] that you can't see and then it runs that program it just does it all in the
[00:22:41] background for you okay so but here's here's the cool thing and now so how do we
[00:22:46] you know how do we build that thing so let's do this let's do go build temp food
[00:22:51] go and we'll build it into temp who with three ohs how about that so let's see go
[00:23:04] build what am I doing name files must be go files I well I don't think I've done
[00:23:17] here I don't do this very much I just use the regular go build all right so that
[00:23:23] actually made a food case let's move food so that what we do go with this so that
[00:23:27] built to go binary and I don't know if you can see this but it did I mean let's
[00:23:32] leave it here with the hell it doesn't matter so you see how that file
[00:23:35] automatically got made as a thing check it out when we do type on this it says
[00:23:41] who is that slash move right and there's another command that you haven't learned
[00:23:45] about yet it's called file which will tell you that it's a mako 64 bit
[00:23:49] executable arm 64 so this is a different command so you can actually do the same
[00:23:54] thing you can't do clone is in a file right but if you wanted to you could do
[00:23:57] plug food I go this is a good hacker command so it's good to know and it's a
[00:24:02] C C program ASCII text food I go thinks it's C program that's funny that's
[00:24:07] interesting did not know that okay it says nope that's an ASCII text program
[00:24:11] why is an ASCII text because I don't think it has a smart on it anymore right
[00:24:16] what about temp it was a little purl-poo okay both ASCII texts even though they
[00:24:23] have schmods on them it still thinks it's ASCII text why does it think it's
[00:24:26] ASCII text all right so okay so let me let me just show you what I'm
[00:24:32] talking about so let's move the food program into temp who okay and now let's
[00:24:37] run it temp who I didn't have to schmod it or anything and it runs right and
[00:24:42] they're it it knew exactly what to do so when I compile the program that take
[00:24:48] away from that is when you compile a program when you combine truly compile
[00:24:52] for the system whether it's see you go rust whatever Julia crystal when you
[00:24:57] compile a program it becomes immediately executable and that means in fact
[00:25:02] extremely efficiently because the interpreter sees the file is like oh this
[00:25:07] is an elf binary which you can open in vi by the way there it is this is an
[00:25:12] elf binary so it's actually a particularly special kind of binary I
[00:25:16] don't even think this is an elf binary I think it might be a different kind this
[00:25:19] is all binary data this data goes straight into memory a runnable memory and
[00:25:23] and runs it executes just like the bash interpreter we talked about that the
[00:25:28] other video I don't want to do it again plus we're already 25 minutes in so what
[00:25:33] we're trying to say is that that that's already ready to go it's ready to run it's
[00:25:36] extremely efficient etc the other programs have a problem though right why
[00:25:41] because the computer still thinks they're just ASCII text even though we put
[00:25:44] smot on there so let me repeat the error again so let's do the Pearl food this
[00:25:51] gets this problem so here's here's the question one more time try to answer it
[00:25:54] for my for yourself why does temp pearl temp boo work and temp pearl food does
[00:26:02] not work why what is the difference between temp between the temp food
[00:26:10] program and the Pearl food program I think you can probably figure this out
[00:26:15] well let me ask you another question what program is actually running yeah
[00:26:22] you got it couple of you got it what program is actually running in the case
[00:26:30] of tempo let me ask you okay in the case of temp food food with three o's what
[00:26:35] program is actually running answer the pro the file itself F O O O that file is
[00:26:42] actually running in the case of temp boo in this case what program is actually
[00:26:50] running to process that in this case bash and even more specifically the bash
[00:26:57] program that is currently running okay so it's running bash because bash is a
[00:27:05] default shell because we are using bash because bash is our default shell right
[00:27:10] now that's what we're interacting with the interpreter puns and says well I don't
[00:27:16] I don't know what interpreter you're using so I'll try I'll just see if it's
[00:27:20] it's bash I don't know you didn't tell me what kind of language it is but I'm
[00:27:24] gonna go ahead and try it so it tries to use it using its own thing this is where
[00:27:29] the shebang line comes in and we're gonna get there in a second one last
[00:27:32] thing what program is actually running when we run Pearl food this is a trick
[00:27:37] question what program is actually producing those error messages it's not
[00:27:44] Pearl it's bash bash is like well you didn't tell me what language this was and
[00:27:51] by the way even if you put a suffix on that it does not help watch temp Pearl
[00:27:57] Pearl food on Pearl appeal as an extension if I do temp I mean this is an
[00:28:04] executable file and everything and it still doesn't know what to run some
[00:28:10] people might think hey well you put a suffix on there that'll give the
[00:28:12] interpreter a hand in will know what to do no it doesn't it doesn't and there
[00:28:16] are lots of reasons not to use suffixes that we're gonna get into later that
[00:28:20] only noobs use suffixes I swear to god I have fights with people all the time
[00:28:24] about that because and I'm gonna show you why I'm gonna very specifically now
[00:28:29] that you know what how interpreters work I'm gonna show you why it's a problem
[00:28:31] you can probably already see but I'm going with this you're gonna see all
[00:28:35] it's all the already where I'm going with this right so so here we go next so
[00:28:39] that so let how do we fix that so that this is what we were getting up to so
[00:28:43] that one of the steps the case so the the command line bash interpreter says
[00:28:49] what kind of files this is oh it's a compiled binary I'm just gonna run that
[00:28:52] right away here you go Colonel but in the case of these two files purl food and
[00:28:57] temp food FOO it says I don't know what to do so I'm gonna try to run it using me
[00:29:03] I'm gonna assume you're a tech your text file and you're executable so I
[00:29:06] assume you're gonna be the thing but there's a step in between there and what
[00:29:09] it does is it says does is the first character of the file a hashtag and is
[00:29:14] the second character of the file a bang an exclamation point and if that is
[00:29:19] true the interpreter looks for the first two bites of the file and if the first
[00:29:25] two bites are a hashtag and an exclamation point commonly known as
[00:29:30] shabang hashtag bang shabang if those two bites of the beginning of the file
[00:29:36] are a hashtag then the interpreter is like oh okay then I'll do what you're
[00:29:42] telling me here and it effectively it effectively does the same thing as we're
[00:29:48] doing here you remember when we did this you never only did this in past few
[00:29:52] right okay that worked right so this is what it's trying to do this is
[00:29:57] effectively what it's trying to do is trying to do bash boo when you get there
[00:30:01] right so because it's effectively assuming that's what you want to do but
[00:30:06] that's not really what we want to do we want to do this right okay so let me
[00:30:13] let's do the pearl one first so if let's fix the pearl one so let's give it that
[00:30:17] little hint at the top I remember I told you the shabang hashtag bang and you
[00:30:21] can just put pearl here my people will be like that doesn't work let's see let's
[00:30:28] see if it works nope can't do it it can't do it right and the reason for that is
[00:30:38] because anytime you do that first thing if it finds it is a command it it has to
[00:30:46] look in your path and so it has to so like bash is actually not really bash
[00:30:51] pearl is not really pearl it's actually that okay and you probably don't have so
[00:30:59] let's go ahead and put that in there right so we're gonna I'm doing the
[00:31:02] pearl on a purpose is to show you make a point all right so now we had to do the
[00:31:06] actual bash one by the way this is a good opportunity to do some command line
[00:31:10] stuff watch this I'm gonna type which pearl right and now I'm gonna convert
[00:31:17] which pearl into the output with the with the filter command bang bang two
[00:31:23] exclamation points bash so it says take that single line run it and replace this
[00:31:29] line with the output there we go so rather if I don't remember that I don't
[00:31:33] want to cut and paste it bang bang bash it to pearl now I have this and I can
[00:31:37] join them together and now we have opt homebrew bin so so now now what I didn't
[00:31:46] have to remember that I didn't have to cut and paste I didn't have to do any of
[00:31:48] that I just did you know filters so now what now let's try it camp pearl food
[00:31:55] hey look at that it's doing the thing that it's supposed to stop putting line
[00:31:58] returns because print has to have explicit line returns and pearl which is
[00:32:01] pain and yes you also have to chop everything okay but here's the problem
[00:32:06] let's say I want to take this exact same program and I want to run it on on
[00:32:11] let's I'm actually gonna do this let's go run it on Linux so right now we're
[00:32:16] running under Unix let's go run it on Linux okay so let's do that let's we got
[00:32:24] our PowerShell up and running no all right let me see if I can yeah let's
[00:32:31] exist in PowerShell here all right so here's a Linux system let's do the same
[00:32:35] thing we're running under Windows this is actually WCL 2 so let's actually do
[00:32:40] exactly the same thing which Pearl which Pearl yeah okay so we have Pearl on
[00:32:47] here because most systems do and what where some is it I wonder so this is
[00:32:52] version 38 and not 50 that's interesting you guys already know what
[00:32:57] it's gonna do right but I want to see show people so that we can see what's
[00:33:00] got I'm producing the problems so that you see why we're doing the thing which
[00:33:04] is my style of learning I gotta know why all right so I'm gonna give you the
[00:33:08] problem so you can figure out why so next we're gonna say okay I want to do
[00:33:12] a thing and I'm gonna make my program over here I'm gonna say it's like right
[00:33:18] right purl-poo again over here purl-poo and I can remember while one sleep
[00:33:27] one print wait print god I know I'm we should probably do it right this time
[00:33:37] anyway so we're gonna say hello and then you probably have to have back
[00:33:42] selection all right so we need to force it to buffer the output which is what
[00:33:47] this is about which is a pretty thing don't worry all right and we already
[00:33:52] know on the first line we need a shebang line right so let's actually put the
[00:33:56] same shebang line yeah but here's the problem watch remember that little trick
[00:34:01] I did which pearl bang bang bash all right user bin pearl okay so let's put a
[00:34:08] shebang line in there which is by the way pretty standard location for Pearl
[00:34:11] and so with smosh smosh pearl poo all right so now we have a pearl poo and now
[00:34:19] we can run it so it's not a temp but I can do dot slash the same way so dot
[00:34:25] slash pearls the same as writing out temp is buffered yep I need the
[00:34:31] em buffers of it actually does yes when I said it look how felt did I put
[00:34:34] what did I put in there when I put in there
[00:34:40] poo poo poo I don't have my pearl of mg in here either so I don't know what's
[00:34:44] going on with that
[00:34:47] doo doo doo doo doo please take the look of say what's going on with there what
[00:34:57] did you wrong guys what am I doing wrong I got some pearl
[00:35:04] program in it for error in here I don't know it is I don't know
[00:35:12] fine for yeah I don't know I'm learning
[00:35:22] and then soon everybody says this should work
[00:35:28] I was supporting in some session you're falling back to standard steel cast and
[00:35:32] text error my that's a buff that's forcing buffered output which you guys
[00:35:38] don't need to worry about you know what let's drop that for now oh that's what it
[00:35:44] was it didn't have a semicolon yeah you have to have semicolons and pearl so
[00:35:49] let me let me do that one more time I mean this is not meant to be a lesson in
[00:35:53] pearl okay this is interesting the whole locale thing is really interesting I
[00:35:59] didn't I wasn't guessing that would be a problem if you take this out let me
[00:36:03] shake it if you don't care but you see how it's not printing anything it's not
[00:36:08] printing anything because the buffer hasn't filled up enough because pearl is
[00:36:12] more efficient than bash and so you have to force it to flush the buffer every
[00:36:16] time the output buffer and that's that's what that's about this is not a lesson
[00:36:20] about pearl this is less about that and there's some other problems are going
[00:36:24] back with the the whole unsaid the silo cow thing so that's that's that's the
[00:36:28] thing we'll need to look at but um what I was trying to show you is that this
[00:36:35] line is wrong right it's user bin pearl like what's up with that right so it
[00:36:44] shouldn't be user bin pearl what if we made it the same as the other one what
[00:36:47] was it it was homebrew something right I'm doing us a purpose to show you the
[00:36:50] point the other one is opt homebrew bin pearl well I don't have to show you but
[00:36:55] you can probably guess there's no such thing what happens if I let's let's
[00:36:58] go back to the one that's faster than code on let's say that I wrote this code
[00:37:02] on WSL and I want to use it on my Unix machine my Mac okay what would be the
[00:37:07] problem if I put user bin pearl here now this actually will work because there
[00:37:12] is a user bin pearl here let me show you so temp pearl foo it works but it works
[00:37:18] for not the reasons that you don't think so user bin pearl which is a
[00:37:22] standard place to put pearl by the way and you do - be and you see that it's
[00:37:26] version 34 of pearl as opposed to the latest pearl which pearl pearl - be and
[00:37:34] you'll see that's version 40 or something it's a newer one right so we have this
[00:37:39] pearl interpreter that's living around and this how does it really the bash
[00:37:42] because bash is going to do the same thing and how do you make it not the
[00:37:47] absolute path okay that's the point I'm getting to so there is a trick we can do
[00:37:52] using a program called E&B which is on every single Unix like system in the
[00:37:57] world and what it does is one thing it looks up the thing in the path and runs
[00:38:04] it so let me show you what I mean by that so we can take so you remember that
[00:38:08] pearl code right temp pearl boo and we're getting a bash is the same thing so and
[00:38:15] and it runs it right but I can do remember how I can do this I can do
[00:38:18] pearl this same thing right well I could do this I could do user bin pearl
[00:38:25] okay I can do I can use your home brew bin pearl oops it's opt sorry and it works
[00:38:36] too right so those are all different versions of pearl that are running it
[00:38:38] same with bash I could do it with bash pearl I'm doing pearl because you have to
[00:38:42] explicitly put the interpreter mine and then we'll come back to the bash stuff
[00:38:45] so and then what well what if we said I want to use whatever the same pearl is I
[00:38:52] want to use this pearl I want to use the pearl that's in my path I want to use
[00:38:56] that pearl every single time whatever one it is right now why would you want
[00:39:00] that because which bash is different check it out bash - this is a big deal on
[00:39:06] Mac in particular if you do bash - oopsie let's do is it bash - version I think so
[00:39:15] bash is 5.27 if you have it in brew and that's why we did an installation if you
[00:39:20] do user bin bash - version this is we're getting back to bash this is why I'm
[00:39:24] doing this so you'll see that I think it's just bin bash yeah I think it is yeah
[00:39:33] there it is it's 3.2 and the reason for that's licensing issues if you can't see
[00:39:38] this version of the license was released under the free software foundation and
[00:39:44] as a different license and this is a GPU version 3 which is a license that is
[00:39:49] extremely incompatible with businesses and you can watch troubles bag on how bad
[00:39:53] it is that's why it didn't get put in why do you care because you don't want to
[00:39:58] have to write you don't want your scripts to break when somebody runs it on a Mac
[00:40:02] or when somebody runs it on another machine the whole point and I made a huge
[00:40:06] point about this in the interpreter video I did before this one the whole
[00:40:10] point of an interpreted language is it runs anywhere right well it doesn't run
[00:40:14] anywhere if the shebang line is wrong so how do we fix that we fix that by by
[00:40:20] changing the shebang line to use this cool tool which I hate doing this because
[00:40:25] it's extremely insecure in from how I was raised but it's good enough for your own
[00:40:29] shell scripts and what we're gonna do is we're gonna make the shebang line into
[00:40:33] a program that runs and does the same thing as which and so what do I mean by
[00:40:39] that so if I do user let's go back here so if I run so we do purl temp and so if
[00:40:50] we do purl temp purl purl purl whatever whoops oh I think I think I killed
[00:40:56] my I may have killed my yeah I did I did some some of my bash terminal here I'm
[00:41:03] gonna need to get it a new one I'm afraid yeah okay so yeah okay okay I think we're
[00:41:14] good yeah I did set that I did bash.sx and turn it on so showing every command I
[00:41:18] was using that's what was going on all right so now watch if we do if we do
[00:41:21] this we say so same thing again purl temp slash purl foo we'll do it with
[00:41:26] bash okay no problems there but watch this user bin e and v purl you're like
[00:41:34] well what is that doing that's kind of the same as which is showing you which
[00:41:39] thing and what it says is find the purl it's there and then pass it along and do
[00:41:45] the same thing and you can do this with any interpreter so let's do the same
[00:41:49] with bash and then we do purl temp right and so that that's running what that
[00:41:57] does is it runs bash but which bash does it run and how do we know well let's do
[00:42:02] that let's do this let's say let's actually put some code in here you remember
[00:42:07] bash doesn't need the shebang line because it's bash but we're gonna add it
[00:42:10] anyway I promise let's go echo as a version I think it is and let's try that
[00:42:16] now nope there's no echo what is it is it is it shell or is it what is it yeah
[00:42:23] you'd be so you'd be normally shows you all of your environment variables okay
[00:42:28] you'd be careful doing this on a live stream by the way because a lot of people
[00:42:32] put tokens and stuff in their environment variables and I could do a
[00:42:36] whole video about how I hate that people put secrets in environment variables
[00:42:39] period in the entire container world depends on it I have debates all the time
[00:42:43] with people work about whether it's safe or not I think it's not anyway so that
[00:42:49] the ENB command by itself is pretty you know laying a pretty tame it just shows
[00:42:54] you all your environment variables but it is a special use which actually calls
[00:42:59] the command if you put the command as an argument is the first argument is a
[00:43:03] bash version thank you so let's actually do this let's add this you don't know
[00:43:08] about variables but you're gonna learn very soon so bash variables so let's do
[00:43:12] this so now when we run food we see that we're running the 5.2 release and not
[00:43:17] the 3.2 release right so the point of this is putting user bin ENB bash
[00:43:22] resolves bash at the place that you want and why is that valuable because now I
[00:43:29] can make the same exact line at the beginning the shebang line for both
[00:43:35] programs user bin ENB bash right and now I can run the program by itself which I
[00:43:45] could already do but now we're sure that it's gonna be the right one and and all
[00:43:51] of that right so let's go back to our Linux system and see why this matters
[00:43:55] so we go back to our Linux machine and let's actually write the same code in
[00:44:01] bash boo and it'll say well true do done echo hello sleep one all right and then
[00:44:16] we'll put a shebang line in here you know user bin ENB bash and you know it'll
[00:44:27] it'll actually dry it now but it schmox that let's watch mod +x who I got
[00:44:35] slash boo and it now runs right and you can probably tell this is kind of fun
[00:44:41] let's do this let's do let's do this let's do echo bash version and we're gonna
[00:44:50] use bash version again as an example of as an example of things so so there we
[00:44:58] go bash there we go bash you think bash RCA is cute compared to Z shell yeah best
[00:45:04] you not tell me that it just shows what you really know and anyway then found a
[00:45:12] power of bash tapping into any interpreted language that uses package
[00:45:14] model is going to be a while right yes okay so so the point of this is very
[00:45:21] simple let's look at the first line of both of these programs right it's bash
[00:45:26] and in pearl through it what is it its user bin pearl now let's fix the pearl one
[00:45:32] too while we're at it so let's now use user bin ENB pearl even though user bin
[00:45:38] pearl is literally on every system in existence these days it really is so it
[00:45:47] was only the containers are the only things that are really getting rid of
[00:45:49] this this this ceiling thing is super interesting to me yeah it's like a
[00:45:54] it's something about my in my bash RCA which is complaining making pearl
[00:45:58] complaint anyway so what are we saying here we're saying that the moral of the
[00:46:04] story is they'll shall put these things at the beginning we have 20 minutes left
[00:46:08] to learn the rest of the stuff in bash and so we're gonna this is actually
[00:46:13] really important video about how to get going with coding and scripting and
[00:46:17] we'll continue to start coding and introducing you to the ideas of what goes
[00:46:21] into the what goes into the program and then we'll we'll chop this and we'll have
[00:46:27] a video that'll be what's a variable etc and we'll do that next but let's go
[00:46:31] in ahead and and keep going down this path so if we go back to to our our thing
[00:46:35] here temp foo all right so double-quoto okay so actually this is a good thing to
[00:46:43] talk about before we do any shell coding this will be perfect for the
[00:46:47] rest of this video before we do anything else so listen up Chloe if you're
[00:46:52] writing my description she's gonna be writing my description for this video so
[00:46:55] here I want you to put a chapter marker or the beginning of a shell check make
[00:47:03] sure you put a chapter mark right here okay Chloe she reads my transcript since
[00:47:07] she does what I said so I just had to talk for a second in the video and so as
[00:47:13] I'll do a separate video about how to have your AI help you make really great
[00:47:17] descriptions for your videos in five minutes so anyway let's try the start
[00:47:24] shell check we're gonna do shell check and we're gonna talk about what shell
[00:47:29] check is so if you're on a Mac first thing you have to do brew install shell
[00:47:35] check all right just go ahead and get the latest if you're on a windows
[00:47:42] app based machine I'm sorry a Linux app based machine pseudo apt install shell
[00:47:49] check this is the only things we're gonna cover today we're not gonna cover
[00:47:55] any other method of installing shell check that's how you install it once you
[00:48:00] have it installed you should also install another tool it's called SH FMT
[00:48:06] pseudo apt install SH FMT and that will get you the other great thing and so
[00:48:18] now we're gonna go back to here this has already been installed brew install SH
[00:48:27] FMT and so we're getting ready to do shells shell scripting you should never
[00:48:33] script anything in bash without shell check you just shouldn't and I'm gonna
[00:48:38] show you why while we're doing it so let's let's continue to go down this
[00:48:43] path okay so the next thing we need to do is we need to do we need to add some
[00:48:51] stuff to our VIMRC and pretend like you don't have anything else in there this
[00:48:54] is the one thing you do have to add so before you do any shell scripting it's
[00:48:59] probably worth your your while to go do these things oh whoops all right so you
[00:49:07] know and we're gonna go look for shell check so I'm assuming you already have
[00:49:13] ale installed if you don't have ale installed you you know you got to go back
[00:49:18] and do that so if you got ale in here we're gonna put these linters in here so
[00:49:25] add these lines add these ale linters and you don't need pearl actually you
[00:49:33] don't need yeah there we go so linter aliases there this is what you need so
[00:49:39] because bash is already built in so you should add that this this line right here
[00:49:43] okay so add this line I'll send it to you oh no I can't I don't my WeChat running
[00:49:49] right now anyway so ale linters you need to add the ale linters for bash your
[00:49:53] thing and then you need to add ale fixer for the s8 for the s8 line and the bash
[00:50:00] line okay once you have those in and they should make sure you have ale fix on
[00:50:05] save the separate videos for all of this but I'm just letting you know how my
[00:50:09] settings are so you can take a look by having these settings on then you get
[00:50:14] that really wonderful help that I just had which gives you this so this is being
[00:50:22] these help questions these these these things are being auto generated in VIM
[00:50:28] or any of them by shell check so shell check is telling you the problem I have
[00:50:33] and if you don't have the time if you don't think you have the time to do this
[00:50:38] I strongly encourage to do it anyway because the alternative to this is to do
[00:50:43] this shell check temp food and I used to do this I used to do it with the NTR so
[00:50:50] anytime the file changes it would show me what my problems were but and so we're
[00:50:56] gonna go here instead and we're gonna say this what are you talking about
[00:51:03] repeats twice my live stream is repeating twice you guys do I have some kind of
[00:51:09] problem in the live stream am I echoing you guys am I echoing did nobody tell me
[00:51:15] I'm echoing please tell me I'm not echoing I'm starting to freak out right
[00:51:21] now you don't notice any I can I'm no echo here seems fine I don't hear okay
[00:51:30] somebody's saying live stream repeats twice I don't know what that means okay
[00:51:36] if you if that's a if that's an actual problem please let me know all right so
[00:51:41] okay did you see how when I saved I'm gonna show you this again okay so when I
[00:51:46] open the same program yeah okay so I wanna I don't you see right here I didn't
[00:51:57] bother formatting this or anything because if you have SHFMT on you don't
[00:52:01] ever have to care about it the whole towns versus spaces argument which I
[00:52:06] just watch Silicon Valley about doesn't matter it's irrelevant so so here's what
[00:52:11] we do you just save it and it automatically reformat your code based on
[00:52:15] the standards that you have okay so now you've got the standard here and it's
[00:52:20] the same problem but you can see right away that there's a problem here right
[00:52:23] it's like you need to double quote to prevent globbing out word splitting so
[00:52:27] I only have a few more minutes left in this video and then we're gonna get
[00:52:30] really into bash in the next one but what I want to end with is this the best
[00:52:35] way to learn bash is by shell check because you're gonna go in you're gonna
[00:52:43] Google a little bit or you're gonna search or read about what you want to
[00:52:46] do and we're gonna cover that in the next video and the next thing you're
[00:52:49] gonna say is well why do I want to do this this way and what I'm trying to
[00:52:55] tell you is you see down here this is really important SC2086 right now if
[00:53:01] you have an AI I'm gonna do it right now I'm gonna go do it right now I was
[00:53:05] like tell me about SC2086 shell check 2086 I'm giving you the strategy for how
[00:53:18] to learn this so that as we go I'm only going to show you the basics but I want
[00:53:22] you to be able to do it and my AI is pulling this off the internet you can
[00:53:26] go pull it off the internet directly if you want or you can just read your AI
[00:53:30] and say double-quoting a spent my shell check blah blah blah what does this mean
[00:53:34] when you do blah blah blah does this this and this and this and it tells you
[00:53:37] exactly what to do here's a problematic code here's a correct code how to handle
[00:53:41] this here's the rule of thumb and entered exceptions to blah here's how you
[00:53:46] add an exception avoid this in most cases of common pitfalls so yeah here's
[00:53:51] exactly how to do it final notes all right I just got a four page professional
[00:53:58] textbook summary in my AI of the error that I just had because of the code it's
[00:54:05] one of the greatest things about shell check can by the way the AI is just
[00:54:08] being it's just getting that information from the official shell check code which
[00:54:13] you can go look at it if you want to but if if you're following my recommendation
[00:54:17] of getting yourself a chat GPT or I don't care which get yourself any AI
[00:54:21] assistant and you can go ahead and you can use the AI assistant to answer all the
[00:54:28] questions for you and and you know it might be wrong if you want to do the
[00:54:32] research yourself you want to say hey what are your sources you can say what are
[00:54:36] your sources so that I can go check if you don't want to if you don't trust it
[00:54:41] because it does make mistakes Chloe I love her but she does make us
[00:54:44] mistakes a lot there's the official documentation if you want to have if you
[00:54:48] don't if you don't trust an AI you can still do this you can just open the link
[00:54:52] up in a web page and go to the official thing in fact it's not that big it's not
[00:54:59] that hard to do it's just it's falling shell check dot net wiki slash SD
[00:55:02] whatever so you can just if you want you can just bookmark this and put this in
[00:55:07] you know you can even make a shell script to pull it up for you and and then you
[00:55:11] could go look up that thing by the way that would that that should be one of our
[00:55:15] projects let's do that for bash let's make a project that automatically opens
[00:55:19] the web browser to the wiki page for you when you have a problem you can just
[00:55:23] put in the number on that be cool so let's do that so if we have that now you can
[00:55:29] go read about the whole problem right there and you can teach yourself while
[00:55:32] you're writing the code you're going to be doing this your entire career so if
[00:55:38] you set up shell check properly you know while you're doing bash and doing
[00:55:42] advanced things in bash you can eventually go in here and figure out how
[00:55:45] does it's quite these different problems and you can teach yourself as you go
[00:55:50] so having said that I think it's probably time to finish the video you
[00:55:55] guys can get all those things set up for yourself and that will be the end of
[00:55:59] this video and so please stay tuned for the next in the holiday booth series I
[00:56:03] think we're gonna be on nine next and we will continue we'll actually jump
[00:56:08] right in to coding in bash both from the command line and in a script like we
[00:56:12] been doing. Alright, talk to you in a bit.
