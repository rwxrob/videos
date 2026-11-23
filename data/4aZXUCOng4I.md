# Linux Matrix Terminal Transparency

Walks through creating a Matrix-style terminal effect in Linux Mint by layering a transparent gnome-terminal over a second terminal running cmatrix. Covers setting up a blank profile with colors and transparency, installing cmatrix, going full screen with F11, and mentions tmatrix as an alternative with speed and fade options.

Transform your plain Linux (Mint) gnome-terminal into a portal to the Matrix by combining two terminals, a background running cmatrix (or tmatrix) and a foreground with transparency. -- Watch live at https://www.twitch.tv/rwxrob

Chapters:
0:00 Opening a terminal and blank profile
1:30 Terminal preferences, fonts, and colors
4:54 Installing and running cmatrix
5:56 Opening a second transparent terminal
8:00 Full screen and fixing transparency
10:04 cmatrix options and bashrc config
11:46 Trying tmatrix as an alternative
13:54 Finding and installing tmatrix from GitHub

`#linux #terminal #cmatrix #gnometerminal #linuxmint #tmatrix #customization #bash`

## Category

Howto & Style

## Transcription

[00:00:00] I don't see my desktop very often, actually.
[00:00:02] It's kind of hidden underneath here.
[00:00:04] Okay, so here's how it goes.
[00:00:06] The first thing you need to do is open a terminal.
[00:00:08] The way I open a terminal is I push the search key,
[00:00:13] whatever yours is, the Windows key, the super key,
[00:00:15] whatever, mine's command,
[00:00:17] and then I'm gonna type terminal.
[00:00:20] So then I pull up a gnome terminal,
[00:00:24] and mine is set to go full screen.
[00:00:26] Here's might not be, here's might be mostly full screen.
[00:00:30] So this is more likely what you're gonna see.
[00:00:34] Now I have customized my terminal colors,
[00:00:37] and I'm gonna show you how I got these colors.
[00:00:39] Okay, so in fact, the first thing I wanna do
[00:00:42] is go to preferences and create a new profile
[00:00:45] that has nothing in it.
[00:00:47] So blank, so this is how you would see
[00:00:52] a gnome terminal to start with.
[00:00:54] So let me start one of those.
[00:00:58] Oh boy, let me just change some things here.
[00:01:01] Let's put it back to blank.
[00:01:02] Let's make blank the default terminal.
[00:01:05] So that will get us back to square one.
[00:01:10] And so there's my terminal.
[00:01:13] Now I have colors set already,
[00:01:16] and I have some transparency working.
[00:01:19] But that's normally that might not be what you see first,
[00:01:21] but that's fine.
[00:01:22] Let me show you all the settings.
[00:01:23] Right click on it, go to the preferences,
[00:01:25] and we're gonna go down through all of these.
[00:01:29] So the first one is general.
[00:01:30] I turn off all the menu bars and everything.
[00:01:32] I put the theme variant, it's usually dark.
[00:01:35] If you haven't changed your theme,
[00:01:37] you might need to do that right now.
[00:01:39] You know, I type my super key again and type theme,
[00:01:42] and now I get the themes that should pop up.
[00:01:47] Here they are, wait, yep.
[00:01:50] And so I have downloaded Adaptinokio theme.
[00:01:54] You can just pick Minty Dark if you want.
[00:01:56] I pick Edavada, I pick the teal buttons,
[00:02:01] and I pick just left that the same,
[00:02:03] and don't forget this one to make it dark.
[00:02:05] That doesn't have anything to do with your matrix terminal,
[00:02:08] but that does have to do with the dark theme
[00:02:10] that you might wanna have.
[00:02:13] So when I turn all of these off shortcuts,
[00:02:17] I don't do any shortcuts, so I don't mess with that.
[00:02:20] We're not gonna mess with profiles,
[00:02:21] and we're not gonna mess with,
[00:02:22] because we're just gonna make order changes to the base one.
[00:02:25] All right, so next.
[00:02:30] Let's go to my blank.
[00:02:33] So this is what you would see normally.
[00:02:35] I think you'll see a default profile, I don't remember.
[00:02:37] But, and text.
[00:02:40] So this is the standard text.
[00:02:44] I bumped my text up to 22 for the stream,
[00:02:48] so that people can read it on their phone.
[00:02:50] But you can play around with that.
[00:02:52] There's a lot of people who like in Consulata,
[00:02:57] which is a good terminal font.
[00:02:59] I don't mind Monospace regular.
[00:03:01] So I've got that one on.
[00:03:04] I have these other settings for cursor that are not critical.
[00:03:08] This is the big one, colors.
[00:03:10] So I'm gonna turn off colors from the system theme,
[00:03:14] and I have, you can use all of these.
[00:03:17] I used to use Solarize a lot.
[00:03:18] Solarized are 'cause of the popular one.
[00:03:21] Since I found out the contrast was not high enough
[00:03:23] for looking at my stream,
[00:03:25] I've went with more of an X-term color scheme.
[00:03:29] So that would be white on black.
[00:03:35] Yeah, I'm in green on black.
[00:03:37] No, just not gonna do that.
[00:03:38] That was very matrixy though, doesn't it?
[00:03:43] Maybe I should think about that.
[00:03:44] No, no, that's, no, white on black.
[00:03:48] All right, and then I have,
[00:03:52] I changed my default background color to match Twitch.
[00:03:56] You probably don't need to do that.
[00:03:59] Then I, down here, we have used transparency
[00:04:01] from the system theme, turn that off.
[00:04:04] And then we have the colors.
[00:04:06] And if you're using a white on black,
[00:04:08] you might wanna go with X-term to look.
[00:04:12] The Linux console is kind of lame.
[00:04:14] I like X-term, so a little bit more brilliant.
[00:04:18] But it's up to you.
[00:04:20] I mean, our X-term is pretty consistent.
[00:04:25] Show bold, you definitely want bold 'cause that's a thing.
[00:04:28] That'll give you your effect in matrix.
[00:04:31] And scrolling, I turn scroll bars off and stuff like that.
[00:04:37] Even though we're gonna full screen it.
[00:04:39] And then they have to just nothing.
[00:04:41] Okay, so again, this is what colors looks like.
[00:04:45] Take note, make yours look like that.
[00:04:49] And that is for the background.
[00:04:54] We're gonna get a program called,
[00:04:57] well, we're gonna start by doing the C-matrix program
[00:05:00] 'cause it's easier to download.
[00:05:02] So you do sudo apt install C-matrix.
[00:05:08] It's all it takes.
[00:05:10] You type your password in, and I'm not gonna do it,
[00:05:12] but you know what to do.
[00:05:19] By default, it will actually show your password.
[00:05:22] I had to turn that off.
[00:05:23] It'll show, not your password,
[00:05:24] it'll show the stuff that you're typing.
[00:05:27] Once you do that, you should just be able to type C-matrix.
[00:05:32] So here's my matrix with the default.
[00:05:35] To change the colors and C-matrix
[00:05:37] is shift exclamation point, app or sand.
[00:05:40] It's basically shift one, two, three, four, five, six.
[00:05:43] So that changes your colors.
[00:05:46] And you have your matrix.
[00:05:47] So that's the first half of the terminal that I have.
[00:05:51] You can't obviously have this animation happening
[00:05:54] in the same terminal that you're typing in.
[00:05:56] So in order to get that effect,
[00:05:57] I have to open a new terminal.
[00:05:59] So to do that, I right click,
[00:06:01] and I'm gonna go to new window.
[00:06:07] And I open a new window.
[00:06:09] Now, this is the window that I'm gonna run my stuff on.
[00:06:15] And I'm not gonna do it full screen just yet,
[00:06:17] but you get the idea.
[00:06:19] If I can scroll it down here.
[00:06:22] And I can do, obviously I can't see anything here,
[00:06:27] but if you type LS or you know, like anything, right?
[00:06:34] Then you can't see behind it.
[00:06:37] So you need to make it transparent to do that
[00:06:39] by right clicking on it, go to preferences.
[00:06:42] We're still using the same profile.
[00:06:44] And I like it having the same.
[00:06:46] And then I'm going to colors.
[00:06:47] And this time I'm turning transparency on.
[00:06:50] So now you see it's transparent
[00:06:53] and you have the text in front.
[00:06:55] But as you can see, it's very hard to read.
[00:06:58] I would never code like that.
[00:07:00] So you can play around with transparency.
[00:07:04] You can go all the way, that's kinda weird.
[00:07:06] We can go all the way down, back to opaque.
[00:07:09] So I'm gonna get to a nice happy place
[00:07:14] where I can see what I'm coding,
[00:07:15] but there's this idea of the matrix being behind everything.
[00:07:19] So when you do that, you get this kind of fun effect.
[00:07:25] It's almost like you can tell
[00:07:26] when you like cross the line, right?
[00:07:28] And you can't see it.
[00:07:29] So everybody's different,
[00:07:31] but this is kind of where I like mine.
[00:07:33] I like it better that way too,
[00:07:35] because it makes it feel like it's kind of floating.
[00:07:40] And speaking of floating.
[00:07:51] There I am.
[00:07:52] Okay.
[00:07:53] I wasn't on the, I don't necessarily have to have my face
[00:07:56] in the thing, but whatever.
[00:07:58] All right, so here you have it.
[00:08:03] You have two terminals with one terminal running,
[00:08:08] see matrix and another terminal
[00:08:11] with some percentage of transparency
[00:08:14] over the top of the other one.
[00:08:16] And if you full screen both of them, which is F11,
[00:08:20] then you get the full effect.
[00:08:26] And you can then split your terminals up.
[00:08:33] Do whatever, you know, you can do your go top
[00:08:37] or mine's top, and you can still see sort of that's,
[00:08:42] I probably need to turn my transparency down.
[00:08:44] I'm, it's a little bit too high, I think now.
[00:08:47] This is the problem I noticed
[00:08:48] is that you have to be out of full screen
[00:08:50] to change your transparency.
[00:08:51] Then I have to go out of full screen.
[00:08:55] Wait, where are you not?
[00:08:58] It's not working.
[00:08:59] Something is hiding my,
[00:09:02] something's hiding my setting.
[00:09:07] Let me see, I can go find it.
[00:09:10] Why are you not behaving?
[00:09:13] My right click is not working on it, I don't know why.
[00:09:16] So I'm just gonna close this terminal, okay, terminal.
[00:09:23] And just go change the preferences on this.
[00:09:27] Colors, transparency.
[00:09:31] So we have the same thing again.
[00:09:34] All right.
[00:09:38] Let's make it a little more transparent, I guess, there.
[00:09:45] All right, now let's try the full screen thing again.
[00:09:47] F11, you might have to push a function key to do that.
[00:09:53] And then we can still code on top of it.
[00:10:00] We have our effect.
[00:10:03] All right.
[00:10:04] I am not gonna go into all the different things
[00:10:06] you can do with Cmatrix.
[00:10:07] You can just type man Cmatrix
[00:10:10] and see all the different options.
[00:10:13] If you want colors in your man pages,
[00:10:15] that's another video.
[00:10:17] So again, man Cmatrix to see all the stuff you can do.
[00:10:24] And man stands for manual.
[00:10:28] All right, so if you wanna add those things.
[00:10:30] If you want to add Huzzah or Homer Simpson
[00:10:33] and things like that,
[00:10:34] you will need to study my
[00:10:40] configuration that I have available
[00:10:45] on github.com/rwxrob/config.
[00:10:55] And if you go, oops, it's trying to complete some stuff for me.
[00:11:01] If you go in here, you can click on bash.de
[00:11:05] and you can look through some different ways
[00:11:07] to configure yourself.
[00:11:10] If you just wanna use it as is,
[00:11:12] you can download this file, the bash.rc file.
[00:11:15] It's rather large and you can replace
[00:11:18] your .bash.rc file with this one.
[00:11:20] This is, but if you would rather build your own
[00:11:23] and not have a big monster like that,
[00:11:25] you can go on to the bash.rc.de
[00:11:27] and look for the ones.
[00:11:30] So for example, you might want directory colors there here.
[00:11:36] If you have any questions about other color setup
[00:11:39] that I can help you with,
[00:11:40] but that's sort of a different topic
[00:11:43] from how to get the terminal matrix effect.
[00:11:46] So before we abandon the terminal question,
[00:11:49] I did wanna make a reference if you're
[00:11:51] and more of an advanced user
[00:11:52] and you know how to use GitHub and stuff like that.
[00:11:56] You might wanna try T matrix.
[00:11:58] So T matrix, which is zero-story
[00:12:02] from the chat room, which told me about.
[00:12:05] We got to work finally.
[00:12:07] It's a little trickier because it has,
[00:12:11] and it's actually slower than I like.
[00:12:13] I like to speed it up.
[00:12:14] I have to go look it up.
[00:12:17] Let me show you where to get it.
[00:12:20] We may actually fork this since it doesn't have
[00:12:22] an APT repo for Mint.
[00:12:23] It's more of an arch thing,
[00:12:25] but you can't install it.
[00:12:26] It just takes an extra step or two
[00:12:28] that most beginners might not know how to do.
[00:12:32] But so you can change the speed.
[00:12:37] So I was using it at I think 15 steps.
[00:12:44] It's a little bit faster, too.
[00:12:47] It's actually, I think it's kinda lagging
[00:12:49] because it's a smaller font to your truth.
[00:12:54] Yeah, that's not fast at all.
[00:12:56] Am I doing that right?
[00:12:59] Let's see, the speed, S value.
[00:13:07] Oh, I am doing it wrong, duh.
[00:13:09] Oh my gosh, somebody tell me.
[00:13:12] All right, so there we go.
[00:13:14] That should be a little bit faster.
[00:13:15] You can really jack it up if you wanna make it really fast.
[00:13:23] And it has a fade option, too, which we found.
[00:13:27] So it gives it even more of a feel like the movie.
[00:13:33] And of course, it uses a cool font
[00:13:36] that you might have to install in addition to that.
[00:13:39] Let me show you the URL for this one, though.
[00:13:41] So this one is at Amy Tricks.
[00:13:49] If I can remember where it is.
[00:13:52] I forget the guy's name.
[00:13:54] So it's on, you know what?
[00:13:56] I'll just do a search on GitHub.
[00:13:58] That's probably the wise thing to do.
[00:14:04] Tmatrix on GitHub, come on, Rob.
[00:14:12] Gmatrix on all of GitHub.
[00:14:16] There it is.
[00:14:17] So here's the URL for that.
[00:14:19] GitHub.com/m444Tmatrix.
[00:14:24] And you can download this if you have arts you can do,
[00:14:29] but if you have to install curses,
[00:14:31] and then you can get it and then install it,
[00:14:33] it's not too hard.
[00:14:34] If you, there is an error that it's throws currently,
[00:14:37] if you don't have Z shell, which most people
[00:14:40] won't on many particular.
[00:14:42] So if that's true, just ignore the error,
[00:14:45] I'm actually gonna do a pull request to fix the error.
[00:14:48] It doesn't affect it, so it works fine to do the install.
