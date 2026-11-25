# 🎄🐹 Coding from the Get Go - #3: Organizing Your Go Repo

Explains how to organize a Go repository, including packages, modules, the cmd and pkg directory conventions, go.mod and go.sum, and building and installing commands. Also covers using type instead of which to troubleshoot shell command hashing, writing example-based tests that double as documentation, and reasons for choosing AsciiDoc over Markdown for notes and books.

Get organized. Where does everything Go? Packages, modules, directories, oh my.

Learn practical computer science and programming with Go as a first language.

Chapters:
0:00 Why organize your Go repo now
1:26 Packages, directories, and Go files
4:49 Commands, libraries, cmd and pkg
6:55 Modules and creating the directory layout
9:09 go.sum, go.mod, and go mod tidy
13:23 Building and naming binaries with go build
16:58 Installing commands with go install
22:22 Shell hashing: use type, not which
26:42 Why go install paths need ./
29:29 You may not need a Makefile
33:16 Introducing testing and code comments
37:16 Writing an example-based test
42:09 Examples as runnable documentation
47:50 Why switch from Markdown to AsciiDoc
53:31 AsciiDoc callouts, includes, and wrap-up

`#golang #go #coding #programming #unittesting #asciidoc #terminal #education #beginner`

## Category

Education

## Transcription

