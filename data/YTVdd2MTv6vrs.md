# Lynx Text Web Browser FTW!

From 2020. I may have changed my mind on some of this.

Explains how to set up and use the Links text-mode web browser for fast searching, with vi keybindings and DuckDuckGo search shortcuts. Walks through the links.cfg and links.lss config files, a bash exported command function that points Links at them, and aliases that URL-encode queries for search. Also covers why command functions beat aliases and how to write pages that read well in text browsers.

Lynx is objectively the fastest and safest way to browse and search the web. So why do so few people know about it? Because it's old. But if you are not using it you are wasting time. Learn to blow away the search times of others and why "intellisense" is anything but intelligent when you can find more stuff faster with Lynx. Need graphics? No problem. Just click on the link to bring up your graphic browser once you find the best page. -- Watch live at https://www.twitch.tv/rwxrob


All my configs are here but they will take some figuring out on your part:


https://gitlab.com/rwxrob/dotfiles

Chapters:
0:00 Fast searching with Links demo
0:39 Why Links beats other text browsers
1:33 Installing Links and config overview
3:40 Opening graphical pages from Links
5:25 DuckDuckGo versus Google, and HTTPS
7:15 Colors and styles in links.lss
8:38 Bash command function for Links
11:56 Text-friendly web page design
14:35 Command functions versus aliases
15:25 Search aliases and URL encoding
17:10 Getting help and wrap-up

`#links #textbrowser #terminal #bash #linux #vim #duckduckgo #commandline #dotfiles`

## Category

Science & Technology

## Transcription

