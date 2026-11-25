# 📺 Porting clip program to Go Bonzai 🌳

Starts porting a bash script that plays YouTube clips with mpv into a Go command in a Bonzai tree, so that a compiled binary can be launched from a Stream Deck without opening a terminal. Explores multi-call binaries and a helper for reading settings from Bonzai vars, environment variables, or defaults, which leads to refactoring the tightly coupled vars map package. The port is not finished by the end.

Chapters:
0:00 Why port the clip script to Go
4:28 Testing Stream Deck and full-screen behavior
9:31 Creating the clip command in Bonzai
12:30 Designing play subcommand and multi-call options
17:26 Reading clip settings from environment variables
19:59 Designing a prioritized variable lookup helper
29:53 Loading vars from a custom file
35:59 Refactoring the tightly coupled vars map
40:55 Using the new lookup for clip data
44:52 Finding the user directory function in Bonzai
49:31 Exploring the Go module cache and wrap-up

`#golang #bonzai #bash #cli #streamdeck #refactoring #livecoding #programming #bonzaicli`

## Category

Science & Technology

## Transcription

[00:00:00] Is it just lying to me one two or four or three or four?
[00:00:05] Three or five four or four. Okay looks like we're all here
[00:00:11] Say hi if you're gonna come on in we're we're going to be I got my headphones on because
[00:00:16] My glasses on I don't know
[00:00:18] Have my headphones on because we're gonna be doing clips. We're gonna do a clip
[00:00:21] We're gonna port my clip program to go which is ridiculously easy by the way. This is super easy, but
[00:00:27] Here's the crux of it. So this is a bash script. They wrote years ago
[00:00:31] This is actually a really solid reason. I actually was playing around with this
[00:00:35] So watch this. This is I now I have my stream my my Elgato stream deck, right?
[00:00:41] I have my Elgato stream deck and
[00:00:45] I want to be able to
[00:00:49] Push the button and have it play the Unix thing. Here we go
[00:00:57] All right, but you see what it did
[00:01:00] Did you see how it started up a terminal and then it threw the terminal away?
[00:01:06] That's because it's a shell script and even though you can you can have a little pretty Unix launch button on my
[00:01:13] On my screen on my on my stream deck
[00:01:16] My stream deck excel. I'm having cameras. We're doing weird things to the bottom too. I don't know what's up with that
[00:01:22] I don't know. I gotta chop that up somehow
[00:01:25] Maybe I'll do it anyway, so so reason this is a reason that
[00:01:33] You know we want to we want to look at this
[00:01:38] And this certainly me nuts my pocket three has been acting up on me all day I
[00:01:44] Don't know what's going on. We got rated in it died on me right in the worst possible as but working all week and
[00:01:50] then it didn't
[00:01:54] I'm gonna chop you
[00:01:57] Guess I can't I guess I can't chop it. I guess I could
[00:02:00] What if I made it a little just a tiny bit bigger? How about that?
[00:02:05] Anyway, we're not you're not here for that you're here for
[00:02:09] The other stuff all right, so
[00:02:14] Let me fix this
[00:02:16] Yeah
[00:02:19] How's that better the chopped off of it all right
[00:02:24] And so I'm gonna jump right into it. There's not many people here. Thank you for being here though
[00:02:28] so
[00:02:30] You guys know about the same way do it one more time. So push the button
[00:02:36] Great little clip and then it immediately leaves my terminal and
[00:02:43] That's super annoying now the reason it leaves the terminal is because it's full screen if I was not full-screened on my terminal
[00:02:49] Which I also want to consider doing and
[00:02:52] I'm actually seriously thinking about not doing full-screen terminal
[00:02:59] For lots of reasons but I
[00:03:02] Don't know if you're a streamer maybe this matters to you
[00:03:04] But what I really want I mean I got this I got a stream deck
[00:03:06] I got like I don't know 20 different buttons for all my favorite clips can't use it because it has to kick off a shell
[00:03:14] Well, this is where go comes it go is binary
[00:03:18] So it's a binary executable which means it just runs the same one I can hire coded with this particular parameter sets so that
[00:03:26] You know it opens a specific clip. Oh, I want it and
[00:03:30] That's kind of what we want to do
[00:03:33] So we have to encapsulate those those you know those commands
[00:03:39] Using that now one of the things that's cool about that is
[00:03:42] We can actually use the multi-call idea to actually play the clip that we want
[00:03:48] Based on the name of it and then we could just make a bunch of sim links
[00:03:52] For all the different things because we can't pass arguments unfortunately to legato as far as I know
[00:03:56] You can't pass arguments
[00:03:57] So so that means if I want unix I can make I can put all those things in there
[00:04:02] And I can use this idea of a multi-call to check the name and to actually grab the right clip from memory
[00:04:07] And if I wanted to add a new one
[00:04:09] I can just add a new a new sim link and have it be there or you know
[00:04:14] I mean it's possible that there's a better way to do this with legato
[00:04:17] But this this old this code has to be written in and go anyway, so
[00:04:22] Because we need the binary the binary is really the magical the magical piece of this
[00:04:28] And actually let me try it one more time with the terminal just maximized as opposed to full-screen
[00:04:36] Wait, now it's not doing it at all. What the hell?
[00:04:45] It ran it twice
[00:04:47] Okay, so let's see if this will not redo the terminal and not kick me out. Let me see
[00:04:57] That's crazy, you know why it does that because
[00:05:02] YouTube I don't know why it does it. Why does it do that?
[00:05:06] I don't know why it doesn't remember the last the last application that was in the front
[00:05:11] Oh, I know this is full straight again. Okay. Let's try it with that. Hey, that was a bad test. Here we go
[00:05:22] All right, so that that's that's what I thought so if you want to go back to your terminal and you don't want to have it
[00:05:31] So, you know the only thing where this is gonna get us is it's not gonna do that stupid little terminal thing
[00:05:39] Yeah, I mean and there's other there's other advantages, right so so we want to be able to kick off that that command by itself
[00:05:45] We don't we want it to be the command that's running not the terminal running the command
[00:05:50] Which is actually in this case, it's the terminal running the shell
[00:05:54] Which is then running the program, which is then kicking everything off
[00:05:58] So we're gonna fix all that by making it a binary
[00:06:02] And how did we do that? So the first thing is well, let's let's look here. Let me just one more time
[00:06:12] All right, so that was in full-screen mode and that brought me back to the terminal
[00:06:17] As you can see though the terminal never fills the full screen. It's kind of annoying so I could actually
[00:06:25] Play with this
[00:06:29] Possibly
[00:06:33] I don't know give me a second to think about this so
[00:06:37] Let's
[00:06:39] Let me let me give me just a second here
[00:06:44] Let's let's say we want to keep the terminal we want to keep the terminal on the screen without full-screening full-screening kicks this out
[00:06:49] And there's all kinds of nastiness
[00:06:52] and
[00:06:54] This is nothing to you can't you can't make your terminal fit on the screen. It's it's it's it's it's kind of annoying muck a lot
[00:07:03] If I hit full screen, it just takes care of that, but then it kicks me out of the whole terminal. I have to go back to the terminal
[00:07:09] That might be the safer thing to do though. Let's just do a full-screen. I
[00:07:12] Mean it's certainly more fun for me to do it this way. God if it's right in the window, that's perfect
[00:07:17] So if I do the thing
[00:07:21] All right, it's gonna take me out and it's gonna have to go back to the nothing go back to this
[00:07:25] Right, but I don't have to change out of the other thing. I just have to go back to it
[00:07:30] All right, so so with that let's get rid of the little terminal part
[00:07:36] So this is this is this is where we're going with it. All right, so
[00:07:43] Everybody's pretty quiet. There's not many people are
[00:07:47] Am I streaming I should probably check
[00:07:52] It's always it always makes me paranoid. I'm like is this stream actually working is this a stream on is this thing on I?
[00:07:58] Man, it's probably on but it's probably worth looking into I
[00:08:02] Can never actually trust the whole thing. It says I'm streaming so
[00:08:07] You too
[00:08:11] You tub
[00:08:13] All right, so let me just check and see what we're streaming
[00:08:16] because I want this video to be out there before I get into it and
[00:08:20] It does look like it's it's working perfectly with the bands. I it does working. There's like real people here. So
[00:08:27] Welcome to the chat
[00:08:30] Hello, my hands. I have my hands purple
[00:08:34] Hey, look it worked. All right guys. Thank you for that a
[00:08:39] Hawaii might
[00:08:41] Thank you. All right, so just to see if you guys are there
[00:08:45] Before we get into it, so so so how are we doing?
[00:08:49] Actually, don't need my headphones for this. So I'm going to take my headphones off. It's just easier for me to not have them on
[00:08:57] All right, so we have this really beautiful bash program. That's completely unnecessary
[00:09:02] And we're going to make it into a built-in bonsai app
[00:09:08] I had to reboot my computer to get my computer my my camera back
[00:09:12] That's why that's why it's kind of messed up
[00:09:16] In case you're wondering check check check one
[00:09:20] check two
[00:09:22] Check three got my hairs, okay
[00:09:27] Strange
[00:09:31] So let's say sorry your teamwork session. We have a teamwork session. So let's call this wait. Do we not use T marks?
[00:09:38] We didn't all right. We're gonna go into the the bone directory
[00:09:46] Bonsai
[00:09:48] slash
[00:09:50] CMD no picky G
[00:09:53] Pg core
[00:09:56] Core commands. We're gonna make a command that does the clip thing
[00:10:00] Admiral Nimitz. What's up?
[00:10:02] We're gonna go there
[00:10:05] all right, so I'm gonna start team looks up in here and
[00:10:11] Let's actually make a command that is
[00:10:14] Just the clips program by itself
[00:10:18] So let's do that. So this is let's make this one
[00:10:24] Tk oh
[00:10:26] My gosh, that's crazy. So
[00:10:30] So let's say
[00:10:32] You to steal
[00:10:33] Yeah, there's a I use I have a similar tool that I use that
[00:10:40] That is kind of a dependency
[00:10:42] What we could actually do is start porting that bundling it with GitHub and with we go
[00:10:46] I kind of want to port the
[00:10:49] The YouTube one into go as a gold command and make it a bunch of high-level commands. We could probably do that
[00:10:57] Anyway, so CMD yes
[00:11:00] So this is a command directory
[00:11:03] We're gonna make a command. So we have the bond command with our command. Let's copy the bond command and we'll call this one
[00:11:10] clip
[00:11:13] And
[00:11:16] Copy that char I guess
[00:11:18] on the clip
[00:11:20] Now this is all stuff that the bond command would actually be able to initialize for you eventually
[00:11:27] Remove doc
[00:11:29] engine
[00:11:34] CMD we'll use this other codes. We're gonna call this clip
[00:11:40] and
[00:11:42] Panic we don't need that call this we have command call this clip
[00:11:48] a alias
[00:11:50] I was using X for my alias, but I
[00:11:54] Don't know I
[00:11:57] Don't know if I like that
[00:12:00] The reason I was doing that was because I just wanted to be able to play things really fast
[00:12:04] But the way I'm doing it now. I don't even need that. I can just use it as a multi-call binary and be done
[00:12:09] So why does that make it have a unique name?
[00:12:14] Manage and play
[00:12:19] YouTube clips
[00:12:22] With NPV
[00:12:26] Okay, so
[00:12:30] This is gonna this isn't have any subcommence. So here's this is interesting. We're gonna make we're gonna make a completer for this
[00:12:39] that is
[00:12:42] going to use a flat file database and
[00:12:51] This is actually another opportunity to parse properties
[00:12:57] Because oh
[00:13:00] My god, this is so cool because we can actually do
[00:13:06] All the all the clips for this particular I don't know if I want all the clips to be in that individual properties file
[00:13:12] But maybe we want to happen be in its own property spell
[00:13:16] Because I'm gonna have like thousands of clips eventually hundreds at least so we don't need that completion right now
[00:13:23] I don't really need a version. I
[00:13:25] Mean we doesn't hurt that version, but suppose I command we're not composing any commands in here
[00:13:30] This is going to be I mean we we could right we could do clip play blah blah blah
[00:13:36] I'm probably right that's probably a good thing to do. So let's say play
[00:13:43] I
[00:13:45] Think play is already taken right
[00:13:49] Oops
[00:13:53] It isn't
[00:13:55] Okay, well play if place not already taken then maybe we should export that so if people want to just use the play key the play command
[00:14:04] As opposed to the download command so
[00:14:09] Yeah, but the play command here
[00:14:14] You say command play it undefined play
[00:14:19] Managed an amplitude of NPV
[00:14:22] so
[00:14:25] You know
[00:14:27] Let's just keep this simple. So we don't need a parent command. Let's call this
[00:14:34] Well, if we're gonna if we're gonna export it so it'd be a clip dot play command
[00:14:39] We just have to do play instead of CMD
[00:14:45] If we want to allow it to be exported so people can actually import it on into their own things
[00:14:50] We do that we can actually turn the play command into it's executable by its soul
[00:14:55] and
[00:14:57] That's kind of what I'm gonna show her
[00:15:01] But in order to run the play command. I think you still have to have a terminal. I don't think you can
[00:15:13] Actually, no because the play command has to have an argument
[00:15:18] What we could do is we could actually set the environment variable and then pull it out. Oh snap
[00:15:25] Yeah
[00:15:29] There's so many ways we could do this. Oh, I like environment variables though that that would work because then we could set it
[00:15:35] Yeah, all right. So let's see that. So maybe to command. I
[00:15:40] Mean my god, we could just
[00:15:43] We could just make a single command called play and
[00:15:48] Have it grab it out of the database. The hard part is having it find it in the database
[00:15:53] right
[00:15:57] And we actually have an environment variable for that already set. So this actually works out really well
[00:16:04] So
[00:16:05] we have these environment variables for passing that data and
[00:16:09] then
[00:16:10] That's again. It's a stateful way to do it. All we need to do is is change it. So the other stuff
[00:16:17] Gets passed in as well. Okay, so let's do that
[00:16:22] These these things are already
[00:16:26] Homer is already a thing
[00:16:31] Cook data
[00:16:36] Anyway, we could put that in it if we need to I you know what I actually am kind of thinking I just want to make this called play
[00:16:43] We can just make a single command that runs play against the data
[00:16:47] This is let's do that first
[00:16:49] No, let's not let's make play a sub command of a bonsai and then we'll actually make a binary out of the play command
[00:16:56] And then we have the option of doing all of them later. All right. This is so cool. Okay, so let's do
[00:17:02] play command
[00:17:04] So now it's now it's built inside of it. So we're gonna call this one play
[00:17:10] Alias is I don't know we really don't need an alias
[00:17:14] Not in this case and then we have the actual code
[00:17:19] so
[00:17:21] We're gonna do that
[00:17:24] All right, so
[00:17:26] We need to detect all those other environment variables
[00:17:31] So we need to get the environment variable code data
[00:17:34] Actually, let's just let's just grab this
[00:17:38] Grab this
[00:17:40] Put it here
[00:17:43] I'm gonna pour this part right here
[00:17:46] This is actually not going to be that hard. It will be done in an hour my wife's making dinner so
[00:17:53] So what so we say?
[00:17:56] So we say data file
[00:17:59] Data file equals
[00:18:02] Oh, it's not ENV
[00:18:04] As it getting in me getting in V. I think it is
[00:18:12] It's what is it DER entry
[00:18:16] Enviren
[00:18:19] Can't remember which one is expanding in V. There it is get ENV
[00:18:27] All right, so get in V what
[00:18:32] Get ENV and then we give it the one we want we want to
[00:18:35] clip data
[00:18:40] And DER
[00:18:43] I'm gonna say
[00:18:47] clip DER
[00:18:50] Is clip DER
[00:18:54] Clip screen that's word. Let's get anyway
[00:19:00] I mean, we don't
[00:19:04] Strictry stern file. There's only one file
[00:19:13] Data
[00:19:18] I think
[00:19:23] One oh wait
[00:19:25] We want to set it as a default though. See it has the default setting
[00:19:29] Yeah
[00:19:32] So if it's empty this returns empty if it doesn't find it
[00:19:38] Wait
[00:19:42] Which is valuable the empty okay, so
[00:19:53] If data is empty
[00:19:59] We should probably make a helper function for this that says
[00:20:04] We should we should make a helper function that says default value. Let's do that. Uh-huh
[00:20:13] I actually want to make a universal thing that grabs in bar
[00:20:18] That will grab if there's an environment set if there's a persistent variable set it uses that if there's not it uses an environment variable
[00:20:26] Otherwise it uses the default
[00:20:29] That would be so useful. It's like right that let's like write that code right now
[00:20:33] so CD back into
[00:20:37] Oops CD in a bars
[00:20:42] Melbourne Australia. What's up program me Siri?
[00:20:45] I love your account. I do somewhat remember you. I have a bad memory though
[00:20:52] The bars test. Let's make a function here
[00:20:56] What should we call it say
[00:21:00] Function
[00:21:01] We don't need a map here. So
[00:21:04] This is this bars. This is this bars thing is
[00:21:08] Is all about viral girls?
[00:21:10] We need to something different here. We need to say
[00:21:13] This needs to be a library kind of thing
[00:21:18] Is there something better?
[00:21:19] Too unique term scanner blah blah blah now. Let's go into bars. Excuse me in the bars
[00:21:26] So let's do we're gonna make a thing here. Let's actually make a brand new thing. Let's say
[00:21:31] vi
[00:21:33] I don't know
[00:21:36] Actually, this bars should actually be map
[00:21:45] That test I go bars dark out we're gonna make a function that
[00:21:55] We're gonna say what should we call it? We should say bars dot bars not get
[00:22:01] That's it. It's gonna be bars not get
[00:22:05] It's gonna be because I want to write this all the time. I can't wait
[00:22:09] With an air like a cursor. I I mean, it's fine. I don't have it because I do this I
[00:22:15] Think it's fine. It's annoying though
[00:22:21] Get
[00:22:25] Let's see get will
[00:22:35] We need to find out if there is a bars environment very well or not
[00:22:51] Do you want to say bonds live ours or just bars
[00:23:05] I
[00:23:19] This is gonna be a compound place to get all the environment variables get
[00:23:26] So
[00:23:29] So get just gets the value
[00:23:35] And we should probably have a get D. Let's do get D
[00:23:57] Actually, we can make get take a variable number of element of our of things
[00:24:03] Yeah
[00:24:06] Very high level function and it's gonna return a single string
[00:24:19] All right, so
[00:24:27] Get patches
[00:24:32] Okay, so we do it
[00:24:37] It fetches
[00:24:40] Very a
[00:24:44] Variable value using the following
[00:24:50] Priority
[00:25:03] Of ours file
[00:25:08] Vars properties
[00:25:11] Let's see, I'm gonna save ours
[00:25:17] Yeah, we could say bonds a bars I
[00:25:27] Probably should say bonds a bars. I probably should
[00:25:32] You
[00:25:39] We could say bond bars get it
[00:25:49] We'll say like bond bars bond this bomb whatever that's I'm gonna do bond bars
[00:26:01] obtaining
[00:26:03] Pat to
[00:26:07] Bonsai
[00:26:12] Vars properties well, so
[00:26:28] Yep, actually, no, we could say a bond map
[00:26:33] Bon map
[00:26:36] Bar map
[00:26:44] Now if we could just say boomers bond bar yars almost environment variables in V
[00:26:56] Actually, we should do every single environment variable
[00:27:10] We should say always thought get let's see on the wrong
[00:27:18] Using the following priority
[00:27:25] Current running environment
[00:27:33] And then what then we want to get
[00:27:37] Or you get to default that's only that's it we just want that we don't want a command line
[00:27:44] We don't we don't want a command line
[00:27:55] If a second argument is passed
[00:28:02] Returns that as the default
[00:28:07] If
[00:28:10] The key is not found
[00:28:14] Elsewhere
[00:28:18] All right, so let's see that first things first
[00:28:26] Yeah
[00:28:29] Yeah, I love this combination chite is gonna love this because he likes to use environment variables for the thing already so
[00:28:38] first we're gonna fetch the bond bars, so
[00:28:42] we say
[00:28:48] I think it's get already I
[00:28:53] Think we need to make a new one so we say map wait
[00:29:00] V equals
[00:29:04] Is it new
[00:29:07] It's a new map
[00:29:11] Equals new v dot
[00:29:16] I didn't actually this function doesn't care about the identity at all
[00:29:23] It it just looks for something at its location
[00:29:36] And and I don't I don't know what that that means
[00:29:43] What does it do load is like those the latest from file and on Mars is into M
[00:29:53] That means you have to set the file damn it
[00:30:00] All right, so I
[00:30:04] Might want to we might want to change this
[00:30:07] I might want to change this a little bit
[00:30:11] We want to make it so that it doesn't it's not so tied to an ID or number and all that
[00:30:18] Right
[00:30:21] We might want to dynamically create that path and then change that somehow
[00:30:26] Yes
[00:30:28] So that would mean
[00:30:32] How do we dynamically change the path we could
[00:30:38] Or we could take we could change this to make us a new from or whatever
[00:30:45] What's that?
[00:30:47] New from
[00:30:52] Let me give it a path
[00:30:56] Bonvars
[00:30:59] All right, so
[00:31:03] File equals
[00:31:05] Oh stock getting a v
[00:31:08] Bonvars
[00:31:11] If we have that then
[00:31:14] If file is not equal blank
[00:31:17] If the link to file
[00:31:19] Is greater than zero
[00:31:23] New from bomb bars
[00:31:27] I think the file is greater than zero
[00:31:30] New from bomb bars file
[00:31:33] Now that that's gonna throw an error potentially so
[00:31:39] Actually if it can't find it we just want to ignore it
[00:31:49] So
[00:31:53] We don't we don't really care
[00:31:57] Silently
[00:32:01] Ignores
[00:32:02] Bonvars
[00:32:05] If set and pointing to something that does not exist
[00:32:13] All right, so
[00:32:16] New from file, so we have to check if that file exists F utils
[00:32:22] If you tell exists
[00:32:26] All right, so if the link the file is greater than zero and
[00:32:32] If you tell exists
[00:32:37] File then new from file
[00:32:41] All right, so is this a thing yeah
[00:32:44] All right, so let's do new from file. We're gonna do a thing. Let's put it right here long new from
[00:33:00] The problem is is that the load command is broken I
[00:33:07] Think what we need is a read command in addition
[00:33:11] so
[00:33:15] Yeah
[00:33:19] New from
[00:33:22] Creates a new map
[00:33:27] And reads and calls read
[00:33:45] I guess we could call it load from
[00:33:54] On it
[00:34:03] Let's see this stuff, okay, so load from
[00:34:07] If we do new from we could do load
[00:34:11] From
[00:34:15] I mean if we do load load from
[00:34:18] That's gonna blow everything else out, right?
[00:34:23] What does load do already?
[00:34:28] I think load is part of the bombs lander face and it needs to just do the right thing
[00:34:40] Set load load from load is not part of the interface. So
[00:34:54] Was the latest file and unmarcils in damn I
[00:35:05] Don't know if we want to have a load from here and the reason for that is because
[00:35:10] I
[00:35:15] Feel like it's gonna blow away the other one
[00:35:20] So
[00:35:28] To the current file it would be we'd have saved to
[00:35:33] So these things fulfill the interface
[00:35:36] All right, so and and we're gonna need over right to we're gonna need all that because these things are all operating on the
[00:35:45] on the interface and
[00:35:49] They're there
[00:35:51] That's nice and all but
[00:35:54] We actually need more precise control so
[00:35:59] This is actually kind of an interesting factor
[00:36:01] I didn't realize we were gonna be refactoring this in the middle of it. This is really good though
[00:36:05] So if you tell you this map in it, so
[00:36:14] I mean we could create a new map and then
[00:36:17] the application see the difference here is that the path ID and and
[00:36:26] The all of this information can't be said it's all inferred and quite frankly
[00:36:34] That's kind of a it's kind of a bad thing
[00:36:40] because
[00:36:44] You know, I wonder if that should be left to the people doing a knit instead and
[00:36:50] Then no we can't do that
[00:36:53] No because the map has to know where stuff goes although
[00:36:56] I kind of feel like the map could have just had a path and then it could have resolved and done the
[00:37:00] And then on the path instead of all these fancy things, you know, I'm saying I
[00:37:06] Don't think of these things need to be there
[00:37:10] I the map and the mutex do but the idea in the path
[00:37:17] I
[00:37:22] Don't think you need the application name and have I think we should have just had a path period I
[00:37:28] Just I don't think we should have had a caster. I think I think we need to really rethink this because
[00:37:34] Otherwise, we don't have a way to associate with a specific file
[00:37:38] It should not have the intelligence to do that if we do that. We're gonna break
[00:37:43] Bar maps, but we need to break bar maps anyway
[00:37:45] So this is actually really good exercise because this shows you about tight coupling and the problems with tight coupling
[00:37:51] So this the previous implementation of this bars map was very tightly coupled to being used by the bonsai tree
[00:37:56] went unnecessarily and
[00:38:00] Releasing that and then allowing the the bonsai to run a knit on its new map and set those variables by detecting from the
[00:38:06] From the system is is a much better thing to do. It's not like it's not like commands can set their own ID
[00:38:12] This is it's the thing so we need the mutex we need the map
[00:38:16] But we don't need this path so so this stuff needs to go so this whole idea of ID needs to just go away
[00:38:23] It needs to go away. We need to delete that right now. All right, so
[00:38:28] Okay, that that's I know this kind of like oh, you know, this is actually gonna change. So what is it gonna become?
[00:38:37] Singles and events. I love them. I'm a big big into signals and events. I think they're fantastic
[00:38:44] When you can use them
[00:38:47] It's not always possible, right?
[00:38:51] Okay, so let's
[00:38:54] Let's let's paint the picture for this so
[00:38:57] So get is gonna do its thing
[00:39:02] Let's just let's come at us out for now
[00:39:05] So we'll compile. I don't I don't want to break anything yet just yet
[00:39:13] All right, what I'm thinking is that
[00:39:16] You can have a map nowhere. It got loaded from I think that's a good thing to have me to be persistent
[00:39:23] new from however would
[00:39:26] We'd do those two things at once
[00:39:29] So that's a constructor that that'll get all that data
[00:39:34] Let's just make sure we haven't broken too many things
[00:39:39] Get status
[00:39:44] So ball bars we change bars we change bars that go
[00:39:51] Do we change bars to go?
[00:39:56] Yeah, we moved it we moved that around
[00:39:59] All right, so I mean what what am I talking about doing? So let me this is this is
[00:40:08] A scene in a clip
[00:40:10] See there you go
[00:40:13] The thing of it is we can actually
[00:40:15] If we do this right
[00:40:19] I mean we could do a lot with this
[00:40:29] We could actually have the bars package also read slices delimited slices
[00:40:36] And
[00:40:38] Then what it would do is it would take
[00:40:41] It would it would create an array of the whole thing by splitting them all
[00:40:46] That's that's what we kind of have on the other one
[00:40:50] If you say what the delimiter is
[00:40:52] Hey, how are you?
[00:40:54] so so this this should be
[00:40:57] setting all this clip data
[00:41:00] We should say
[00:41:07] What it was this this I call it usage ribbon design, let's how are we gonna use this?
[00:41:11] We haven't made it yet, but let's see how we're gonna use it. So we did data equals
[00:41:17] And then we would say
[00:41:20] Vars dot
[00:41:24] Get
[00:41:29] The first thing is the bars as the far as name and
[00:41:39] I
[00:41:41] Mean we'd have to make a new vars
[00:41:45] Had to make a new a new vars map
[00:41:49] I
[00:41:56] We need to have it in order though. We need to say
[00:42:09] Yeah
[00:42:19] So the first one would be the names that we would say
[00:42:30] You know like
[00:42:33] Clip data
[00:42:38] Get clip data
[00:42:40] And then the last thing would be the default
[00:42:45] which in this case was
[00:42:50] Oh, it's not get home config clip data
[00:42:54] XcG XcG. They'll probably this be
[00:43:00] Home clip data
[00:43:04] Yep, so we could say this
[00:43:08] Good data and argument
[00:43:12] Why is it saying that
[00:43:19] Maybe it's not it's not seeing it
[00:43:29] It should be fine
[00:43:32] Why you know happy?
[00:43:36] Bonsai
[00:43:40] Core bars
[00:43:44] I should have automatically found that I only get it there it goes
[00:43:50] All right, so
[00:43:56] I do have a car. Okay, that's what's going on
[00:44:01] Oh boy clip data
[00:44:05] Look data comma enter
[00:44:12] Too many commas Rob right there we go and to find data bars get oh
[00:44:20] All right much better card and I used
[00:44:25] Get rid of you all right, so
[00:44:28] So clips data
[00:44:31] So this will get the this will get the dot clip data in the bonsai bars if it doesn't if it exists
[00:44:41] And it'll get if the other eyes it'll go for the environment where you will clip data
[00:44:46] Otherwise it'll go
[00:44:50] Or it'll give it a default
[00:44:53] Which is OS dot
[00:44:57] User
[00:44:59] How I can't remember?
[00:45:03] OS dot user is it I or OS I
[00:45:09] Think it's OS
[00:45:17] User setting be I guess it must be I/O
[00:45:23] Is it I/O
[00:45:37] Officer reader I don't remember which one it is. Oh soup is done. Hi. Oh nice
[00:45:48] What
[00:45:51] What is it
[00:45:55] What what is it is it SIS that user
[00:46:02] How come I can't remember
[00:46:14] No, it would be in bonsai itself
[00:46:17] User caster I was right. Why didn't it pull up?
[00:46:36] There it is I could have swore I was dead all right, so OS user caster
[00:46:44] Which is a string
[00:46:48] Um
[00:46:54] Okay, it is a string in an era. I was afraid of that all right, so hmm truth be told
[00:47:12] I think bonsai importing bonds I automatically instantiates all this stuff. I remember right
[00:47:20] So it's already loaded
[00:47:24] No, it doesn't there's the exe path. I don't I don't think there's more than that though
[00:47:32] Let me let me check
[00:47:42] It's in the bunk map. Yeah, that's why it's there
[00:47:48] ext path. He's your name. He's doing similar link
[00:47:52] Really make a string buff
[00:47:55] bunk map
[00:47:58] Yeah, you have to call it
[00:48:01] These are not exposed to the template, but they're not exposed as functions. Well, the sometimes I wonder if we should I
[00:48:09] Sometimes wonder if we should do that
[00:48:12] I feel like these functions could be useful to be exposed
[00:48:22] The people could call them on their own promise it would be like in bonsai. This stuff's not in mark. It's just all in bunk map
[00:48:29] so
[00:48:32] Which by the way, it could could be under the template thing
[00:48:40] You see cashier cashier all these things are actually really useful
[00:48:44] compter and
[00:48:47] the reason they're nice because
[00:48:49] They're just throwing away the errors. This is like what you usually really want. So a
[00:48:54] Lot of times that's that's it's okay to go directly to that instead because you know, it's gonna be reliable
[00:48:58] I I'm gonna need to expose all that stuff too. We're gonna figure out where to put that. That's better than their home directory
[00:49:04] These are things people get this wrong all the time. So
[00:49:09] So
[00:49:15] So yeah
[00:49:19] I'm already I'm already instantiating these functions in the in the bonsai package and since this is part of the bonsai package
[00:49:25] I might as well use them
[00:49:26] So these functions are already they're already built in the binary. So might as well call them
[00:49:31] I think they're in separate packages and I think the way it go works is that it creates dynamically linked libraries for each separate package
[00:49:38] Um
[00:49:43] Yeah, so let's take a peek
[00:49:49] Yep, there it is so let's go into like
[00:49:57] God, I don't know
[00:49:59] github
[00:50:02] Calm rvx rob
[00:50:05] Yeah
[00:50:07] So these are all directories. Let's go. Wow, it's got to reversion too. Look at that
[00:50:13] So let's go down. Let's go down. Let's pull down bonsai
[00:50:17] And we get a bonsai version
[00:50:21] 20 or whatever these are all the versions that have been released this other stuff here is as not been
[00:50:30] We won't
[00:50:36] Oh, though, that's that's the CD path the one that's saying
[00:50:40] Yeah
[00:50:43] Yep CD that's a bonsai. Oh
[00:50:47] God zero
[00:50:51] 21 uses all the tag versions and
[00:51:03] So
[00:51:05] This looks like this is actual source code and not the the compile binary. I know the compiled thing is here. I
[00:51:12] Just don't know how it manages. I've always I looked this up a long time ago. It's some DB
[00:51:17] Actually, this is just check sums
[00:51:20] So this must not actually statically link it anymore. It used to save a dynamically linked library in there
[00:51:25] Tatsu, how are you?
[00:51:27] It didn't used to save a dynamically collaborator doesn't get it more so it's all there
[00:51:36] All right, well, we didn't get down with our with our port because we got stuck in other fun stuff like dealing with
[00:51:43] Reading reading of things. Let me go check on the soup and I'll be right back
[00:52:05] You
[00:52:35] You
[00:53:05] You
[00:53:35] You
[00:54:05] You
