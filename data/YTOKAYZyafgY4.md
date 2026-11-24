# 🎄🚀 Holiday Boost 2024 - #4: Setting Up WezTerm, Bash, Neovim and Vim Plugins

Continues a beginner development environment setup, focusing on installing and configuring the WezTerm terminal with the dotfiles setup script and fonts, and getting Bash running in it on Windows and Mac. Also covers the lineage of ed, vi, Vim and Neovim, setting up the Vim configuration, checking the Vim version, and activating plugins.

Chapters:
0:00 Why WezTerm instead of Alacritty
6:01 Installing fonts and WezTerm configuration
15:00 Running the WezTerm setup script
18:00 Installing WezTerm and editor tips
27:03 Verifying Bash runs inside WezTerm
30:05 Troubleshooting Bash setup on Windows
36:02 Beginner system and Linux distro advice
42:00 History of ed, vi, Vim, Neovim
45:05 Setting up and testing Vim
51:03 Terminal colors and default editor
54:05 Activating and using Vim plugins

`#wezterm #vim #bash #terminal #dotfiles #linux #coding #education`

## Category

Science & Technology

## Transcription

[00:00:00] All right, so we're gonna boost how they boost number three and we left off having set up bash and
[00:00:08] Bash our C. So we have a nice pretty terminal now and a pretty command line now
[00:00:12] We need a pretty terminal and I I'm gonna start by saying I
[00:00:17] Didn't know about was I mean I'd heard of it for you know or a while maybe a month or two
[00:00:23] But I hadn't really given it try and up until last week
[00:00:26] I was using alacrity and alacrity has got a lot of problems and I told you it wasn't gonna compare the two
[00:00:30] But there is a if you go to my books list
[00:00:32] There is a why not alacrity summary of why I dropped alacrity, but most important reasons are
[00:00:38] compatibility with control left bracket for escape over VNC
[00:00:43] the use of
[00:00:46] You know just not supporting emojis at all
[00:00:50] In terms of like color pickers. There's just a lot of reasons not to you
[00:00:53] But why I should use Wes term instead so Wes term is the biggest
[00:00:59] accomplishment in terminal
[00:01:01] Science and tech that I have ever experienced in three years. I it is absolutely amazing
[00:01:06] It uses little for configuration and a bunch of a bunch of really amazing reasons that you won't understand right now
[00:01:12] I'm just gonna ask you to trust me on this one, but it is great. Is there gonna be another terminal come up?
[00:01:17] Yes, in fact one of the subjects you're gonna get the most fight with people on the internet over is the best terminal
[00:01:23] You know what and I debated for a long and hard why not just use the bail built-in terminal
[00:01:28] So up to this point in the book that we've been working through
[00:01:31] You we have used the default terminals and they're not horrible. They work, right? They work and
[00:01:38] But you know, they have they have limitations
[00:01:40] So let me show you one of the limitations of why we're using Wes term really quickly and one of the limitations
[00:01:45] so I'm gonna bring up the old terminal here and I'm gonna run something called sunrise and
[00:01:50] As you can see the colors is pretty slow and the colors are janky. It's because the built-in
[00:01:55] Terminal for Mac. It does not support millions of colors. It's also slower. It's not GPU accelerated
[00:02:00] That means the graphics processing unit that runs games can be used to accelerate your terminal
[00:02:05] Windows terminal preview also has that but it's not nearly as good as Wes term
[00:02:10] What's term was written to rust if you care, which means it's wicked wicked fast
[00:02:13] There's one thing nobody will debate about on rust. It is the fastest of all the things out there other than see
[00:02:19] So, you know, I'm not kidding. Nobody's nobody, you know
[00:02:23] Any level of sanity would ever argue that rust isn't the best language you write a terminal in I completely agree with that
[00:02:29] Lockety is written in it as well as was term. So a modern terminal. Why do you need it?
[00:02:33] Well, if I I'm gonna show you now, I'm gonna do that exact same command that I just did
[00:02:37] but
[00:02:38] We're gonna do it in was term
[00:02:42] And as you can see it's much smoother
[00:02:45] it's got millions of colors and it supports all kinds of things including if you haven't already noticed italics and
[00:02:54] It's just it's just all around better. There's the entire quality of it. It supports more
[00:02:59] fonts. It supports better
[00:03:03] You know more granularity on the fonts into the fonts just looks sharper
[00:03:07] I know it's you just just trust me. Wes term is like
[00:03:10] Overwhelmingly better and for that reason we're gonna actually install it
[00:03:15] And I pretty much said all that in our first paragraph
[00:03:18] So how do we install it?
[00:03:21] Well, it's probably not gonna be much of a surprise effect
[00:03:24] This steps gonna go very quickly because we already wrote an installer for you
[00:03:29] So you can go ahead and use that if you want now
[00:03:33] You're probably still using the old terminal. So let me pretend like I'm you I'm gonna pick pick up the old terminal here
[00:03:39] And and you know, I've got the new, you know, the new bash, whatever
[00:03:43] I'm using a different color scheme, but you basically idea and so so where are we we got to go into dot two
[00:03:52] In my case to your probably daughter dot files and there is so where are we gonna go into now?
[00:03:57] we're now we're gonna go into the was term file directory and you see we do an LS we see a bunch of things in here and
[00:04:04] We have what I want you to notice in here is that we've actually
[00:04:08] Downloaded for you the Ubuntu Mono Nerd font. This is an open source font. It's a hundred percent free
[00:04:15] So nobody need worry and we bundled the font into the dog files so that you don't have to go get it
[00:04:22] It's already there. So
[00:04:24] And we put it into the setup script. So let's go look at the setup script more or less setup
[00:04:30] And you can see that it's there in order to read this better though. I'm gonna actually use
[00:04:36] View instead. So this is something new
[00:04:39] I'm gonna run view instead of more setup. I'm gonna do view setup
[00:04:43] Now the thing for view setup is view is actually using the eye
[00:04:47] So I'm gonna use my arrow keys and I'm gonna navigate around in view right now
[00:04:53] To look around now
[00:04:54] This is you don't know this yet
[00:04:55] But you're actually using the vi editor when you do this and you're looking around
[00:04:59] Why am I having to do this because you can read it better because there's color and there's syntax highlighting
[00:05:03] It's with better than less, right?
[00:05:05] So we're just we're just looking at it
[00:05:08] And you can see that it's gonna copy this it's gonna hard link of I mean sim link a file for the the configuration file
[00:05:14] Lua is a language if you know Roblox it was written in it
[00:05:17] and
[00:05:19] So if the operating system is a Mac it means it's called Darwin which is VSD Unix
[00:05:25] Then it will install using brew and it will install a font config
[00:05:29] If it's emsis, which is specifically git bash or emsis 2, but you don't know about that yet
[00:05:36] Then it will install those fonts for you
[00:05:38] We'll actually run PowerShell and it will go out and grab the latest Ubuntu amount of fonts and install them for you
[00:05:47] What else does it do it? It says again? If you don't understand, I'm just giving you the overview
[00:05:52] So you can know I'm not doing anything nefarious here
[00:05:54] So here it's gonna run this is gonna say if I already have local share fonts installed
[00:06:01] Don't bother otherwise make a directory and unzip the fonts in there and then try to run them
[00:06:06] I'm not sure that this actually works. I
[00:06:11] Think this is the way it's supposed to work
[00:06:13] But this actually this piece might still need to be fixed
[00:06:16] So I might be changing this but you don't have to worry because if I do change it will change it in the dot files
[00:06:22] It went in doubt if the fonts don't work out and you need to do the install
[00:06:26] I'm gonna show you an alternative way to get them to work just in case this doesn't work for you
[00:06:31] But we why are we getting a bunch of model fonts because the font you're looking at right now is a bunch of money
[00:06:35] It's just easiest to read. I've loved it for years people are always asking me for
[00:06:39] You can you wouldn't know that ever fonts you want the default was from fonts are not horrible
[00:06:43] but if you're gonna use this particular installer you're gonna want to do this and the reason for that is because
[00:06:50] the fonts are
[00:06:52] Built in to the configuration. Okay, so
[00:06:56] How do you quit BI? This is a big meme out on the internet. So we're actually in BI. How do we get out?
[00:07:03] You can just do shift is easy and that will get you out. Okay, so two capital Z's will take you out
[00:07:09] You can do a lot of other ways to get out, but that's probably the easiest. All right, so
[00:07:15] Now what let's go look at something else. Let's look let's go use view
[00:07:20] To look at Western. I'm gonna make a little sign up
[00:07:26] Wait
[00:07:29] Give me a second I just gonna see see see document
[00:07:40] Move to view with less
[00:07:45] For viewing because syntax something. I want to change in the book actually
[00:07:51] I'm just making a note here to go change that in the book
[00:07:54] All right, so
[00:07:58] Anyway, so let's actually do this. Let's do view view was term and you can see it was term now
[00:08:05] And again, you can use it
[00:08:08] It says those EQ does not yes, I know
[00:08:11] CZ is easier to remember. Yep, and in that case is easy. He's usually always what you want
[00:08:17] Because you want to say when you exit
[00:08:20] No boy somebody clip my rest to comment
[00:08:25] Dude, I I have never said anything bad about rust for for terminal stuff. I've always said it was positive
[00:08:31] So here we go. So I am using the arrow keys. I want everybody to see me using the arrow keys here
[00:08:36] There's no shame in using arrow keys. You don't know how to use the eye yet. So don't let anybody shame you about using arrow keys
[00:08:45] Okay
[00:08:47] Not when you're first starting out when you're first starting out. It's okay
[00:08:50] Again, I did view and I'm using the arrow keys and look around and
[00:08:54] What does this thing do? Oh my gosh, okay? Well, first of all, it's Lewis. So you can see it's a different thing
[00:08:58] It's checking to see okay. What OS it is and okay, that's cool. It's telling us what kind of shell
[00:09:05] Oh, hey, look, there's where it decides to run bash. That's cool. Okay, then it says oh, hey
[00:09:10] If it's on a Mac use home brand home home brew bin bash
[00:09:14] Which is why we need to do the you know the bash install in order to use the right one for to get the right one
[00:09:20] and
[00:09:21] Actually, I think that that's plenty without actually changing it to be a default shell
[00:09:25] I think it actually will work just doing that by itself
[00:09:29] The detect font so this is actually we spent a lot of time on this
[00:09:34] Bontum mono is the way the font gets detected on Windows. It's actually a bunch of mono nerd fonts on that
[00:09:41] We're still struggling a little bit with the Windows fonts
[00:09:45] It's yeah, so here we have
[00:09:49] We don't want to be prompted every time we close we want to set that up
[00:09:52] We use the built-in group box material theme which is the colors that I'm using right now
[00:09:58] We're going to detect the font. I'm going to set the font size of 26
[00:10:02] So you're looking at a font size. It's like 37 right now. So that it's easier to read with my base on the screen
[00:10:08] And then I set I set the cursor colors a little bit
[00:10:12] You know, they're a little too bright for my taste so I kind of turned them down
[00:10:16] You don't know what CSS colors are or anything like that yet
[00:10:18] But they that is something that we could look at a little bit of padding
[00:10:23] And this is I put this here just for information
[00:10:26] So those of you who want to see my values, that's what that's what are it's what's going on here
[00:10:31] This actually starts up my stuff exactly where I want to and I don't have any decorations. I don't have
[00:10:38] Like the tabs at the top of a Western and I don't suggest doing this if you're on Windows because on Windows
[00:10:44] There's no team looks so having those tabs at the top in fact team looks
[00:10:49] Because it's not available on Windows
[00:10:51] A lot of Western users in fact Sergeant Pepper another streamer
[00:10:55] Said that he he has gotten used to the multiple tabs and and using that on Western on Windows when
[00:11:04] When you know when there's no there's no team looks you don't have a team up says yet
[00:11:07] Too much there's a way of having multiple windows inside of the terminal
[00:11:10] But but so so so to mux
[00:11:14] Being absent means, you know the Western is kind of nice
[00:11:17] So I don't recommend turning into that on but so now that's a brief summary of what's in the file
[00:11:22] All right, so now having gone through that again is easy to quit
[00:11:25] If you somebody mentioned in the chat, you can use EQ if you don't want to we're gonna learn BI later
[00:11:30] Okay, and you can pick from the five different ways of exiting at that time right now as a beginner
[00:11:36] It's just easy to remember ZZ top in fact. I used to play the ZZ top legs video
[00:11:41] Probably not suitable for work
[00:11:43] So when you want to remember how to exit them just remember ZZ top that's the mnemonic device the legs video
[00:11:51] She got legs
[00:11:53] She knows how to use them. Yeah, I'll answer that question a bit. Okay, so it's so
[00:12:02] Seriously, if you have not seen is easy top videos, especially if you're a 13 year old boy, which is the target of this book
[00:12:10] Go watch every ZZ top video right now
[00:12:15] You can thank me later. You can thank me later. Oh
[00:12:22] Then you come back and we'll talk about who your favorite ZZ top girl is I know it's probably not appropriate for me to suggest that I
[00:12:29] Did anyway, I'm sorry. I'm such a bad Santa
[00:12:35] Anyway, here we go
[00:12:39] What was I saying now I can think about is is the brunette in this easy top video? Oh my gosh
[00:12:45] Okay, so anyway, I was 13 once
[00:12:49] I'm kind of 13 going on 58 or whatever
[00:12:52] So their favorite ZZ top girl is the one with the beard lol
[00:12:58] Is it?
[00:12:59] So why when you think it's easy top you're gonna think about ZZ and you'll remember how to get out of him see what I did there
[00:13:06] See
[00:13:08] It's not a wizard thing, but it's a mnemonic device
[00:13:11] Sexy girl equals mnemonic device get it
[00:13:18] Okay, so have we looked at all the files in here Rob? Yes
[00:13:22] We have we haven't looked at it set up yet. Let's look at that one. So we're gonna view set up
[00:13:26] We viewed set up. Yeah, I'm using arrows. I'm using the arrows
[00:13:31] Okay, I'm gonna tell you something right now if you want to instead of using arrows
[00:13:35] You can put your hand in the middle of the keyboard so that your fingers are on JK and L
[00:13:40] And you can push J for down and K for up and you can do L
[00:13:44] They go over here and you can do H to go over here. Why don't you try it right now? Okay?
[00:13:49] And you tell me which one you want. Okay, this is we're using VI bit view the really great thing about using view is you can't hurt anything
[00:13:57] By using view
[00:13:59] You're using V. I don't know this yet, but you're using VI in read-only mode
[00:14:04] So even if you were to try to change something you can't hurt it
[00:14:08] You can't hurt it and a lot of beginners a lot of veterans don't know about view
[00:14:12] I'm telling you right now. It's very useful because sometimes you just want to be absolutely sure
[00:14:17] I am not gonna absolutely you know accidentally fat finger something in that file and by using view instead of VI or VIM or whatever
[00:14:26] It tried to change it. Yeah, well, they'd have to know about that, but you know, yeah
[00:14:32] So so yeah, so like if I try to change it it just it won't it won't change it, right?
[00:14:39] So I mean, I'm not look don't change it, but you know, I'm just trying it. That's why that's the difference between view and VI
[00:14:47] So we already looked at this file, but this is this is the one that's doing all the setup installation
[00:14:51] We looked at it already again ZZ and I'm out of there. All right, so now what I?
[00:14:57] Do this all the time just cuz all right, so we're ready to run it
[00:15:00] What and so let's just do it you can do dot slash set up
[00:15:04] And you can go ahead and and run that and that will set up your your wes term loop, okay?
[00:15:09] Now I'm not gonna do it for one reason only because I already have a customized wes term set up
[00:15:18] But you know what to do here, right?
[00:15:20] Notice don't forget the dot slash and make sure you're in the directory the right directory and do dot slash and run that right now
[00:15:25] You're go ahead and run that right now. Okay, and when you run that after you run that you can actually test it and
[00:15:32] The way to test it is quite simply and I'm gonna actually turn mine off. So I'm gonna turn
[00:15:39] I'm gonna turn off the question this thing here. So let's show you how to how to start it up
[00:15:45] And let's actually let's go on let's go on
[00:15:50] Windows and try it. Okay, so let's let's do our windows one. So this is a brand new one
[00:15:54] So let's go ahead. Let's go. Oh wait. I forgot to show you something
[00:15:57] So did you see how I went cd dot dot that went up a level?
[00:16:02] So I'm in dot files and I went cd dot dot and went up
[00:16:08] So you're so right
[00:16:12] Hey, and you're gonna set right with or with that. Yes
[00:16:17] Yeah, okay, so thank you for that
[00:16:23] So wq is not a thing
[00:16:26] Yeah, wq will quit, but don't do it. It's just too hard to type
[00:16:30] Why would you type that and not just easy? I'm telling you trust me do ZZ
[00:16:34] It's way easier to type
[00:16:37] Nobody ever talks about it. That's the way you should do it
[00:16:39] If you want to learn the extra ones that take five extra keystrokes, I'm fine. I don't care
[00:16:44] I'm telling you ZZ is what I teach people use ZZ. It's easier to remember. It's faster
[00:16:50] The only other yeah, anyway, so I don't do ZQ. It's too hard. I do wq exclamation point
[00:16:54] But that we'll talk about that later. All right, so we got to run our thing here
[00:16:58] Are we in the right place? And I don't know what am I looking at here? Okay, I'm in the wrong place. So cd was term
[00:17:05] All right, LS. Okay, there's my stuff. I already know what's in there. I looked at it. So now it's time to run it
[00:17:12] You top does not have the same ring to it
[00:17:15] We're learning how to code and we're working through the book. It's in the chat. So click on the pin
[00:17:19] You can go follow along. All right
[00:17:21] So as you can see I know that the windows was term setup works because I've gone through this extensively
[00:17:27] This doesn't solve the nerd font
[00:17:29] There is some question about whether the mac one has a bug in it or not
[00:17:32] But that will rest assured it'll be fixed in the dot files template if you want to follow that template
[00:17:37] You can go click on it
[00:17:38] You can follow it on get up if you want to see about notifications or changes
[00:17:41] So here we go. We've got the nerd font. This is all installed. So now now what we can do. So
[00:17:46] So actually right now I can start it. So
[00:17:50] I'm gonna go exit and now I'm gonna go start I can you know
[00:17:53] I can either click down here and type it in or if you want to do the hotkey you can push the windows key same thing and
[00:18:00] Then you can type was you just have to type was you're not type the whole thing usually just type was enter and
[00:18:06] You're gonna get the Western and there's your happy pretty Western now what I'm gonna show you here is that
[00:18:14] that
[00:18:17] You know we
[00:18:20] Well, I don't know if you've even got Western installed yet
[00:18:23] Do we forget that step? I'm not going through the book and I'm being bad. I forgot to install Western
[00:18:30] We can figure wisdom, but we didn't install it whoopsie. All right, so let's actually let's install it
[00:18:35] You guys don't know you don't have it. I'm I'm I'm bad streamer bad streamer. Okay, so back up
[00:18:40] It doesn't matter if you did it out of order. The book is in the right order. Okay, so let's actually do it the right way
[00:18:46] So let's go back to bash
[00:18:49] Let's pretend like I didn't do that. Okay, so so here's bash again. So let's install Western. All right
[00:18:55] And I believe it's I don't remember what it is. Let me show you a new can this is bonus command for the viewers at home
[00:19:04] Yeah, you can't yeah. Yeah, yeah
[00:19:07] I'm trying to install it by yeah, you can't do less what you need to do there is you need to go execute it
[00:19:12] I'm gonna show you. I'm so sorry. Yeah
[00:19:15] so
[00:19:17] CD and what is it dot files to?
[00:19:22] All right, so the way to
[00:19:24] To install let's go into the installer CD into install
[00:19:30] Oopsie
[00:19:32] CD dot slash install and
[00:19:36] Wait where to go?
[00:19:38] Where am I I don't feel like I'm in the right place. I
[00:19:44] Feel like I'm in the wrong place here
[00:19:48] Guys don't don't worry. I'm I'm missing things up here. Okay, so
[00:19:52] Don't do you don't have to worry about this. Okay, let me get let me catch up. All right, so you see the end to install and
[00:20:00] Okay, there we go. So you see all those installers in there
[00:20:06] It's easy pretty often I don't want to accidentally you setting is easy to know up
[00:20:10] Anybody watching my stream right now on twitch disregard with that person just said that is ridiculously stupid idea
[00:20:17] I mean, I respect your right to do that if you want to but
[00:20:22] That's the second stupidest thing I've ever heard. That's almost as stupid as like remapping control C to escape
[00:20:30] I rent your whole comment
[00:20:32] Because you see pretty often I don't actually end up I'm close if they have a
[00:20:36] Sorry for trying to be a true Scotsman. There are many ways to yes
[00:20:40] Yeah, that that's an absolutely horrible idea
[00:20:44] That's one of the stupidest ideas I've ever heard
[00:20:50] Okay, fine anyway, so
[00:20:54] This person has disabled ZZ on purpose because they're afraid of accidentally pushing ZZ to exit their editor on accident
[00:21:02] First of all if you accidentally did that who cares you're you've exited them and saved at the same time
[00:21:09] So you just open it back up again worst case scenario best case scenario
[00:21:13] You don't fat fingers ZZ all the time and you actually use it as the fastest way to exit them I
[00:21:19] Don't want to hear that again. Okay. Here we go. So
[00:21:23] Yeah, you do you but I'm telling you that's dumb so
[00:21:27] People all right. We're installing wisdom because I forgot to tell you how to do this. So view
[00:21:33] was term and
[00:21:37] What do we got here we have a was termed thing?
[00:21:42] That's running
[00:21:43] You can't really see it very well because I'm running bash
[00:21:47] But you can see that there's a win and get if you feel more comfortable. You can just run win get install was termed
[00:21:53] Do why don't we just do that you get you know what you can just look at the script if you run the script
[00:21:57] It will do that it will do that for you, but let's just actually do it
[00:22:00] When get install - - ID. It's not that hard, right when get
[00:22:06] Oh, sorry was
[00:22:09] Was dot was term and that'll go install was term for you
[00:22:16] Mine's been already on there. So it doesn't need it and and now we can go back to the previous step which is go ahead and add
[00:22:25] Was term by the way my strongest agreement with what you said, you know, I still love you
[00:22:30] You're probably a wonderful person, but that is a horrible suggestion. Okay, so
[00:22:36] Anyway, here we go
[00:22:39] Wes term
[00:22:41] So there we go and push enter and now we get was term. All right, so let's let's talk about Western for a second here
[00:22:46] Well, it's up now. I know it's not very I'm gonna zoom in
[00:22:49] So this is something that's super important on Windows. Okay, on I am not a tabs person
[00:22:56] See how you can open up multiple terminals by opening multiple tabs, right?
[00:22:59] I am not I don't like tabs. I think they're a waste of time
[00:23:04] I would rather use T mux and you'll learn about that in terminal velocity, but what I want to tell you is that
[00:23:10] for
[00:23:12] That for when it comes to Windows since you don't have T mux yet. This is actually extremely nice
[00:23:20] right, this is extremely nice and
[00:23:24] so in the absence of in the absence of T mux on Windows as an absolute beginner and
[00:23:31] I mean that as an absolute beginner you do not know about these other things
[00:23:35] Don't let people tell you that you need to know about them now. It's gonna distract you
[00:23:38] We've already talked about it too much. So just know that this is gonna give you the ability to work on two things at once
[00:23:44] You can open up another tab and you can have that running your tests
[00:23:47] And you can have and we're gonna do that and the other tab
[00:23:50] You can have that to be where your code is running and another tab can be your test cases
[00:23:54] So you can have three files open at the same time without having to get into the fancy ways to do that
[00:23:59] Using n-bim or T mux you can just have three tabs open for now
[00:24:05] And let me just say that right now for now as soon as somebody hears this this this kind of speech
[00:24:11] Like activates a certain type of person because they're like, oh my god
[00:24:16] I can't believe you're teaching him that that's like so such a waste of time and blah blah blah blah
[00:24:20] And there's a million other ways to do it and why are they using multiple new in the oven panes?
[00:24:23] All right, you're teaching that first of all new in panes are painted
[00:24:25] Yes, and you shouldn't learn them you should run multiple t-mux windows because you can cut and paste from shell and VIM processes
[00:24:30] Which you can't do with in panes. I could go on I'm not going to I'm gonna stop right there
[00:24:35] I'm gonna say this for right now as an absolute beginner
[00:24:38] Just know that if you need a new window you can use it using using
[00:24:43] Wester, okay, you can use Wester me you can open up a new window, okay, and that that's the only thing you need to take away from that
[00:24:51] You'll notice that you're already using the bash prompt
[00:24:55] You don't have to do anything extra for that if for any reason you are not looking at this
[00:25:00] You need to stop and get this working because we're gonna proceed from this point
[00:25:04] And and and that's it. Let's go back to the book and review at what we've done so far
[00:25:09] So we did install Westerm. We did it kind of out of order. We were installed Westerm
[00:25:15] And you can do you can just install it like I did or you can do it with the win get the way
[00:25:19] I did the way that by just looking in the file
[00:25:21] It doesn't matter as long as it gets on there and then and then we did some other things, right?
[00:25:25] So we did the setup. Here's the setup steps
[00:25:29] Here says command.exe in the tab that means you didn't run the config yet. So that means you didn't run the config properly
[00:25:36] so
[00:25:37] Yeah, so if you if you just installed the wiz term you need to make sure to go run this
[00:25:44] If it still says that please let me know
[00:25:47] Okay, so we had somebody we had somebody say in the chat that they're showing command.cmd as their wiz term prompt
[00:25:54] And that means that they're not there their configuration file is not being seen in the right place
[00:26:01] so that means you need to cd into wiz term and you dot slash setup and then what that will do is that will create
[00:26:08] Those things for you, right? It's gonna put this symbol
[00:26:11] It's actually in the case of windows is gonna make a copy of the wiz term that lua file where it goes
[00:26:16] And then the then then and then when you open up wiz term it should open up, okay?
[00:26:23] But yes, oh gosh
[00:26:26] So so here we go. We're gonna do let me just read repeat this step. So if you're not seeing
[00:26:34] bash.exe up here then something is not right with wiz term that means it hasn't been configured
[00:26:41] And if that's the case, let me just repeat the steps one more time go back to your git bash
[00:26:47] Right cd into your dot files in my case. It's a weird name, but cd into each
[00:26:53] wiz term and
[00:26:56] Then ls and then you see the setup file there and then dot slash setup and that will set up that'll install
[00:27:03] Your Ubuntu monofawns and it will copy
[00:27:06] It will either sim like your copy the wiz term lua configuration file so that the first time you run wiz term
[00:27:14] It will be bash. So let me repeat that one more time
[00:27:18] So here we do we're gonna say wiz and now we pull up wiz term
[00:27:22] We have bash as our as our terminal that is the goal if you don't have that stop and
[00:27:29] Work on this and tell that's working for you because we everything else is gonna assume that you have this terminal running
[00:27:38] Okay, so let me go back to review the the book again
[00:27:41] So I talked about in the in the book here. I do talk about
[00:27:46] cd dot dot dot stands for parent directory and
[00:27:51] We we went ahead and started up the terminal terminal shows you how to close it and restart it showed you how to do that
[00:27:56] Congrats. You got a brand new terminal
[00:27:59] You got another command not found
[00:28:01] He says command tab in the tent. Okay
[00:28:05] Did you do dot slash?
[00:28:07] Yes, the custom Westerners actually set it for the terminal. I can think that uses this. No, please don't give them anything like that
[00:28:14] Leats don't give them anything like that
[00:28:16] Not right now beginners don't need it
[00:28:19] Stop stop. No, we don't want cool. We want minimal. We want the minimum
[00:28:28] Senate bash is no you don't
[00:28:31] People if you install get bash properly then everything should just work. I
[00:28:36] Mean from my own stuff. Yes, please
[00:28:38] Yes, late that would be great
[00:28:42] Okay, I ran the commands from the script one by one
[00:28:45] What script are you trying to run?
[00:28:48] First of all, do you have bash on your computer? All right. I'm talking somebody through a problem here guys
[00:28:53] Maybe somebody else has the same problem. So we're gonna we're gonna cover this
[00:28:58] All right, so type this for me type which which bash
[00:29:03] Are you okay?
[00:29:05] Let's do this. Okay, make sure you have your bash running
[00:29:09] Let's let's like go make please please do this exactly with me because I really need to know because if you have a problem
[00:29:14] I need to know about it. So I can fix it in the in the book
[00:29:18] All right, so in the Western setup scripts
[00:29:23] All right, okay, well, let's let's go
[00:29:29] Okay, so
[00:29:30] We're getting we're back. We're running get bash now. Okay, we're not we're not in Western. We're gonna get bash
[00:29:35] Okay, and then we're gonna cd into the dot files
[00:29:40] And we're gonna cd into
[00:29:44] Western
[00:29:46] All right, yeah, that's wrong
[00:29:50] That's totally wrong and that that means you're not using get bash
[00:29:55] Because I mean look I
[00:29:59] Don't know how you got that on your system, but
[00:30:05] Yeah, did you did you do the bash set up already?
[00:30:11] Yeah, you're using a different bash completely
[00:30:15] So I don't I don't know how what step
[00:30:21] Okay, that's good. That's what it should be
[00:30:24] That's what I'm trying to tell you so but here. Okay, let's do this
[00:30:30] It looks like you need to do your bash setup
[00:30:32] We'd already did that step, but that says sounds like you missed that step
[00:30:36] So let me let me go back on the system and get rid of my get bash and we'll pretend like we did everything from scratch
[00:30:42] Okay, and we already did this in a previous video, but I'm gonna do it again
[00:30:46] All right, so we're pretending here we go. So I'm gonna take you from
[00:30:52] From absolute scratch. Okay, so we just installed get bash. Okay, just installed get bash and
[00:30:59] bash enter get bash is on the screen. Okay, and
[00:31:07] You know, it's
[00:31:10] Yeah, I think it's still actually finding my my bash rc. I think it is
[00:31:16] It is I thought I deleted it, but
[00:31:21] I mean it's really hard for me to reset the system. I need a VM so I can do that, but
[00:31:27] All right, there we go. All right. Do you have this?
[00:31:31] Do you have this and when you have this get let me know?
[00:31:35] All right
[00:31:37] go
[00:31:38] Do you do you have?
[00:31:40] It's up here is the same in GW
[00:31:44] And does it say see users Rob? Do you have that?
[00:31:50] Because that's what we need to get we need to get to the point where you haven't done any bash setup yet
[00:31:57] right and
[00:31:59] And and when you're doing this and you do which bash it'll say user bin bash
[00:32:04] Okay, and that's fine because that's the bash that comes with get bash
[00:32:09] but
[00:32:10] Okay, now with CD we did the clone of the dot files
[00:32:14] So now we're going into the yours is yours is probably dots dot or dot files whatever yours is minus dot template
[00:32:20] So from inside of here, we're gonna set up bash again
[00:32:25] So we're gonna go into bash
[00:32:27] And we're gonna do now that file is showing as executable, which it is absolutely is not I do not know why that is
[00:32:38] That should not be
[00:32:40] executable I
[00:32:43] Have no idea why that is that's kind of weird actually
[00:32:46] That that file is not executable in in github. I don't know why that's listed as executable there
[00:32:53] It's some broken thing on github
[00:32:56] It absolutely is not executable. I don't it's stupid so
[00:33:03] Why why would it do that? This is Windows stupidity anyway, so
[00:33:09] Okay, so now we're gonna dot slash setup
[00:33:13] All right, so that's gonna create the symbolic links and and now rather than try to do exact bash dash shell
[00:33:19] let's just exit and
[00:33:21] Then let's go back and type bash again to get a new bash shell
[00:33:25] Just to be absolutely sure and now now
[00:33:29] I mean which bash should be the same, but you should see the terminal should be different now and
[00:33:35] It windows is stupid, but I'm trying to it's still easier for beginners than to force them to install Linux right now
[00:33:42] I swear by that
[00:33:44] Okay, so now we've got it now. Let's cd into dot template again or whatever yours is dot files whatever
[00:33:51] now, let's go into was term and
[00:33:56] Well, I mean we already installed was term, right?
[00:34:00] So you already went into install or however you want to do this, but we did was term install
[00:34:07] Wes term
[00:34:10] Tinsel was term and it's gonna install the fonts and everything, but it doesn't need it so it's already there and now we're gonna configure
[00:34:16] was term so we're gonna compete into was term and
[00:34:20] we're gonna run setup in here and
[00:34:23] That should install the symbolic links and create the was term configuration file
[00:34:30] and
[00:34:32] After that we can exit out of bash and we can type was term and
[00:34:38] We should have bash
[00:34:42] Yeah
[00:34:45] It's a lightweight good OS currently one lags a lot
[00:34:49] It's if you're gonna reinstall a different operating system and you have that option then and you know about Linux then install Linux
[00:34:57] But that's not everyone it used to be when I taught this stuff. I required people to have Linux installed
[00:35:03] But if you don't have Linux then if you don't know what I'm talking about then
[00:35:07] And we're not covering that in in this every time we try to cover installing Linux
[00:35:11] So it took us like a month to get everybody up to speed on Linux before we could even write code
[00:35:16] Which a bunch of men
[00:35:19] If you're gonna do a desktop do a bunch of men if you're a beginner the end
[00:35:22] because it won't blow up on you and
[00:35:24] It won't take you four months to master before you can start writing the code the reason everybody
[00:35:29] It's a super important the reason that we are not screwing around with Linux distros and pods and VMs right now
[00:35:35] Is because we want to get coding and every time that we screw around with that
[00:35:40] It takes us two months to get everybody up to speed before they can even write in a first line of code
[00:35:45] because all of all the installing and all the fighting about what Linux just ready to use and
[00:35:51] It just gets crazy and and I'm if I was dealing with you one-on-one
[00:35:55] I would have you create a Linux distro on your laptop and I would hand guide you about how to do that
[00:36:02] But because I'm not with you one-on-one the best thing we can do so we can get coding is set up get bash on Windows and
[00:36:10] Set up the terminal and West term on Mac the end
[00:36:13] if you've installed Linux you're already ahead that far if you know how to install Linux on your own or you know
[00:36:19] How to use containers or VMs or some by the way dot the then you know you can go ahead and do that
[00:36:24] so
[00:36:26] Ubuntu mint
[00:36:27] Linux mint
[00:36:29] Cinnamon specifically that's my favorite Linux distro for beginners because it's never done anybody wrong. It doesn't blow up
[00:36:35] Papa West blew up
[00:36:36] Montreal blew up on beginners. I've had I've had beginners in tears because they thought they broke their computer because of Montreal. I'm just telling you my experience, okay
[00:36:45] Mintus mintus and down the most stable Linux distribution on the planet. Is it the newest? No, it's not
[00:36:51] It's the most stable. It's the most supported. It's the most stable. It's the most mature. It's the most boring
[00:36:57] It's perfect for a beginner
[00:36:59] if you're a beginner look if you're
[00:37:02] I'm I'm getting frustrated here because we how much time we already lost on this topic, right? We're 10 minutes on
[00:37:08] What's wrong with Windows?
[00:37:11] All right, so
[00:37:13] Opps out of the snap packages. Yeah, which I like I know I love that. I love that minute. There's a reason that I pick mint, right?
[00:37:21] Yes, my mom uses mint. Yeah, yeah, people are gonna use it look arch if people gonna flex on you about their Linux ask them what they've done
[00:37:29] People who love to flex about their Linux just trying stuff don't do anything
[00:37:33] They spend all their time configuring their distro. They don't actually get anything done. I want to get stuff done
[00:37:39] I want to get you coding. I want to get you to start writing code right now as fast as possible
[00:37:43] If you want to spend time customizing your terminal great
[00:37:46] We're gonna cover that in terminal velocity next in another book
[00:37:50] Okay, and I'm trying really really really really hard to go against my own impulses here
[00:37:55] Which is to have you just you know put a links container on and be done with it
[00:37:59] And so I have to make Colonel before the drivers man has the Sir Lansing
[00:38:04] Yeah, we're not even talking about that mint is absolutely good. David is great. Yes
[00:38:10] Yeah, look we could I mean it never I brought I said Linux and now everybody's got you know chiming in with her opinion right now
[00:38:16] And as a beginner just don't just don't just stay with me. Okay get get bash installed
[00:38:23] Okay, it'll be your first experience with bash plus it integrates with your terminal
[00:38:28] then it was term working the way we've got it working right now and then we're gonna
[00:38:33] Couple other things to do and then we're gonna be writing code. We're gonna be writing code already
[00:38:38] Right and if you want to do all that stuff just know that you can there's nothing wrong with customizing your terminal
[00:38:44] But it's gonna stop you from getting to the coding and I've already spent way too much time talking about this
[00:38:50] but I need to because this is on the internet and the internet is full of
[00:38:56] Part of my French assholes that are don't care about you. They want to flex. They want to show how awesome they are
[00:39:02] They don't want to help you
[00:39:04] and
[00:39:05] And I'm telling you right now. I am here to help you
[00:39:09] Stick with the simple stuff for now poor now. There's gonna be plenty of time to learn all the other stuff later
[00:39:15] okay, so
[00:39:18] Dale I actually think you've already screwed yourself over because you've been listening to other people and
[00:39:23] They've either me or you put me emphasis to or you were trying to experiment
[00:39:27] Well, I was experimenting and you were coming along for the ride and now your system's kind of screwed up because it's got like five different things installed
[00:39:33] So that's why I spend so much time testing this stuff for the first time for the first for the easy person
[00:39:41] Yeah, anyway, so here we go. Let's go next. Okay, so we've got we've got the we should at this point have was term on
[00:39:49] If you don't have an on and you are you're still having problems and you screwed your computer up
[00:39:54] Come into the discord come into our chat ask your questions and we'll try to help you get it working
[00:40:00] Okay, get this working get it working. This is where having a community really helps
[00:40:06] You've got an entire community here on Sundays. It's available to help you you have a discord chat
[00:40:11] You can go to you have you know any number of people you can go to you can come into our IRC chat anytime
[00:40:16] You can say hey, I almost got it running, but I got this problem here and we can help you debug your problem
[00:40:21] The chances are if you're an absolute beginner you don't have these problems because you know
[00:40:25] You've done the steps in order and something hasn't gotten out of the out of control
[00:40:30] And you know learning how to debug those problems and fix them yourself is a skill
[00:40:35] That's good and essential, but that's it's also part of operations, but it's not
[00:40:40] Required right now, right? So we just want to get you the point where you can do the coin. All right, so let's go back to here
[00:40:46] All right, so next we're gonna install
[00:40:48] The new of a matter now this this this is actually kind of a thing for me. This is optional
[00:40:55] You do not need to install the new of a metater in order to participate in anything in this book
[00:41:02] In fact, you already have an editor on your system. You can use right now
[00:41:07] But but it is so easy to install a neo-vim
[00:41:12] That it's kind of worth doing so let's do it. Okay. What is neo-vim neo-vim is the terminal-based editor?
[00:41:19] That's the new VIM VIM is an older editor the improve version of V. I
[00:41:26] V. I is the visual mode of X and X is an improved version of Ed, which is the first
[00:41:32] Which is the first text editor ever made by human beings?
[00:41:36] So BIM is very popular out there. Okay
[00:41:41] People here's horror stories about them. It's actually not that hard as you saw
[00:41:45] We've been using them to view files
[00:41:47] But just pushing the arrows around and then and then you know escaping with or getting out of it with ZZ
[00:41:52] so
[00:41:53] It's it's not as hard as people think people love to make jokes about how hard it is to get out
[00:41:57] You know about ZZ now and you can get out
[00:42:00] Ed is the standard unit senator absolutely is and and X was it was it's credit with came after it
[00:42:06] ZZ says you know Ed came after it and then and and V. I is visual mode of ed and
[00:42:11] VIM is an improved version of the I and neo-vim is an improved version of VIM
[00:42:17] So just so you can see how that all plays out
[00:42:20] That's what it's written up here
[00:42:23] Okay, so
[00:42:25] Yes
[00:42:28] And we still have X or C. I knew him. I don't even know if you have X or C. Is that still a thing?
[00:42:33] interesting, okay, so
[00:42:36] So anyway, it used to be you have an extra C bar change back into the dot files directory. Hey Ben
[00:42:42] So, okay, so well, let's go let's go back to where we were the three group. I'm gonna do this on Windows
[00:42:47] because it's you know not messing with my system here I
[00:42:51] Mac or Windows. It doesn't matter. So in my case my dot files template is called a template yours might be called something else
[00:42:57] so let's go into
[00:42:59] The VIM directory now inside the VIM record. Let's look around. Okay, so let's do view
[00:43:05] view init.lua
[00:43:07] and
[00:43:09] You can see this is Lua language. You can see we've got a configure to help you out
[00:43:14] I actually have the screen keys stuff in here. So you can see the keystrokes that you're pressing on the screen by default
[00:43:21] You can disable that pretty easily, but I left that in there
[00:43:24] A lot of people ask for that and so I went ahead and left it in there
[00:43:27] You notice they're not on right now because we're not running that but
[00:43:32] So to get out is easy. Whoops. I'm doing a macro. Oh, no, I can't get out. There we go. So
[00:43:40] And so that's the first one of that
[00:43:42] You can you can view plug
[00:43:45] plug dot VIM
[00:43:47] Plug dot VIM is a big big plug-in manager that we're gonna use for VIM
[00:43:51] There's no reason to understand anything that's in here. Just know that it's there
[00:43:55] The VIM RC is the core file and at this point usually Neil VIM personal say why are you using VIM RC?
[00:44:02] Why don't you just use a knit dot lua?
[00:44:03] The reason is so that you can use your VIM RC on any system that has VIM or Neil VIM
[00:44:09] It does not require you to have Neil VIM which a lot of times you won't have
[00:44:14] So that's why we use VIM instead of everything in a knit dot lua
[00:44:18] But we have the two files together and if you want to see how those are set up
[00:44:22] I'm gonna show you if you don't if you just want to trust me on this
[00:44:25] We're just gonna run the setup, but I'm explaining it
[00:44:27] So the setup is very simple. It creates a symbolic link to the VIM RC file creates another it creates a directory for
[00:44:34] Auto loading the VIM plug-in manager and then creates a similar to that and then it creates an a knit dot lua file
[00:44:40] Which if you're running Neil VIM will be the first thing to run and then that will pull in or source the VIM RC files
[00:44:47] So that if you have Neil VIM it will use it and if you don't have Neil VIM it will just use the VIM RC and that is
[00:44:56] That actually allows us to use something called progressive enhancement
[00:44:59] So we can detect what's on your system and use what you have and so let's get down with the install
[00:45:05] So I'm gonna type setup here that creates a symbolic links and now we can actually test this by doing the same thing
[00:45:13] We just did
[00:45:15] Actually, let's just try let's do the same thing with BI. So now
[00:45:20] Actually, let's do this first. Let's exec bash -l which gives us a new login shell
[00:45:26] and then we can edit a file here just for fun. Let's do this BI setup and
[00:45:30] You can see that you have the file there now
[00:45:33] This is still using this is still using a different one. So I think we still need to like log out and log back in again
[00:45:40] but
[00:45:41] Let's do
[00:45:43] Yeah, I don't let's see
[00:45:46] Yeah, I don't know if it's gonna work since it was our editor say
[00:45:53] Huh
[00:45:55] I'm wondering why that didn't pull up. I
[00:45:59] Don't know let's try something here. Let's exit and start up start up a new a new was term
[00:46:08] Start up a new one
[00:46:11] Start a new was term
[00:46:15] You could probably just do another thing. I'm just trying to figure out why
[00:46:23] Oopsie control C to stop. I needed to do control C CD and a dot template
[00:46:29] Or whatever your dot is all right. I'm gonna read the read me file
[00:46:35] Yeah, oh, it's interesting. I must not have turned on the
[00:46:40] screen key by default
[00:46:42] I must not have turned the screen key on by default. I don't see it there
[00:46:45] So shifts easy to get out or
[00:46:48] Sips easy is what you're getting out with right now can use the other stuff later. All right now. We're ready to learn them everybody
[00:46:54] so
[00:46:56] That's it. We we are now ready to learn them and
[00:47:00] Let's actually recap a little bit what we've done
[00:47:05] We'll go back into here and
[00:47:09] We are 47 minutes in
[00:47:11] So here you can see
[00:47:15] So we got this we got neo-vam on there. It's installed
[00:47:19] and
[00:47:22] What else we got?
[00:47:23] Hey, don so you got this you got install neo-vam CD into neo-vam.slash setup and
[00:47:29] Then here's something new you haven't seen so you see this dash
[00:47:32] The dash will take you back to what you forgot you were at and I don't want anybody to worry
[00:47:39] Because there's like a lot of things to remember here and there's a review section coming up. That's got every single new thing that we learned line items
[00:47:45] So you can check yourself. Let's go there now. So confirm installation. You can do NVIM dash version VIM dash version
[00:47:53] so
[00:47:54] So this is actually kind of interesting
[00:47:58] Let's let's actually try this one. This is fun. So let's do NVIM dash dash version and
[00:48:05] Let's do VIM dash dash version
[00:48:08] Much different, right? All right. So let's actually go try that on on Windows as well
[00:48:15] So VIM dash dash version
[00:48:18] Whoa, look at that and VIM
[00:48:21] dash dash version
[00:48:25] It should you should have the same color scheme if you did the bash or see if you did the the west term configuration, right?
[00:48:33] If you did the west term configuration did you skip that step?
[00:48:37] If you reopen the west term you'll get the new configuration
[00:48:42] Yep, you should get the new one if your west term is being seen
[00:48:49] Yeah, if for any reason your west term lua file isn't being loaded
[00:48:55] It does have a bunch of them it really does
[00:48:59] So yeah, if you want there is something about west term you can do
[00:49:05] Or is it
[00:49:08] I don't remember where it is in west term you can actually reload it can fig but the if you're a beginner just close it and restart it
[00:49:15] So if you want to use a different color scheme, that's fine, but i'm telling you right now
[00:49:19] Everything in this book is designed for group box material and I can't promise you that
[00:49:26] It's not going to look bad in your stuff
[00:49:29] every single
[00:49:31] Theme in every app is designed using group box material if you want to start configuring with a different material thing
[00:49:37] That's fine, but just please wait
[00:49:40] Because you might end up making it so something doesn't appear as well and you might you know end up wasting time on that
[00:49:47] So I'm not opposed to you doing it. I just yeah
[00:49:51] Uh, it's not memory leak. I usually don't trust reading the config to not memory leak
[00:49:56] Yeah
[00:49:58] I have the default conversations for now. Okay, but are you are you do you have here?
[00:50:03] Okay, somebody is using a default color theme
[00:50:06] The only reason that would be is if you did not run the config right you did not run setup in the config directory
[00:50:12] So did you do this did you go into the west term directory and did you run dots? Did you run dot slash setup?
[00:50:22] Did you do this part
[00:50:26] Where it's writing all the vites and stuff and then it's doing the thing
[00:50:31] Inside of the west term
[00:50:35] Okay, now you have to restart so you go out and then start up a new west term
[00:50:42] I want to stay with you on this because maybe you found a bug so in our config
[00:50:49] So you should be getting the new colors
[00:50:55] I wonder I wonder if there's a reason that it wouldn't be built in
[00:51:03] It's still the default colors
[00:51:07] Did that not change it
[00:51:11] No, I don't I've been using west term we covered that already
[00:51:14] Yeah, you have to go back in the video and watch it
[00:51:16] I cover a whole thing about why I dropped a lacquered I wrote a whole thing in the epic you on the books link
[00:51:20] If you click on that code books link and you go back to just books and click on
[00:51:24] Uh, shut the pack up. You can go read why I dropped a lacquered if you want to know why
[00:51:30] um lacquered he did me wrong for the last time
[00:51:34] It's a lot slower too and west term
[00:51:36] Anyway, if if you're still having trouble getting the configuration is to just show up, you know
[00:51:42] Let us let us know. Otherwise, I'm gonna proceed
[00:51:45] um
[00:51:46] So again
[00:51:48] This these steps in the book are designed to go sequentially if you miss a step
[00:51:52] Like you didn't saw west term or your bachelor sees different
[00:51:57] Uh, or something like that, you know, then that that might be a problem
[00:52:01] Uh, see matrix in the background
[00:52:05] Is the screen saver see matrix? No, it's neo
[00:52:08] But it's not there right now. So yeah
[00:52:12] Uh
[00:52:13] Way better actually. Yeah, you're talking about this
[00:52:17] This is neo
[00:52:18] Yeah, it's it don't you have to compile it so
[00:52:22] Um, anyway, that's all stuff. That's terminal velocity stuff. That's not in the book
[00:52:26] Yeah
[00:52:27] Any ill it's in my dot files, which you know, art of the extra on get him and go find that
[00:52:33] Okay, so next what are we doing now? We're gonna do
[00:52:37] We did we did we did end them. We did both of the versions now. We know we got those different versions
[00:52:43] Uh, neo them is it talks about the difference between them. It's a lot of history
[00:52:48] Just know that no other editor can claim that line of authority
[00:52:51] It's true. Try this for fun vi version. Notice that is the same. Okay. So
[00:52:56] If you've done your bachelor see right
[00:52:59] Then vi will be neo them
[00:53:02] And let me show you what I mean by that vi dash dash version
[00:53:06] And the reason for that is something called progressive enhancement
[00:53:10] um, which says
[00:53:13] That vi is a ways to editor and editor is set. I'm gonna actually show you you don't need to not care about this
[00:53:20] But what it does is
[00:53:22] The bachelor see that you installed
[00:53:25] Actually will set up
[00:53:28] This progressive enhancement for vi and what it says this here is it says if I have them
[00:53:34] Then set my editor to be to to set the editor to to to them to vi
[00:53:40] Which in my case is is I could have put that to be vim
[00:53:43] But it's vi in that case if it's n-bim then set the editor
[00:53:48] to um, if I have them that should have been vim actually and then if it's n-bim set the editor to vim
[00:53:54] Right back there. I need to make I think that might be a bug
[00:53:57] So we'll have to it should be vim
[00:53:59] But the main reason is working is because n-bim gets detected and then it sets the editor to n-bim
[00:54:05] Okay
[00:54:05] So that's why when you say, you know type vi when you type vi whatever it does it in vi
[00:54:12] Okay, and it uses the editor that you have
[00:54:14] Um, so let's move on from that
[00:54:16] Let's actually start using it and learn how to use it
[00:54:19] So activate your plugins. Okay, so this is always a really tough one
[00:54:24] um
[00:54:25] and um
[00:54:28] This command actually activates the plugins from the command line
[00:54:32] But you can also do this inside of the program. So let's actually attempt it both ways. Okay. I'm going to show you how to do it both ways
[00:54:40] Um, just so you know whenever you do a plus here and a plus qa what that says is it says
[00:54:45] run vi do all the things and then exit
[00:54:49] right and
[00:54:52] So we're using that as a way to to to get our plugins ready
[00:54:56] Right. So let me show you what that does. Oh, let's do it on windows. I mean on macverse. So vi
[00:55:02] Uh, and this is the kind of thing that you can do it over and over and it's not going to hurt anything
[00:55:05] Okay
[00:55:06] So even if you have already done it once oops wrong system here
[00:55:11] Even if you've already done it once um, you can do it again
[00:55:14] Vi plus plug-in plug is it plug install? Yeah plug install not plug-in install did I did I have that right?
[00:55:21] Yeah, and then plus qa and that just says immediately exit
[00:55:25] So
[00:55:26] And then we're going to add to execute that and you see it ran so fast we didn't even see what it did
[00:55:31] Right now you can do the same thing from in within vi. It's just a little harder
[00:55:35] If you want to try that it's not in the book, but i'm going to show you how so uv
[00:55:39] Uvi it just started up on anything and then it's a blank page and then you type colon
[00:55:45] plug and if you want to you can type tab and then
[00:55:49] Tab tab tab tab to the install and then you can type plug install enter and it will do the same thing
[00:55:54] But in this case you get to see what it did
[00:55:56] So it actually went out and got all the plugins from the internet and it downloaded them
[00:56:01] Okay, and and now you can quit and you're quitting is the same way zz
[00:56:07] Uh, we'll get you out of there. Okay, so zz gets you out
[00:56:10] So
[00:56:10] There now if you if you want to at this time, you can also install the go binaries
[00:56:16] Now you can actually wait to install the go binaries until you do the go thing
[00:56:21] This is going to take you quite a while and let me show you what I mean
[00:56:25] It has to download and compile like 12 different programs in order for to run
[00:56:30] It will probably take you about five or ten minutes for it to finish
[00:56:35] Um, but so i'm not going to do that command right now
[00:56:38] But it's exactly the same and every other way
[00:56:41] As plug install it's just go install binaries and
[00:56:47] Again, you can run it from the command line and sit around and wait for it
[00:56:50] Or you can wait for that command and do it later on if you want
[00:56:55] Uh, I don't need to do it because i've already done it if you don't have that
[00:56:59] Uh
[00:57:00] Later just to give you a preview
[00:57:02] Um, you're not going to get
[00:57:05] This kind of stuff right so like if I screw something up, you see
[00:57:10] Uh, oops
[00:57:12] I'm trying to break something here
[00:57:13] All right, so you see how the errors pop up and everything and all that stuff
[00:57:17] That none of that stuff is going to happen
[00:57:19] Unless you have that set up correctly
[00:57:22] So you're going to need those binaries for that
[00:57:25] And um, you see this how this gets automatically installed watch what happens when I save it
[00:57:30] um, oops
[00:57:33] Okay, so when I automatically took that out you can see that it automatically remove the input import statement
[00:57:40] If I had if I had if I didn't have these plugins for any other reason that would be the major reason
[00:57:45] Well, the most annoying things about go that we'll get into is
[00:57:48] Removing and adding and managing everything in this little import section
[00:57:52] And the thing that's really cool about this is that when you save
[00:57:56] I don't know what's going on. I've got um
[00:57:59] I have something going on
[00:58:02] I must have broken something. I don't have to go figure out what I broke
[00:58:07] Error detected while processing buff free right on a commands buffer equals one
[00:58:12] Something about my install is causing it to break. I don't know what so
[00:58:16] I probably broke it doing all the install with you today. Um, I've been I mean I did 12 hours ago program yesterday
[00:58:22] So I have no idea what that's about. It's definitely new though. Um, anyway, so so that's what you do
[00:58:30] And okay, so now is learn the bim basics and that is a good place for us to end. So this has been an hour long
[00:58:37] Uh session, uh by the end of it. You should have every tool installed that you need
[00:58:44] Um to to have so we installed the west term terminal. We installed neo bim
[00:58:50] Uh, and we tried to resolve any problems. We did the last session. We installed bash and adopt files
[00:58:56] We are now ready to learn bim and so the next session we're going to learn the bim basics
[00:59:05] So stay tuned for that and come on back and check it out with us
[00:59:08] Um, and then we're going to go ahead and create a cookbook and we'll start practicing our bim
[00:59:11] We're very close to writing some code
[00:59:13] But let's learn bim in the next one. I know it's been frustrating if you have any help
[00:59:18] You need some help come on in find us in the discord find us in the chat
[00:59:22] Um and and ask your questions. Um, otherwise, um
[00:59:27] And yeah, if you if you guys have problems
[00:59:30] Uh, please let us know because i'm not ruling out that the problems are related to our configuration for the beginners
[00:59:36] Um because we we do tweak that quite a bit. So if please let us know if you have a problem, please don't be shy
[00:59:41] Um, if if you have a problem because it could very well be that the problem is is is on our side too
[00:59:48] So please don't be shy about the problem and um, only come back the next video of you about them
[00:59:53] See you in a bit