[00:00:00] So, all right, we're gonna do a quick little video.
[00:00:03] Hopefully, it'll be around 40 minutes
[00:00:06] about how to organize your Go repo.
[00:00:10] So we already did, so the last two videos,
[00:00:13] we started coding and Go,
[00:00:16] and we did lots of different things.
[00:00:19] We had VS Code running, right?
[00:00:22] And it was really fun, so that's covered.
[00:00:26] But now, how do you organize your files, right?
[00:00:29] And I wanted to avoid jumping into this right away,
[00:00:34] because we wanted to get going with the code.
[00:00:37] But now that it comes time to kind of reorganize,
[00:00:40] particularly since you're trying to organize your notes
[00:00:44] along with your code,
[00:00:45] it's a good time to start talking about that.
[00:00:48] And you may have noticed a few changes already,
[00:00:50] so I have changed my README file from .md to .adoc.
[00:00:56] We will talk about that today,
[00:00:57] ASCII doc versus Markdown,
[00:00:59] which one you should use and why.
[00:01:01] I'm not gonna show you how,
[00:01:04] just maybe what you wanna do about that.
[00:01:06] We're gonna talk about the go.mod file.
[00:01:08] We're gonna talk about the go.sum file.
[00:01:10] And we're gonna talk about main.go.
[00:01:12] We're gonna talk about what you would name your files.
[00:01:15] We're gonna talk about how the files are interacting
[00:01:17] with other files and how you should organize your directory,
[00:01:21] particularly when you wanna put other things in there.
[00:01:25] All right, so let's get into it.
[00:01:26] So the first thing that you need to know
[00:01:28] is that any package, a package is,
[00:01:33] so this goes in your notes,
[00:01:34] a package is a directory that has go files in it.
[00:01:41] The end, the end, right?
[00:01:43] So if we were to look at where this is,
[00:01:45] this actually main.go is currently in a package
[00:01:50] called coding from the get-go.
[00:01:53] That is the name of the package.
[00:01:55] So if you were to reference anything in here,
[00:01:59] you would have to use that
[00:02:01] and then you would put a dot after that.
[00:02:02] So we are not, it's tough because I wanna teach you
[00:02:08] like for loop system when we get into
[00:02:10] how to organize your modules.
[00:02:12] But this, so just know that a package is everything
[00:02:17] in a current directory, folder, whatever you wanna call it.
[00:02:21] And that's it, okay?
[00:02:26] So everything that's in a folder is a package.
[00:02:31] And the name of the package is the directory name.
[00:02:35] All right, so the second thing to take away from this
[00:02:37] is, I think we could probably put this in our notes here.
[00:02:40] So I have my notes here, get organized.
[00:02:44] So let's just make a thing.
[00:02:46] So we could say a package is anything, is the current
[00:02:53] directory name, all right?
[00:02:56] The second thing is is that all go files,
[00:02:59] all go.go files in directory
[00:03:08] are as if they were all in a single file.
[00:03:14] So that means that if you split your program
[00:03:17] over several files, they're all the same
[00:03:20] as if you had a really big, big file.
[00:03:22] The names don't matter.
[00:03:24] They just have to end with dot go.
[00:03:26] There's one exception to that,
[00:03:27] which we're gonna get into much, much later,
[00:03:30] but that is unit test files.
[00:03:36] Unit test files have underscore test.go.
[00:03:42] And, but more on that later, okay?
[00:03:47] There are, we're also gonna talk,
[00:03:49] there's a couple other special things you can do.
[00:03:51] Like test data will be ignored.
[00:03:55] We'll get into the modules later,
[00:03:57] but for right now, you just wanna know,
[00:03:59] how do I organize my code?
[00:04:00] So by convention, you guys know what a convention is?
[00:04:06] A convention is things that something else people do
[00:04:08] that's not required, but it's generally a good idea
[00:04:11] 'cause everybody does it.
[00:04:13] By convention, main.go contains the entry point
[00:04:19] of the code.
[00:04:21] It contains funk main.
[00:04:26] Okay, so by convention, main.go contains funk main.
[00:04:29] And of course, if you have a funk main,
[00:04:33] that means that the package is also name.
[00:04:37] Also, you know, package main.
[00:04:40] We already talked about that last time.
[00:04:42] So that means that when you look at this,
[00:04:45] you're like, okay, this is a command, right?
[00:04:49] And so that's another takeaway.
[00:04:52] All packages are either commands or libraries, okay?
[00:05:01] So this is a very, I'm picking these words carefully.
[00:05:06] So commands or libraries,
[00:05:08] I guess we could underscore these instead.
[00:05:11] This is gonna make a metallic, all right?
[00:05:13] So you either, your package is either a command or library, okay?
[00:05:20] We haven't gotten into what that means.
[00:05:24] Just know that a command is something
[00:05:26] that turns into an executable and a library
[00:05:29] is something that turns into a binary library
[00:05:33] that can be imported by,
[00:05:35] and statically linked by another program.
[00:05:38] So that's the difference between those two.
[00:05:41] We'll get into how to make your own libraries later,
[00:05:43] but just so you know that that's a thing.
[00:05:45] But that is fundamental
[00:05:46] because that is going to get us
[00:05:48] into one of the biggest conventions.
[00:05:52] So, and that is put a general package code into PKG.
[00:06:02] There's nothing that says you have to do this,
[00:06:06] maybe you put it on your hoodie.
[00:06:08] Yeah, I don't know why I would do that, but.
[00:06:11] So anyway, put general package code into PKG.
[00:06:16] So, and say, put packages, put, let's see,
[00:06:24] put command packages into CMD, all right?
[00:06:28] So, library packages into PKG
[00:06:35] and put command packages into CMD.
[00:06:37] Again, this is not required.
[00:06:39] This is just a suggestion by that people,
[00:06:44] you know, just paraphrasing stuff
[00:06:45] that you would read elsewhere.
[00:06:48] So, let's actually do that, all right?
[00:06:50] So, we've got to make, now let's see,
[00:06:55] I should probably put this, keep go.doc at the root.
[00:07:02] Okay, which identifies the top of the module.
[00:07:13] Okay, so a module, what is a module?
[00:07:17] All right, so a module is a collection
[00:07:24] of is, contains one or more packages.
[00:07:32] All right, you can have a single package module
[00:07:36] and there are a lot of them that are that.
[00:07:38] So, I could say you had a command, right?
[00:07:40] That is a thing, but usually they have more than that, okay?
[00:07:44] So, here's a kind of a question.
[00:07:46] What do you think, you know?
[00:07:51] So, let's make these directories.
[00:07:53] So, make directory PKG, CMD, and now what goes where?
[00:07:59] You can probably guess, right?
[00:08:01] Well, let's put main into CMD.
[00:08:04] All right, so now main is in CMD
[00:08:06] and we have the go.somepile, which we'll talk about
[00:08:11] in a second and we have the PKG pile.
[00:08:13] Now, we don't have anything in PKG right now
[00:08:16] and we probably won't for a while, but we can leave it there.
[00:08:19] And something to know about Git
[00:08:21] is that if you don't have a file in there,
[00:08:24] that directory will not appear.
[00:08:26] So, I'm actually gonna do a little trick here.
[00:08:29] I'm gonna do PKG.keep.
[00:08:32] It's a trick that people use to keep the directory there,
[00:08:35] even though there's nothing in it,
[00:08:38] because that will show up in GitHub.
[00:08:39] So, if you're looking through GitHub
[00:08:40] and you wanna know where things are,
[00:08:42] or going to be, you can go in there and look at that.
[00:08:45] So, let's just review all the changes we've made so far.
[00:08:49] In our go.mod file, it stays the same.
[00:08:52] It's the name of the GitHub repo.
[00:08:53] This is the module name.
[00:08:55] And the module name includes the full path from the internet
[00:08:58] about where you get the thing.
[00:09:01] I told you earlier that you can actually change it
[00:09:03] to other things, and that's definitely true,
[00:09:05] but that's good for now.
[00:09:09] We actually have this go.somefile, which is new,
[00:09:11] which I'll talk about right now.
[00:09:13] This go.somefile contains the check sums,
[00:09:17] which guarantee that the package
[00:09:20] that you have a dependency on is loaded.
[00:09:22] It tells you which one it is,
[00:09:23] and then it will always make sure
[00:09:26] that you get the right one.
[00:09:27] This prevents the really nefarious worms and things
[00:09:30] from taking out NPM before from being bad.
[00:09:35] So, anytime you have a dependency on another tool,
[00:09:38] you want that.
[00:09:40] Anytime you think you might not have stuff there,
[00:09:42] we already covered this, but go.mod tidy,
[00:09:44] that will pull out to your dependencies
[00:09:46] and your go.somefile will change.
[00:09:48] So, you see, it's now empty,
[00:09:51] and that's because there's no longer a dependency.
[00:09:53] Those dependencies kinda crept in
[00:09:55] while we were working on other things.
[00:09:59] You'll notice that when I did that go.mod tidy,
[00:10:02] it also got rid of the extra lines in my go.mod file.
[00:10:06] So, let's put that in the list.
[00:10:09] Regularly use go.mod tidy to remove unused depths,
[00:10:17] module dependencies.
[00:10:18] I find this annoying because go is so good
[00:10:24] that whole thing about telling you
[00:10:27] when something's not being used.
[00:10:30] And it won't even compile if you're importing
[00:10:32] a package that's not being used.
[00:10:34] And I find that annoying because they don't do that
[00:10:39] with modules.
[00:10:40] They should automatically go mod tidy, but they don't.
[00:10:44] And the reason for that is because of the same reason
[00:10:47] that it gets annoying when they remove an import line,
[00:10:49] even though you're gonna add it right back immediately
[00:10:51] 'cause you just commented it out.
[00:10:53] They left it out.
[00:10:56] They don't have it automatically removed
[00:10:58] because those check some lines could be very, very important
[00:11:02] because they indicate what exact version of a thing
[00:11:07] that you have a dependency on.
[00:11:09] And that's for security reasons, that's very important.
[00:11:12] And unless you explicitly say I wanna use
[00:11:14] a different version, assuming you've checked
[00:11:17] to make it sure it's safe and everything,
[00:11:19] then they can't just get rid of it
[00:11:20] because that would force you to automatically operate it
[00:11:22] to the latest one.
[00:11:23] You wouldn't be able to remember what the last one was.
[00:11:25] Which, by the way, is the reason that you should include,
[00:11:30] keep go.mod and go.some in your GitHub repos.
[00:11:38] I should say commit.
[00:11:41] This is actually really important.
[00:11:43] If you don't do that, you will get problems.
[00:11:48] You will, strictly speaking, if your go.mod is there
[00:11:52] to go.some's not, it'll create the go.some file.
[00:11:55] From the go.mod file, as long as the go.mod file
[00:11:57] has the right versions listed in it,
[00:12:00] but go.mod tidy removes both of those ones
[00:12:03] and those are no longer needed.
[00:12:06] We're gonna keep coming back to this module thing
[00:12:08] as we learn more about go,
[00:12:10] but it's probably good to give you this upfront organization
[00:12:13] about the repo structure.
[00:12:16] Which, so far, is pretty easy to understand, right?
[00:12:18] It's, I think it's easier than Python to understand.
[00:12:21] Python structures are, you know,
[00:12:23] the implied underscore, underscore in it
[00:12:26] and all this different thing.
[00:12:27] No, just everything in the directory
[00:12:30] belongs to the same package.
[00:12:32] A module contains multiple packages
[00:12:35] and the go.mod file indicates that we have a package.
[00:12:38] In fact, I can remove the go.some file.
[00:12:40] In this case, since we don't really need one,
[00:12:42] we have any dependencies.
[00:12:43] If you wanna simplify things, 'cause it was empty.
[00:12:45] You can always delete the go.some file
[00:12:47] and go get it to go get the latest,
[00:12:49] but if you do that, you're forcing yourself
[00:12:51] to get the latest versions of everything.
[00:12:53] And that, you might not wanna do.
[00:12:55] So that's what we know about that.
[00:12:59] Okay, and then we have a package directory
[00:13:01] that doesn't have any packages in it.
[00:13:03] That's where our libraries are gonna go,
[00:13:05] which we're gonna make either in the next lesson
[00:13:08] or the lesson after that.
[00:13:09] We're gonna create a colors library.
[00:13:12] We're gonna make it so that we can use terminal color
[00:13:16] and we're gonna put all those colors
[00:13:17] in a package that you can reuse.
[00:13:19] So that is coming.
[00:13:22] But we've already got our first command,
[00:13:23] but there's a problem.
[00:13:24] Some of you may have already caught this.
[00:13:26] When I go into the CMD directory,
[00:13:30] so far the only thing you know officially is go run,
[00:13:33] 'cause that's the only thing we've covered, is go run.
[00:13:35] This is how you run the program,
[00:13:37] that one we left off on.
[00:13:39] But obviously it's like, you know,
[00:13:42] I probably want to have that to do something more there.
[00:13:45] So let's add some more stuff to our notes.
[00:13:50] Okay, so make sure
[00:13:55] CMD packages have good names.
[00:14:00] All right, so can you see a problem here, guys?
[00:14:05] Right, so can you see a problem?
[00:14:06] What's the name of my repo there, right?
[00:14:11] All right, so let's learn the first command
[00:14:13] that you don't know besides go run.
[00:14:15] And that's like builds.
[00:14:17] We're gonna do build binaries
[00:14:22] in same directory with go build.
[00:14:28] All right, so there's lots of options for go build.
[00:14:31] You can go look them up, go build -h if you want,
[00:14:35] or go help build.
[00:14:38] We're not gonna go into all the options,
[00:14:39] just use the ones that we need right now.
[00:14:41] And make sure you know how to use a pager for this.
[00:14:43] This is one of my biggest pet peeves with go,
[00:14:45] is they're anti-text,
[00:14:47] and Rob Pike calls his color juvenile.
[00:14:51] So this is impossible to read.
[00:14:53] I really don't like it, but whatever.
[00:14:58] There are other ways to read this, by the way,
[00:14:59] you can go online and read it.
[00:15:01] And so anyway, so this tells you everything you can do.
[00:15:05] The only thing you need to know right now is this.
[00:15:09] Go build.
[00:15:10] And when you do go build, it does something, but what?
[00:15:13] So you LS, and we see we have a binary, brand new binary here.
[00:15:18] It'll tell you what type of binary it is.
[00:15:20] If you were to open it up,
[00:15:21] well, you'll see that it's actually a compiled binary,
[00:15:23] just like C.
[00:15:24] It's literally the same exact thing you get
[00:15:26] from compiling in C,
[00:15:28] or Rust, or any compiled language for that matter.
[00:15:31] I mean, they're all compiled, but you know what I mean?
[00:15:34] Explicitly compiled.
[00:15:36] Thank you for the full plex.
[00:15:38] So if we look at it now, we see that it's a program,
[00:15:41] and we have to, we can run the program without slash CMD.
[00:15:44] We can't just run CMD because it's not in our path,
[00:15:47] which we've talked about in other videos.
[00:15:49] You know, my path is this.
[00:15:51] They don't have, there's nothing, you know,
[00:15:53] there's nothing in this particular path.
[00:15:56] And you know, that's all well and good.
[00:15:59] We can actually update our path to do that.
[00:16:01] But the problem is, we don't want it to be named CMD.
[00:16:04] Now, there is another thing you could do,
[00:16:08] which I will tell you, but you don't do it,
[00:16:10] but I'll tell you about it.
[00:16:12] So you could do this.
[00:16:16] Build binary with specific name.
[00:16:23] So you could use one of the dash O,
[00:16:26] which is just the same as C, by the way.
[00:16:28] So you could do dash O, my CMD,
[00:16:33] or whatever, hello, how about that?
[00:16:37] Right, so we could do go build, build dash O, hello.
[00:16:42] This is very common.
[00:16:43] See people know this 'cause when they're using GCC
[00:16:45] or whatever, they know about dash O
[00:16:47] that makes a binary name, so that makes them very happy.
[00:16:50] 'Cause that's a cozy way to, they're used to that from C.
[00:16:53] But now we have a hello program,
[00:16:55] and you can definitely do that, right?
[00:16:57] You can do that.
[00:16:58] But if you would rather move the program into your,
[00:17:01] now, so in order to do hello like this,
[00:17:07] so we do which hello, it tells you where it is,
[00:17:11] lab sample is finding it because we added to the path.
[00:17:13] So in order to put one of these programs in your path,
[00:17:16] and you decide if you wanna do that,
[00:17:17] but you might want to, if you wanna put the program
[00:17:20] in your path, there's two ways to do that.
[00:17:22] One of them is to add the current directory
[00:17:26] where you are into your path
[00:17:29] so that it's always in your path
[00:17:30] every time you work on this project.
[00:17:32] Another way to do this, though,
[00:17:33] is to use the go install command.
[00:17:36] And what the go install command does
[00:17:39] is, let's see, install into go bin in path.
[00:17:56] With go install.
[00:17:59] And I think you can actually do a dash show with install,
[00:18:02] but I've never done it.
[00:18:04] And thanks, this video will be here for you in a bit.
[00:18:08] We're about done with it here, so.
[00:18:10] So to do the install part, we do, we do what?
[00:18:14] We do go install.
[00:18:16] Now, I don't wanna do go install, why?
[00:18:20] We didn't fix the other problem.
[00:18:23] Why don't I do go install?
[00:18:26] Can I, I'm gonna try something.
[00:18:27] I've never done this in my life.
[00:18:28] I don't know if this is even gonna work.
[00:18:33] Nope, doesn't work.
[00:18:34] Okay, so dash O only works for build
[00:18:38] and does not work for setting the name
[00:18:41] in the place you wanna put it.
[00:18:42] So what the go install program does
[00:18:44] is it takes where it is, compiles it, does a build
[00:18:48] and then takes a binary and puts it into your go bin.
[00:18:51] And you can get your go bin with go ENV.
[00:18:55] Go bin, I think that will do it.
[00:18:57] Yeah, there we go.
[00:18:59] So this gives you your go bin
[00:19:01] and you can set that to wherever you want.
[00:19:04] That's out of the scope of this video
[00:19:05] to talk about how to organize your home directory
[00:19:08] and stuff.
[00:19:09] I do talk about that in terminal velocity,
[00:19:11] so please check that out.
[00:19:13] And I like to put everything in dot local,
[00:19:17] so I put it in dot local bin and in that directory,
[00:19:20] you can actually see a bunch of stuff.
[00:19:24] So go ENV, go bin.
[00:19:29] So this is all the stuff that's inside of there.
[00:19:32] And you can see there's a bunch of stuff
[00:19:33] that I built in here.
[00:19:35] If I were to do a go install,
[00:19:37] it would put CMD in here, but we don't want that, right?
[00:19:41] And you can see the hello from the last time we did this.
[00:19:44] So I'm missing some things.
[00:19:46] Let's get rid of this hello program
[00:19:47] and let's get rid of this CMD program.
[00:19:50] And we have a main.go.
[00:19:51] So let's go ahead and see, the C is great, yes.
[00:20:01] The C is great, but yeah, go is a great,
[00:20:03] better first step in my opinion.
[00:20:05] So we're gonna make a directory here,
[00:20:08] you know, a package, a command package,
[00:20:11] specifically called hello, all right?
[00:20:14] And now we move our main into hello.
[00:20:18] And now, when we go into hello,
[00:20:21] we can, you know, if we do a go build,
[00:20:25] obviously it's gonna make it the right name.
[00:20:27] But better than that, we can actually do,
[00:20:31] we can do go install.
[00:20:34] And now it will automatically play like,
[00:20:36] well, what did it even do, right?
[00:20:38] Well, now when we do which hello,
[00:20:40] you'll see that hello has been added to local bin.
[00:20:46] So now I can actually add it and we can run hello
[00:20:50] and it doesn't need a dot slash in front of it.
[00:20:52] Actually, that's interesting, that that's interesting.
[00:20:57] It's still using the other one.
[00:21:04] That's very interesting.
[00:21:10] It should have, it should have run this one.
[00:21:14] What?
[00:21:16] What's going on, it's gotta be my path.
[00:21:27] Did it not override it?
[00:21:41] What am I forgetting, guys?
[00:21:45] This is interesting.
[00:21:46] I think it might be hashed incorrectly.
[00:21:50] Yeah.
[00:21:53] This is, this is why I do it live.
[00:21:55] This is fun stuff for you to find out on your own bin.
[00:22:01] Hello.
[00:22:04] No, okay, that's weird.
[00:22:11] That is, that is really weird.
[00:22:16] That's gotta be hash issue.
[00:22:22] Oh, okay, this, I'm glad this happened, okay?
[00:22:26] This is a perfect time to tell you
[00:22:31] why the which command can fail you.
[00:22:35] So the which two man only tells you which thing
[00:22:38] resolves in the order, but it doesn't tell you
[00:22:40] what hello is actually doing, for that you need type.
[00:22:46] Let's see that, you know how many times
[00:22:50] I've been burned by that and it just got burned by it again.
[00:22:55] When you want to know what is running
[00:22:57] when you enter a command use type, that's the takeaway.
[00:23:02] Okay, this is a kind of command.
[00:23:04] If I hadn't showed you that you would never know.
[00:23:06] You'd be like, what the hell?
[00:23:07] That's in the wrong path.
[00:23:08] It's the right program and everything.
[00:23:10] This is because it hasn't been hashed and you know what?
[00:23:13] This is not really a go thing,
[00:23:15] but I'm definitely putting it in the book
[00:23:17] because let me go back another one or two, yeah.
[00:23:26] All right, so sometimes let's see, use type hello to see what is being run.
[00:23:45] And use hash-r to reset to latest install.
[00:23:58] This is a thing that, you know, a few of you are going to run into.
[00:24:02] So by doing type hello there, we saw that it's not running that
[00:24:07] and I have to tell it, yeah.
[00:24:10] So hash-r rehashes it.
[00:24:15] The reason this happens is because some shells, you have to usually set it,
[00:24:18] but some shells don't have to be fast.
[00:24:20] They don't have to go search the file system every time.
[00:24:23] So they remember the last location for every session that you start.
[00:24:27] And after the first time you run it, it has to go find it
[00:24:29] and it takes a long time to run it.
[00:24:31] And after that, it runs it immediately because it's been cached.
[00:24:33] And that's one of the reasons it runs it so quickly after the first time.
[00:24:37] Because it doesn't cache it into memory as if it's going to rerun the same memory,
[00:24:41] but it caches the location into memory.
[00:24:43] And so it doesn't have to search for the file system every time.
[00:24:46] So we're doing great.
[00:24:49] So now when we do type hello, it's now pointing to the right one, right?
[00:24:55] So now when I run hello, you'll get what I expected.
[00:24:59] I knew it was a hashing related problem, but it was still confused.
[00:25:03] And I was using which. And so the takeaway from that is don't use which.
[00:25:07] Use type because it was saying it was which was telling me the right thing.
[00:25:12] But but type was telling me a completely different thing.
[00:25:15] So and it was telling me how it had been hash.
[00:25:18] So that's kind of in the woods in the weeds, as they say, but so be it.
[00:25:24] All right. So that means that now we've got, you know,
[00:25:27] I can run hello anywhere and I get the program as intended.
[00:25:30] So while I'm in here working on our program, which we'll continue to do after this,
[00:25:35] we'll be in here, like typing away different things.
[00:25:38] And then every time I want to make an install, I just do go install.
[00:25:41] And for that kind of thing, you can actually make an alias or a command.
[00:25:46] If you want to, in my case, I made a command.
[00:25:49] And this is what I do.
[00:25:52] I just do go install.
[00:25:54] If there's a file there and if there's not, just go for it.
[00:25:57] And so I can just type go away and I regularly do that.
[00:26:01] I just, we have a little time in today still.
[00:26:04] So I'll tell you about a couple of the other, well, as we get to them,
[00:26:08] I'll tell you about them.
[00:26:09] We haven't done testing yet, but when we do, I have a number of other like quick
[00:26:13] and dirty aliases that I run all the time.
[00:26:16] I want to say one last thing about this though, because people regularly get tripped up
[00:26:23] by this got you and I need to probably put this gotcha in my Golan Gotcha's book.
[00:26:31] Which, you know, this hashing thing, I should go in the Golan Gotcha's book as well,
[00:26:35] even though it's not specifically go.
[00:26:37] A lot of people would get tripped up by that.
[00:26:41] So let's do this.
[00:26:42] Let's say, I wanted to talk a little bit about the building.
[00:26:48] Make sure, let's see, build, let's see, go install, go install, let's see.
[00:26:58] Note that go install requires a full path, a full path to file.
[00:27:13] So, like this, go install dot slash cmd hello.
[00:27:22] All right, so this is not intuitive and I'm telling you this because you'll get burned by this.
[00:27:28] So let's say you don't want to have to keep deep diving, you can have multiple windows
[00:27:33] open in different places, you know, nice to just that.
[00:27:36] But sometimes you just want it to all be from the top level and, you know, just depends on
[00:27:42] how you want to do your work, especially if you've got VS code.
[00:27:44] It's a totally different thing.
[00:27:45] Which, before we leave today, we're going to do all of this also from VS code.
[00:27:49] I haven't been doing anything from VS code, but I really want everybody to understand
[00:27:52] that you still need to do all these terminal commands from VS code.
[00:27:55] There are tools and extra extensions and plugins you can get to do the building
[00:28:01] automatically and all that.
[00:28:02] But I suggest that you continue to, you know, build your own command line
[00:28:08] interactions with these kind of things.
[00:28:10] So right now let's do that.
[00:28:12] So to do go build from up here, you know, it's not going to work.
[00:28:17] It's like there's nothing to build.
[00:28:19] Go install.
[00:28:20] You know, you know, my GUI is like, go install, right?
[00:28:23] So there's no go files here.
[00:28:24] So I have to tell it.
[00:28:25] And so this is where you're going to screw up.
[00:28:28] You're going to do CMD slash, right?
[00:28:30] And then hello.
[00:28:31] You know, like, oh, why isn't that working?
[00:28:34] That's not working because for some reason, and I, to tell you the truth,
[00:28:38] I don't know the reason.
[00:28:40] Go does not resolve the current directory relatively.
[00:28:46] So go install CMD.
[00:28:49] Hello is not a thing.
[00:28:51] And the only way to fix this is to put dot slash in front.
[00:28:56] That fixes it, which would seem to indicate to me that go install is hard
[00:29:03] coded to not work on anything but an explicit path.
[00:29:08] It's not a fully resolved path like with a slash in front, but it's a,
[00:29:12] but dot slash means that it is a, you know, a resolvable path.
[00:29:16] And it does not assume that CMD is in the current directory.
[00:29:20] That will do just fine.
[00:29:22] It's a tiny little glitch and go install that drives me nuts.
[00:29:26] But now, you know, okay, because, you know, I don't even know the reason for
[00:29:32] that.
[00:29:33] I imagine at this point, it's worth mentioning.
[00:29:36] If you know about other build systems, I'm not assuming you do because I'm assuming
[00:29:40] you don't know anything about coding at all.
[00:29:42] But if you do know about build systems, it's probably worth mentioning that
[00:29:45] this is the time at which somebody generally will make a build script
[00:29:50] or they'll write a make file.
[00:29:53] And we do have 30 minutes left in this video.
[00:29:58] So you, not quite know.
[00:30:03] So, so I'm going to talk about things you can do to speed up your build
[00:30:10] process.
[00:30:11] And, but I want to begin by saying that I honestly do not think you need an
[00:30:18] extra, you know, step to your building and go.
[00:30:22] I think that almost everything you can do can be done just like we said.
[00:30:27] So, you know, go see, especially once you have it in your history, then you can just
[00:30:31] go back to it, right?
[00:30:33] And you can run your tests this way and everything.
[00:30:35] I don't think you need more than that.
[00:30:37] I think you can use go as your build system and you don't need an extra build
[00:30:41] system.
[00:30:42] It's very common to see phony make files.
[00:30:45] Fony make files are my term for make files that are mostly phony because they have
[00:30:50] dot phony in them because they're using make files for shell scripts instead.
[00:30:56] When they could have used the shell script or in this case, they could have just
[00:30:59] avoided all of it and then just known maybe even in the read me say to build this,
[00:31:03] do go install blot.
[00:31:05] You're done.
[00:31:06] One of the best things about go is that there's no layer of build process
[00:31:12] necessary on top of it.
[00:31:14] You can do that.
[00:31:15] And many people do depending on what kind of things they're building and as our
[00:31:18] projects get more complex, it kind of blends itself to it more.
[00:31:22] But right now you really don't need it.
[00:31:25] And I think it would be a mistake.
[00:31:29] But if you wanted to write a shell script to do the build in this particular case,
[00:31:36] or maybe you only wanted to update one thing or you only wanted to build one
[00:31:40] thing, short of learning make which was originally designed for C because C is
[00:31:47] usually a bunch of little teeny tiny dynamically in libraries getting built at
[00:31:51] the same time and then you build the one and then that triggers a rebuild of a
[00:31:54] bunch of other pieces.
[00:31:55] And the whole idea is you don't want to rebuild everything unless it has to be
[00:31:59] done.
[00:32:00] All this compiling is probably we're saying is a byproduct of go being and
[00:32:05] C being compiled language explicitly compiled languages.
[00:32:09] That's what we'll say explicitly compiled.
[00:32:11] That means you do the compiling and I'm going to put that there.
[00:32:17] Go is an explicitly compiled -- I'm going to -- is that a word?
[00:32:27] Can I say that wrong?
[00:32:29] I explicitly compiled language.
[00:32:32] And explicitly compiled language like C.
[00:32:36] Same with Java actually.
[00:32:38] Java still has bytecode but whatever.
[00:32:41] So, you know, that's what we mean by explicitly compiled and any language that
[00:32:47] has explicit compilation like that, when we did go run it was doing it was
[00:32:52] compiling it for you and then it was running it.
[00:32:55] Pretty fast, huh.
[00:32:56] Faster than Python according to the specs.
[00:32:59] So, you know, and when we do go test which we haven't done yet but when we get
[00:33:04] there, go test does the same thing.
[00:33:06] It compiles all your code and makes sure it runs and then it runs the test
[00:33:10] against it.
[00:33:11] Which is so cool.
[00:33:12] I cannot wait to talk to you about this.
[00:33:16] In fact, I'm inclined to tell you about this now because it kind of goes with
[00:33:22] what we're doing and none of the other languages I've ever taught beginners
[00:33:25] have this.
[00:33:26] So, there's really no right place to put it.
[00:33:29] Let's go ahead and do it.
[00:33:30] We've got 15 to 20 minutes left.
[00:33:32] So, let's get organized even further.
[00:33:34] Let's actually start our test driven development which is a huge pariah.
[00:33:40] It's like be careful who you talk to about this.
[00:33:43] There's a lot of strong opinions on this.
[00:33:45] But let's actually write a test.
[00:33:47] Right.
[00:33:48] So, let's go back to it.
[00:33:49] Let's start by making our command do a thing.
[00:33:54] And, well, you know what, we're going to be having kind of trouble here because
[00:34:00] do we, well, we're kind of getting in here ourselves.
[00:34:05] Yeah.
[00:34:06] Because we're going to be testing the main package which is really weird.
[00:34:09] Nobody does that.
[00:34:11] It's generally not a thing to write test suites for commands.
[00:34:18] I mean, for that kind of thing they would write an entire container system
[00:34:21] and test the command itself and entirely externally from go.
[00:34:25] But so generally speaking you want to test functions and subordains and procedures
[00:34:32] which we haven't covered yet.
[00:34:34] But let's just start really quickly because we're going to come back to this later.
[00:34:39] We're going to be doing it a lot.
[00:34:40] So, if I wanted to make, it does, this is related to the organization of the code
[00:34:45] and where it goes.
[00:34:46] That's why I think we need to talk about it right now.
[00:34:48] So, let's say that we wanted to make our program.
[00:34:51] So, right now main is printing, we want to have it just print a little friend.
[00:34:55] We'll get rid of all these other things for now.
[00:34:57] And let's actually talk about commenting really quick which we have not covered.
[00:35:02] Commenting can really be covered anywhere.
[00:35:06] So, let's do that.
[00:35:07] Okay.
[00:35:09] So, comment, comment a single line with back slash slash slash.
[00:35:16] Comment multiple lines with this.
[00:35:23] Okay.
[00:35:24] So, that's how you do multiple lines.
[00:35:26] These are very, very standard comments in many, many other languages.
[00:35:31] Many of you will already be very familiar with them.
[00:35:35] I don't know why that's doing that.
[00:35:37] All right.
[00:35:38] So, let's keep going.
[00:35:40] We've got plenty of time left.
[00:35:42] So, let's say we wanted to take all this stuff out.
[00:35:45] Okay.
[00:35:46] Now, there's a couple of things you can do here.
[00:35:48] You know, I can do this and CMT and have it like do it.
[00:35:56] Oops.
[00:35:57] What happened to my CMT command?
[00:36:03] My CMT command is not happy right now.
[00:36:05] I need to go fix it.
[00:36:06] Anyway, I could do this, right?
[00:36:08] And, you know, some of you will use visual mode for that.
[00:36:11] I don't.
[00:36:12] I don't like that.
[00:36:13] So, there's a filter.
[00:36:15] That's what I do.
[00:36:16] I have a CMT filter.
[00:36:17] CMT.
[00:36:18] What happened to my CMT command?
[00:36:20] Oh, no.
[00:36:21] I renamed it pre-picks.
[00:36:22] Yeah.
[00:36:23] I did.
[00:36:24] I forgot about that.
[00:36:25] There we go.
[00:36:26] Pre-picks.
[00:36:27] So, Bing Bing.
[00:36:28] And then I do pre...
[00:36:29] And that'll comment.
[00:36:30] And I could probably make another one that's called Go Command or something.
[00:36:33] And that'll do.
[00:36:34] That's one way to do it.
[00:36:35] Another way that's really great.
[00:36:37] I love that they support this.
[00:36:38] They use this all the time.
[00:36:40] And some people have macros and stuff set up to do that.
[00:36:42] You don't need it.
[00:36:43] You know, it's pretty easy.
[00:36:44] You just add that there and add that there.
[00:36:46] And now these things are all commented.
[00:36:48] They're not being used.
[00:36:49] So, that's comments.
[00:36:50] Comments we'll see later are actually used for comments.
[00:36:53] But, you know, mostly comments are used to turn code off.
[00:36:58] And that's what we've just done.
[00:37:00] Why did we do that?
[00:37:02] We did that because we want to actually make this code testable.
[00:37:05] So, you know, whether you do Go Run.
[00:37:07] No, we don't want to do Go Run Go.
[00:37:09] I mean, how do we really test this, right?
[00:37:11] We could write a program that tests the program.
[00:37:14] But instead, we're going to make a test case.
[00:37:17] A unit test case file called main_test.go.
[00:37:21] And again, it does look a little weird to me because we're testing the main package, which normally is not done.
[00:37:26] But let's go ahead and go forward on this.
[00:37:29] Thank you for the subscribe on that.
[00:37:32] All right.
[00:37:33] So, let's do this.
[00:37:35] Let's do main test.
[00:37:38] And we have nothing here.
[00:37:40] So, what goes in a test code, right?
[00:37:42] So, the first thing is, it has to be the same package.
[00:37:44] So, in this case, it's main.
[00:37:46] And we're going to alter that a little bit in just a second.
[00:37:50] So, in this case, it's main.
[00:37:53] And there is a -- we're not doing it for main.
[00:37:58] There -- in another world, which we'll get to when we do library packages, you can actually do main_test
[00:38:07] code test so that you can have it represent what you would write if you had an external dependency
[00:38:14] on it, but that's getting a little bit ahead of ourselves.
[00:38:17] So, let's write a test.
[00:38:18] So, we're going to write a function.
[00:38:20] We don't know about functions, but let's just assume I'm going to show you how to do it.
[00:38:24] So, we can write test.
[00:38:26] We can write test, or we can write example.
[00:38:28] Let's write example.
[00:38:29] And then we need to decide what we're going to be testing.
[00:38:34] So, in our case, we're going to be testing the main function itself, which is very weird,
[00:38:39] but we're going to do that.
[00:38:42] And then we make a comment, as we already talked about, with the very special comment called output,
[00:38:48] and it has a colon after it.
[00:38:50] And then here, we can say, "Hello, world."
[00:38:53] Right?
[00:38:54] Do we put a -- does it have a dot or anything in it?
[00:38:57] Oh, it's hello, friends.
[00:38:58] Sorry.
[00:38:59] Hello, friends.
[00:39:00] All right.
[00:39:01] And we probably want a dot in there.
[00:39:03] Okay, so this is the structure of an example-based unit test, and then we can do this.
[00:39:08] We can say, "Okay, I want to run it."
[00:39:11] So, what are we going to do?
[00:39:12] How are we going to run it?
[00:39:13] Well, we need to just call it.
[00:39:15] So, we can call main like this, and when we run it, it will do the thing.
[00:39:22] Now, this code is not something you can run directly, but you can indirectly run it with GoTest.
[00:39:29] When you run GoTest, you'll see that my test failed because it did not give me a hello,
[00:39:36] friend with a period.
[00:39:37] It tells me what it did get.
[00:39:39] So, this is actually a really great way to just the habit to get into testing your code.
[00:39:45] You can actually test your code as doing what you want, even if it's the main program.
[00:39:49] As long as it has an output, you can test it this way.
[00:39:53] You could decide that you're overly zealously testing too many small things.
[00:40:01] That's up to you to decide how granular to get it with your test.
[00:40:04] But for right now, we can do GoTest, and we see that we pass the test.
[00:40:09] So, there are many other ways to do unit testing that are built in to go.
[00:40:16] That's really the takeaway from this.
[00:40:18] With regard to organization, the underscore test.go file, that's what it is.
[00:40:24] It's there to run a unit test.
[00:40:28] When this package is imported or exported or any of those things are vendor, the test files are omitted.
[00:40:34] They're not sent.
[00:40:36] We're going to be dealing with this a lot more as we go.
[00:40:40] But I wanted to introduce you that so you can see what it means to write a test case.
[00:40:47] So, we're actually making sure that our program works without installing it.
[00:40:51] It did not effect to the install at all.
[00:40:53] I can do GoA to install it.
[00:40:54] I can do Hello, and you'll see that it's adapted and it's now running the right version.
[00:41:01] We can go all the way back up here and come back up.
[00:41:07] You can see these things are all here.
[00:41:09] I think that's about it.
[00:41:11] We've introduced you to unit testing.
[00:41:14] We've done, you know, so tests see create a same named file with underscore test for unit
[00:41:30] tests.
[00:41:31] Okay.
[00:41:32] And then add, you need to do the add the output comment.
[00:41:40] Comment followed followed by expected output as comment.
[00:41:53] Okay.
[00:41:55] And then what do we do?
[00:41:56] Then we did, we ran Go test.
[00:41:58] So, run Go test to check unit example based unit tests.
[00:42:09] So, the reason it's called an example is because that actually doubles as documentation.
[00:42:19] And I might be able to show you that.
[00:42:21] Let me see if I can demonstrate that to you, even though it's not a main part of what we're
[00:42:26] talking about.
[00:42:27] I have a little time left.
[00:42:29] I think you can do this.
[00:42:31] Let's see, show documentation wherever simple match case show.
[00:42:38] So, a lot of people don't know this, but in Go, if so, a lot of this documentation is
[00:42:42] available on the web, and I think it's actually Go dot doc, Go dot doc, Go documentation.
[00:42:55] And this is not it.
[00:42:56] We need to go to the packages.
[00:42:57] There we go.
[00:42:59] So, like, let's go see this from my bonsai package.
[00:43:03] So here's my bonsai package.
[00:43:06] And you can go read about it here.
[00:43:09] And what I'm trying to say is that all of this great documentation shows up.
[00:43:14] But the really great thing is to see all these examples we just put in our unit tests.
[00:43:18] They're now runnable testable examples that show up in the playground.
[00:43:24] So when people are trying to get acquainted with your package and they want to learn how
[00:43:29] to use it, because you've made it public, then they can come in here and they can see
[00:43:34] all this great stuff.
[00:43:36] And so this topic is related to get organized.
[00:43:41] You know, you should start documenting yourself from the very earliest, but don't overly
[00:43:46] document things because you might end up refactoring it, and then you have to redo all the documentation.
[00:43:51] So, and I'm going to show you a trick using Claude or chat GPT to automatically write
[00:43:56] your comments for you.
[00:43:59] Not a lot of people know about this, but it's one of the most amazing uses of AI.
[00:44:03] I can think of, nobody likes writing comments for their code.
[00:44:08] So it's a really great way to get started and a really great use of AI that doesn't
[00:44:12] distract from other things.
[00:44:15] We are going to do that.
[00:44:16] But so don't get too caught up in writing documentation.
[00:44:19] Yeah, air-generated PR summaries, there's a whole bunch of things there that quite frankly
[00:44:25] AI is perfect for.
[00:44:27] So don't waste a lot of time on those mundane tasks that AI can really do for you.
[00:44:34] You know, and that's one of them.
[00:44:37] But creating these examples, I haven't successfully got any of the AI's to write really great
[00:44:42] examples yet, but that might be possible in the future.
[00:44:48] But I was trying to show you that those examples become a part of your test.
[00:44:52] That's all I was trying to get at.
[00:44:54] And that's why it says example, because in the absolute genius idea, the Go designers,
[00:45:01] they decided to not only encourage unit testing by building it into the language itself, but
[00:45:07] also to or into the tooling, I should say, but also integrate testable runnable examples
[00:45:17] as that double as unit tests.
[00:45:19] I mean, I don't think I can overly state my admiration for that intensely genius idea
[00:45:29] on their part.
[00:45:30] And I got to tell you, I'm really sad that the Go community as a whole, and the next time
[00:45:36] you meet somebody who codes Go, ask them if they know about example-based tests straight
[00:45:39] up.
[00:45:40] Do you know about example-based tests?
[00:45:41] And they'll say no.
[00:45:42] They don't know.
[00:45:43] They could be doing it professionally forever.
[00:45:45] They'll know about testifier, some stupid third-party app or package that's completely
[00:45:51] unnecessary, but they will not.
[00:45:53] They discard the opportunity to create really amazing examples by writing example-based
[00:45:59] tests.
[00:46:00] And it's an absolute tragedy.
[00:46:02] It's a really, really easy way to identify a new Go programmer, because they don't know.
[00:46:11] They've never truly learned it.
[00:46:13] They've just learned all these one things that they just needed to get this other thing
[00:46:16] done.
[00:46:17] So, it's a great thing for me to end this video on, because there's so many things
[00:46:24] about code organization that go completely ignored in the Go community, and one of those
[00:46:32] things is unnecessary complexity, unnecessary make-biles, unnecessary dependency on tests
[00:46:41] of our whatever your favorite external test library is.
[00:46:45] And so don't do that.
[00:46:48] Don't do that.
[00:46:49] The beauty and the wonder of our favorite Goldilocks language here is that Go is simple.
[00:46:55] It's designed to be simple.
[00:46:57] It's designed to be understandable from the get-go.
[00:47:00] Don't break it by making your code repo so convoluted that nobody can understand what's
[00:47:08] happening in there.
[00:47:09] I mean, because it's completely against the idea of Go as being a comprehensible language
[00:47:15] and having coded Perl for more than a decade, and clean Perl for the most part, except for
[00:47:22] my classes, which manipulated the symbol table.
[00:47:27] I really enjoy the fact that Go is so simplistic, and so easy to grok, and so easy to do its
[00:47:33] thing.
[00:47:34] And so that's why I'm going to end this video.
[00:47:37] You're going to end at 47 minutes, so take some time to organize your Go projects and
[00:47:43] maybe learn about the documentation a little bit.
[00:47:45] We will cover documentation, which has its own syntax, and before we leave, I do want
[00:47:53] to end on the change that I made from Markdown to AskeyDoc.
[00:47:57] I am not going to dwell on it, but I am going to tell you why.
[00:48:02] Okay, so this is going to get its own video, but I have found writing books in AskeyDoc
[00:48:12] to be better than Markdown.
[00:48:16] You can find videos from me strongly advocating for the use of Markdown and Markdown only
[00:48:25] based on its universality and support on GitHub and simplicity.
[00:48:32] In fact, I've made meta languages to create my own sub-dial X of Markdown so that it would
[00:48:39] be even easier for people to write notes and documentation.
[00:48:42] And having been obsessed with that for many, many years and writing documentation and stuff,
[00:48:49] and having been recommended to use AskeyDoc from the late Kristinova, who I'm so happy
[00:48:54] she mentioned to me as I started publishing books, I now have not only have I started
[00:49:02] to adopt it for books, but I have quite honestly, I have, this is going to sound crazy, but
[00:49:09] I've banished Markdown from my life.
[00:49:13] And let me tell you the main reason for that.
[00:49:16] The main reason is that AskeyDoc is designed for people writing books and Markdown is not.
[00:49:25] It's just not.
[00:49:26] Markdown is designed for people who are making blogs and simple things.
[00:49:31] It can be adapted to write books.
[00:49:33] Pandock is a good example of that, and it's amazing for that, but it is nowhere near as
[00:49:38] comprehensive as AskeyDoc.
[00:49:41] Now a lot of people would say that that is a negative that AskeyDoc is too complicated
[00:49:46] for a beginner, has too many bills and whistles and unnecessary things, and they're right,
[00:49:51] it is.
[00:49:52] It's, if for a beginner you probably do want to still learn Markdown, but if you have
[00:49:57] any inclinations to write complex, you know, documentation or notes, and let me give you
[00:50:06] the criteria for that.
[00:50:08] Do you want, see this right here, this piece right here, that's being included, okay?
[00:50:16] That's being included from another source.
[00:50:19] So that's what I'm saying.
[00:50:21] We will do 30 minutes on AskeyDoc, we will do a video about AskeyDoc.
[00:50:25] It will not be a part of the Go coding series, it will be a part of terminal velocity, because
[00:50:31] I do believe writing documentation is either auto-dedactic or terminal velocity, one of
[00:50:36] those two books, that will go in there.
[00:50:38] So I'm also a fan of a practice which I've given the name for Perpetual Publishing, which
[00:50:45] means that you're constantly publishing something in book form, and it can be digestible, people
[00:50:51] can follow it, and quite recently I have discovered that AskeyDoc can be linked between completely
[00:50:59] separate websites, so I can actually include AskeyDoc from a totally different website
[00:51:05] where that AskeyDoc lives, and it will automatically be included in my build when I run the build,
[00:51:12] and that single fact alone, not to mention at the ease of tables and the fact that you
[00:51:16] can generate e-pubs and PDFs and everything from AskeyDoc out of the gate, makes AskeyDoc
[00:51:23] the clear winner for me.
[00:51:24] It has full support for LaTeX, not just K-TEX, which is just the math part, so a lot of people
[00:51:30] have suggested why are you not just writing your books in LaTeX, L-A-T-E-X, and the reason
[00:51:34] is because I don't need to.
[00:51:35] I can do that at any time with AskeyDoc, it has full support for all of LaTeX.
[00:51:42] I realize that AskeyDoc is kind of the outside person here, but one of the reasons that I
[00:51:49] switched it specifically related to this is I was starting to write the book in this repository
[00:51:55] along with the code, and the really great thing about this is, oh, this is, I haven't included
[00:52:00] this one yet, I need to move it, is that you can actually have runnable code.
[00:52:05] You can have code that executes, that can be tested, that is also a part of the book.
[00:52:10] So this module that we've been dealing with, this readme file, is now going to take the
[00:52:14] form of that.
[00:52:15] And so the last thing I want to say here is that in a directory like this, quite frequently
[00:52:21] you'll see a doc directory, all right, you'll see a doc directory like this, and that's
[00:52:28] where people put all of their documentations, and they'll put it in there.
[00:52:36] A lot of times people don't know this, but you can actually also serve your documentation
[00:52:44] and stuff from this same repository, and I will be adding a build script to this one
[00:52:51] to build my AskeyDoc, and I'm trying to decide whether I will include that work as a part
[00:52:58] of this organizational stuff or not, either way, I'll do a video on that.
[00:53:05] And that video doesn't really belong in the coding from the get-go, but it is related
[00:53:12] to taking notes, and taking notes is kind of a presupposition on my part that you are
[00:53:17] going to take healthy, awesome, amazing notes, and quite honestly, I think the best way to
[00:53:21] do that is with AskeyDoc, and the reason that I think that's true is because, let me
[00:53:31] actually do one right here for you, so this is the example that we had.
[00:53:34] You see how I can actually call out specific items in this example here, I can point to
[00:53:39] these items.
[00:53:40] These also are, if you ever read a Riley book, they're already there that way, okay.
[00:53:43] So if I wanted to change this, and I wanted to say I don't want that in there, I want
[00:53:48] to include, and this is a good thing to end on, it is related to documentation to organization,
[00:53:54] so I feel like it's okay.
[00:53:56] So I want to include, what do I want to include here?
[00:53:59] I want to include command, hello, we'll tab tab that out, slash main.go, main.go, put that
[00:54:07] in there, and I don't, I have a call out here, but the call doesn't say what it's being called
[00:54:14] out for, right, but I can actually, well, let's go add one.
[00:54:19] So we add the main.go there, and we could say, I could say, one, I can make some comment
[00:54:27] about that line, which you can do, right?
[00:54:30] So you can do, so you can actually learn how to publish your own books at the same time
[00:54:33] as you're taking notes.
[00:54:35] And by doing that now, I can actually, I can build this and, yeah, we'll put a build script
[00:54:41] in there.
[00:54:42] I feel like we need an entire hour about how to do documentation, so I'm going to leave
[00:54:45] it there.
[00:54:47] And I am going to do a full hour video about creating documentation.
[00:54:55] And I will, I will put it in coding for the get go in this particular stream so that it
[00:55:02] can be done, but that video itself should stand alone.
[00:55:07] So I'm going to end this video for now.
[00:55:09] This video has been about how to organize your directory and, and, and all of that.
[00:55:15] And we'll just let that go.