[00:00:00] All right, so this is a quick video on how to set up links and you're like, what is links?
[00:00:07] Links is what lets you do a wicked fast searching that uses a question mark or just whatever.
[00:00:16] So question mark, what is links and I can just hit enter and I go down here and I say, what
[00:00:22] is links?
[00:00:23] My zero click info from Wikipedia and I get an answer in like two seconds.
[00:00:30] People would still be searching for this on the graphics browser if they were using it.
[00:00:36] And so yeah, this is what links is.
[00:00:39] Now there's many, many, many text based browsers and I'm not going to talk about them.
[00:00:45] I'm just going to say that I believe links is still the best for lots of reasons, but
[00:00:51] primarily because links allows you to really scan quickly.
[00:00:58] The other browser is trying to do a fair amount of like maintenance of like a table and stuff
[00:01:04] like that.
[00:01:05] And links is just super fast and uses the maximum amount of real estate.
[00:01:10] So it makes you the fastest and that's really why I like it.
[00:01:14] In fact, as I'm doing it right now, I'm doing it all with right hand.
[00:01:17] I'm browsing with my entire right hand using the vi bindings.
[00:01:21] I also believe I also use links instead of things like IntelliSense or built in help because
[00:01:27] it's so much faster.
[00:01:29] It's just so much faster, but it does take a little bit to set up and get used to.
[00:01:33] So the first thing you need to do is do is install links.
[00:01:36] However you want to do that.
[00:01:37] So after installing links, if you're on arches, you know, you do your arches, Pacman, Yay thing
[00:01:43] or whatever, but you need links.
[00:01:45] And links lives in user bin links.
[00:01:48] But the problem is that links was originally designed some time ago and it was designed
[00:01:54] to be for use on a system and not to be configured individually for all the users on the system.
[00:02:02] It was meant to be sort of a tool that the system administrator would grant you different
[00:02:08] levels of access to using links, but it was a way for you to browse on the system.
[00:02:14] And for that reason, it's a little bit harder to configure than it might make sense.
[00:02:19] So there's two configuration files that you need to do links.
[00:02:24] And this here is my config on GitHub.
[00:02:27] It may or may not move to GitLab at some point if it does.
[00:02:30] I'll put a redirect in here so you can go find that.
[00:02:33] But as you can see, I've got all of my config files here, but there's two that stand out.
[00:02:41] links.cfg and links.lss.
[00:02:46] So these files are files that are taken from the default when it installs.
[00:02:52] It puts it in some location.
[00:02:54] I don't remember some place in Etsy, I believe.
[00:02:56] And so all I've done is I've taken out those files and I've made modifications to them.
[00:03:03] And I've left all of the comments and everything in here so that you can understand what they're
[00:03:08] doing.
[00:03:09] And I want to customize yours also.
[00:03:12] Here I have, for example, a start file on line 111 that sets to go to my website.
[00:03:17] So you can just go through this and find the things that you might want to change.
[00:03:23] But there's a few key things that I really recommend you keep.
[00:03:27] You might be an e-max person, but if you're not, if you're a VI person, then you want to
[00:03:32] go look for VI mode, if I can find it here, plus I'm not using the links here.
[00:03:39] VI mode, there it is, VI keys always on, e-max keys always on.
[00:03:47] So by turning these on, I can then navigate using VI.
[00:03:53] Okay, so the file we're looking at now is links.cfg.
[00:03:58] This file is configuring how links works and how you navigate it and all that stuff.
[00:04:05] And you can grab mine and put it down on your own system.
[00:04:09] It's a pretty big file, and I don't, frankly, I don't remember every single thing that I've
[00:04:13] changed.
[00:04:14] Oh, this is an interesting positionable editor, I don't remember that.
[00:04:19] And I still have yet to configure all of my types.
[00:04:22] You can make links so that when it opens a picture or something like that, you can actually
[00:04:28] view the picture with your local operating system, so you might want to play around with
[00:04:32] that.
[00:04:33] I don't generally do that.
[00:04:34] In fact, if I am dependent, let me go back, if I am dependent on a visual graphics representation,
[00:04:40] for example, of a thing, so we'll do the search for links again.
[00:04:45] And let's say I wanted to go look at the Wikipedia page, you know, I can right click
[00:04:50] and go to Wikipedia and almost always there will be a refresh, but even if there isn't,
[00:04:55] I can type the letter I and that will show me that I, here's my URLs, okay?
[00:05:02] So I can click on those URLs using my mouse and it will open my web browser, my graphic
[00:05:08] web browser, and so I can see what I need to see.
[00:05:10] So I use links even to search for stuff that I know is ultimately going to be graphic because
[00:05:18] it's so much faster.
[00:05:20] And if you haven't noticed, I'm searching on DuckDuckGo and the reason is because of this.
[00:05:25] Two question marks in my setup sets me up to run on Google, but Google fails to do anything
[00:05:32] significant and it does find links, but look at how ugly it is.
[00:05:36] I mean, it's like disgusting.
[00:05:38] Google is a fail.
[00:05:40] On so many levels, Google is a fail.
[00:05:42] And so, you know, why would I even want to give away my information?
[00:05:46] They can't track me because there's no way to track with links.
[00:05:49] But if I were, I mean, but I'm so pleased with DuckDuckGo and I go to DuckDuckGo Lite,
[00:05:54] which is a version that lets you, you know, see things much easier.
[00:05:59] You can even go into YouTube videos and pull those up and they will open in the graphic
[00:06:04] browser.
[00:06:05] So there's lots of reasons to use links, but let's continue with how to configure it.
[00:06:09] So the other file that's involved, of course, the first file is links.cfg.
[00:06:15] So that, so we'll talk to you about how to get these files to be recognized.
[00:06:20] But the first use, the first file to configure is links.cfg.
[00:06:25] And if you really want to, you can go through every single thing and find all of your configurations
[00:06:29] in here.
[00:06:30] This is not JSON.
[00:06:31] This came at a time, hey, hi, came at a time well before that.
[00:06:37] I was actually, the interesting thing about links is that it is being updated for a while
[00:06:42] there and people thought, oh, there wasn't going to be HTTPS support, TLS or SSL.
[00:06:48] And there is.
[00:06:49] So you don't need to fear any of that stuff.
[00:06:51] It can deal with certificates just fine.
[00:06:53] In fact, my configuration automatically accepts certificates and turns off a lot of the annoying
[00:06:59] prompts so that I can search at the maximum level.
[00:07:03] But if you, so that's this file that config, the links.cfg file, so I had an idea to talk
[00:07:08] about another file.
[00:07:09] We really can't go through the whole file, but you're welcome to read it and post a question
[00:07:13] to me if you have a question.
[00:07:15] So the other key file when you're dealing with links is the one that deals with colors
[00:07:18] and styles.
[00:07:19] And this file is called links.lss.
[00:07:22] So here you've got all of the styles and the different color combinations.
[00:07:28] And you can go play around with these as you wish.
[00:07:32] I do not like the colors that came with it.
[00:07:36] There's a bunch of colors that were just really, really harsh.
[00:07:40] Some colors didn't work with Solarized back when I was using that a lot.
[00:07:45] And so I feel like I've got a color scheme that works well with me.
[00:07:49] This is just standard X-term colors which I've started to use for streaming because
[00:07:53] of the contrast.
[00:07:55] They are more visible in the light from phones and iPads and such when people are looking
[00:07:59] at my stream.
[00:08:00] But even if you have Molokai or Solarized or something, this color scheme should work
[00:08:05] for you.
[00:08:06] So that's really all you need to know about that file is this is where you would go to
[00:08:10] change that.
[00:08:11] So the next question is, how do I get these two files on my system and how do I get them
[00:08:16] to be recognized?
[00:08:18] So to answer that question, we have to go and start looking into other files.
[00:08:25] So after you install links, you'll be able to run it, no problem.
[00:08:31] But I'm going to show you a file that I use that sets up the links aliases so that it's
[00:08:39] actually a command function that I have in bash.
[00:08:42] This won't work with ZShell.
[00:08:44] And this is one of the main reasons that ZShell sucks is that it doesn't do command functions
[00:08:49] at all.
[00:08:50] So here we go.
[00:08:52] This is my sort of modular links configuration.
[00:08:56] These files are all combined together to create one large bash RC for me.
[00:09:00] But I leave them individually kind of broken out so that I can test them and I can share
[00:09:05] them with you all.
[00:09:06] So if you want to just test or take one, you can do that.
[00:09:10] So what I've done here is I've exported a links function that takes the old links and
[00:09:19] finds the links wherever the path might be.
[00:09:22] And then it replaces it with a command function.
[00:09:26] A command function functions in every way as if it were a binary that was installed in
[00:09:30] a bin directory somewhere.
[00:09:32] And because this loads at login in my bash RC, it's available just like any command anytime
[00:09:38] without any startup cost because all the code has already been compiled and loaded into
[00:09:43] memory.
[00:09:44] That's the fundamental value proposition of command functions over any binary, including
[00:09:49] compiled C code.
[00:09:50] They will always be faster and they are impossible with ZShell.
[00:09:54] So links here, we have this, we're doing links here.
[00:09:58] We do if dash Z links, it says if I cannot find a links variable, I mean, I mean, if
[00:10:05] I cannot find links at all, that means I didn't find links on the system.
[00:10:08] And then just tell them, tell and is just a little function I have that prints out some
[00:10:12] nice colors that actually does mark down.
[00:10:15] And it colorizes the output and says doesn't look like links is installed.
[00:10:19] And then it just returns one because there's no links on the system.
[00:10:23] This line here, this is what's called a short circuit logical operator.
[00:10:27] It says if I see that there is a home directory containing dot links dot CFG, then go ahead
[00:10:36] and let's set a variable called links CFG to be the following dash CFG equals home links
[00:10:43] dot config.
[00:10:44] And we'll get back to these to these command line arguments later, but they're going to
[00:10:47] put together a an actual argument pretty soon.
[00:10:51] Here we do dash R does the file and that's readable as a readable links dot LSS in the
[00:10:55] same directory.
[00:10:56] If so, let's also set that and then we the final thing we do is we actually call it.
[00:11:02] So my underscore links variable environment variable contains the full path to the true
[00:11:08] links program.
[00:11:10] And so when we run it that way, this is the same thing as if I had run the full path to
[00:11:14] the binary.
[00:11:15] And that then attacks on to the command line, the full path using the dash CFG argument
[00:11:21] to links, which says use this configuration file instead of the one from the system.
[00:11:27] And unfortunately links will not identify or look into your home directory without you
[00:11:31] doing that because of the reasons I earlier described.
[00:11:34] So now we have dollar links LSS and we can put that in there and that says, okay, let's
[00:11:40] go get that.
[00:11:41] So now our command line, and then finally we pass any commands, any arguments that we
[00:11:46] may have passed.
[00:11:47] And I guess I can maybe drop the quotes there, but I think they're fine.
[00:11:52] So this allows us to pass a URL to the program.
[00:11:56] So for example, if I wanted to call links without the search parameter, which I'll get
[00:12:00] to, I would call links and then I would say I want to go to skillstack.io and boom, there's
[00:12:07] my skill stack site.
[00:12:09] So by default, any scheme that it is HTTP is assumed, but most sites will redirect you
[00:12:18] to HTTPS if needed.
[00:12:20] So this is my site.
[00:12:22] This is again, this is another good example of why you should use things like unordered
[00:12:27] lists for your menu items, let me just give you a quick view if you want to develop for
[00:12:32] links optimized, like I say, you should probably consider what your page looks like when it's
[00:12:38] not being rendered on a graphics web browser.
[00:12:42] And so making intelligent choices about how you semantically organize your page can really
[00:12:48] change how easy it is to view from links or from other text-based readers.
[00:12:54] So here are my things and you can see if you inspect element on these, these are all unordered
[00:13:00] lists items.
[00:13:01] And so when I made my site, I was conscious to constantly test and see what it might look
[00:13:09] like to somebody using links and I even have a little joke here at the bottom that says
[00:13:13] optimize for links and true terminal experts or masters.
[00:13:18] There's really no reason not to allow links as a method and the entire documentation on
[00:13:25] my site is all links friendly and it's very, very fast to browse.
[00:13:31] So for this reason, that's the reason that I did it that way.
[00:13:37] I think if we put HTTPS, I think it still works, let's try that.
[00:13:41] Yep.
[00:13:42] Okay.
[00:13:43] So that gives you your argument at the end.
[00:13:46] So we've talked about links, we've talked about the links configuration file, we've
[00:13:50] talked about the links color file, and we've talked about one of the ways to write a command
[00:13:57] function to actually create a dynamic command, you know, a full-blown command that defines
[00:14:05] where you should call it.
[00:14:07] You could almost get away with just doing an alias for that same thing if you know you
[00:14:12] have the file and it's going to be there every time.
[00:14:15] Unfortunately, if you do an alias, you won't be able to call links from other programs.
[00:14:20] So if you, if you for some reason wanted to write a script and you wanted to have it ask
[00:14:24] a few questions and then fire up links, you could not do that because aliases are not,
[00:14:30] they don't persist into sub processes or subshells, commands exported, exported command functions
[00:14:37] do.
[00:14:38] And that is why I use export dash F which once again is not possible on Z shell.
[00:14:44] So if you have a command function like this, this is a way that even from VI, I can jump
[00:14:49] right from VI until links if I needed to.
[00:14:51] So we've talked about, we've talked about what links is, how to search the value of
[00:14:55] it.
[00:14:56] We've talked about how to, how to set up your configuration file with, and it goes in the
[00:15:01] home directory by the way, which I suggest you make a symbolic link from your config
[00:15:05] directory.
[00:15:06] And if you don't know what a symbolic link is, you know, I can't let me know otherwise
[00:15:09] you can just put the files there, but if you don't do that, you'll lose your files.
[00:15:12] Okay, so we have symbolic link to those files.
[00:15:17] And then we have this command function to call links, the actual links.
[00:15:22] And beyond that, we need to, that goes into your bash RC.
[00:15:25] And beyond that, we need some aliases to do some searching.
[00:15:30] So what the aliases that I have set up here, they're all contained in this file as well.
[00:15:35] But they, the aliases for question mark, here it is right here, the alias question mark runs
[00:15:41] duck.
[00:15:42] And duck is a, oh, I should probably export it.
[00:15:46] I didn't, I forgot to do that, I should probably fix that.
[00:15:48] But duck is a, is a command function that calls duck duck go.
[00:15:52] So it calls links and links therefore calls this command function up here.
[00:15:57] And it passes a duck duck go URL.
[00:16:00] And this URL is manufactured here by calling URL and code, which is some pretty nifty code
[00:16:06] that all of this needs to be exported.
[00:16:08] I need to go back and fix this.
[00:16:09] So URL and code is a command function that takes this string and URL encodes it by going
[00:16:17] through each character and making it valid for use in a URL as what's called a query
[00:16:22] string.
[00:16:23] That's where the queue equals comes from.
[00:16:27] And any, a query string is anything with, after the question mark.
[00:16:30] And you've seen these a lot probably.
[00:16:32] So in the Google one, it does the same thing at URL encodes it and passes it to Google's
[00:16:38] search option.
[00:16:39] I do not know of a light variation of Google as opposed to the, to the light one that we
[00:16:44] have here.
[00:16:46] Okay.
[00:16:47] So there we have it.
[00:16:48] We have got our, our functions.
[00:16:50] We've got our ability to now, to now query.
[00:16:54] And I went ahead and alias question mark and to double question mark so that it passes
[00:16:58] my sentences on to, to links and to their, and to duck to do those things.
[00:17:06] It's not an obvious setup.
[00:17:08] It's my, it takes a little bit of doing to get it to work, but this is how you do it.
[00:17:12] If you have any questions about how to do it further, if you're, or if you get stuck,
[00:17:16] I'm always here.
[00:17:18] You can go to R W X live or R W X Rob dot live.
[00:17:24] If you ever have to question R W X Rob dot live will take you to YouTube, which has or
[00:17:31] wherever.
[00:17:32] And it also has links to my Twitch here.
[00:17:34] So you can come into Twitch and ask me directly any time that I'm on.
[00:17:39] It's been great talking to you.
[00:17:43] We do have a question.
[00:17:44] We have a couple of people who say good old links here.
[00:17:47] So if you have any further questions on how to set that up, I'm happy to help you.
[00:17:51] I'm frequently talking about terminal issues and terminal mastery on, on stream.
[00:17:58] And I continue to, to publish more about that.
[00:18:03] And I'm going to call it, call it a video there.
[00:18:06] Thanks very much for watching.
