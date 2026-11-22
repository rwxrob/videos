# Cleanup bashrc with AI (opencode running Claude Code Pro)

A four-hour, unedited livestream of me cleaning up my .bashrc and the rest of my dotfiles with AI (opencode connected to Claude Code Pro) doing the heavy lifting while I review every change.

Along the way: removing dead and personal-only config, consolidating colors and themes, the security danger of CDPATH, a new `ask` command that keeps one AI session going from the shell and pipes Markdown through bat/glow, using AI output as a Unix filter inside Vim, a smarter completions strategy, a per-machine setup script, git config and identity merging, SSH key and secrets thoughts, portability gotchas, and why you should squash and merge PRs.

Chapters:
0:00 Setup: opencode, Claude Code Pro and the cleanup PR
6:00 Reviewing the PR and working-tree changes
9:06 Escape sequences in colors: echo -e vs $'...'
21:19 Removing dead code: color utilities, source-if, pg_pass
27:00 Consolidating colors, themes, bat and man pager
36:13 Installers and tool detection
42:06 Here-docs, filter commands and title helpers
57:01 Why CDPATH is a hacker vector
1:00:01 Shell history and tmux
1:06:01 Python virtual environments and uv
1:18:01 Single-line commands vs functions, alias resets
1:24:03 Running opencode from the command line with session memory
1:51:20 The new `ask` command: AI as a shell filter
2:03:03 Replacing text in Vim with AI output (!!ask)
2:15:01 Auto-fixing Markdown titles on save
2:24:04 Aliases and environment wrap-up
2:27:05 A cd helper that stays in the directory
2:30:02 Completions, plugins and generators
2:48:01 The prompt: git branch and Python venv
2:54:03 Per-machine config with fallbacks
3:00:01 Why bashrc must work everywhere in 2027
3:06:06 The setup script and dotfiles as a fork-able base
3:30:14 Keeping the safe CDPATH handling
3:33:07 Git config and identity merging
3:39:02 SSH keys and secrets
3:57:00 Portability: case sensitivity and GNUisms
4:00:03 Idea: AI-generated chapter headings
4:06:06 Squash and merge vs merge commits
4:12:01 Wrap-up

`#bash #livestream #dotfiles #ai #opencode`

## Transcription

[00:00:00] This is going to be a long video, but I'm going to go through and just record everything
[00:00:07] that I'm doing with my clean up on BashRC.
[00:00:10] Using Open Code, Open Code is connected to Summit Cloud through the Cloud Agents, which
[00:00:16] I've done.
[00:00:17] I don't think I did that in the video, but that's how we do it.
[00:00:21] You can set up Open Code to run from the terminal that uses your Cloud it, the Pro subscription
[00:00:26] $20 a month.
[00:00:27] That's what I'm doing right now.
[00:00:29] We can go ahead and have it take a look at BashRC.
[00:00:31] I already had it take a look at my VIMRC and clean it up pretty immaculately, find a
[00:00:36] lot of really great things and fix it.
[00:00:38] I'm going to go ahead and do that and record it and I'll be recording pauses and stuff
[00:00:42] like that.
[00:00:44] I mean, pausing when I eat breakfast or take a coffee break or something, but this is going
[00:00:48] to be a long for video.
[00:00:49] It's designed for you to just put it on and go.
[00:00:51] I realize the mic quality is not very good right now.
[00:00:54] I'm still working on getting all my old gear set up.
[00:00:58] I'm just stating for that text streams are back by the way, if you hadn't noticed.
[00:01:02] I'm also talking about that in a different video, also the discord is not back, but it's
[00:01:08] coming back, so just watch for that.
[00:01:12] Here it is.
[00:01:13] Clean up my BashRC.
[00:01:15] I'm going to use Sonnet instead of Opus, just for the token allocation.
[00:01:20] I've done a Sonnet.
[00:01:21] If you write decent prompts, Sonnet does pretty well, even though Opus is like phenomenally
[00:01:27] better.
[00:01:30] So that's where we're going to go with this.
[00:01:33] I'll fix the clear bugs and tidy the repetitive parts without changing behavior line.
[00:01:37] I'm really interested to see if Claude is going to automatically make the changes without
[00:01:43] asking me, which it has done its best.
[00:01:53] I am not using bubble wrap or any kind of container as a safety net.
[00:01:59] This is all live.
[00:02:00] It's probably a bad idea, but I'm going to go ahead and do that anyway.
[00:02:09] The cursor off edit failed because the line holds the literal escape byte.
[00:02:14] Yep.
[00:02:15] That's how you're able to write the escape byte, so fix it with said and then check if
[00:02:20] it's X.
[00:02:21] Okay.
[00:02:22] I can go off BashRC.
[00:02:24] It passes BashRC and show spec flags that escape fixes might be not going to work.
[00:02:34] There's a reason I had an actual escape in my BashRC.
[00:02:39] I can go ahead and fix BashRC and show specks and Pearl Pearl and be off a hooding.
[00:02:54] I want to start a local oops snippet so it's alone.
[00:02:56] I haven't sourced it.
[00:02:58] So I'm doing this all in a draft PR so that I can compare the changes it made.
[00:03:04] Actually, this is one of the best ways to do this when you don't want to have it blow
[00:03:08] away your screen all the time.
[00:03:10] You can let it do its thing and then go do it get diff and maybe the PR is going to actually
[00:03:15] change.
[00:03:16] Just like you would if you were working with an intern or something.
[00:03:20] Source if tested to let source one looks fixed.
[00:03:24] I wish it's only ever called with one argument so I never source anything.
[00:03:33] Really?
[00:03:34] Oh.
[00:03:35] Oh my God, that explains why those were never working.
[00:03:44] So I'm going to go through my BashRC a little bit to review all of this.
[00:03:47] This is not a how to use Bash video, but I will kind of in general talk about what I
[00:03:52] do in my BashRC and why.
[00:03:54] I'm not going to talk about why I use Bash instead of Z shell, it should be obvious.
[00:04:01] Another off was why identical to curon is now this okay.
[00:04:09] No, it's not supposed to.
[00:04:16] I don't think that's the correct fix.
[00:04:17] I'm going to go look at that.
[00:04:22] Vims bill check Vims bill instead of home Vims bill.
[00:04:27] Really?
[00:04:28] Oh, that's horrible.
[00:04:31] There was also an export array which Bash can't export.
[00:04:34] I think Vims bill can probably go away.
[00:04:38] There's going to be a lot of modernizing in my BashRC.
[00:04:41] I haven't that modernized in a long time.
[00:04:43] But what's precipitating this is I just got to reimagine my Mac and I've been using doing
[00:04:51] a lot of stuff at work and had a chance to really clean up my BashRC and I started using
[00:04:57] open code which I started doing recently, another video on why I use open code.
[00:05:04] It ended with export wd instead of export-f wd and I think this variable is going to
[00:05:12] be now used as local and export properly.
[00:05:14] Path through pen didn't declare arg local and used a different sub path of pen.
[00:05:18] Path through pen I've had, that's, okay, it's probably added a bunch of local variable
[00:05:26] definitions which is not necessary, but good.
[00:05:32] Clone had redone it local and redecorations and then checked CD calls.
[00:05:38] And I'm also going to get rid of CD path in here which I've had a video about.
[00:05:42] It also passed recursive module which only worked as an abbreviation so it changed it.
[00:05:51] I'm just going to make sure that it was both arguments, okay.
[00:06:00] Is all that in the PR for you?
[00:06:05] I think it is.
[00:06:08] Another message changes are only in a working tree.
[00:06:16] Director of Center cleanup is just for cleanup two but it only contains the four other commitments.
[00:06:19] I think I need to come in and push cleanup two pushing updates, a PR, other people may
[00:06:27] be watching so I haven't done it.
[00:06:29] I'm going to come in and push yes.
[00:06:36] Another thing I'm trying to do is to use the regular, now that we have AI to help us.
[00:06:41] I'm sorry to use the regular PR process even for my own batch or C files instead of just
[00:06:45] committing to main and I think that's probably a good idea especially if you queue up a bunch
[00:06:55] of changes mostly so that people following you aren't blown away by individual changes
[00:07:01] like lots of individual changes.
[00:07:04] So I'm going to go open the PR just like I would through the web.
[00:07:17] I am going to dot files and we're going to look at the PR for this.
[00:07:21] This is exactly what I would do at work and you see I have a PR here that is in draft
[00:07:26] mode that means that there's lots of things but one of the side effects is you can't,
[00:07:35] other people can't really comment on it.
[00:07:36] They can but it's not ready for review so it kind of saves you from a bunch of that.
[00:07:45] Why is my mouse messed up, sorry guys my mouse is right there you go.
[00:07:53] It has a summary of all the things.
[00:07:55] When you have a PR it's you know commit frequently commit often because the commits end up getting
[00:08:01] squashed in my case so that it's not going to overwhelm people that are reviewing it.
[00:08:12] So I'm going to go look at the file changes and see what was actually changed.
[00:08:16] There's a bash or C config bash bash or C. I have three directories in my dot files now
[00:08:22] and fig scripts and install and all that stuff is summarized that way.
[00:08:29] I don't know why it changed cursor off to 25L.
[00:08:34] I don't understand if I don't think that's the actual value for that.
[00:08:38] I could be wrong though I could have actually just copied wrong.
[00:08:45] I'm going to I'm going to run this through jam and I says it back up my mouse get messed
[00:08:58] up.
[00:08:59] I was playing games last night.
[00:09:06] I was trying to ask you if you can see the show where it will be, and you're extremely
[00:09:22] leaning escape E is missing with that of the show shoots as little as X yeah I thought
[00:09:32] this is a bogus.
[00:09:36] The reason I did it that way is because of how it's printed so I think I want to change
[00:09:56] this back actually.
[00:10:08] I think it needs to have the the this go away yeah it's not the kind of thing and I would
[00:10:24] know because it's really a satiric the escape character is missing with that show tests as
[00:10:38] little text.
[00:10:46] The reason I have those variables said is so that I can make quick and free scripts that
[00:10:52] turn off the cursor without using to see why.
[00:11:06] And before it actually had an escape sequence there and I realized I was kind of pushing
[00:11:14] it but it actually had an actual escape key in there that was not showing up in the interviews
[00:11:19] as soon as it was an actual escape it was like a like a typed an escape here and copied
[00:11:25] it out and put it in there.
[00:11:27] And the reason for that was because if you printed it would actually always be it wouldn't
[00:11:31] have to be escaped it wouldn't have to be you wouldn't have to use it so it would work
[00:11:35] with prints and echo and stuff without having FMT replacements.
[00:11:39] So that's why I had that's why all of these have that little space there that is actually
[00:11:44] an escape sequence and I get that that's probably bad practice but it was super convenient because
[00:11:53] I could just write it I could echo blah and have a thing I don't have to have it escaped
[00:11:59] and for those of you who don't know did I patronize a echo does not do escape sequence
[00:12:08] translation.
[00:12:10] So you know print I think print in does so yeah so like let's ask Jim and I does echo
[00:12:28] do escape translate since I don't know if that's the way to say it's a literal blood translate
[00:12:41] is yeah echo - E you have to do - E and I didn't want to just ask me I just find his echo anywhere
[00:12:48] and just turn occurs well and as you shall print see the flag on the sword yeah the best
[00:13:03] practice is per nap all right fine because echo is definitely a crutch goes on versus
[00:13:09] preface reliable way I okay fine I just don't want to so that is definitely going to so
[00:13:20] I've done a lot of things really badly I mean a lot of really poor decisions and this is
[00:13:25] this cleanup is really making me face my maker here or face the music or whatever because
[00:13:34] I've been doing it because I just want to do it I do it really quick well here's the
[00:13:37] problem with that if if you are hiding direct escapes in there you are yeah if somebody
[00:13:46] else looks at your death house they don't even see the escape my a I couldn't see it because
[00:13:50] that's what this is right here so I'm trying to show you I'm sorry I'm gonna go back so
[00:13:54] like it's so much to see this I'm gonna be disgusted and I don't care okay you see that
[00:14:02] right there that is an actual escape right and what is so cool about that is I can do
[00:14:12] this I can say echo blue something with reset and I can change color just like right from
[00:14:28] the front of that because it's already in there but it is not happy and so the cursor
[00:14:42] off and cursor on things are working yeah echo curve the echo occur on and it works so oh
[00:15:01] that's a tough one that's a tough one because I have actual escape sequences in my utf8
[00:15:06] thing yeah there's a problem is this is this is completely invisible to anybody who's using
[00:15:18] my my bachelors see like if you go to my bachelors see like wait what like where's the escape
[00:15:26] all I promise is there is just use can't see it because this doesn't add a handle an actual
[00:15:30] escape in the in the file my problem I have is I need to figure out what the dependency
[00:15:43] is on all my scripts on my really quick and dirty methods of doing this the fix for this
[00:15:50] is to use predef in anything that calls this and then to use an actual 0 3 3 or whatever
[00:15:56] the escape is next last year on bash um so yeah I just got a lot of stuff in that it needs
[00:16:09] to come out like all this personal config stuff this this all the stuff has to come out this
[00:16:18] all has to come out home private pictures all the stuff that all needs to go this is this
[00:16:25] is me thinking about the sea flags needs to stay though the bad thing we're backstart
[00:16:32] this interactive checks got to stay oh I'm gonna try to I'm gonna see about this let's
[00:16:56] have the AI help me um what depends on color escape very wars in my dot files
[00:17:25] um yeah um I think our dot files depends on color escape variables export from bachelor's
[00:17:45] answers to rep repo and each hit either define locally or coming it out to enter our values
[00:17:51] of the fancy um script mark exports some black red yeah in general this is how I do it and
[00:17:59] by the way putting the single quotes is a better way to do it now because but that's
[00:18:08] a bashism bash little trick if you use if you use dollar single quoted bash that will translate
[00:18:15] that to the actual thing with that need an escape and and that bachelor see was before
[00:18:22] I knew that so that was years ago so check your else the best of so yeah regular in general
[00:18:29] you should always put your color variables inside of the program that's using color um
[00:18:38] so that you're not dependent on external variables for stuff crisp air cal and define their own
[00:18:51] clear cutout confident in fact I actually turned to I have a thing called color table and it will print they will I use it so frequently it'll like dump all the colors out into the script so that they're in the script if I'm writing a script
[00:18:58] it's gonna use color um and by the way when I use color I use uh I use the baseline colors instead of the actual specific colors because those things always translate to whatever the theme is the other specific
[00:19:14] colors don't so it gives you your colors but it's why there's only the main ones um so that's what I'm doing there um I'm gonna go ahead and get rid of these now I don't think these are needed
[00:19:30] um delete those which okay so I mean it is nice to have all that stuff I think there's a script already
[00:20:00] isn't there a script that prints out the color variables for inclusion in scripts the truth is that they I don't even need that anymore I just have a I add it as I make this red
[00:20:23] uh it's also as a promo to use every case you read and and a literal blah not real escape bites
[00:20:32] uh close here in the strip you guys some color so this is hard because um if I'm a lot of myself as positive shell on that bash and it's a little run anywhere and that stuff doesn't have
[00:20:53] this sequence so that's why does it um but that that's good enough anyway all right um what else did it change so we we changed that back I'm gonna go ahead and push the changes now
[00:21:19] push it clear clean up all right so that got rid of the color section utility functions have do I have this thing uh source if was running the whole time
[00:21:49] um reduce source if giving bash bash resources to finalize both have prominent source if pop my completion.
[00:22:15] That's very bad for these things we're not loading right and now I know why.
[00:22:31] Okay fine we'll keep that that's a good fix variable C flags got to use that that's gotta stay a group of dark stays weird fix XJ state home
[00:22:50] expensive fix weird defaults Mac OS has really crazy defaults for this stuff um which I hate so I made it be the same as Linux um these will override anything really
[00:23:07] local state drash config answer would collect plugins VIM spell uh this will start to add I don't think I need that anymore
[00:23:32] uh
[00:24:02] yeah
[00:24:24] remove and push I'm gonna get some coffee I'm gonna pack okay move the VIM spell from bash or say okay um
[00:24:36] we see more review on this refresh where we got rid of it uh vg pass I don't use pg pass that much anymore
[00:24:51] uh frankly I don't use post verse on my own machine very much at all um and this is kind of the default
[00:25:05] I'm gonna go edit the file directly on my own because it's faster
[00:25:12] all right so we're gonna go through the whole diversity um I need to set the link the user who am I okay this this actually is
[00:25:25] a leftover problem I don't need to push broadcast or ID I haven't needed that in a long time
[00:25:34] I don't I don't think that's used by anything I'm gonna go check it I can actually be queried with the API these days
[00:25:43] let's stick with the stuff that we absolutely know that we have to keep all right so the time zone that always always always always
[00:25:52] um the user stuff is kind of dubious uh the repos directory to go look for where where do you store all your repos this little
[00:26:05] this little build combination becomes a problem because I've had this problem before when I work at work my user ID doesn't match my
[00:26:15] GitHub account so uh it's a problem right it's a problem because I can't these these things don't resolve automatically and I
[00:26:26] have to throw out those environment variables completely so I don't want to do that I actually want those environment variables
[00:26:33] to not be said I think I was trying to be fancy and define everything I probably shouldn't have defined anything at all
[00:26:41] until I until I needed it but um I may end up breaking a bunch of stuff by changing this stuff
[00:26:49] um help browser w3m that has got to stay that's a that's an important one I don't even think other 3ms on here
[00:27:00] um this should actually be a have
[00:27:12] yeah this should be a if I have the v3m or is my syntax for this have your colors and your color
[00:27:33] it makes a team looks um the v3m and exports rather wait what just happened
[00:27:50] am I still streaming hello okay so it looks like it's fine what time is it by the way it's nine o'clock okay
[00:28:07] if I have 3dv3m the next 4dv3m is a browser you just have all the stuff I don't really need I'm going to really think all those the old
[00:28:19] stuff documents downloads templates I don't know if I need that
[00:28:25] I'm going to remove a bunch of variables and I'm going to ask my AI to make sure I didn't break any of my scripts
[00:28:32] um if I did break any of my scripts that would be a good thing because my script should not depend on my accuracy
[00:28:42] they shouldn't they should be standalone all of them should be standalone so somebody can grab a script and use it anywhere
[00:28:52] and if that's not the case I want that I want that to be the case so I'm going to kind of like aggressively delete some of these
[00:28:59] environment variables for that purpose for that reason
[00:29:03] virtual machines the clips directory okay so the clip data directory stuff that stuff is all super important
[00:29:10] that does get used a lot I'm pretty sure although that we might have to set up the clips application before we do that
[00:29:18] I think I think the clips tool already got rewritten in bonsai but I don't know so that's something we're going to need to look at
[00:29:30] actual width that's a VIMP thing
[00:29:34] um the go bin the case the go stuff has to definitely stay uh go proxy CEO and why is I'm shrinking down here that's like really weird
[00:29:51] um that's just a default for screen key that's the thing you see at the top of the screen there
[00:29:57] you see like color I don't know what that's even for we need to go stuff Python by code yeah
[00:30:12] I'm going to say of adding too many colors can get you in trouble hey nice of fg how you doing
[00:30:28] when I go else you collate that goes in this C stuff yeah um bat is theme we need theme stuff we need all the color stuff together
[00:30:45] yeah I don't think we have any color stuff anymore or should I put it dirt colors let's just have all the color stuff in the same way
[00:31:00] um where's my other path where's my other color stuff
[00:31:15] I guess it's just miscellaneous I'm trying to touch okay here we go now wait what yeah we need this let's do let's do this
[00:31:31] group box material blocks dark um so here's here's me using those escapes I didn't even use the things above this is the kind of thing that you cannot put an escape in
[00:31:50] I mean you can't you can't bring up escape for you because it's going to be used by everything this all this less stuff is like when I do man LS I get color that's how you do it it's a hack to do that
[00:32:04] a lot of people are like how the hell do you have color in your man picture so that's how you do it
[00:32:09] the man pages normally do not have color if he is other man leaders I suppose let's probably let's ask and see if there's something newer is there a newer man page reader that has color
[00:32:36] those proper modern campaigns uses bats a rust based cat clone with syntax highlighting as a man pager so that's that's what I was using bat for
[00:32:49] day K terminal you are faster says there's a few great modern options bat man pager I didn't know there was a thing called man pager until today so okay the thing is hard about this is that this will work even if there's no bat
[00:33:14] I I this this this here this will work on anything so like if you have basher on a system that does not have bat that will work and I don't have bat right now so I'd have to say if have bat
[00:33:30] have bat and export man page and pager blah blah blah and then I'd have like else this right
[00:33:42] let's try that so a maximums exec exec bash tachael that this reloads bash in the current so it reloads other variables
[00:33:54] and replaces the current memory spaces for the exit is about versus you know not doing that and creating a sub trail which is horrible
[00:34:07] so now we do man no less this is I'm getting the impression that this is not using bat
[00:34:21] no I know why because I don't have that nature yeah I'm going to add bat to my installer do I have bat in my Mac and so are you know and as opposed to age no fuck no
[00:34:41] that is a style but it's a it's the only Mac and so are there's those packages of course it's all fun I think okay
[00:34:54] I want to change the bash path on each appear twice add and fix so a lot of people have been recommending ancable to me lately and as much as I like ancable I think
[00:35:19] using ancable add for installer is a bad idea in your bash or see in your duff house
[00:35:29] first of all you have to have ancable so that's a different topic I'm going to try to say focus on this because I'm making a video right now but
[00:35:42] how do you install stuff whether you should write your own installer script or not you know is that an anti-pattern write your own installer scripts I think the answer is no
[00:35:50] and the reason is because so many things depend on a different method of installation
[00:35:59] and they have not been unified through ancable or anything else and there's you know sometimes you need to write a installer because you're going to do little tweaks on the thing and the easiest way to maintain those kinds of installers is just write a script
[00:36:13] some of them are using you know brew install some of them are you compiling the code I have installers that actually compile the code from fresh get a
[00:36:23] simple one of them use ancable because ancable requires ancable beyond the system and ancable answer if I were to try Hey Mickey if I were to try to install
[00:36:35] something that requires you know auto config and compilation and all that stuff with ancable it would be a disastrous complex situation way more complex than just a simple show script
[00:36:47] so that's where that's coming from
[00:36:51] next the mac ruined duplicates push to clean up so this draft care thanks
[00:36:55] um okay so let's do brew install that that is the managed page reader and that would even read the map pages anymore but if they did
[00:37:08] you know man Ellis is he so funny is it still it's still as soon as they you actually read them pages
[00:37:22] I'm a friend yeah yeah a lot of times it is I completely agree well it's not always faster
[00:37:32] it's it's it's it's simple is meant especially the bash map page yeah it's pretty insane but yeah you can go in and search it I do it all the time
[00:37:41] I still am a fan of command line searching the internet too which I'm curious to see how that's been affected by Gemini and I'll look at that later
[00:37:53] uh I get from yeah yeah yeah yeah like bash gpg and FFFM again uh I'm about to resolve okay um
[00:38:04] I don't think it's actually using it I don't know what's going on I don't think it's using my bat stuff here I'll find out a way to do that
[00:38:15] um so
[00:38:26] exact bash - I think it's still going to have those variables in there
[00:38:37] uh there you go so this is bat which is kind of gross actually um I don't think it's set to theme properly
[00:38:51] but uh yeah yeah I kind of like mine better but anyways that's bad
[00:39:13] so maybe it was because of the bat theme
[00:39:27] now it's still ugly as synth so there we go so we're gonna do this we're gonna say uh we're gonna watch the tutorial
[00:39:47] else colors is a big deal too we gotta have that boy if you don't have that your dead colors wise I do have one here but uh
[00:40:01] yeah I uh this is not going to have a home lab I don't have a home lab anymore
[00:40:09] I'm going to take it as a little stuff out okay so
[00:40:23] if have that then it's for my page or else it's using my fixer by the way can you tell
[00:40:41] it makes me very happy watch it fix all this for me automatically
[00:40:45] show off in tea baby that's my it's just set up as my fixer um
[00:40:57] bat that thing blue box
[00:41:03] a good auto format yeah I I made a video about this earlier but I am all about ale
[00:41:09] fixers now el fixers and and linters because if you screw stuff it up it automatically will tell you wait
[00:41:17] there goes parser stop here is keyword correct measure so
[00:41:21] it's running it's using show track as my linter and showing me when there's a problem
[00:41:29] uh for me because everyone's kind of explicit believe it or not the shell is actually enforced if if you use SH FMT it will enforce it just like
[00:41:41] this like go FMT or anything and people are very very surprised when they find out that
[00:41:47] using spaces for indentation is not a standard shell never has been
[00:41:54] this is all using tabs that is the standard that's not just that's not just a preference that's the standard in fact the language depends on tabs
[00:42:06] um if you use the aof or any of the things for like here variables to like block it in
[00:42:14] it will automatically strip the tabs but it will not automatically strip the initial spaces because that's not the standard syntax for language
[00:42:22] and you can't turn that off if you use this SH FMT for your for your formatter and fixer you have to use tabs
[00:42:30] and so a lot of people who learn shell wrong uh get really pissed off when it starts screwing up their you know their code and making them have to use tabs
[00:42:40] same with go by the way goes tabs only
[00:42:44] if you it won't even listen don't even compile if you don't have a tab there which i really love
[00:42:56] if you if you if you use the dash eon you know and construct it will not work without tabs
[00:43:12] okay
[00:43:16] many to the hey i'm a same guy for 40 years i mapped tab in shell to two space
[00:43:26] no i don't do that anymore
[00:43:30] not not in shelf doesn't matter anymore because i have fix
[00:43:36] watch i'm gonna save it it's gonna do automatically
[00:43:40] this is why i know what he cares
[00:43:44] you pair very little about that shit if you're using a fixer because it's gonna do it for you same with go
[00:43:50] no tab in the space argument would go it's like just just run your fixer the end it's not a problem
[00:44:00] why are you indenting your blocks anyway it's a fucking waste of time
[00:44:04] watch save it
[00:44:10] it's like
[00:44:12] sorry i swear i'm not supposed to swear because i'm on youtube videos
[00:44:18] um
[00:44:22] yeah
[00:44:26] i think i can do this
[00:44:30] color stuff
[00:44:34] hline
[00:44:38] um oh it's h rule
[00:44:42] oh brung one
[00:44:46] i can't remember my own stuff
[00:44:50] um i think it's t title or something
[00:44:54] i think it's title
[00:44:58] nope
[00:45:02] i can't remember my own elbers
[00:45:06] is it h
[00:45:08] h rule
[00:45:10] h title
[00:45:12] that's it
[00:45:16] uh robert
[00:45:20] my friend calls me
[00:45:24] um so
[00:45:32] i don't know if that's already
[00:45:34] color stuff okay so
[00:45:36] by the way that's a filter command
[00:45:38] which i'm a huge fan of
[00:45:40] what is a filter command so
[00:45:44] um this is a filter command
[00:45:48] um
[00:45:50] that runs a title this is a common idiom that i use
[00:45:54] i will make a function for the thing so i can cut and paste it into other code if i want
[00:45:58] and then i
[00:46:00] if it becomes useful enough then i will cut and paste the function into you know my bachelor or something
[00:46:04] and then i actually call the function at the end of my bash script
[00:46:08] this is a very very practical thing
[00:46:12] um
[00:46:14] and this is what it does it takes the input
[00:46:18] and does all the sizing
[00:46:22] and prints the text in the middle
[00:46:24] now this has a fix in it
[00:46:26] i'm going to say if saving is going to fix it
[00:46:28] it did not so running quotes are actually
[00:46:30] um
[00:46:32] this remove or escape them
[00:46:36] oh these
[00:46:40] those are not
[00:46:42] oh i see
[00:46:48] what it's saying
[00:46:54] quote just to print something
[00:46:56] there's something going on here i don't know what's going on
[00:47:00] sometimes if it's like that
[00:47:10] surrounding quotes actually
[00:47:12] the surrounding quotes actually unquote this
[00:47:14] that doesn't make sense
[00:47:38] i don't know what's going on with that
[00:47:40] i don't know what's going on with that
[00:47:42] i don't know what's going on with that
[00:47:44] i don't know what's going on with that
[00:47:46] i don't know what's going on with that
[00:47:48] i don't know what's going on with that
[00:47:50] i don't know what's going on with that
[00:47:52] i don't know what's going on with that
[00:47:54] i don't know what's going on with that
[00:47:56] i don't know what's going on with that
[00:47:58] i don't know what's going on with that
[00:48:00] i don't know what's going on with that
[00:48:02] i don't know what's going on with that
[00:48:04] i don't know what's going on with that
[00:48:06] i don't know what's going on
[00:48:08] i don't know what's going on
[00:48:10] i don't know what's going on
[00:48:12] i don't know what's going on
[00:48:14] I don't know what's going on
[00:48:16] I don't know what's going on
[00:48:18] I don't know what's going on
[00:48:20] I don't know what's going on
[00:48:22] I don't know what's going on
[00:48:24] I don't know what's going on
[00:48:26] I don't know what's going on
[00:48:28] I don't know what's going on
[00:48:30] I don't know what's going on
[00:48:32] I don't know what's going on
[00:48:34] Postgres stuff
[00:48:36] i don't use Postgres anymore on my system
[00:48:38] if i'm going to use it, it's going to be on a container
[00:48:40] so it's never going to be used this way
[00:48:42] i'm never installing Postgres on my laptop
[00:48:46] or a system
[00:48:48] if i do that
[00:48:50] you know it's just not happening
[00:48:54] gbdty
[00:48:56] i don't use gbg anymore for anything
[00:48:58] i don't ever since you can sign
[00:49:01] get out with SSH keys
[00:49:03] i don't do it anymore
[00:49:14] i might regret this but i'm going to get rid of it
[00:49:20] this tells it to use this pipe
[00:49:32] uh let's apply it
[00:49:36] i don't know if i need to use the last pipe anymore
[00:49:42] i think it might be redundant
[00:49:54] um that's kind of an AI thing
[00:50:01] gbg client
[00:50:03] i don't use it
[00:50:05] nope
[00:50:07] i don't
[00:50:09] i know it's weird to say right
[00:50:11] i've used it for decades
[00:50:17] i do use the ps12 client
[00:50:19] yep
[00:50:21] but when i use the ps2 client
[00:50:23] i'm
[00:50:25] usually in a container or something
[00:50:29] i'm never doing direct ps4 queries
[00:50:33] um
[00:50:35] from my laptop
[00:50:37] which i haven't been lately
[00:50:39] i probably will regret that later
[00:50:41] um
[00:50:43] depends on whether you use Linux
[00:50:45] i might know the block in base
[00:50:47] if the only runs this pipe exists
[00:50:49] that voice doesn't ship it
[00:50:51] and your Bruce Howard doesn't install it
[00:50:53] so the block does nothing there
[00:50:55] on a bunch of damage
[00:50:57] maybe it still does something
[00:50:59] those systems have less pipe at the path
[00:51:01] and let's share the contents
[00:51:03] of archives
[00:51:05] pdf system where fire is instead of raw bytes
[00:51:07] oh right
[00:51:09] yeah and install a bunch of records
[00:51:11] so that might still be there
[00:51:13] ouch i have something going on
[00:51:15] like
[00:51:17] weird
[00:51:19] um
[00:51:21] i think it's in the repo references
[00:51:23] i keep people sitting in the Linux
[00:51:25] i can take the block
[00:51:27] your man pager goes through bat and doesn't use less open
[00:51:29] uh
[00:51:31] so removing it wouldn't affect the man pages
[00:51:33] no i want to keep it
[00:51:35] keep it
[00:51:37] uh
[00:51:39] so
[00:51:41] i'm going to keep that i'm actually also going to move it
[00:51:43] next to
[00:51:45] my other pager stuff
[00:51:49] or is my other pager stuff
[00:51:51] i need to go back to the environment variables
[00:51:53] um
[00:51:57] i mean it's sort of related
[00:52:01] yeah
[00:52:05] i should take this out
[00:52:11] uh
[00:52:15] pager
[00:52:21] i need to see bachelor's here
[00:52:23] multiple hosts which is
[00:52:25] yeah i always have
[00:52:27] back a bunch of Linux
[00:52:29] everywhere
[00:52:31] um
[00:52:35] i wanted to do one file that i can move around
[00:52:37] and then i bring in extra files
[00:52:39] to override or add stuff for work or thing
[00:52:41] which wasn't getting added
[00:52:45] i actually fixed the bug
[00:52:47] it's finally explained the reason my external bachelor
[00:52:49] bachelor's there wasn't getting sourced at the end
[00:52:51] i have a bachelor's score
[00:52:53] or a work a bachelor's score private
[00:52:55] that can be added
[00:52:57] and just recognize automatically
[00:52:59] uh
[00:53:01] if you have dirt colors
[00:53:03] dirt colors
[00:53:05] yes we want dirt colors
[00:53:09] um
[00:53:13] uh yeah we want dirt colors
[00:53:17] um
[00:53:21] we definitely want that
[00:53:23] the path stuff
[00:53:25] the path we penned and append
[00:53:27] these are fantastic i actually got this idea
[00:53:29] from somebody else i can't remember when i got it
[00:53:31] this is so awesome
[00:53:33] uh
[00:53:35] when you want to build your path
[00:53:37] and i also have um
[00:53:41] you know you can put all your stuff in here and order
[00:53:43] and it does not add them
[00:53:45] if they don't exist
[00:53:47] so your path doesn't get corrupted
[00:53:49] with stuff that doesn't exist
[00:53:51] a big huge fucking path that you have to like look at
[00:53:53] so now you can just like do it like this
[00:53:55] so
[00:53:57] i'm going to do like so i can do path like this
[00:53:59] and it'll show me all my path
[00:54:01] and what things get found
[00:54:03] um
[00:54:05] yeah
[00:54:07] and
[00:54:09] since we're seeing one of the
[00:54:11] run apple security stuff
[00:54:13] i don't turn them in
[00:54:15] those are different things
[00:54:17] so
[00:54:19] um
[00:54:21] those that i'm just super proud of that
[00:54:23] that's with so much
[00:54:25] um
[00:54:27] and it's using it's using back to the truncation on stuff
[00:54:29] uh
[00:54:31] that all stays
[00:54:33] cd path
[00:54:35] now this is the one i just made a video about
[00:54:37] um
[00:54:39] cd path automatically allows you to change
[00:54:41] into any of the paths that are here
[00:54:43] so i can do this
[00:54:45] from this location i can see
[00:54:47] into
[00:54:49] uh
[00:54:49] boost
[00:54:51] right
[00:54:53] and i can see back
[00:54:55] and you'll see if i'm in here
[00:54:57] there's no boost in here
[00:54:59] um
[00:55:01] and it's a really really convenient way
[00:55:03] to build a bunch of like
[00:55:05] you know because i i constantly point down different repos
[00:55:07] and it will
[00:55:09] personally looks real to repos and go into the right thing
[00:55:11] problem is
[00:55:13] that when you use it
[00:55:15] it prints out this line to standard output
[00:55:17] which corrupts
[00:55:19] uh
[00:55:21] my ai choked on it once because it corrupts
[00:55:23] uh things that are parsing the outputs
[00:55:25] so you want to go to your directory and list it out
[00:55:27] and then capture it in standard output
[00:55:29] into a script very well
[00:55:31] into you know a string or something
[00:55:33] and then you want to go back you can't do that
[00:55:35] um
[00:55:37] and then you're getting corrupted
[00:55:39] so let's say
[00:55:41] let's say you want to go someplace to get a JSON file
[00:55:43] and then you do it
[00:55:45] and then you pull a JSON file but now
[00:55:47] the JSON file
[00:55:49] is got this bad line at the front
[00:55:51] because CD because the CD path
[00:55:53] it outputs the same
[00:55:55] so the only way to get around that
[00:55:57] and this is all in a separate video
[00:55:59] the only way to do that
[00:56:01] is to do CD path is to clear out CD path
[00:56:03] and tend to do the same exact thing
[00:56:05] that you should just drop CD path completely
[00:56:07] I have concluded that that's what I'm going to be doing
[00:56:09] um
[00:56:11] and you know that applies to any scripts that you have
[00:56:15] but it also is very dangerous because
[00:56:19] um if
[00:56:21] if your scripts
[00:56:25] anytime you do a CD
[00:56:27] if anybody has used a CD path
[00:56:29] your CD is not going to work
[00:56:33] so CDing into a directory
[00:56:35] unless you explicitly state the path
[00:56:37] which you probably should
[00:56:39] I mean come on
[00:56:41] um you should not be just randomly
[00:56:43] CDing to a
[00:56:45] script into a directory
[00:56:47] that you assume is at the local
[00:56:49] in the current directory
[00:56:51] that is a really dangerous thing to do
[00:56:53] in shell scripts and it's not caught by shell check
[00:56:55] so and this is the reason
[00:56:57] because CD path if somebody
[00:56:59] if somebody want to hijack your code
[00:57:01] and it says root or you're going to say
[00:57:03] it would be or something like that
[00:57:05] they can set CD path
[00:57:07] and then they can call your thing
[00:57:09] and they can end up ejecting
[00:57:11] a different location for that content
[00:57:13] so it's a really great hacker
[00:57:15] vector and
[00:57:17] I feel kind of bad that I've been using CD path
[00:57:19] all this time and telling people
[00:57:21] what the hell why aren't you using CD path
[00:57:23] and using that shitty fuzzy pointer
[00:57:25] because you know
[00:57:27] it's dangerous and I didn't realize
[00:57:29] for a very long time
[00:57:31] and
[00:57:33] it was actually the AI that caught it
[00:57:35] the AI didn't say it was dangerous
[00:57:37] the AI said oh hey
[00:57:39] this output is getting corrupted
[00:57:41] because I have this extra line here
[00:57:43] so I'll help you out and put CD path
[00:57:45] equals in front of all my CD commands
[00:57:47] and so yeah
[00:57:49] I'm not using that anymore
[00:57:51] um
[00:57:53] I'm going to get rid of it
[00:57:55] um
[00:57:57] because okay so
[00:57:59] bash JavaScript options
[00:58:01] uh
[00:58:03] for bash ops instead of for shell ops
[00:58:05] check when size, tables, columns and rows
[00:58:07] uh expanding at least is globstar.com
[00:58:09] if you don't know what those are
[00:58:11] you got to read about them
[00:58:13] they're super interesting
[00:58:15] um I do think you should use those
[00:58:17] um
[00:58:19] scty annoys is disable control s
[00:58:21] and control qtty flow control
[00:58:23] this is super
[00:58:25] if you've never frozen
[00:58:27] or terminal before
[00:58:29] accidentally hitting control s
[00:58:31] somehow which is super easy to do
[00:58:33] then you won't appreciate this
[00:58:35] but
[00:58:37] you definitely want to do that
[00:58:39] if you're using server a lot
[00:58:41] you will you will for sure
[00:58:43] so how many years I went
[00:58:45] not knowing how to unfreeze my terminal
[00:58:47] when I accidentally control s
[00:58:49] to do t2 by full control
[00:58:51] and occasionally I was just like
[00:58:53] you know control around to find a thing
[00:58:55] I've seen kids that were learning
[00:58:57] to use eternal for the first time
[00:58:59] who use nano as their first thing
[00:59:01] end up doing this because control s
[00:59:03] is something it's you know
[00:59:05] it's the thing that you can do in
[00:59:07] nano and they were trying to all
[00:59:09] experiment and use control for all this stuff
[00:59:11] and then they would end up screwed
[00:59:13] this is why I don't like emacs, why I don't like nano
[00:59:15] using control key for anything
[00:59:17] like that can be really problematic
[00:59:19] especially dumb asses
[00:59:21] who tell you to use control C instead of escape
[00:59:25] and then
[00:59:29] that's all I'm going to say about that
[00:59:31] it's the export history of control
[00:59:35] his control equals ignore both
[00:59:37] his size equals 5000K
[00:59:39] you have to change these
[00:59:41] otherwise you'll end up
[00:59:43] some of the buffered split pane
[00:59:45] sort of things won't work
[00:59:47] this is my set that show VI
[00:59:49] I made a whole video on this
[00:59:51] it's a very bad video the quality
[00:59:53] of the audio is really bad on it
[00:59:55] but still it's there
[00:59:57] we wanted to have his to bend
[00:59:59] the reason for that is because we want
[01:00:01] history to be updated everywhere
[01:00:03] immediately
[01:00:05] and if you don't do that
[01:00:07] then the history file doesn't get updated
[01:00:09] so if you have two terminals and two windows
[01:00:11] then the one doesn't see the history
[01:00:13] the other one
[01:00:15] some people are annoyed by that
[01:00:17] they wouldn't want that but I haven't
[01:00:19] because I wanted to carry over
[01:00:21] a smart prompt
[01:00:23] so I built my own code
[01:00:25] this is all original code
[01:00:27] that I wrote years ago
[01:00:29] to build my own PS1 prompt
[01:00:31] and this was kind of
[01:00:33] it was kind of a challenge
[01:00:35] because I was sick and tired
[01:00:37] of people
[01:00:39] using
[01:00:41] stupid stuff
[01:00:43] like
[01:00:45] people were saying
[01:00:47] oh you have to use OMI's e-show
[01:00:49] it's so awesome I was like
[01:00:51] no it's not it's really not
[01:00:53] and you know
[01:00:55] I was like no you can actually do all of that
[01:00:57] much more efficiently and better
[01:00:59] and have more control of it without that
[01:01:01] that's what this is
[01:01:03] and if you don't know how to read show
[01:01:05] or you don't know what's going on
[01:01:07] this is actually building
[01:01:09] all of that stuff
[01:01:11] so yeah
[01:01:13] it's actually
[01:01:15] using variables
[01:01:19] that are set elsewhere
[01:01:21] so local p equals
[01:01:25] blah blah blah
[01:01:27] and
[01:01:31] yeah directory v so this is just
[01:01:33] occurring in all the variables
[01:01:35] that are used here
[01:01:37] and this is my red green
[01:01:39] and all those things are all here
[01:01:41] but now they're actually escaped
[01:01:43] and this is the effective user
[01:01:45] ID
[01:01:46] the pwd tells the current directory
[01:01:48] if it's the current directory
[01:01:49] or if it's this
[01:01:51] if it's at home and change it to
[01:01:53] btilde
[01:01:55] give branch this is the standard thing
[01:01:57] to show a branch you're on
[01:01:59] and then it counts the prompt
[01:02:01] it has to do this
[01:02:03] you have to count this up
[01:02:07] in order to get it right
[01:02:11] because the color sequence
[01:02:13] is actually screw up the counting
[01:02:15] so they'll end up with the count
[01:02:17] being incorrect and then I have
[01:02:19] all of the other stuff to manufacture
[01:02:21] the prompt so this stuff right here
[01:02:23] is all so if the
[01:02:25] if the prompt is
[01:02:27] larger than prompt long
[01:02:29] it will actually put it on two lines
[01:02:31] so you get a really long back
[01:02:33] and if it's short enough it'll keep it
[01:02:35] and that's all you need man
[01:02:37] you don't need screw
[01:02:39] screwy like oh my Z show for all that
[01:02:41] if you
[01:02:43] if you're putting a lot of stuff besides that
[01:02:45] and your prompts you're like
[01:02:47] not
[01:02:49] you know people put the weather in there
[01:02:51] and the local airline flights overhead
[01:02:53] and
[01:02:55] like that is not the point of the prompt
[01:02:57] the problem of the prompts is to
[01:02:59] communicate the essential information
[01:03:01] get out of the way
[01:03:03] and this would be your
[01:03:05] substitute for
[01:03:07] you know all of that
[01:03:09] so this is something else I added
[01:03:11] so if I have t-mucks on the system
[01:03:13] go ahead and
[01:03:15] and
[01:03:17] do the rest
[01:03:19] there's such a day hours go
[01:03:23] I'm sure
[01:03:25] you need to see it
[01:03:29] every time you type everything
[01:03:31] something on the command line
[01:03:33] like every single time
[01:03:35] has to be
[01:03:37] uh
[01:03:39] something is probably like
[01:03:41] do the dishes or like
[01:03:43] you know get the mail dummy or something
[01:03:45] um
[01:03:47] yeah I mean if you need that stuff on your screen
[01:03:49] there's so many better ways to put it on your screen
[01:03:51] including
[01:03:53] message you know windows with t-mucks and stuff
[01:03:55] so wd
[01:03:57] so this is yeah this is the
[01:03:59] so this is my ps1 prompt
[01:04:01] so what we are going to do
[01:04:03] a lot of people don't know this but the reason
[01:04:05] that's a function is because
[01:04:07] you can set
[01:04:09] where is it down here a prompt command
[01:04:11] the prompt command is
[01:04:13] this is a really cool thing about bash
[01:04:15] anything in the prompt command will run
[01:04:17] anytime you enter a command
[01:04:19] so when you press enter
[01:04:21] and you can put anything in there
[01:04:23] you can put whatever you want
[01:04:25] so like if you
[01:04:27] know if you wanted to have that automatically
[01:04:29] check the status of a thing
[01:04:31] like oh you have mail or oh somebody has
[01:04:35] left you a twitch message you could
[01:04:37] do that you could query every single
[01:04:39] time you put enter you could
[01:04:41] query something if you really wanted to
[01:04:43] wait that long because it does not
[01:04:45] print the prompt until it finishes running
[01:04:47] um
[01:04:49] l-l-l-l-v in virtual environment
[01:04:51] I don't know even what that one is. Oh right
[01:04:53] I want to activate vnv answer
[01:04:55] okay yeah so
[01:04:57] this is a python thing
[01:04:59] um
[01:05:01] and
[01:05:03] this when you go
[01:05:05] whether it was annoying
[01:05:07] things about python virtual environment
[01:05:09] so they're not automatically activated
[01:05:11] so you can be working
[01:05:13] on a python project and you can see
[01:05:15] the repo and
[01:05:17] be in something that's got a vnv file
[01:05:19] that is you know it's designed
[01:05:21] to be a python virtual environment
[01:05:23] but you're working on it using the default
[01:05:25] python on your system
[01:05:27] and not the one that's there and it's
[01:05:29] like super frickin annoying right so
[01:05:31] so this is the reason this is
[01:05:33] there is to detect
[01:05:35] that I am in a directory that's
[01:05:37] designed to be a virtual environment
[01:05:39] for python and then tell me
[01:05:41] whoa whoa hey buddy you got a python
[01:05:43] environment here do you want to use that
[01:05:45] I'm like oh yeah definitely it doesn't
[01:05:47] automatically use it
[01:05:49] um so so there is the answer
[01:05:53] to that so um
[01:05:55] if you notice I always use double quotes
[01:05:57] on on shelves it's as much safer
[01:05:59] it does not do expansion
[01:06:01] like other things does do
[01:06:03] does do does do
[01:06:05] a vnv is on which python
[01:06:07] I've been python on vnv been python
[01:06:09] test is this been activated okay
[01:06:11] so that's what that's about I'm keeping
[01:06:13] that I love that stuff
[01:06:15] um that's all original
[01:06:17] uh keyboard
[01:06:19] only works if you have x
[01:06:21] and are using graphic analytics desktop
[01:06:23] um
[01:06:27] I don't remember using this
[01:06:29] oh no this is a remapping
[01:06:35] this is me remapping
[01:06:37] remapping caps lock to escape
[01:06:39] which I never use
[01:06:41] I actually never use this I always use
[01:06:43] control of bracket every time
[01:06:45] uh with uv I no longer
[01:06:47] have seen about mental activity
[01:06:49] yeah I hadn't moved to using
[01:06:51] uv uh maybe I should
[01:06:53] start using uv instead
[01:06:55] um
[01:06:59] okay I have a question for you then
[01:07:01] sir nuba sir numba
[01:07:03] if I I
[01:07:05] somebody I'm a python
[01:07:07] guy at work he's all about uvs
[01:07:09] like pushing it and everybody's
[01:07:11] like we have to get this in the standard
[01:07:13] he he actually made an rpm
[01:07:15] to install uvs so it could be part of our standard bill process
[01:07:17] I mean he's all about uv
[01:07:19] and I have not used uv
[01:07:21] well I use it minimally
[01:07:23] but my question about uv is
[01:07:25] and I suppose I can ask my ai this
[01:07:27] is is it going to automatically
[01:07:30] detect all of that stuff
[01:07:32] like if I pull down a python repo
[01:07:35] and I cd into it
[01:07:37] what's gonna happen
[01:07:39] right
[01:07:41] this is python
[01:07:43] aware of uv implicitly
[01:07:45] or do I have to do anything
[01:07:51] yeah but here's the problem
[01:07:53] I still think it suffers from the same problem
[01:07:55] I think if I
[01:07:57] I'm gonna ask my ai this question
[01:07:59] so
[01:08:01] um
[01:08:03] I'm not gonna burn tokens though
[01:08:05] so
[01:08:09] if I
[01:08:11] cd into
[01:08:13] a clone github repo
[01:08:15] with a python project
[01:08:17] how does
[01:08:19] uv help
[01:08:21] to load the virtual environment automatically
[01:08:31] yeah but you have to remember
[01:08:33] to do uv run
[01:08:35] that's the problem
[01:08:37] it doesn't fix the bachelor c problem
[01:08:39] at all
[01:08:41] it doesn't
[01:08:41] uv does not automatically
[01:08:43] activate your shell when you cd into it
[01:08:45] so
[01:08:47] no no should I change
[01:08:49] should I change
[01:08:51] my defaults to
[01:08:53] say I have a virtual environment
[01:08:55] you know you'd have been activate
[01:08:57] um
[01:08:59] maybe instead of doing this
[01:09:01] I should probably do uv run
[01:09:03] right but then
[01:09:05] that's assuming I have uv on this system
[01:09:07] so this function should
[01:09:09] probably be updated to see if there's a
[01:09:11] uv and if there's a uv do uv run
[01:09:13] uh and that's
[01:09:15] that's actually an ai question
[01:09:17] so um
[01:09:19] should llv and
[01:09:23] uh
[01:09:25] be updated to use
[01:09:27] uh uv run instead
[01:09:31] of activate
[01:09:33] uh
[01:09:35] if uv is bound
[01:09:37] on this system
[01:09:41] um
[01:09:47] all right so no I leave
[01:09:49] uv run and activate different jobs
[01:09:51] uv runs it runs a single command
[01:09:53] it doesn't change your shell
[01:09:55] lvv runs at every prompt
[01:09:57] and sources activate so python
[01:09:59] pip and virtual tools
[01:10:01] result to the vav for the whole session
[01:10:03] uv run can't do that you'd have
[01:10:05] to prefix every command within
[01:10:07] the tools like vim lsp's and mark
[01:10:09] when you see the vnv
[01:10:11] uv created vnv's already
[01:10:13] work with activates
[01:10:15] uv uh uv vnv
[01:10:17] and uv sync produced a normal
[01:10:19] vim vim vim activated to found
[01:10:21] environment finds it
[01:10:23] vim is on and the python prompt
[01:10:25] keeps working
[01:10:27] so it does put a snake icon
[01:10:29] to let me know
[01:10:31] that i'm in a python version environment
[01:10:33] that's as i see that immediately
[01:10:35] when i'm in one
[01:10:37] uv run has one extra benefit
[01:10:39] syncs the environment
[01:10:41] to pyproject.toml and uvlock
[01:10:43] before running
[01:10:45] which activation does not do
[01:10:47] and the only matters if you want automatic syncing
[01:10:49] you can get it by running
[01:10:51] uv run or uv sync yourself if you want
[01:10:53] use your alias python
[01:10:55] and alias pip equals pip 3
[01:10:57] checking
[01:10:59] since this is a run
[01:11:01] before the aliases are defined
[01:11:03] they do not stay active
[01:11:05] in an activated vnv python still
[01:11:07] results if you have your specific path
[01:11:09] so it works with pip 3
[01:11:11] and pip 3 I haven't changed anything
[01:11:13] let's
[01:11:15] all right
[01:11:17] so let's fix the alias
[01:11:19] thing
[01:11:21] umm
[01:11:23] i think we should probably get rid of
[01:11:25] the alias to tell you the truth
[01:11:27] because
[01:11:29] if i'm using a vnv
[01:11:31] then i should be explicit
[01:11:33] you know
[01:11:35] so
[01:11:37] umm
[01:11:39] i replaced the python
[01:11:41] python with pipp 3 with two functions
[01:11:43] the file passes back to a standard
[01:11:45] cell checks
[01:11:47] the functions check a virtual environment
[01:11:49] outside of vn, python with pipp 3
[01:11:51] inside an activated vnv
[01:11:53] python's own pip and pip
[01:11:55] this is the fix
[01:11:56] the old pip alias
[01:11:57] always ran pip 3
[01:11:58] a return line with vv
[01:11:59] had no pip
[01:12:01] vnv is on which uses
[01:12:03] outside of vn and below
[01:12:06] so it behaves as before
[01:12:08] do you want me to commit and push this
[01:12:10] umm
[01:12:12] not yet
[01:12:13] all right so
[01:12:15] so it fixed
[01:12:17] my aliases
[01:12:19] i'm going to go find my python 3 aliases
[01:12:21] right here
[01:12:23] umm
[01:12:25] python in virtual environment
[01:12:27] and then
[01:12:29] wait where is a virtual environment set?
[01:12:35] who sets virtual environment?
[01:12:37] what sets
[01:12:51] every prompt
[01:12:53] i agree
[01:12:55] no it is
[01:12:57] you're right
[01:12:59] it is
[01:13:01] for every prompt
[01:13:03] there's a lot
[01:13:05] but there's really the only way to know
[01:13:07] the reason i did it that way
[01:13:09] is the same reason that i have
[01:13:11] that i'm running a git branch
[01:13:13] or whatever i have to show me my git branch
[01:13:15] every time
[01:13:17] because it's that important for me to catch it
[01:13:19] umm
[01:13:21] let's see
[01:13:23] virtual environment
[01:13:25] the one i use in virtual vv with no
[01:13:27] okay
[01:13:29] virtual vv is set by the vv's own activate scripts
[01:13:31] so i would rather manually use vv to know explicitly
[01:13:35] that i'm interacting with python
[01:13:37] yeah but
[01:13:39] my problem is that i go into python directory
[01:13:41] and i forget there's a virtual environment there
[01:13:43] and i think
[01:13:45] what you're suggesting is that you should train your brain
[01:13:47] to know if you're working in any python project ever
[01:13:49] as soon as you know you're dealing with python
[01:13:51] that you must
[01:13:53] activate a unity as opposed to having
[01:13:55] some brain dead
[01:13:57] reminder that you're using python
[01:13:59] i don't disagree
[01:14:03] but i forget
[01:14:05] so often, right, so
[01:14:07] in fact i'm going to put a thing in here
[01:14:09] umm
[01:14:11] declare vnv's
[01:14:13] vv's
[01:14:15] umm
[01:14:17] vv answer
[01:14:19] duh
[01:14:21] duh
[01:14:23] duh
[01:14:25] duh
[01:14:27] umm
[01:14:29] duh
[01:14:31] duh
[01:14:33] duh
[01:14:35] umm
[01:14:37] umm
[01:14:39] umm
[01:14:43] umm
[01:14:47] umm
[01:14:51] umm
[01:14:55] umm
[01:14:59] umm
[01:15:03] umm
[01:15:11] umm
[01:15:15] umm
[01:15:19] umm
[01:15:35] oh i know
[01:15:39] i'm going to use
[01:15:41] i'll use uv
[01:15:43] i don't i'm going to use uv
[01:15:45] i don't think python at all
[01:15:47] uhh the only reason i learn python
[01:15:49] is to be able to read it to see what my
[01:15:51] AI is doing
[01:15:53] i don't willingly choose to do anything
[01:15:55] if python ever
[01:15:57] auntsable is the only thing
[01:15:59] if i were going to extend answerable
[01:16:01] it's only thing i can even think of that i would
[01:16:03] choose python for
[01:16:05] umm because i'm not
[01:16:07] a numbers guy
[01:16:09] you know
[01:16:11] uhh
[01:16:13] yep
[01:16:37] uhh
[01:16:39] yeah
[01:16:45] yeah
[01:16:47] duh
[01:16:49] duh
[01:16:51] duh
[01:16:53] yeah we're only worse if you have x and or using graphical assistant
[01:16:55] this remaps
[01:16:57] i only have this here to show off
[01:17:01] because
[01:17:03] most people don't have x anymore
[01:17:07] umm
[01:17:13] this just remaps escape
[01:17:15] that's all of this
[01:17:31] yeah
[01:17:35] okay i gotta take a break
[01:17:37] i'll be right back
[01:17:37] alright so i'm back
[01:17:39] umm
[01:17:41] we're gonna make it through the bachelor
[01:17:43] c file here then i'm gonna go eat
[01:17:45] umm a bunch of aliases
[01:17:47] uhh
[01:17:49] so
[01:17:51] before i get too far on the alias
[01:17:53] this thing i want to talk about something
[01:17:55] uhh
[01:17:57] i used to have a special name for it
[01:17:59] what is it? single line commands
[01:18:01] a single line command
[01:18:03] is better
[01:18:05] in almost every case
[01:18:07] because it can be included
[01:18:11] and called from any other language
[01:18:13] so what's a single line command
[01:18:15] umm
[01:18:17] so a single line command
[01:18:19] is like VIC
[01:18:21] so
[01:18:23] VIC is a command
[01:18:25] that does what you see here
[01:18:27] it looks up the command
[01:18:29] it's by its full path
[01:18:31] it looks like if it does
[01:18:33] renames the current t mux window
[01:18:35] and then
[01:18:37] exit it's the editor on it
[01:18:39] right and by executing the editor on it
[01:18:41] what that means is that it replaces
[01:18:43] the current process
[01:18:45] which is this running shell script
[01:18:47] with itself
[01:18:49] and you're gonna see the use of exact
[01:18:51] a lot in a single line command
[01:18:53] because what that does
[01:18:55] is it allows the command itself
[01:18:57] to take over all of the environment
[01:18:59] but the real key here
[01:19:01] is that
[01:19:03] if you're gonna try to set up bash completion
[01:19:05] for something
[01:19:07] or you're gonna try to set up
[01:19:11] or you're gonna try to call
[01:19:13] this program from another program
[01:19:15] so let's say
[01:19:17] you want to make a Bonsai sub-command
[01:19:19] that's compiled
[01:19:21] it can't see the aliases
[01:19:23] and a lot of people
[01:19:25] will offer the same thing
[01:19:27] too well aliases
[01:19:29] are resolved you can set
[01:19:31] alias resolution so that
[01:19:33] it resolves and scripts can
[01:19:35] use aliases in other scripts
[01:19:37] by setting the right
[01:19:39] shell opt for bash which I have set
[01:19:41] the problem with that is that if you
[01:19:43] use that alias
[01:19:45] that alias only travels with you
[01:19:47] to bash stuff so
[01:19:49] if you have an environment
[01:19:51] where
[01:19:53] you want to share something
[01:19:55] in your functionality to be available
[01:19:57] you might not
[01:19:59] be able to share that on another
[01:20:01] system that doesn't have it
[01:20:03] so if you write this like this exact command
[01:20:05] or some command like it
[01:20:07] you might want those quick and dirty little filters
[01:20:09] some of these are filters
[01:20:11] some of them are just, you know, line scripts
[01:20:13] but the concept of a single line
[01:20:15] of a single line script or a minimal script
[01:20:17] is almost always better than an alias
[01:20:19] mostly for the simple fact
[01:20:21] that aliases are not
[01:20:23] real commands
[01:20:25] therefore you cannot
[01:20:27] use system calls on them
[01:20:29] to execute them in any way
[01:20:31] whether they are being called from
[01:20:33] another program or being called for
[01:20:35] VIS as a filter or any of that
[01:20:37] so having said that
[01:20:39] I can go dive into
[01:20:41] my alias list and that's why
[01:20:43] you'll see that my alias is really simplified
[01:20:45] they are mostly just stuff that I would
[01:20:47] do interactively that I would type
[01:20:49] that, you know,
[01:20:51] that I would normally not do
[01:20:53] an alias that just unsets all of the aliases
[01:20:55] so that they are all thrown away
[01:20:57] the reason you need this is if you are going to do a bash
[01:20:59] you are going to do a bash dash L
[01:21:01] execute bash dash L
[01:21:03] it will perpetuate the alias unless you throw them away
[01:21:05] every time you look at your bash for C
[01:21:07] and that's what this is
[01:21:09] otherwise they won't reset
[01:21:11] and I still have the problem with variables
[01:21:13] there is no way to do an un-alias dash A
[01:21:15] for a variable to uninstall
[01:21:17] every environment variables that I know of
[01:21:19] because the idea is
[01:21:21] that you want to throw away all your environment
[01:21:23] variables every time you reload this
[01:21:25] and you only want to keep the environment variables
[01:21:27] that you have here but that's not always
[01:21:29] desirable because some of those are variables
[01:21:31] are set by their applications
[01:21:33] before bash for C ever runs and they would be discarded
[01:21:35] and so we don't want to do that
[01:21:37] you just have to know that if you are trying
[01:21:39] to reset an environment variable
[01:21:41] just bash exact bash dash L
[01:21:43] does not do that
[01:21:45] it keeps the previous one you have to unset it explicitly
[01:21:47] but aliases can be done that way
[01:21:49] so to do becomes
[01:21:51] just being able to do
[01:21:53] tree becomes I don't really use this
[01:21:55] very much actually
[01:21:57] but I'm going to keep it
[01:21:59] so
[01:22:01] a tree just
[01:22:03] ignores tree
[01:22:07] and ignores get
[01:22:09] because I can't get taken over
[01:22:11] IP is IP dash C almost always
[01:22:13] that's what I want
[01:22:15] gpt.google and being
[01:22:17] these are what I used to do
[01:22:19] for searching. I don't do that anymore with AI
[01:22:21] very much
[01:22:23] in fact I don't see or
[01:22:25] yeah okay yeah my default is now
[01:22:27] gpt and gpt again
[01:22:29] and I think it's probably going to change
[01:22:31] because I don't do that very much
[01:22:33] chat gpt
[01:22:35] like this runs like that go
[01:22:37] and it runs
[01:22:39] in my case links I still really like
[01:22:41] links over w3m for the output
[01:22:43] formatting it just looks better
[01:22:45] to me even though w3m is a perfectly good option
[01:22:49] if I want to search for something on the internet and I don't
[01:22:51] want to be bogged down
[01:22:53] with the pain and suffering
[01:22:55] of you know AI
[01:22:57] or having to read through somebody's
[01:22:59] shitty styles
[01:23:01] I just use my tech space browser
[01:23:03] I've been doing it for years
[01:23:05] and I'm going to keep doing that
[01:23:07] so this is
[01:23:09] this is still relatively good
[01:23:11] to use I'm going to keep that
[01:23:13] in fact
[01:23:15] I used to have gpt run
[01:23:17] in the background and it would actually
[01:23:19] query it would burn my tokens though
[01:23:21] it would burn API tokens
[01:23:23] instead of using my encapsulated account
[01:23:25] I actually probably want to
[01:23:27] start using open code for this
[01:23:29] because
[01:23:31] it uses my son
[01:23:33] it uses my
[01:23:35] my open code max
[01:23:37] I'm not going to use GPD
[01:23:39] for questions anymore
[01:23:41] and
[01:23:43] you know I have these other ways
[01:23:45] that I can search different
[01:23:47] search engines I'm wondering if the default should be
[01:23:49] I mean I don't usually do this
[01:23:51] because I don't know if I want to burn tokens
[01:23:53] on just generic questions
[01:23:55] you know what I mean
[01:23:57] so
[01:23:59] let me see something about this
[01:24:03] is there a way to have
[01:24:07] what is this for?
[01:24:09] this is just so I can do searches
[01:24:11] from the command line
[01:24:13] and they stay in my shell history
[01:24:15] instead of my web browser history
[01:24:17] is there a way to
[01:24:19] run
[01:24:23] open code with a single
[01:24:27] prompt and have the
[01:24:31] output prints to the screen
[01:24:35] yeah
[01:24:37] this is something I've been doing for years
[01:24:39] years and years and years
[01:24:41] way before AI
[01:24:43] it's way way faster
[01:24:45] to read it
[01:24:47] so I enter open code
[01:24:49] use open code to run
[01:24:51] run just in a prompt without
[01:24:53] opening an interactive interface
[01:24:55] this design for scripts and CI jobs
[01:24:57] and other workflows that need to output directly internally
[01:24:59] fuck yes this is what I want
[01:25:01] alright let's read it
[01:25:03] this is another reason I really like this method of browsing
[01:25:05] I'm going to say that I have a
[01:25:07] enter project to run the full screen terminal interface
[01:25:09] run this CLI
[01:25:11] enter project to run the full screen terminal interface
[01:25:13] open code in my project
[01:25:15] that's the directory to work
[01:25:17] in a different project
[01:25:23] use open run to
[01:25:25] submit a prompt without opening an
[01:25:27] interactive interface
[01:25:29] design for scripts and CI jobs
[01:25:31] explain this repository
[01:25:33] with this mini interactive interface
[01:25:35] I'm going to try to go run
[01:25:39] yeah
[01:25:41] I'm going to try it actually right now
[01:25:43] the
[01:25:45] not bash
[01:25:49] let's see
[01:25:51] um
[01:25:54] open code run
[01:25:56] oc is already an alias. I already have that
[01:25:59] so
[01:26:03] are you there
[01:26:07] require a sure voice of mods
[01:26:11] wait
[01:26:19] oh shit
[01:26:21] um
[01:26:23] uh
[01:26:27] uh
[01:26:31] uh
[01:26:35] uh
[01:26:39] do you remember the last context
[01:26:43] of the requirement
[01:26:45] no I don't care remember
[01:26:47] between sessions there's nothing from a previous code run in the conversation
[01:26:51] open code does restore
[01:26:53] session history so I can look it up if you want
[01:26:57] I run open code session list
[01:27:01] already in local storage to find the most recent run
[01:27:05] oc session
[01:27:07] list
[01:27:11] checking out availability
[01:27:13] checking greeting oh damn
[01:27:17] um
[01:27:21] couldn't
[01:27:25] could not I
[01:27:29] look look up the last session
[01:27:33] and just keep continuing
[01:27:37] it with every open code run query
[01:27:41] this is what I did with mods
[01:27:45] this is what I did oh shit
[01:27:49] um
[01:27:53] it's just not rendering it if I could get it to render it
[01:27:57] oh this is cool there's gotta be something does this already
[01:28:01] uh
[01:28:05] I'm gonna run
[01:28:09] to help both of my head 40 run open code with a message
[01:28:13] continue session session I need -s
[01:28:25] I could do ongoing
[01:28:29] wait wait wait wait wait wait wait wait wait wait I think I figured this out
[01:28:45] we can say run -s
[01:28:51] uh
[01:28:55] no no no no no no I can't do that I can't do that
[01:28:59] uh-uh I need to see you okay
[01:29:03] which I'll see type oc
[01:29:07] is alias open code I need to get rid of that alias
[01:29:11] let me let me tell you why
[01:29:15] oh my god this is so freaking cool
[01:29:19] I'm gonna make a single line command
[01:29:23] give rid of this alias on alias oc
[01:29:29] uh new x oc
[01:29:33] that makes me a new shell script
[01:29:35] so and it put it in my script directory which
[01:29:39] is this still some linked
[01:29:43] and let's see look up
[01:29:53] is script is script still some linked
[01:29:59] I can't remember the structures in linked or not
[01:30:03] I think it is
[01:30:11] yep uh are there star scripts yep okay
[01:30:15] so I'm gonna keep that some link
[01:30:19] um
[01:30:27] yeah anyway so what am I creating? I'm gonna make
[01:30:31] open code we're gonna do this we're gonna say
[01:30:35] exec open code
[01:30:39] run if there's no arguments
[01:30:43] okay I'm gonna have
[01:30:47] I'm gonna have open code make this
[01:30:51] I'm gonna have open code make it
[01:30:55] I'm gonna make it okay so create
[01:30:59] create a script
[01:31:03] script
[01:31:07] scripts
[01:31:11] um
[01:31:15] that runs open code
[01:31:19] run -s
[01:31:23] ongoing
[01:31:27] um
[01:31:31] if there are arguments
[01:31:35] pass
[01:31:43] um
[01:31:47] let's see
[01:31:51] um
[01:32:11] um
[01:32:15] or just starts
[01:32:19] open code if not
[01:32:23] with exec
[01:32:29] oh
[01:32:35] um
[01:32:39] I'm going to create some minutes
[01:32:43] give all that self-track
[01:32:47] uh if it's if it's greater than zero then I expect
[01:32:51] anything from code
[01:32:55] yeah that's fine
[01:32:59] um
[01:33:03] I use the scripts like what else I wrote for it in script read name
[01:33:07] between num_week and off oh sweet
[01:33:11] anyways I see open code in batch or see what I'm hitting the script but it's already gone
[01:33:15] I think it's committed um
[01:33:19] all right
[01:33:23] commit that
[01:33:27] actually what I saw
[01:33:31] I didn't touch it all right
[01:33:35] all right
[01:33:39] all right so so anyway we can do this now
[01:33:43] we can say
[01:33:47] okay you should remember
[01:33:51] me I am
[01:33:55] Rob I'm going to meet you
[01:33:59] uh I don't care remember between sessions though I don't recall past conversations
[01:34:03] I know it's in your session or email and that's working with users already this
[01:34:06] Rob it's honestly me to have such a project but if I tell me the um
[01:34:14] do you remember me now what is my name
[01:34:18] I don't know what you mean for certain
[01:34:24] the only code I have is their email which throws the Rob
[01:34:28] oh you know what it is
[01:34:32] Rob can I stop doing it then
[01:34:38] it's not it's not continuing the session so
[01:34:44] the code is sessionless
[01:34:48] um
[01:35:08] um
[01:35:14] continue the last session so it's an idea
[01:35:18] to continue or to create if it does not exist
[01:35:22] uh-huh
[01:35:26] uh
[01:35:30] actually
[01:35:36] you do too have my name
[01:35:52] so
[01:36:06] I feel like Dash C is not working
[01:36:12] I changed it because
[01:36:16] I want to have every
[01:36:22] CLI execution
[01:36:26] remember the last session
[01:36:30] I feel like if it helps me out there
[01:36:36] that would be so ideal
[01:36:38] then I can just command line all this stuff
[01:36:42] there's CSS overlap but I see me continue on section SSS
[01:36:46] ongoing use the use the session with this idea or create
[01:36:50] I haven't seen what happens when you both
[01:36:54] I'm going to pass the same
[01:37:14] um
[01:37:22] so why does sessionless show new sessions
[01:37:34] I think it might be because it's passing into cloud code
[01:37:58] I'm going to start with CSS
[01:38:06] wait what
[01:38:10] the current scriptless C still has the session going
[01:38:14] so it's errors ever when you're re-passoring this
[01:38:18] this is a fix
[01:38:22] as you can see it's there C on both paths
[01:38:26] I haven't pushed
[01:38:30] test it
[01:38:34] I ran it twice before ever running
[01:38:42] let's see reply with just one and two both replied
[01:38:46] an open concessionless shows one session afterwards so the
[01:38:50] brick oh look out so it's working
[01:38:54] open code sessionless
[01:38:58] yeah
[01:39:04] oh that's weird it's not listing my new one
[01:39:08] um
[01:39:12] my name is Rob
[01:39:18] what is my name
[01:39:28] orange
[01:39:38] remember
[01:39:44] the word
[01:39:52] um
[01:39:54] what did I tell you to remember
[01:39:58] hey Dickson
[01:40:02] I don't have anything unless the conversation has already been messages and I have no
[01:40:05] same members for past sessions
[01:40:09] I just had your room read
[01:40:15] I'm going to send this
[01:40:30] I think the open code is doing it but the cloud code is not
[01:40:34] I keep saying that but
[01:40:37] so now it goes through the oc script and uses -c
[01:40:41] actually passes it I haven't run it or committed yet
[01:40:47] and it's a run reload or open your shell
[01:40:51] wait what?
[01:40:57] it's a message because it was an alias I'm going to run -s
[01:41:09] oh oh did I not change that it's good catch
[01:41:13] AI I feel stupid
[01:41:19] yeah
[01:41:29] I feel dumb I feel stupid oh so stupid
[01:41:35] my AI is so much smarter than me there we go
[01:41:41] alright I have no persistent memory
[01:41:55] oh it remembered it
[01:42:01] I'm going to run out of context because it's going to keep using the same one
[01:42:05] okay so let me ask my AI about that
[01:42:13] what was I eventually run out of context
[01:42:19] on the same session every time
[01:42:36] wait what?
[01:42:38] not if this in the sense of failing but the session will keep growing and that has real cost
[01:42:43] open code has automatic compassion to fig docs list of what?
[01:42:47] when a session nears the model's context window
[01:42:51] open code summarizes the elements and keeps the reset so it doesn't hit the hard wall
[01:42:55] I read this to the docs and haven't watched it happen to your set
[01:42:58] I don't have your current compaction settings
[01:43:01] it just gets lost over a stage is blown
[01:43:05] sessions are per directory so Tilly is the main place this will happen
[01:43:11] you can reset whenever you like to start a fresh session once
[01:43:15] then letting -c continue from there
[01:43:21] for example open code runs start fresh would not do it since I could use the last one
[01:43:25] but running plain open code in that directory is starting a new session in a UI world
[01:43:30] I haven't tested the exact steps
[01:43:32] okay so if you like I can add a second command and say
[01:43:36] and that starts a new session instead of continuing the last one
[01:43:40] I think I'm going to run under see already creates a new session so it can be simple
[01:43:44] where is the session saved?
[01:43:48] I do not know this is an open code thing that I don't know
[01:43:54] um
[01:44:00] your sensors first look like database local share open code
[01:44:04] just about 20 megabytes
[01:44:06] um
[01:44:10] config local cache blah blah
[01:44:12] the directory also has a snapshot which turns them back and run below
[01:44:16] backups the database file contains every conversation
[01:44:18] it's kind of scary don't align to any files of session
[01:44:22] use the open code session delete
[01:44:24] um
[01:44:26] so you're saying if I open a session in the same directory every time it will be
[01:44:32] always remembered with -c
[01:44:36] and if I change directories I'll probably open up a different session
[01:44:40] therefore it won't remember stuff in general
[01:44:44] if you open interactive open code directory and have a long session
[01:44:52] or the next thing from that directory will add to it
[01:44:54] and the reverse is true too
[01:44:56] um
[01:44:58] so
[01:45:02] I just have to write an directory as the server
[01:45:04] and see it continues to use the last session of any kind
[01:45:08] if you open interactive open code directory and have a long session
[01:45:10] or the next thing from that directory will add to it and the reverse is true too
[01:45:14] so
[01:45:18] so if I start a session in directory
[01:45:22] and then I go to another directory and start another session
[01:45:26] it won't remember the session from the other directory
[01:45:38] wouldn't it be better than to make this command cd into the home directory
[01:45:46] for all of the generic queries that I want to have ongoing with my AI
[01:46:06] the project reading the whole home directory means open code treat spell as a project
[01:46:18] um
[01:46:24] as most directories like local share ask a Wednesday question and also a good place
[01:46:28] from an agent's empty with your standing preferences and direct questions
[01:46:32] oh shit that's awesome
[01:46:34] um
[01:46:44] big BOC script
[01:46:46] check for that local slash share slash ask directory
[01:46:50] if it doesn't exist make it
[01:46:52] and then
[01:46:54] always use that
[01:46:56] so that
[01:47:02] we can create an age of 70 file there
[01:47:32] so it can be files in your current repo
[01:47:36] I also need to read me a file that I always need to describe
[01:47:44] um
[01:47:52] we need to persist the age of 70 files
[01:47:56] somehow in our dot files so that when I'm initializing a new system
[01:48:00] the rules contained in ages that M.D. are perpetuated to the new system
[01:48:22] and make breakfast
[01:48:30] so
[01:48:48] well that was fast
[01:48:50] and it did it without asking
[01:48:54] what your instead of also uses it stop my command chain before set a friend oh shit
[01:49:02] the query rules are now stored in your dot files repo
[01:49:06] instead of sending a new machine the file
[01:49:10] config of a good ask agent 70
[01:49:22] you know what
[01:49:30] let's change the name of the script from OC to ask to match the configuration file name
[01:49:34] and update the alias
[01:49:38] of question mark to point to it
[01:49:52] so
[01:50:12] let's also add the OC alias back
[01:50:16] or open code since we're using ask now
[01:50:20] so
[01:50:50] so
[01:51:20] so
[01:51:24] so
[01:51:28] so
[01:51:32] so
[01:51:40] so
[01:51:44] so
[01:51:52] this is so crazy I can't believe that awesome this is
[01:52:14] oh
[01:52:26] oh my god
[01:52:28] this is crazy
[01:52:30] this is what I was wanting
[01:52:34] I've been wanting this forever
[01:52:38] oh my god this is just insanely awesome
[01:52:42] call this piece usage
[01:52:46] let's see if it's open code
[01:52:52] put this down here with usage reload
[01:52:56] oh I forgot I made a reload
[01:53:00] yeah
[01:53:02] oh it's in your dot files
[01:53:04] I don't think I need that anymore
[01:53:08] to do
[01:53:14] no scripts
[01:53:16] no
[01:53:18] I don't need any of that stuff
[01:53:20] because I've got OC now
[01:53:22] snippets no
[01:53:24] ls absolutely
[01:53:26] three yes
[01:53:28] DFS schmox yes
[01:53:30] DFS SSH
[01:53:34] let's
[01:53:38] make a 10 directory
[01:53:42] find view
[01:53:44] actually linked to vm yes
[01:53:46] clear
[01:53:48] so this is actually a very
[01:53:50] this is much more special way to clear the screen
[01:53:54] in the it doesn't run a program
[01:53:58] in the
[01:54:00] this doesn't work if you're putting it inside of code if you're putting it in code then it will
[01:54:03] find the right thing so you just won't resolve
[01:54:05] in the
[01:54:07] breathable
[01:54:09] this is actually a really cool thing
[01:54:13] so
[01:54:15] the reason it does this
[01:54:21] oh
[01:54:23] is because
[01:54:25] this is actually a problem I've had for years
[01:54:29] and I'm just kind of ignored it
[01:54:33] the
[01:54:35] the
[01:54:37] the environment variables themselves
[01:54:39] when they're printed because
[01:54:41] they are
[01:54:43] actual things when they're printed to the screen
[01:54:45] when they're printed to the variables actually triggers the stuff
[01:54:49] that one we have to look at
[01:54:51] I'm going to put that down at the bottom
[01:54:53] neo is
[01:54:55] neo working
[01:54:59] this should be a half neo
[01:55:03] half neo and
[01:55:05] alias neo don't do that if you don't have it
[01:55:09] more or less
[01:55:11] get all
[01:55:13] get long
[01:55:15] let me get re-booked
[01:55:17] dummy
[01:55:19] we clip topic
[01:55:21] I need to add these back
[01:55:25] I don't have that right now
[01:55:27] Twitch channel status
[01:55:29] no I don't want this
[01:55:31] no
[01:55:33] no
[01:55:35] current
[01:55:39] I don't really need that
[01:55:43] I don't need it because
[01:55:45] that stuff's all in my know that IRL out
[01:55:47] and I'm going to put that on here
[01:55:49] context
[01:55:51] to try to get context
[01:55:53] no
[01:55:55] um
[01:55:57] reload yes open code yes
[01:55:59] but you suggest
[01:56:01] okay
[01:56:03] so I
[01:56:05] so
[01:56:07] in person
[01:56:13] how can I make it so that the command line output is
[01:56:17] delivered
[01:56:37] let's see here that I asked
[01:56:39] see I have answers for going at the batch
[01:56:41] it's been installed in that team
[01:56:43] it's already applied since I tell you to mark down
[01:56:47] We still have the back-takes just telling
[01:56:49] this is a mark
[01:56:51] properly with styling effects
[01:56:53] yes I like glow I've used glow a lot
[01:56:55] it is installed batch history has
[01:56:57] has a high glow completion line
[01:56:59] um
[01:57:03] generally it's
[01:57:05] waits for the full input for it
[01:57:07] that is the problem with glow
[01:57:09] the glow does wait for all the input
[01:57:11] doesn't show it is just coming in
[01:57:13] um
[01:57:15] you
[01:57:19] don't strip-smart it colors only
[01:57:21] inline spans not headings
[01:57:23] I asked you to
[01:57:31] pipe the output open so it's a bad
[01:57:33] so it loses
[01:57:35] and so loses this exact
[01:57:37] mmm
[01:57:41] that's fine
[01:57:45] unless I want to use it as a filter command
[01:57:47] which is why I'm doing this
[01:57:49] one of the really cool things about this
[01:57:51] is I can run a filter query and actually
[01:57:53] do it and pass code to it
[01:57:55] from within a script
[01:57:57] in vi
[01:58:01] watch
[01:58:03] so
[01:58:05] I have to show you what I mean
[01:58:07] by this this is why it's so powerful
[01:58:09] um
[01:58:15] or bad if you're having an installing thing
[01:58:17] so what we can do is we can detect
[01:58:19] whether it's being called from within a
[01:58:21] terminal from within a
[01:58:23] whether it's an actual interactive terminal or not
[01:58:25] if it is an interactive terminal we can have it
[01:58:27] we can have it glow it up
[01:58:29] uh but if you'd rather not install anything
[01:58:35] um
[01:58:37] does bat work and render
[01:58:39] as it goes as opposed to waiting for everything
[01:58:47] just bat do everything
[01:59:05] I think it does
[01:59:13] I think it actually does
[01:59:21] alright
[01:59:23] let's keep bat
[01:59:25] and add it to the ask script
[01:59:27] only if an interactive
[01:59:29] terminal is detected
[01:59:35] we can have it
[01:59:37] so
[01:59:39] if
[01:59:43] if
[01:59:47] if
[01:59:49] if
[01:59:55] if
[01:59:57] if
[01:59:59] if
[02:00:01] if
[02:00:03] if
[02:00:07] add a conditional check for bat
[02:00:09] as well rather than
[02:00:11] erring out if bat is not there
[02:00:33] if
[02:00:35] if
[02:00:37] if
[02:00:39] if
[02:00:41] oh this is a problem
[02:00:45] if
[02:00:49] if
[02:00:53] if
[02:00:57] if
[02:00:59] if
[02:01:01] So actually, this is good enough for now.
[02:01:04] So still there.
[02:01:16] What did I ask you to remember?
[02:01:26] Emmett, similar here, I agree.
[02:01:32] Eep.
[02:01:53] All right.
[02:01:55] So.
[02:02:01] Okay, so the next thing is, okay, so the final test is to edit a file.
[02:02:18] And to do stuff with it.
[02:02:21] So.
[02:02:25] I can say.
[02:02:32] Give me text rendering of calendars for the year.
[02:02:47] I know another way to do this just with a command, but I'm going to make.
[02:02:50] So that's text.
[02:02:52] What I'm trying to enable.
[02:02:54] If I can enable this, this is insane.
[02:02:56] Okay, so I'm trying to enable Unix filters, which make them the most powerful aspect of
[02:03:03] them by far, so that I can replace stuff that I'm reading in a completely different type
[02:03:09] of file with the output of another command, and that command is sending it to my AI.
[02:03:15] So if I do bang, bang, ask, it should run it and replace it with this output.
[02:03:23] And it's not going to tell me that it's doing it.
[02:03:25] It's like thinking about it because it's going to take a while.
[02:03:30] It might not work.
[02:03:31] It might.
[02:03:32] It might crop out.
[02:03:33] It might have to like redo the whole thing.
[02:03:35] And I'd be sitting around waiting for a prompt.
[02:03:37] I don't know.
[02:03:43] This is not working.
[02:03:45] I was afraid of this.
[02:03:46] It's too bad.
[02:03:47] I guess waiting for input.
[02:03:50] Oh, God.
[02:03:52] Okay, so what it was trying to do is it was trying to run the open code instead.
[02:04:04] Yeah.
[02:04:06] Because it did pass.
[02:04:07] Oh, it passed it as standard input.
[02:04:10] It passed it as standard input.
[02:04:13] That's why I forgot about that.
[02:04:15] Okay.
[02:04:16] I actually have a command for this.
[02:04:22] Look at my other scripts for the function that checks for standard input.
[02:04:35] And smushes that into an argument list or uses the argument list if provided so that
[02:04:44] the OC, sorry, the ask script can be used as a unique filter.
[02:05:09] Oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh,oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh, oh.
[02:05:27] We're almost done with the bash.
[02:05:29] We're already filed completely.
[02:05:39] I tested it with stub open code and your princesses are just used.
[02:05:43] Ask hello there.
[02:05:43] Hello there.
[02:05:44] For an amphibian, ask AMV one time.
[02:05:47] Oh, this is perfect.
[02:05:48] Here I can work as well.
[02:05:50] What?
[02:05:50] Oh, that's fantastic.
[02:05:52] Arguments win as a ROT13.
[02:05:56] Cowing is unchanged.
[02:05:56] Very large.
[02:05:57] It can fail.
[02:05:59] Perhaps it's best to open code.
[02:06:00] Yeah, well, that makes sense.
[02:06:02] So, nothing is committed.
[02:06:03] Yes, commit that.
[02:06:07] Commit that one.
[02:06:07] I don't want to lose that.
[02:06:09] Yeah, that's like really cool.
[02:06:12] So I got to get all this on my work now.
[02:06:23] I've been putting all this on my personal stuff.
[02:06:25] So I'm actually really glad that I have the dot bash underscore work or that profile loading
[02:06:31] because then I can maintain two different profiles.
[02:06:33] I can have this standard one be in place and then I can also run setup on my work repo
[02:06:38] and it will just make a dot bash work and then they'll get loaded and override anything
[02:06:43] that's in the oven so that I can have the work related stuff separately.
[02:06:47] And I have to figure out where to maintain my private repo for work related stuff.
[02:06:55] I think that we've gone through a couple of migrations on GitHub.
[02:07:00] I think I have a personal repo space on GitHub, but I don't know for work.
[02:07:05] I'm going to check it out.
[02:07:06] Then I'm going to link this all together so I get my open code setup over here as well.
[02:07:12] Do you want me to commit bash or see any and push clip to no, not yet?
[02:07:15] So now if I big bang this, I should be able to ask and have it do it.
[02:07:23] I don't know.
[02:07:25] It doesn't seem happy yet.
[02:07:29] Oh, we got it didn't.
[02:07:32] It did, but it kept the colors in there.
[02:07:37] The output only showed three months, so I'll generate the player.
[02:07:42] So today's Sunday.
[02:08:03] In terms of the committees, import calendar, print, calendar text, I mean, one of the reasons
[02:08:33] for doing this, what is good about this is that if I'm doing something I'm going to read
[02:08:45] me, all right, so let's say my give me a summary of the white water sensor in Charlotte in
[02:09:01] the markdown, please, do not add other output.
[02:09:18] So I run this through ask.
[02:09:22] I want to see how well this does is basically I could be, oh, shit, I could be interactively
[02:09:34] writing documents from Vim and actually asked the AI to help me write certain things here.
[02:09:42] You see all this stuff at the beginning though, this isn't crazy insane.
[02:09:55] This is exactly what I wanted to help me write.
[02:10:00] I can actually probably pass it through here and say about this, ask, remove, wait, wait,
[02:10:15] one more thing, all right, so if stud in and arguments are provided, assume the stud in
[02:10:28] is the data upon which the prompt should be applied, stud in, the boost is coming back
[02:10:47] in some form right now, I'm just making videos.
[02:10:50] Yeah, I just tell, there will be a specific date or anything, it'll just be a bunch of
[02:10:56] videos that will be coming out, I don't know, I don't have any time frame for that at all,
[02:11:03] I just know I'm doing it, I'm working on it, and it'll be based on AI on both of the arguments
[02:11:11] and the instructions that I put to the data structure by the script passes, blah, blah,
[02:11:16] oh my god, this is cool, yes.
[02:11:22] Okay, remove, let's see, ask, remove, ask, make this readable, I mean, it's gonna take
[02:11:45] a while, I've gotta, it did it, oh my god, it did it, hi, hi, Johnny, when not running
[02:12:12] interactively, make extra output, not robust, so that the output can be used directly, assuming
[02:12:37] a Unix filter, and never print, and printable characters such as escapes.
[02:12:57] Hey, dude, Johnny, what is this for microcard, I'm using super whisperer, I bought a lifetime
[02:13:21] membership of it, like two years ago, here we go.
[02:13:27] It'll translate anything, I haven't run it against the local company, you can have it
[02:13:33] go to the cloud and it's faster, but if you bring down some files and it'll run locally
[02:13:38] too if you don't have cloud access, what do you mean to new setup, this setup, this streaming
[02:13:46] setup, I'm gonna get a better mic, that's another reason I don't know if I'm gonna get
[02:13:50] the booster, I have a bunch of stuff I need to have my son send me, and I need to create
[02:13:55] the list of it, and send that to him, I need to do that at once today, I'm, we're in the
[02:14:01] middle of the video, sorry guys, I forgot to pause the video, let's see, ask how it behaves
[02:14:06] a clean filter with this output, it's a terminal, it passes, it shows it's shell check, I'll
[02:14:10] pipe it up and there's the only answer, I'm super curious to see how I did this, yeah,
[02:14:19] yeah I see, ask, oh my god, it's actually hypnotized the whole thing, this is awesome,
[02:14:28] it's freaking awesome, I mean this is awesome, okay so, let's go back to this, so this gave
[02:14:48] me a perfectly rendered markdown file that's being rendered and displayed using a run deal,
[02:15:01] which is a rust tool for markdown syntax highlighting, it was really funny, watch this, watch this,
[02:15:07] watch, watch, over view in title case, watch, this is so cool, so I have run deal as a fixer,
[02:15:15] and as soon as I save this file and it will see that this is title case and it will recognize
[02:15:20] that as not the preferred case according to my configuration and it will convert it to
[02:15:24] lower sentence case, watch, it does it automatically, that's not even AI, that is so stinking cool,
[02:15:37] in fact it did it here, kind of wrongly, yeah, it's like, that's the US, right, so I saved
[02:15:46] that one, when you paste it in a terminal escape, because it says I'm build on it and
[02:15:53] exit and then somebody says the battery is gonna be cleaned up and paste in this, yeah,
[02:15:58] so, I don't know what it's using, it's run deal, so, but yeah, it knows how to use it,
[02:16:07] the title case, I don't like title case anyway, so, look at that, it went and fetched, this
[02:16:15] is an AI fetch of the information about Scott Charlotte, it went out and fetched it, it
[02:16:20] rendered it in markdown and it put it in my VI session while I was in VI, I mean, this
[02:16:28] is like the holy grail, like, if I want to say something like, here, let's say this,
[02:16:38] is a ask, make this look prettier, just as text, and it will replace it with this output,
[02:16:53] this is my water center, coming retail, other, it converted the whole thing, and, I mean,
[02:17:14] I just cannot tell you how crazy that is, here, and one more time, ask, make this more
[02:17:25] readable, I don't even know what it's gonna do, let's just see what it does, oh my God,
[02:17:39] okay, one more time, one more time, and now I have a history of it, so I can go ask the
[02:17:50] same command again, but keep it in markdown, it's so happy, oh my God, I did it, oh my God,
[02:18:16] oh, it even grabbed an emoji for it, everything, oh my God, y'all, this, this is nuts, um,
[02:18:37] it's like, it's like Unix filters on steroids, it's Unix filters on steroids, y'all, oh my
[02:19:05] God, I cannot even deal with how awesome that is, oh my God, that is so, so, so crazy, that
[02:19:20] is so crazy, oh, and I don't even keep this document, I probably should, this is a really
[02:19:28] crazy, crazy awesome document, Unix filters in VIM for the win, my gosh, I mean, I have
[02:19:36] never been for convinced, oh, that is just so crazy amazing, so it keeps, I thought a
[02:19:43] problem here, so it keeps, it keeps doing the spacing on the tables, I'm gonna actually
[02:19:47] change that, remove the, remove the, remove table alignment for RUM GL fixer,
[02:20:06] um, I just, this is just the same, I've never been more convinced that VIM is the best editor
[02:20:23] on the planet, if you keep, and it's really great is that the concept of Unix filters
[02:20:29] is what makes AI so powerful, because AI is based on large language models, what's consists
[02:20:35] of words that are getting piped, which is fundamentally consistent with how Unix operates,
[02:20:40] with what Unix filters have always done, and it just, it's so superior to so many other
[02:20:47] things, um, so, I turned out a table line in the RUM GL fixer, thanks, uh, style equals
[02:20:54] the line, right, so, actually, if I go back here now, I'm gonna undo this, and where's
[02:21:03] my table, okay, so my table went back, right, now if I save it, it should not do it anymore,
[02:21:07] yeah, see the fixer got fixed, I fixed the fixer, did it get, did it get committed, uh,
[02:21:13] style equals my first attempts to say document level, okay, um, today I guess there's a nine
[02:21:21] to ten, our trials are open, I made this like wonderful doc, but I don't need it, I just
[02:21:25] wanted to show how powerful this command line, this new ask function is, um, uh, commit everything
[02:21:37] we have so far, this is great, I'm almost done with the back first thing, this is how long
[02:21:41] is this video gone, we've been recording, we've been recording for two hours, 21 minutes,
[02:21:48] I mean, it's a long video, I told you it'd be a long video, um, and we're gonna, we're
[02:21:54] coming up on three hours, so I'm probably gonna close this video and upload it and then make
[02:21:58] lunch and stuff and not bother anybody, and, uh, but I do want to finish the vice-versist
[02:22:02] stuff, so I can think back to see your own edits, uh, the mechanism to show you path,
[02:22:06] uh, an alias, removals, uh, my path I'm piped and blocked, my bachelorette commit makes
[02:22:11] us the changes on your commit, I didn't split, uh, I didn't verify scriptation, I still behaves
[02:22:18] identically, they're gonna have to change the echo, according, good enough to announce
[02:22:23] five commits ahead of the last push, so PR74 does not include them yet, push it, push
[02:22:29] it real good, this is draft PR, so we're good, um, alright, so we're going back to the Bachelorette
[02:22:37] scene one more time, we got distracted by ask, uh, which is, has been one of the most powerful
[02:22:43] things that I've, I've ever used, uh, even before, when I was just doing, when I was
[02:22:48] doing, like, uh, you know, what is open code, I've been doing this for years, this just
[02:22:55] searches the internet, right?
[02:22:58] And so I've allowed my single question mark to take over, um, so I can do, I can do whatever
[02:23:05] a question mark and ask, and ask Sonnet about it or whatever, uh, skill open code builds
[02:23:11] Sonnet, uh, what is open code, uh, docs are blah, alright, so this is what it tells me,
[02:23:22] it's in build mode, it says open code is an open source coding agent, it's what runs
[02:23:26] a conversation, this is all being colorized by rum deal, uh, it comes from three forms
[02:23:31] of terminal interface, blah, blah, blah, installing the CLI, and it knows that I like
[02:23:37] Markdown because I already started talking to it in this session about having Markdown
[02:23:41] be the output.
[02:23:42] So it's actually remembering the context, which is crazy awesome.
[02:23:48] So oh my God, this is, this is phenomenally awesome.
[02:23:54] The doc is that not okay, so, yeah, um, yeah.
[02:24:04] Yeah, I'm, yeah, we're, we're back to the MRC file.
[02:24:13] So ask is good to go, uh, I am so happy with that.
[02:24:19] I cannot wait to show that to people at work.
[02:24:24] So we, we got through all the aliases, uh, the personal environment, we've already come
[02:24:27] up with this, um, we have the editor, we have the editor stuff, um, that changed your editor,
[02:24:36] V is VIM, the V of M, I have, uh, an escalation happening with VIM.
[02:24:41] So what this does is, if there's no VIM, it just assumes V is the editor.
[02:24:49] And, um, and otherwise it'll add me, I'm going to make the editor VIM and otherwise I'll
[02:24:55] make it deal them, depending on what's installed on the system.
[02:24:58] So that's their, um, functions, uh, you know, the X, uh, this is an old function that I
[02:25:04] don't use very much that will automatically load the.ut file, uh, I keep that function
[02:25:11] around because I sometimes cut and paste that function into stuff when I'm working on pods
[02:25:17] and containers and Kubernetes and stuff, uh, new from.
[02:25:21] So this will make a new repo based on a template, um, and it's looking for the get a repos environment
[02:25:36] variable, which I'm just going to keep, um, I still have problems with my environment
[02:25:42] variables being built on my current user ID, but I'm going to keep that for now.
[02:25:47] Clone, I use clone all the time, uh, clone actually just doesn't get a repo clone.
[02:25:53] So anytime I want to pull anybody's repo down immediately so I can go look through it, I
[02:25:56] just clone name of it and it just comes down.
[02:26:00] Um, this is not something that can be done in a VIM script.
[02:26:06] Anytime.
[02:26:07] Okay.
[02:26:08] So when would you pick a single line of function or so versus a function in your bachercy?
[02:26:14] And the only time you want to use a function is when you want to modify the current environment
[02:26:19] somehow.
[02:26:20] I'm talking about environment variables.
[02:26:21] I'm talking about, I want something to happen in the current show when you do anything in
[02:26:29] a subscript and a script, like for example, if you want to change it, or if you want the
[02:26:34] result of running a script to be that you, that you land in a different directory, you
[02:26:39] cannot do that.
[02:26:41] It's impossible.
[02:26:42] Because the current working directory is a property of the currently running shell or
[02:26:46] program.
[02:26:47] So if you put that into a program instead of a function, you can't do it.
[02:26:53] So at the bottom of this, where it says clone CD into the name and return one, the reason
[02:26:59] this is a function and not a script is because when I run clone, I want it to change my,
[02:27:05] I wanted to pull down the repo and then go into it and then have it leave it there.
[02:27:12] If I had it as a script, it would go there and then as soon as the script executed, it
[02:27:15] would pop back to the other location.
[02:27:19] So any time you want the most commonly, you want to change the directory or something,
[02:27:25] that has to be a function.
[02:27:26] And you'll notice the same thing up here.
[02:27:28] So, you know, new from whatever.
[02:27:30] So that's why those are there, otherwise they would be better as scripts.
[02:27:36] So external dependency completion, format OSI people star one, brew prefix.
[02:27:44] This is just to set up my bash completion properly.
[02:27:51] All these programs have their own completion, which means they can do complete dash C, which
[02:27:57] is something very few programs know how to do.
[02:28:00] It's what I built, hard coded into bonsai.
[02:28:05] So yeah, any of these programs will automatically get a complete dash C if they exist.
[02:28:11] And then down here we have the have completion stuff.
[02:28:15] The better way to do completion is to actually have these completion files in a directory
[02:28:22] somewhere and to add them, right?
[02:28:29] Just store them in your dot files as completion files and then load them into the bash completion
[02:28:33] because doing it this way is far, far more wasteful.
[02:28:40] And I was called out on this once in my dot files and like that, that's a complete lease
[02:28:43] because what it has to do is it has to basically eval every single bash completion output.
[02:28:50] And I used to bitch about how much completion output there was from kubectl, for example.
[02:28:56] But that is, you know, that's not an issue if you don't do this.
[02:29:00] The downside of that though, however, friends, is that if I start, if I want a single bash
[02:29:13] or C file that I can put on any system, then I can't do that, right?
[02:29:20] I can't do it because now I have a dependency on an external file.
[02:29:28] But for a long time, I've been seriously debating this entire dilemma because I've already made
[02:29:35] the case that you should have single line command scripts that you want to use all over
[02:29:42] the place, right?
[02:29:44] Well, and then there's also the sort of the overarching change in the whole system, which
[02:29:52] is you no longer are going to be just putting a bash or C on a file, period, if this goes
[02:30:02] relates to the conversation about VIMRC, which I had yesterday, whereas can we build a dependency
[02:30:07] on plugins into my VIMRC or is that going to walk me into downloading a whole bunch of
[02:30:12] shit?
[02:30:13] And it's a tough one.
[02:30:15] It's a tough one for a guy like me who's been raised where I needed my RC file to travel
[02:30:20] quickly, and for years, it's been copy or bash or C, copy or VIMRC, copy or T.M.X.
[02:30:26] In fact, I remember when T.M.S. came out versus screen, which I had already had the muscle
[02:30:30] memory for and doesn't have a config file, I was bummed out that I had to copy a third
[02:30:35] file onto anything that I wanted to be able to use right away.
[02:30:39] So I would just copy my XRC, VIMRC or whatever, XRC is the old version.
[02:30:43] And then I would copy my bash or C and I was good to go.
[02:30:46] But that's really not true anymore.
[02:30:51] And so along with that, a lot of the assumptions go with it, such as I need to load the completion
[02:30:58] files dynamically every time I run as opposed to putting those completion files where they
[02:31:06] belong and then setting them up in a setup script, right?
[02:31:18] All my bash scripts by having all those completion stuff on it, these completion things are not
[02:31:22] running a lot because none of these applications have been installed yet.
[02:31:24] But as soon as they are, as soon as these applications are installed, these will not
[02:31:28] error out.
[02:31:29] They'll every single time any new shell starts, you'll wait for 0.1 seconds for it to run all
[02:31:35] the completion code to run out completely, wastefully, right?
[02:31:40] Because if you have those completion files in the completion directory, then you don't
[02:31:45] have to do that, right?
[02:31:49] So one of the things now that I have AI that I've been wanting to change for a long time
[02:31:53] is I want my bash RC to not necessarily detect all of that stuff, but potentially, there's
[02:32:07] a number of things we can do here.
[02:32:08] And I'll ask my AI for its input on this.
[02:32:11] But one of the things that you could do is you could actually have all those completion
[02:32:19] scripts loaded and saved in your configuration directory under the doc files.
[02:32:24] So they're already there.
[02:32:25] And then all that has to happen is that they need to be changed into your private bash completion
[02:32:31] directory, which is set elsewhere, right?
[02:32:35] So yeah, bash completion, yeah.
[02:32:41] So NVMM, it has a Sony I can star and it has to read it's just its own completion.
[02:32:48] These lines right here, if they are not in NVMM, NVMM will change your profile and add
[02:32:54] your batch returns.
[02:32:55] This is your batch RC file without your permission unless they seize them here, which is just
[02:33:00] so brain dead.
[02:33:02] It's such a stupid design decision on their part.
[02:33:05] Nothing you can do about it.
[02:33:06] It's just too late.
[02:33:07] That's just how it is.
[02:33:09] So what do we want to do with that, yeah, another version of ours are so stupid.
[02:33:25] So all of this completion stuff could be replaced with adding my own completion directory.
[02:33:33] I'm going to ask the AI how to do that because I think that would really, really clear up
[02:33:38] my directory would make my profile my bash shell script.
[02:33:42] My bash shells are going to start really fast and I don't want to give that up.
[02:33:47] So let's actually change all that.
[02:33:54] Show me how we can change the bash completion section of the bash RC into something perhaps
[02:34:08] in config or install that uses a static bash completion script for each of those commands
[02:34:20] that is preserved in my dot files and symbolically linked or added to my personal directory for
[02:34:32] bash completion so that bash does not have to source those completion lines every time
[02:34:43] it starts a new shell, there's a lot as a weather, is it did it, did it, did it dry out
[02:35:08] down outside, I'm going to go for this bike trip.
[02:35:38] I was doing lazy loading checks, should the genera files be committed, but I'd commit
[02:36:02] only the generator, the generator that is tied to each tool's version, yeah, the best
[02:36:21] collision has a mechanism built for it, I haven't changed any files with the bash collision
[02:36:26] version to a file at bubble my completions command is loaded the first time you press
[02:36:31] tab on the command, nothing runs at shell startup, I proved it here, access file for
[02:36:44] made up command wasn't registered as startup and was registered after the first completion
[02:36:47] request.
[02:36:49] I could only time the tools installed on the Mac, JSON completion takes 27 milliseconds
[02:36:55] and padlock completion takes 32 milliseconds, so the current method costs about 60 milliseconds
[02:37:02] here, brew prefix takes only 15 milliseconds, your full list is not installed on this machine
[02:37:09] so I could measure it, that's where the savings would be, absolutely, neither for sure, brew
[02:37:14] install is bash completion which is version 1.3 which has no lazy loader, this machine
[02:37:19] also has the bash completion at 2 and the profile script source comes from it, the installer
[02:37:27] should list bash completion at 2 instead, oh, nice, that's a good catch, it's big bash
[02:37:40] gen completions is the small script that loads the command generator table, it writes one
[02:37:45] file per command and skips any tool that isn't installed as in your hab check study today,
[02:37:54] out bash completion directory, xcghome, local share, bash completion completion generates
[02:38:03] them, this is the, this is the, if it has a check, generate g's completion, helm completion,
[02:38:16] but one line for each of the floor in each of the docs bubble, wow, okay, or c in as well
[02:38:18] as we'll play with vault do the rest of gen C register Python, or it could be, yeah, there's
[02:38:23] a case, kubectl also needs kubectl cnbg completion bash appended to its file, yes it does, um,
[02:38:32] yeah, knkr aliases gets its own tiny file that sources the real ones and then runs, complete
[02:38:43] that shot sf yes, pod mat already has a static file so it only needs a sim link, uh, bash
[02:38:50] rest shrinks to loading bash completion directly to no brief prefix of process, the own comp
[02:38:57] loop on the terraform files on lines, those stay because complete dash C runs, yes, yes,
[02:39:05] yes, yes, yes, yes, yes, we're keeping the own completion, absolutely, um, yeah, uh,
[02:39:11] if OS type equals Darwin, then do it keeping that, yeah, mm hmm, uh, kubectl match setup
[02:39:23] would run, kubectl match setup would run gen completions, so a new machine gets everything
[02:39:28] without setup, so this is the real question, right, if you, if you're on a system, you
[02:39:33] have access to, to do all this, right, well, you're, most of the time if you're on a system
[02:39:38] and you only have root, you don't have access to use your own shell anyway, because they've
[02:39:41] put shit in the root config that, that you're gonna blow out if you try to use your own profile,
[02:39:46] it's really dangerous to do that, by the way, so, so it's probably not a good end, so I'm
[02:39:51] gonna go ahead and do this, if it's your own system, you're managing it, it's where you're
[02:39:54] gonna break code and thing, uh, even if it's a container or someplace, then yeah, you're
[02:39:58] okay to run setup, and in most of those cases, in fact, almost all of those cases, I am cloning
[02:40:06] my repo and running setup, if, if I, the first thing I do on a new VM or a new system where
[02:40:12] I wanted to be me, is I clone my dot files and run setup, boom, and that pulls down as
[02:40:21] much as I want, and if I need to incrementally add more tools to use, I can still do that.
[02:40:26] Um, should be general, but you said you wanted to preserve and then your dot files, but I
[02:40:30] can only commit the generator, to raise up and just tighten these tools, so I like the
[02:40:34] generator better.
[02:40:35] The first thing I didn't test, can't make the F-rectors, yes, uh, really after every
[02:40:40] time, yeah, add the generator, add the generator, uh, and the thing is so great about this is
[02:41:08] it's just gonna make it so easy to get set up, yeah, add the generator, skipping bash
[02:41:15] jane completion next cable, pass it to self check, and a bash completion user directory,
[02:41:22] if you set it, oh cool, I ran it against the temp directory, not in real good stuff, only
[02:41:28] JSON pentacle installed here, so I wrote two files and both pass bash jane, and I file,
[02:41:35] I registered this completion when I loaded it under bash completion, you too, uh, not
[02:41:42] exercise it, the kimptl, see, and some of the pod meds, uh, it's just sort of been a
[02:41:49] skipped line of the file count, hey, how you doing, master system sources, all those
[02:41:56] completion lines at startup, turning it down to the next step, config bash setup doesn't
[02:42:02] run the generator, so an e-machine wouldn't get the files yet.
[02:42:05] A burn-staller still is flash completion, um, let's do the rest, so we need to do bash
[02:42:18] completion at two, um, it doesn't even wonder why brew installed the wrong bash completion,
[02:42:28] or if that was like already on Mac, Mac already had the wrong bash completion, I don't know,
[02:42:34] so what we doing, uh, right now I am, um, cleaning up my dot files and, uh, finishing
[02:42:45] my bash rc redo, which takes about three hours, but it's been really useful, the stack, uh,
[02:42:53] the stack completion setup is done, committed, master system is roughly 25, these are gone,
[02:42:59] the completion releases that loads them, uh, config bash setup now runs jane completion
[02:43:04] so set up on the new machine creation files, install Mac install the stuff from brews now
[02:43:09] at two, which provides a laser load around for real, I ran bash setup and it robed jane
[02:43:13] padlock into block, uh, measured, I timed five runs of bash exit, and the old bash from
[02:43:20] head to the new one, the old one took about 0.110 seconds, uh, and the new one took about
[02:43:25] 0.03 seconds, so each two show is roughly 70 milliseconds faster on this Mac, uh, on
[02:43:31] machines with kipsi yellow and home is being considerably more, why don't I use these shell
[02:43:36] because these shell is disastrously bad, um, and it's not the standard shell for Linux
[02:43:44] for starters, um, I'm tested because the tools aren't installed here, um, there is nothing
[02:43:55] about Z shell that is good, that bash doesn't do way better, that's the answer, and I don't
[02:44:03] want to delineate all of the reasons for that right now, um, I mean let's start with functions
[02:44:12] for example, uh, kipsi yellow plus the sampg file and k and nk wrappers, uh, complete the
[02:44:20] instant loop and the padman is in like, when the geoshka push still works from the file,
[02:44:25] homebrew also installs its own geoshka push in, so this machine would have worked either
[02:44:29] way, okay. Uh, do you want to push cleanup to the PR? Yes. Okay, we're going to go ahead
[02:44:36] and push that change, and I'm going to go through what we're almost done with my bash
[02:44:40] rc file, and I'll end this stream and the video after that, so we made a considerable
[02:44:46] number of changes to my bash rc all for the better. Um, so, okay, that entire completion
[02:44:55] section just got removed. How cool is that? Um, that is just so awesome. Uh, yeah, so
[02:45:11] Terraform is interesting that Terraform is the only application in the wilds that I've
[02:45:16] run into that actually knows about complete dash C. And I will not convince that they
[02:45:21] didn't learn about this from my bonsai, because bonsai made a really big deal about applications
[02:45:27] that using complete dash capital C for their own completion. And, um, you can use that
[02:45:34] was issue as well. Okay, I have SSH agents, uh, and just the agent. Wait, what? This is
[02:45:47] a agent. No, we're not, we're not doing a situation anymore. No personal configs. So
[02:45:52] if these other configs are found on the system, they are loaded and used. So this can be maintained
[02:45:57] in separate repos, like at work. Um, they have, you know, whatever secrets in there.
[02:46:02] NVM trash is dead. I cannot imagine me ever using no virtual manager ever again. Not to
[02:46:09] mention the fact that I'm just not fucking using note at all. It's disastrously bad,
[02:46:14] horrible technology that I avoid at all costs. Um, so not using it. Um, and I don't know what
[02:46:27] all this pro stuff is a four left over for, uh, install base. I don't remember why I have
[02:46:38] all this pearl crap in here. Use me's, I didn't even know that was a thing. So, yeah, but
[02:46:46] NVM is not getting used. Mies is better. Yeah. Well, that's pretty much node, like something
[02:46:56] new is the thing to use every two weeks. No, not interested. I, I am, if I never write
[02:47:03] a line of JavaScript code at the end of my life, so help me God, I won't. Uh, what about
[02:47:10] all the pearl stuff? And I think if you, um, it's not that new, it's been around forever
[02:47:21] than why is NVM required by so many things before we're doing pro, uh, the till the
[02:47:30] pro five holds real modules to my cursor and that block is what makes pro find them. It
[02:47:37] confirms that without parole of fishies can't find us models. Okay. Wait, what? Don't do
[02:47:44] it. I didn't tell you to do it. I told you to tell me what to do. And I thought the block
[02:47:52] of fails can't locate term animation. I added usually maybe a home role to it. Okay. Uh,
[02:48:01] with all the parole and binary variables, I said, but it's secret. That's better anyway.
[02:48:07] Uh, as I walked in before, it also will promote a bit of your path. So the thing is loss is
[02:48:14] sales. Wait, oh, it got rid of it all. It got rid of them all. That was nice. Okay. So
[02:48:30] I guess that's fine. You're really the MVM block on the commonest stage agent like as
[02:48:33] else we're here and committed. Okay. Push. I'm going to push all these. Make sure fishies
[02:48:40] still work though. Yep. They still work. But cannot hurt the fishies. Oh, yeah. My
[02:48:51] flashlight is so much more simple. Why now? Um, I just really like that. I have one more
[02:49:01] thing to ask the AI to help me with. And that's regarding my user. Um, because I want to look
[02:49:13] at that. Um, and I'm going to see what the AI has to say about that. Okay. So what would
[02:49:20] you recommend to deal with the case where the current user does not match the GitHub
[02:49:35] user name? I feel like the environment variable set up to resolve paths and GitHub user information
[02:49:47] are too brittle because of the assumption that they are the same. Super Whisper. Yeah.
[02:50:11] Well, where's I'm at? I've asked her soon. For my bash prompts. I have made my own PS1
[02:50:30] if that's your time out. Yeah. It's, it's all my own thing. I would never use anything
[02:50:40] for that. It's all in here. Because I want control of it. It's, uh, yeah, we covered
[02:50:49] that earlier in the video, but, um, it's PS. This is the function that makes it. And it's
[02:51:01] portable and small and has full get support. Yeah. But I don't, I only care about the current
[02:51:08] branch. That's it. I don't, I don't care about other stuff. It has a, that's why I have
[02:51:15] it. It also will detect a Python virtual environment and put a little Python on the screen on the
[02:51:19] screen. This is all stuff. I, I didn't want the overwhelming heaviness of something like,
[02:51:26] you know, this is whatever the old Mys usual or whatever. So, so that's why that's how it
[02:51:35] does it. It's ugly code. I'll confess, but it probably can be cleaned up. But it's been
[02:51:42] working for years. So, uh, I don't need it though. Well, I added it. I don't need it.
[02:51:55] If it's an executable that has to run outside of my function that is already loaded when
[02:51:59] every bash loves them, I would never use that. It's only completely unnecessary. Um, to me,
[02:52:09] there's, there would have to be something in it that I wanted that I couldn't add with
[02:52:13] three lines of bash code in my back first thing. And there's really not, I, I'm, this
[02:52:18] automatically redoes the prompt and resizes it depending on what size it is. This terminal
[02:52:23] is get branch current. So only thing I care about, maybe I should be caring about more
[02:52:29] than that, but I, I don't. So that's why. Um, I, I am really a fan of simplified prompts
[02:52:40] as much as possible. In fact, putting the get stuff on my prompt, it took me a long time
[02:52:44] to admit that I needed that, but I absolutely need that. That is so mandatory. It's more
[02:52:49] important than knowing what directory you're in. Um, I'm just saying you're getting an
[02:52:53] opt out location once and then when it's set up runs, uh, from user every shell, I haven't
[02:53:00] changed the yet. Bachelors, the line 22, get user equals user and everything else builds
[02:53:03] on that. Um, you get repos and blah, blah, blah, blah. Um,
[02:53:13] you know, if get user is wrong, the instructor, the alias targets the wrong owner, which is
[02:53:25] a riskier piece. I agree. When you're log, when your login isn't early trouble, all of
[02:53:29] those points that pass the donings is forks have the same problem. Since they're in me
[02:53:33] advice, people to cover the people. Yep. That's this is, this is exactly. I have been
[02:53:38] like, this is super dangerous. They'll use this dot files and listen to what you're doing.
[02:53:42] And that's one of the main things that's prevented me from telling people just use it
[02:53:45] as is, uh, because it's very specific and had my own Twitch ID and all kinds of stuff.
[02:53:50] Uh, what I changed, record the identity once as set up. Set up writes a small machine local
[02:53:57] file. For example, config dot E and V contains, uh, user and doc files. It isn't committed.
[02:54:03] So each machine has its own. That first resource is versus the conveyor and fall back. That's
[02:54:09] a really great idea. God, that's a great idea. This is such a good idea. This is such a good
[02:54:26] idea. Uh, reading one file adds no process for us to start a bash personal can't do the
[02:54:32] job because it's sourced at the end. Um, detective value and set up within override.
[02:54:43] Your would be an exported get user equals the name that's set up then J H API user queue
[02:54:48] log in. You can think get, get abuser then user and then get a may not be installed or
[02:54:56] logged in on a first machine, which is where, why are there a fallbacks? Yes. Let doc files
[02:55:02] be, um, wherever set up runs. No, no, if you think Z shell is better than bash, you're an
[02:55:14] idiot. I don't have to justify that further. If you seriously think Z shell is better than
[02:55:21] bash, you do not know what you're talking about. Have fun with that. Go run along. And
[02:55:33] that's such as Gruber talk. That's factual. I can dock that shit, doc into this shit up.
[02:55:38] I don't feel like justifying that statement right now. If you don't know why and you need
[02:55:44] to go read more. Um, let doc files be wherever set up runs. And, and by the way, make sure
[02:55:54] you include, I'm not going to even say, we're going to have to do the work yourself. I'm
[02:55:59] doing it for you right now. Let doc files be wherever set up runs set up already knows
[02:56:04] its own root. So clone an allocation of worker. I tried to do Z shell. I spent three hours
[02:56:11] using Z shell with Z shell experts on here to try to do the same things that I do in
[02:56:15] bash all the time that are very useful. And nope. They couldn't do it. And I was like,
[02:56:22] no, screw this. Well, I'll start with this. Bash is the standard shell for Linux. You're
[02:56:29] going to be like, except for, except for, uh, what the fuck that hacker? This row. That
[02:56:41] doc files me wherever. So it's actually bloated and ugly. Yes. It's got a shitty license.
[02:56:45] Yes. Let that files me wherever set up runs set up already knows its own roots. So clone
[02:56:50] an allocation for us. I think it's a always just ask it. Have you are replaced? Um, replace
[02:57:00] get user, which is it appears with logins. So the delete. Uh, it's just correct regardless
[02:57:07] of our levels. Yes, this is all these are all great ideas. Um, it's all keg pomo, figgle,
[02:57:13] are all fine. These are great. I catch a shell open before gave you file exists or a machine
[02:57:20] where set up never ran. Well, it's back to user. It's the same behavior as today. So that's
[02:57:24] important. Do you want? Yes, I absolutely want this. Yes, please. Yes. I want that. That
[02:57:31] is so great. That's such a great thing. Kelly. Yeah. New shell is better than any of the
[02:57:38] other shells. Okay. What if you don't have it because you have a job and you're on red
[02:57:49] hat systems that are been deployed to 10,000 machines? Where's your new shell there?
[02:57:58] It employed, gainfully employed people who have to work on systems that are bought and
[02:58:06] maintain in the millions of dollars by big ass companies. Don't even entertain the notion
[02:58:15] of new shell or Z show and all that crap. I know you're joking. I know and I'm joking
[02:58:20] back, by the way, I'm serious, but I'm also joking. I obviously I don't think they're
[02:58:25] an idiot. I just think you're uninformed. Go, go, go talk to the non boomers maintaining
[02:58:33] those 10,000 machines and tell them that, yeah, we should put new shell on all of them. No.
[02:58:43] Just I think we should write all of our shell strips and Z shell instead of bash. It's basically
[02:58:48] the same thing. We should change our shebang line to be Ben S H. I mean, to be Ben Ben
[02:58:53] Z shell. Well, just use Ben S H from POSIX, right? Positive go to bash. These are uninformed
[02:58:59] opinions that people have on the internet because they don't have a job. An actual job
[02:59:08] that pays money. Brew and sell. Yeah, go brew and sell new shell on your 10,000 machines
[02:59:14] out there. Look, if you want to have fun on your own personal system, your own personal
[02:59:18] work system, the same kind of logic behind putting you in on some neo vim on something,
[02:59:22] which I have and I agree with, then great. But if you're, if you're going to make your
[02:59:27] bash RC completely unusable, okay, I'm going to catch myself because I've got a logical
[02:59:33] inconsistency here. I'm going to, I'm going to admit something here. Already twice during
[02:59:40] this session, I have said that the new, the new assumption is that you bring your entire
[02:59:47] dot files with you on anything that you're going to install a bash RC on, right? I've
[02:59:53] been making the case for that very, it's very hard for me to accept that, but that's kind
[02:59:57] of true. It's no longer a matter of copying your bash RC over to another system, your
[03:00:01] bash RC or your good to go. I've already made the case multiple times that that's no longer
[03:00:06] the case in 2027. So that means that by that logic, the, well, you need to bash RC everywhere.
[03:00:17] You can't have all the stuff that Z shell, like for example, Z shell does dynamic function
[03:00:21] loading, which creates a bunch of extra technical files and a function directory so that they're
[03:00:26] dynamically loaded, lazy loaded as opposed to, and that, that makes a lot of sense if
[03:00:30] you're on a system where you have full control of everything that's being set up for your
[03:00:33] Z shell. It doesn't make any sense on a system using the old assumption, which is I need
[03:00:38] to be able to copy a single file over and have it work, which I just got rid of. I just
[03:00:43] got rid of just barely, just now I took all those completion scripts and ripped out the
[03:00:48] dynamic running of the completion that would work and slow my shell startup, but it would
[03:00:52] work anywhere. And I've gotten rid of that and I put it into separate files that have
[03:00:57] to be installed and set up. So now my entire doc file system now depends on me having a
[03:01:03] full repo there and being able to run set up on a system so that I can get my environment.
[03:01:08] And as soon as you change the assumption to that, as soon as you change the assumption
[03:01:12] that I'm bringing along the plug-ins with me, I'm going to bring along NeoVin for God's
[03:01:17] sake. My own binary copy of it, if I have to, and I'm going to bring along everything
[03:01:21] else, right? G GitHub can sell my own go compiled GitHub. As soon as you start doing that, then
[03:01:26] Z shell starts to make more sense. I'm going to admit right away because now Z shell, which
[03:01:31] is designed to have this assumption by default, like NeoVin is designed to be, oh, you're going
[03:01:37] to be running on a system that's got all of this stuff on it, right? Then, then, yeah,
[03:01:41] stuff starts to change a lot. And so I'd be the first to admit that that's that that's
[03:01:46] the way to do it. And if that's the case, so let's see, if you are, if you're getting
[03:01:54] on a system that you have control to pull down a dot files that run set up in your home
[03:01:58] directory because you have a home directory persistent or otherwise you have a home directory
[03:02:02] shared file systems or not, then you probably have the ability to pull down new shell as
[03:02:09] a binary and install it and set your shell because that's a user operation. You probably
[03:02:14] have the ability to set the new shell on a jump host that allows that. So maybe I'm
[03:02:19] dead wrong. Maybe I'm dead wrong on that. Maybe the modern environment assumes not that
[03:02:24] you're going to be copying around a bash or seed file, but you're going to be copying
[03:02:28] around your dot files, Git repo, which therefore makes even more of a case to really clean
[03:02:35] up your dot repo because that thing can go with you anywhere, right? You can go anywhere.
[03:02:41] You can go into a container and pull down your Git repo even through proxies on a, on
[03:02:45] a, you know, read only situation. You can pull down your dot files and run set up and you
[03:02:50] can instantly have all of your tools available to you and conditionally allow configurations
[03:02:56] for things that you don't, they don't have. So kubectl, whatever. And so maybe the assumption
[03:03:02] in 2027 should be that any place you go, you should be able to pull down a dot files repo
[03:03:09] and run set up and use that. And that includes installing possibly binaries unofficially
[03:03:16] or otherwise from that you either have or the pull off the internet. Before you do that,
[03:03:21] disclaimer, be careful. You can get fired for that. If you get on the wrong system and
[03:03:26] you pull down even your own dot files repo without authorization, then yeah, it's the
[03:03:34] day to day versus management system's question. Absolutely. But if, if, if you pull down a
[03:03:40] compiled piece of beta software and you start running it on a jump host, even in your own
[03:03:45] user directory, be prepared to justify that decision. Because depending on how conservative
[03:03:52] the company is, you can get in a lot of trouble. You can get in a lot of trouble for doing
[03:03:56] that. So I just want to put that out there. Um, I haven't been in a login name doesn't
[03:04:02] match. Get over the changes aren't committed. Uh, set up now, right? C and V with GitHub
[03:04:06] user dot files. Um, okay. So this is a system to manage systems and troubleshooting issues.
[03:04:16] Yeah, agreed. And you should not be root at all. You know, there's, you know, there's
[03:04:22] places that assume that you're going to see to ask you dash and run root and do everything
[03:04:26] to fix everything or run everything. And you know, at that point, your profile and
[03:04:31] configuration, everything are out the window. You're running set that show VI at first command
[03:04:35] because you don't get any of that. And you would never try to do that. Because if you've
[03:04:40] made a single mistake and you're very complicated back, sure, see, and you're running that as
[03:04:44] root and you think you can just source that shit, you're going to pay for that. You're
[03:04:50] going to pay for that mistake. So you don't want to do anything. You should be running
[03:04:56] command studio and then a specific command. But if you're in a lazy environment, like
[03:04:59] I often am, they don't allow that. You know, those certain commands are not individually
[03:05:04] activated. And so, you know, you end up doing a pseudo dash S U dash, which is just loads
[03:05:09] in profile of the root user, which is always fucked up and always wrong. So, and then
[03:05:14] yeah, I'm not set. Yeah, that's not happening. So, uh, specialty sources of file versus missing
[03:05:22] get him falls back to his rough house. Okay. Uh, configure, but the Dell print and pub aliases.
[03:05:30] Now he's going to be a peer user login instead of get user. Oh, wow, that's cool. That's cool.
[03:05:40] That's cool. The delete alias now is getting. Oh, that's so cool. Thank you. Thank you.
[03:05:44] Thank you. Did it push it? I mean, if that's all it did, then that's totally acceptable.
[03:05:51] I should be reading every line of code, which I will. This is all going into the PR, which
[03:05:54] I'm then going to review just like I would have worked. I came to the GitHub user change
[03:05:58] blog for the cleanup, the commit as four files, agent 70. Uh, this is just a user in the updated
[03:06:06] message about the one shows, but I need to run once on this machine to create once it
[03:06:13] integrates a bubble off. All right. Um, run it. I'm sure nothing bad will happen. I can
[03:06:25] think of set up and it wrote the envy with getting user equals, blah, dot files equals
[03:06:30] blah. And your director show reports, both values, it actually checked it with an interactive
[03:06:34] show. What? The already makes wrong value came from J. J. P. I get config, GitHub user
[03:06:39] and user fallback. I can't tell which because the output doesn't say I was around Jane completion
[03:06:44] was wrote to completion files. The semi-referencing your home directory, bachelor, we're going to
[03:06:48] point to the repost. So, uh, nothing other changes. The file is machine local and isn't
[03:06:57] it good? Good, good, good, good, good, good, good, good. I'm going to choose clean. Um, yeah,
[03:07:11] I think, I think, I think we're done. Y'all, I think we is done. So it actually took care
[03:07:13] of the problem that I was having and I'm really happy about that. I'm getting rid of the Twitch
[03:07:19] or ID. Okay, I'm going to ask the AI. Is there anything in my bash RC that could be factored
[03:07:27] out because it's specific to me or rather than enabling another user to just use my dot files
[03:07:36] as is. Um, I didn't make breakfast. I haven't eaten anything all day. This is what I do
[03:07:55] in a stream. It's free and healthy. About to wrap up this stream in this video and go
[03:08:05] away for a while. We'll come back and probably do a bike stream after that. It's often by
[03:08:14] flag what you want or should your own machines get automatically. Yes, fair amount of it.
[03:08:36] I read the whole file and it's already in three groups. Their clock would show the time zone.
[03:08:48] This should probably all go in my setup scripts. Yeah. See flags. There's a little bit harmless.
[03:09:17] Tastes broadcaster. They need to go out. Oops. Very well needs to go out.
[03:09:44] No, I want to keep all this shit.
[03:10:11] I haven't, I don't use containers. I'm like.
[03:10:23] Pod man. Um, he's going to use it work. And so I was the config bash personal. And first
[03:10:46] groups. For example, uh, that's personal. It's a bachelor C would be a change someone using
[03:10:57] your repo gets a clean neutral basic bachelor C by default. You're gonna set up with one
[03:11:04] flag. Yeah, it's just versions. I wouldn't get it on. Get a musical because that's a
[03:11:15] good thing. Or should your own machines get automatically? Uh, should get automatically.
[03:11:35] Teams and prompt should stay. Um, time zone should be. Um, prompted during setup.
[03:12:04] It's default matching computer. This is a problem on Linux because it doesn't get. Um,
[03:12:16] alias assumption that entire repo is always present is good. Orb stack. Orb stack. Um,
[03:12:37] yeah. I've been wanting to do this for a long time. I'll take time zone should always be
[03:12:51] a DTC. You must live in England. The person is going to get so shot nightly.
[03:13:13] I'm just going to quickly. Strip eight my type dancer. I'm just going to go ahead and,
[03:13:43] oh, shit. It's running a pseudo journal by the way. Um, giving best person on the end.
[03:14:10] This holds your twitch ID. Clip blah, blah, blah. Um, in the own calculus. Master's resources
[03:14:22] are automatically not files before your private bash files. It is that one file. Yeah. So if
[03:14:31] somebody wants to fork my dot files and make their own dot files, they could, they could
[03:14:35] put their own customizations in the personal section, which is, and I've always wanted to
[03:14:40] do that because when I do the beginner boost, I used to have to maintain two dot files victories.
[03:14:46] One for the container. Um, the people wanted my configuration. So I would take the relevant
[03:14:53] parts of it and put it in separate container with a separate bash or see, and I have to
[03:14:55] maintain that separate from line. If the reason I'm doing this is simplifying the personalization
[03:15:01] of the dot files repo is that this dot files repo could become the basis for other people
[03:15:06] to fork and start their own. So somebody who's just coming to Linux for the first time,
[03:15:11] Remack, they've never used it before. The, the, for decades, we have been taking the
[03:15:16] configuration files and setup from our predecessors, you know, the great Jedi. They'll tell us
[03:15:22] what to use. And then we would put them in there. We'd had no idea what we were doing.
[03:15:27] And the difference is, is that in 2027, we now take the Jedi's repo, their dot files
[03:15:33] repo as is and modify it and change it. And we can fork that repo and then add our own
[03:15:39] stuff on it. And then when they make changes to the repo, we can actually watch those changes
[03:15:43] and see where the diffs come in and kind of make our repo based on theirs. And then as
[03:15:49] they improve and make it better, they can like, you know, constantly change it. That's what
[03:15:53] I've always wanted, but I haven't been able to do it because my dot files between messed
[03:15:56] up and ancient and had problems with them. So, and so I would just take out the minimal,
[03:16:04] you know, RC stuff from a, from a basic dot files. And I would, I still think that people
[03:16:09] should create their own dot files. But when they want to just get started, they can copy
[03:16:13] mine, get going on it, and then then move on from there and then come up with their own
[03:16:17] dot files eventually. So yeah. And because everything's sim linked, they could actually
[03:16:25] go into the same directory and then just pull down a different version and as long as the
[03:16:30] sim links are the same, it'll be the same. And it's not using any extra technology other
[03:16:35] than get in, you know, get in, get in Linux. This was the switch IDs, it's the time zone
[03:16:45] the hard code is times those from bachelor's see. Now actually adds it a real definitely
[03:16:51] now as you see on the left, the best you see as you decide the color themes prompts path
[03:16:57] aliases and points or reports, et cetera. Agents, agents is now record and now it now
[03:17:04] records both conventions. Interesting. Apple container, they have an Apple container
[03:17:13] thing. Very cool. Basically, this is personal because personal source for repo for everyone,
[03:17:19] somebody use the repo unchanged, you get your C flag set of a list and a list is that's
[03:17:24] the cost of the whole repo is always present. It is easy to get keep set dash OVI for everyone.
[03:17:38] It's important. I want to keep the C flags for everyone, too, see flags for everyone.
[03:17:54] I want people to turn that off. If I have a person that I'm mentoring, I want them to
[03:18:00] have all those debugging things in their C flags because they're not going to have it.
[03:18:08] So the next is back. All right. The VC to get behind a check if you change one. The machine
[03:18:23] that has a new bachelor's see, but hasn't rerun set up as the time zone falls back to
[03:18:26] the system. I have a set up on Linux as the time zone fall back. The message is only if
[03:18:36] agents need and it's still unlimited. Yeah, push. Push these changes. Yeah. And that's
[03:18:52] going to do it for me. It's been three hours and 18 minutes in on this video. I don't know
[03:18:58] what YouTube is going to make of that, but what the transcription is going to be. But
[03:19:01] I'm going to go ahead and do it as a long form video. I may do a summation video that
[03:19:09] covers the high points of the whole thing, but probably not. So the commits have been
[03:19:17] made. We're going to do a final review of everything that changed as specifically in
[03:19:22] bachelor's see. We'll go back to this cleanup. This is the cleanup thing. Okay. So there's
[03:19:33] lots in here. We got rid of all the colors. We got we chatted this. We corrected the source
[03:19:38] if function was broken. We added the helper for broad. We got the these things are all
[03:19:45] out. document's desktop downloads. I guess those are kind of dumb, but we'll keep those
[03:19:54] repos as repos. It used to be capital R for repos. Movies, PDFs. I don't know why we have
[03:20:06] home USB PDFs. That's weird. Home version machines, clips, G3 post clip data.
[03:20:37] This is probably going to have to go. Oh, I got rid of it. Okay, good.
[03:20:48] Um, next to G stuff. All the color stuff is going on. Turncap stuff is good. It goes.
[03:21:01] I got that back. Past stuff is good. What is welcome in? Why do they play? Oh, why do
[03:21:12] they play? Why do they get rid of you to look them in?
[03:21:35] Okay. Was it already above?
[03:21:57] I look like a deep layer. I'm going to review that.
[03:22:27] Huh. This is really good. I'm going to review that. I'm going to review that. I'm going to,
[03:22:55] I'm going to review that. I'm going to add that local. Yes.
[03:23:06] I see he's gone. The local there is here. This is a combination. That's all good. Oh,
[03:23:27] dash F. God, I forgot that. I totally forgot the dash F. What the hell? Good catch.
[03:23:40] Yep. That break is over. We changed to ask. We added the ask program. Wait, why do they
[03:23:59] get rid of all those aliases? Why didn't you drop so many aliases? Did I delete them?
[03:24:25] No, it dropped. Maybe a minute. I think it might have replaced with functions. Okay.
[03:24:46] For your edits, chances that it's a lark. Oh, I did that. Dot, CD dot files, scripts
[03:24:56] and snippets, those are all the ribs. Currently in context, I remove those. Dot scripts and
[03:25:07] snippets, imagine, they're generic to the repo. Oh, since they're yours and your Twitch
[03:25:20] scripts. Okay, good. No, that's fine. That's fine. It'll pop up later. Those are extremely
[03:25:28] personal things. New from template. Hey, what? Oh, it says everything.
[03:25:50] Okay. See, you can have a CD user name. I hear some models, yeah.
[03:26:17] Yeah, we were just talking about UV earlier.
[03:26:36] It's from Darwin. Okay. On completion. Did it clean that out? Wait, what? Did it add that
[03:26:48] to personal? I better have this stuff. Oh, I added a personal. This stuff. Oh, I added
[03:26:55] a personal. Sorry, dot files, personal. Wait, what? I think personal, there's already a
[03:27:13] personal. I mean, that's fine, I guess. All right, so here's the jack completions. Okay.
[03:27:39] Look at that. How cool that is. Oh, my God. I love it. It is so cool. Can you say I wanted
[03:27:54] someone to interview you plug in? Yep, it's just need their own. Yep. Wait, that shows
[03:28:02] the default. Yep. And so this is the thing. Podman does this thing. And you wrote make
[03:28:09] completion files into out. Okay. Now, this is the personal shell script that gets sourced
[03:28:16] on a personal bash customization. First, I might go back for see. Per machine things
[03:28:25] belong. And blah, blah, blah. Works really well. It's about to make it yours. Bachelors,
[03:28:38] em, screen, opinion, build and default tools, pro, Lccolate, Cgo enabled. I think that this
[03:28:59] section needs to go back and put these back in bash RC. It's just you. I say to come on
[03:29:21] now, we clip up open code, you know, I'll put you on here. It's very personal. Yes. I mean,
[03:29:31] you know, it's not really though. Nio's kind of fun. It is a personal preference. So, um,
[03:29:41] I want completion. Okay. I want completion got added. My own commands to complete themselves.
[03:29:47] Nothing runs until they press tab. Um, yeah. What a, I still feel like we need a section
[03:29:59] that does own completion in here. Um, I don't know about that. No, that's fine. I guess
[03:30:14] we got rid of. Oh, that's the safe way to do CD. Yeah, we're going to do that. We're
[03:30:22] going to keep the safe CD path in there. Uh, record. I might get up. There's a rest of
[03:30:29] this manager system, log names, get up, blah, blah, blah, blah, blah, blah, blah, blah,
[03:30:47] blah, blah, blah, blah, blah, blah, blah, blah, blah. Sometimes I own generated by a
[03:31:05] J H config. This is, this, this is the config that I lost the other day that I was trying
[03:31:19] to add back. And I couldn't. Um, yeah. I kind of want to see the whole thing. Uh, config
[03:31:30] J is config. This is been a little less paid or aliases. Yeah. I think we can probably fix
[03:31:37] this, um, to add your personal user stuff or get user. It says repos get user, right?
[03:31:47] So, um, we need, that needs to be set up on startup. So like the whole username and directory
[03:31:56] thing. Um, I don't want to get up to pick up yaml is useless. Uh, get up config.yaml,
[03:32:08] uh, needs some way to add, uh, user.name and user.email. Uh, during setup. And keep
[03:32:26] it personalized. Because anytime I like, when I set up, when I set up today or this week,
[03:32:34] I add a bunch of problems with GitHub, not seeing my GitHub config. And I could not find
[03:32:45] where I knew that my GitHub config, I had saved it. But because of the elements of it
[03:32:48] or private, like my name and stuff like that, that's not private. But, uh, my SSH key, my
[03:32:56] signing key, right? Um, that stuff needs to be saved in some way. The prompts are the
[03:33:07] folks who gave a look up to where the one part of the semex can exercise. Your real
[03:33:13] GitHub wasn't touched. I ran, I ran your real GitHub and return your name. I know I play
[03:33:18] a blah, blah, blah. Your account also has a public email. So that, blah, blah, blah.
[03:33:25] On a machine is going to rerun, you get an email to fix it. On a machine with no GitHub
[03:33:30] login or no terminal, the name falls back to your login and emails less than so. Um,
[03:33:40] what should we do about signing keys or GitHub? Because I'm using the SSH signing keys and
[03:33:53] I want that to be auto set up, but I, I don't want to carry, it's a, it's a public key though.
[03:33:58] So you need to put the public key after using the change off thing. So, uh, yeah. So commits,
[03:34:10] it should be signed. I mean, if you're not signing commits, you're going to have problems.
[03:34:13] People can, you can, you can spoof lists for walls. People have, um, if you're not signed.
[03:34:20] So you should not be committing anything to get a unless you're signed. And, but getting
[03:34:26] this signature is a pain because you have to, you can still use your public, if you set
[03:34:32] up this stage, which you obviously have to do, if you set up that system on the machine,
[03:34:37] you already have keys that you can use the pub key as your signing key, uh, for GitHub.
[03:34:41] Uh, or you can make a new one if you want. It doesn't matter. Um, so find the, what I'd
[03:34:49] add to get set up, find the pub key and offer us the key to see if it needs this, right?
[03:34:54] Use a sign key to GPG format and set the commit GPG sign only when the key exists. Um, for
[03:35:00] the new key, print the two commands to register and run them. We come from JJ off refresh.
[03:35:04] Uh, that refresh opens a browser side ever after a thousand private keys never belong
[03:35:10] to the repo. The public key doesn't need to be there either. So yes, this is what I want.
[03:35:14] I want you to do this to make this take because why, because when you're setting up Git, there's
[03:35:21] stuff that's going to need to go in your Git config that can't be stored in your dot files
[03:35:29] repo. If it is, it's going to be stored in the personal section and the assumption that
[03:35:37] you're saying private and public key is going to come with you everywhere. Uh, for, for, for
[03:35:42] SSH is not, I mean, you can do that, but it's generally not a good thing to assume, especially
[03:35:49] in a dot files repo. Therefore you cannot put your GPT sign key reference in your personal
[03:35:58] section of your dot files, because it's going to change. Therefore you cannot save your
[03:36:07] Git config in your dot files without some sort of merge happening because. And so what I hope
[03:36:19] the AI is adding is under the get set up, it will actually prompt for that stuff and it will
[03:36:24] write it, but it won't simulate it. It won't simulate it. Where do you get your private
[03:36:30] key? Uh, I'll be, you just do this, SH, that's why you're not going to have to do GPT anymore.
[03:36:37] At least I don't. Um, so. Sunny is not going to be your per machine. This is, this is kind
[03:36:46] of what I was going to. So get config set that I ran out on your Mac, get log show,
[03:36:50] say your now works. Last four commits, show G, good signature. Uh, what's that now does?
[03:36:56] Finds a, finds the key per machine. I'm using a private key per machine. I know a lot of people
[03:37:03] don't do that, but I want the option to do that. That's what I'm trying to say. So. Like, if I had,
[03:37:14] to be fair, you know, if I'm setting up a personal home lab and I have 10 machines and I want to
[03:37:18] message him between the two. As situated in containers, I just use the exact for that.
[03:37:28] Or, you know, pop that exact, yeah, either one. I don't, I don't ever ask the station to a container.
[03:37:34] Ever. Maybe there's a reason I should be, but I don't. Um,
[03:37:42] Oh, from a container. I mean, if I'm, if I'm coming from my container,
[03:37:53] yeah, I would probably be. Yeah, but I don't normally do that from inside a container.
[03:38:00] If I do that, I copy the same key, obviously, and I do that a lot, but I don't want to be
[03:38:06] forced to do that. That's, that's, that's, that's the thing I'm trying to add. Right. Um,
[03:38:16] I mean, one very scary thing you can do is you could make a bash, you know, you can make a bash
[03:38:24] privates and you can have those keys be ASCII armored. There's huge, but you could ask the armor
[03:38:30] of the keys and put them in your private repo. I get, but we know, I get, but we know for a fact that,
[03:38:36] that GitHub repos are not secure. There's been multiple times where private get repos have been
[03:38:45] exposed to public internet. Bottom line, you should never, ever, ever, ever, ever put anything secret
[03:38:54] in GitHub. Never. If you're going to put it in GitHub, you should encrypt that shit with a password
[03:39:02] that you have that doesn't ever touch the internet. That means it's on like a thumbdriver or something
[03:39:08] because it's just, you just cannot trust data at rest, even in a service that says it's private
[03:39:14] and nobody can get to it. Um, it should have a passphrase in a city agent and all that shit,
[03:39:22] but I don't always do that. Not, not my home lab anyway. And that's, again, that's another reason
[03:39:28] that I don't want in my, let's say, let's say, for example, that I want to take my dot files and
[03:39:34] use them at work. And, but I want, you know, the SSH keys and all that stuff, right? So my work
[03:39:40] machine is going to have a much stronger SSH individualized key than everything than the stuff
[03:39:45] that I'm setting up a whole. So let's say I want to use the same dot files repo to initialize my
[03:39:51] account on multiple different things that I don't necessarily want to clone the drive or something.
[03:39:56] I probably would end up doing that. I'd probably make an NFS mount and like, you know, and then
[03:40:00] put all this stuff in there. Let's say, let's say I'm really lazy. Let's say I'm super duper lazy
[03:40:05] and I just want to have two or three things and I just want to pull down GitHub and run setup,
[03:40:09] right? I know I haven't set up NFS at all. And I just want to run setup and have it work, right?
[03:40:14] On those machines, then, you know, from the other jump posts, my laptop or whatever, I could actually
[03:40:19] SSH keygen and make a key and then pop it that shit over to all of them and have it not have a
[03:40:25] passphrase because I don't care. It's my home lab. And I don't want to be bothered with a
[03:40:29] SSH agent and all that shit. So but it worked. Yeah, maybe I would. So they kind of makes the point
[03:40:35] that my dot files need to be configurable when it comes to get keys of any kind. It needs to be
[03:40:46] and particularly signing keys. And that gets a little dicey when it comes to the get config file
[03:40:50] because it has a specific checksum identifier. I don't think it's just I don't know what it is.
[03:40:57] It has an identifier in it for the specific key. And then that key is associated and that that's
[03:41:02] different per machine in this in this scenario. I fucking hate SSH agent. I always have.
[03:41:11] I don't like a situation. If you're using past phrases, you choose SSH agent. Yes, absolutely.
[03:41:18] I hate it. I don't. I've never liked it. I know why it's needed. I don't discount that. I'm not
[03:41:26] telling you not to use it. I'm just saying on my home lab, I don't want to fucking use it.
[03:41:30] Should I probably be using it so that I'm so well versed in the habit of setting up SSH agent
[03:41:35] every time that it's just it's just second nature? Absolutely. That's the way it should be.
[03:41:40] That's not how it is. For me, signing is not a bigger per machine.
[03:41:49] What's that does now does after that? That's fine. It's a key per machine. It looks like blah blah blah.
[03:41:55] Yeah, a lot. Obviously, the advantage of setting a really freaking strong pass phrase on a single
[03:42:03] key public key pair that you save on a USB drive and just use everywhere, which is no more problem
[03:42:11] than maintaining a GPG key. Same problem, right? Because you've got to have that boy. God forbid
[03:42:18] you lose that key, right? Because now what you've got all these emails signed and you've already had
[03:42:24] trust chains set up with people and know that you don't have the key anymore. You have to tell
[03:42:27] everybody that that key is retired. It's a pain in the ass is what it is. There should be just
[03:42:33] adding new keys all the time. The idea that a key pair is more than ephemeral
[03:42:44] is they're kind of pseudo ephemeral to me. You should be changing your key pairs all the time,
[03:42:49] all the time. The same zero trust approach and principle of like constantly changing certificates.
[03:42:58] Yeah, but the idea behind an SSH agent is that the pass phrase that you put on the key
[03:43:11] is annoying enough that you have to use the agent and turn it on, which can still be spoofed
[03:43:17] because it's already a memory. It's a little bit of an illusion of security for that because
[03:43:25] you've already bypassed the pass phrase, right? And if somebody takes over your terminal, they have
[03:43:29] access to it. They have access to everything without the pass phrase. So to me, a better security
[03:43:36] approach is rotate that fucking key all the time and figure out ways to update the keys that you're
[03:43:45] using all the time. And that has kind of followed all the way into my dot files organization by
[03:43:52] saying that my signing key in GitHub might change. Maybe it's going to change every month. Maybe
[03:44:00] it's going to change every week. I'll tell you what, I never remember it because I'm always making
[03:44:04] new one. So the harder to update your key on hundreds of machines. Yeah, it's not it's not
[03:44:12] harder to update your key on hundreds of machines. No, that's what I'm saying. Yes, you should use
[03:44:21] SSH certs. And that's what we do, right? We at work. We have we have the other ways of doing SSH.
[03:44:30] We have a couple things. First of all, we have we have shared file systems for our home directory.
[03:44:35] So our keys propagate automatically because they're all mounted on the same thing using NFS.
[03:44:40] So that's not a problem at all. If you go to the jump host and you go to another,
[03:44:44] you go to another host that you maintain. And as long as it's mounting the same home directory,
[03:44:48] you've got our keys, period. You don't have to maintain anything. So that covers the issue of
[03:44:53] having to duplicate the heel over the place. And in fact, you know, the lazy idea, even in my home
[03:45:00] lab, you know, the idea that I would that I would pull down a doffals repo, doffals repo,
[03:45:05] run, run, run, run, this is key gen kisses, key gen on two different systems. That's kind of stupid.
[03:45:10] I mean, it really, if I'm going to invest extra time in anything, I shouldn't invest extra time
[03:45:14] in key management. I should just an extra time of setting up NFS. So I just have to mount my one
[03:45:18] dot files on them, all of them. And I use it that way. We have Kerberos, which is a pain in the
[03:45:24] fucking ass. I hate it. I hate Kerberos. I hate it. I hate running hated on everything and I've
[03:45:32] been able to do all the other stuff. This sucks. And I don't know Kerberos well enough to make it
[03:45:37] not suck. I have been struggling with that for 10 years. They hate it. I just absolutely hate it.
[03:45:44] It's just a signing off. She's like, okay, creates a look, synchro file. Enterprise. Yeah.
[03:45:52] Yeah, we have we have a very enterprise thing that I can't talk about. That's a security
[03:45:56] violation for me to talk a lot. But telling you, I have Kerberos is already kind of gray.
[03:46:02] So, yeah, I'm not one of those quick streamers that tells you our entire security setup on a
[03:46:10] live stream and say, yeah, and we had somebody get to can't believe somebody got through it the other
[03:46:14] day. I've seen that. I've seen a streamer. Very exhaustively detailed, there's security
[03:46:23] architecture on a Twitch screen at their company. And I was like, you've got to be kidding me.
[03:46:33] Everyone should use Kerberos. Yeah. Yeah. Yeah, don't comment.
[03:46:43] Chex gave him if you're like, okay. All right. I think I think that's probably fine. Wish.
[03:46:51] He said before the internet, Milton's. It's all fine. What's that meme?
[03:47:01] That's a personal LLC going to go back. If he says again, it says there's anything. Yeah,
[03:47:05] I'll refresh. Since the PR is only getting, I haven't really get signing set up anywhere on
[03:47:11] your Mac. Get signing is already working. So, just need to merge existing. Get config with
[03:47:30] what would have been generated. I kind of want my aliases and stuff.
[03:47:38] I created a ton of GitHub aliases that I didn't get. Set up already rights to the
[03:47:47] people who are interested in the place, but the overwrites a few keys to say. I'll look at the
[03:47:50] crusade. So, I created a bunch of aliases in my Git config that I was super proud of and using
[03:47:57] all the time. And I was like, I couldn't use them. And because of this annoyance, the emerging,
[03:48:02] because there's stuff that's per machine that's in there that's here in Git config and usually
[03:48:06] end up making a Git config before you Simlink or add your other one in. And you can't Simlink it
[03:48:11] because of the reasons I just talked about. So, getting that merge to happen in a set up process
[03:48:17] is important going forward. But I also need to do it because retroactively because I already did it.
[03:48:23] My first attempt at the end it felt because I used the wrong argument names. I'm kind of scared.
[03:48:30] Commit GPG signs called formatting goes open PGP.
[03:48:36] Stays before forced SSH. No, we want SSH.
[03:48:44] Stays false.
[03:48:48] No, fuck no. No, I want what was there already forced GPG sign and SSH.
[03:49:16] It puts the key found here. Signing key point in a missing file.
[03:49:27] No, it didn't.
[03:49:41] Use the values from Git config as authoritative.
[03:49:52] Yeah. I'm going to go on four hours on the stream. Damn. Just to go through the Bachelors E.
[03:50:01] I said, whatever they get here, it wins, including they get named, get email, get signing key overrides.
[03:50:11] They get a principal implied values on a missing right now and over red beats these guys.
[03:50:18] I think I have to have this change in
[03:50:24] where does it get signing key coming from?
[03:50:30] It's getting even even. Are these in?
[03:50:35] I think they're in config personal.
[03:50:41] I don't know if this is safe for me to show you. Give me a second.
[03:51:02] Let me see my dirty apartment.
[03:51:06] There have been protocols to say check out patches. Oh, yeah. This is not right. So I got it checked.
[03:51:26] It's like thinking longer than it probably should.
[03:51:33] I'm really tired. I've been here for four hours and I haven't eaten any food.
[03:51:36] I do that all the freaking time. Very bad on my body.
[03:51:42] But I've got so much done. So much done. The AI got so much done.
[03:51:52] We're so close. This is the last thing.
[03:51:58] Because if my set up will automatically, then what we need to do is we need to create a Red Hat VM.
[03:52:03] Or a bunch of it doesn't matter. Would you create a VM and then we're going to test all this?
[03:52:09] Save it still works.
[03:52:15] If they didn't see it, as they get set up, any value already there is used and as is
[03:52:19] a never prompted for a rubred. Only missing values are filled in.
[03:52:22] The script passes, but it didn't have any mail.
[03:52:26] The missing values went over, it didn't have any mail.
[03:52:28] Those overrides apply only when the value is missing and it didn't work out.
[03:52:31] The prompt and the user felt like. The change to this value is getable.
[03:52:36] Signing key and existing user sign key wins over GPG sign key.
[03:52:42] Other sign key's GPG format, GPG signs are already only filled in where I'm missing.
[03:52:49] Test and throw in what I just see named blah blah blah.
[03:52:54] Came out identical after a run.
[03:52:58] My first iteration test hung my shell for the first nine seconds.
[03:53:03] And a passphrase now prompts. I killed my own test.
[03:53:09] Yeah, I mean push. Yeah, again, it's just a PR, so we're safe.
[03:53:15] If I was pushing the main, now I mean dangerous, hella dangerous.
[03:53:19] And the really great thing about this is we're going to be able to squash all these
[03:53:21] changes into a single commit. And I can revert that commit any time.
[03:53:26] Because it's all in there. That's the wonder and glory of get.
[03:53:36] So if I like totally screw something up and when I roll back,
[03:53:38] I can just roll back the last PR applied, the last commit, and the commit history.
[03:53:43] And it'll have a summary of everything that changed because AI.
[03:53:52] So, yeah, so let's actually take a look. I want to look at my actually get my
[03:53:58] git config right now. Yeah, it didn't, it didn't add anything.
[03:54:04] So, yeah.
[03:54:09] What I was hoping it would do, so it updated the setup script that's going to do the merge.
[03:54:15] But I want to do the merge.
[03:54:18] So, should I run git setup to merge and create an updated, so they got git config.
[03:54:34] I want to get all my stuff that I lost when I made my own git config, when I set up this machine.
[03:54:43] So, no, you don't need to, I already ran git on this machine twice and it did the merge.
[03:54:48] No, it didn't. It doesn't have anything, you fucking liar. It doesn't have it.
[03:54:59] Or does it, it doesn't have all my aliases.
[03:55:07] Am I confusing things?
[03:55:13] It doesn't have any releases.
[03:55:19] Config, G-H-O, let's get, let's get it on GitHub.
[03:55:30] What about G-H config, diagonal?
[03:55:35] It's a different sign. I thought that was git config this whole time, it's not, it's G-H config.
[03:55:43] I feel like an idiot. I'm definitely not as smart as my AI.
[03:55:56] G-H-O-O, it needs to be merged and it never has anything personal. I totally always miss
[03:56:03] remembering all of this. Constance attract, account lives, a separate file that holds a log
[03:56:10] in Robert's idea. Two things that I've fixed, G-H-G-H set up, I've assigned it to override
[03:56:15] some of those settings. The final one is yours. So, is that SimLinked? I think it is.
[03:56:26] Please, it is, God damn it, an idiot. Wait, it's pointing to the capital repos.
[03:56:36] A lot of those Sim links are pointing to the capital repos. It's not a problem. It's not
[03:56:47] a problem on Mac. The Sim links were created with capitals and they would not be anymore,
[03:56:54] but because Macs don't have case sensitivity, it's absolutely insane. They don't. I didn't,
[03:57:00] yeah, how long it took me to know that? I thought all this time I thought they were case sensitive
[03:57:08] because it's Unix. Wrong. If it doesn't fix the case, the Mac was so different as well.
[03:57:21] No, because PWD is a GNUism. So, it's make their dash P. It's a GNUism.
[03:57:35] Okay. So, not a problem on the Mac days, it's fragile and it's fixed.
[03:57:42] Why it works? Your repos is on this Macs APFS. It doesn't have case sensitivity. Like I said,
[03:57:50] a capital repos is fine. Repos is fine.
[03:57:57] I'm going to check with him. Your sales working directory
[03:58:00] set script, build the targets from the PWD so the copy, copy the capital. Nothing in the repo
[03:58:05] sets it apart from one hard coded spot. Scripts can, God, that's such an old script.
[03:58:17] My old telecast and shit. I don't even use this anymore. It says I've been ported to Go program.
[03:58:26] Playing PWD, we're going to have, that's all stuff we're going to clean later. We started
[03:58:30] with the VMware state of accuracy, but we're going to do videos on all the other script cleanups.
[03:58:34] Playing PWDP doesn't fix this on Mac OS. When it would break, a Linux machine or anything sets
[03:58:40] the files to some more repos is fixed. This simply is restoring your home directory block.
[03:58:47] Resolving a real spell in the scripts. Real path is pearls, real path.
[03:58:53] Everyone is standing well. I tested both. These are repos. It's usually both.
[03:59:02] Everyone does have set up so every existing link points to repos.
[03:59:12] To the shows open to repos 2. Scripts now holds their capital repos number.
[03:59:18] Yep, let's do that. Hopefully nothing breaks. Hopefully.
[03:59:40] Oh, it shows us this one directory. Can we even upload a four-hour video to YouTube?
[03:59:52] Is that even possible? No one's going to watch for four hours. Maybe they will. Maybe they will.
[03:59:57] Maybe they'll learn something and they'll get somebody or whatever. You know what we could do?
[04:00:03] Oh, my God. I can add chapter headings automatically with the good old AI. Yeah, watch. I'm going to do it.
[04:00:14] To the show up, all two of the links now use repos.
[04:00:19] My scripts is modified.
[04:00:25] Why would you have script scripts? I don't want script scripts. That's a mistake.
[04:00:32] It's definitely a bug. It's all past. Script can is now used to repos instead of hard-coded repos.
[04:00:42] A bug if that along the way, script scripts was an accidental suffer up to the same link
[04:00:45] and it had up to the path committed years ago. Yep, it came from a root set up line.
[04:00:53] That's so smart to find that. Chapter's cloud does x, cloud does x, cloud does z.
[04:01:00] Is that's my chapter? When the capital came from none of the terminals,
[04:01:05] blah, blah, blah, blah, blah, blah, blah. That's a script no up to alone.
[04:01:10] It's a track to have a file that looks like a straight output. So I'll say if you want to delete,
[04:01:14] yeah, I want to delete it. Remove no hub.out.
[04:01:27] I really don't know how to get our M. So it's changed in position.
[04:01:31] I'm still getting our entry from no hub.out. So the future no hub,
[04:01:35] running that directly with the recreated. You, you want me to add one. Yes.
[04:01:42] It changes the uncommitted, the subscript path runs blah, blah, blah.
[04:01:54] I want yes to both two valves, et cetera, blah, blah, delete to no hub. Yeah. Nice.
[04:02:02] Did you push? I guess push already.
[04:02:08] Okay. That's it. That's it for today. We have managed to
[04:02:15] clean a bunch of stuff up. Oh my gosh, cloud has managed to clean a bunch of stuff up.
[04:02:24] Well, the scripts don't hop out. That no hub.out is what you get when you run a program
[04:02:30] with no hub in front. So you know, no hub runs something blah, blah, blah. It's like,
[04:02:34] and then you background it. And then all the output goes to no hub.out.
[04:02:39] And I must have done that at some point in the process. And it's one of the reasons he
[04:02:43] accepted to background something and it runs like, especially if you're going to log off the
[04:02:47] computer or something. So no hub.out is like an extraneous file that gets left around a lot.
[04:02:55] Um, if you ever use that old method of doing it, you know, a t-box, you don't need to do it as
[04:02:59] much on an, on an interactive system because t-mux covers the same base. You just let t-mux run,
[04:03:04] you go do something else and you come back to t-mush and reattach. Um, so yeah.
[04:03:14] Yeah. If you're going to do no hub on something, you could background it and also have it,
[04:03:20] you know, resist the signals that tell us to die, which is basically turning it into a server. You
[04:03:26] can tell if you turn a bash script into a server that way, rather than writing the complicated code
[04:03:31] to, you know, start off the daemon process and all that stuff. You can just do it with no hub
[04:03:37] and, and ampersand or whatever, ampersand, uh, ad sign. What's it called? It is ampersand. Yeah.
[04:03:47] Anyway, so, uh, I actually wanted the scripts directory similar to be lowered case two as well,
[04:03:54] but we're going to keep that that way for now. I feel like we made a lot of progress. I do believe
[04:04:00] this PR is probably ready to be merged. Um, there's a lot of other cleanup in here, though,
[04:04:05] that has to take place, uh, including like going through the actual files. So I will do those in
[04:04:11] a separate videos. Um, um, so today's, for today's session, we got the Bachelorette done
[04:04:20] and any of the stuff that the Bachelorette is using, the Asia review, I know, I already,
[04:04:25] I already with thought of starting the Asia review. Um, what's going on? This is not good.
[04:04:36] All right. So there we go. So here's, there's been a lot of changes.
[04:04:40] This, this round, the changes are kind of piling up on each other because they're all
[04:04:44] going into single PR, um, which is fine. Uh, it's the commits that are supposed to be small,
[04:04:52] generally a PR should be small though too, but in this case, having a big SPR is fine.
[04:04:57] Um, it just, you know, I won't be able to roll it back as easily. Actually this, it might be,
[04:05:03] it might be, it might be worth it to merge this PR and then start a new PR for the other stuff.
[04:05:09] I think that's probably the right thing to do. Let's go ahead and do that. Um,
[04:05:16] so yeah, let's, let's, let's merge this PR. Um, yep. All right. So, um, let's merge, uh, this PR.
[04:05:32] I don't have any review requirements like we would have a work. You can't merge a PR unless
[04:05:37] you have at least one reviewer which is annoying and also awesome because you have to at least have
[04:05:43] one other person tell you that you didn't make a mistake and then they're gonna hook with you.
[04:05:49] And so that's, by the way, the reason to keep your PR is really small because you're going to be
[04:05:52] asking other people to read them and the worst thing you want to do to a coworker is tell them
[04:05:57] to review your 50,000 line PR. Um, some people have two reviewers. Yep. The PR study for ours
[04:06:06] merged with Maine. Uh, but first, first mark, I hope it did it as a squash. And did you squash it?
[04:06:19] We always want to squash and merge. I'm betting it didn't, and it's going to suck.
[04:06:26] Oh fuck. I don't want a merge commit.
[04:06:34] It just emerged. It appears something was merged that way.
[04:06:38] Well, look what it's going to do. The commit history though. Watch.
[04:06:43] It's going to make the commit history insane. You see that?
[04:06:55] I didn't want that. I want to squash emerges. Yeah, damn it.
[04:07:03] Um,
[04:07:15] it just depends on how best messy you want your commit history to be, you know.
[04:07:29] Yeah, I know. We have that, we have that turned on.
[04:07:32] We have merge commits to stable on every one of our repos at work.
[04:07:37] Oh, it's PR. Yes. PR study for has already merged in GitHub. Can't squash and pretty
[04:07:40] emerged PR. You can still end up with a squashed history, but only I'm already writing Maine.
[04:07:46] I haven't changed anything. Uh, two offers leave it. That's what I would do. 27 commits,
[04:07:50] stays individual sign commits. I mean, this, this dot files repo has so many commits on it.
[04:07:57] I'd have to like redo the whole thing. It's a big ass repo.
[04:08:03] Like PR 73 and nothing is risky. You're right, Maine, or we do the PR as a squash. I'm not doing
[04:08:08] that. That's two dangers. Every post public 46 forks, 275 stars. Anybody who pulled Maine
[04:08:17] in the last few minutes would have a history that no longer matched mine. I'm not doing that.
[04:08:24] The only gain is a tighter log and you'd, you'd lose the individual sign commits.
[04:08:30] Um, a smart clean up is available. A follow up commit fixing the biology of that such a
[04:08:35] history. If you want to, that's, that's seven. It's okay.
[04:08:43] Oh, that's special. Um, to me, it's supposed to say that I'll go ahead. I'll confirm
[04:08:50] with you right before the force pressure. No. Now let's, um, what is easier
[04:08:59] for people who have worked going forward? I want to make it easy for them.
[04:09:12] Um, for future PR, both, both missed are fine for forekers. Squash one commit PR,
[04:09:19] so a log that's easier and can scan a single commit server. It loses the per step signed
[04:09:25] to commits. Um, am I 27%? Yeah.
[04:09:36] Yeah. Um, that's an argument for continuing with merge commits. As you did with 73 and 74,
[04:09:45] it's your call another choice. My forekers might want this stuff separately. Interesting.
[04:10:02] And the same result for PR. Okay. That makes sense.
[04:10:08] That makes sense. We're going to end this context, by the way. Uh, that whole session is going to
[04:10:12] go away. So and this has been merged into main. I think we're already, are we not on main? Um,
[04:10:28] sync, sync local.
[04:10:33] I wanted to check out main and, uh, sync it and pull down the thing.
[04:10:43] It's hidden and said it's time checking out. It's on disk. Hey, great.
[04:10:52] I do use my voice to hit a lot. I use it all the time. Sometimes the type, sometimes
[04:10:58] I'm using it all day. Your local repo is synced and nothing was lost.
[04:11:04] Local main is now origin main. Got it. Clean up by deleted local, clean up branch. Got it.
[04:11:11] If your agent misses, explain themselves on a switch made in blah, blah, blah.
[04:11:16] Uh, remaining branch clean up, back up is a local branch I didn't create.
[04:11:21] I'm going to keep that for a while. That was, there was a major, major merge.
[04:11:25] So I want that as a backup. That was an older 10 line agency.
[04:11:41] Yeah.
[04:11:51] We're just clean. Yep.
[04:11:56] Just, I think it's, uh, fine.
[04:12:01] Yep. We are all good to go. Y'all. Um, that is it for me back to fishies.
[04:12:07] So, um, it has been fun. It's time to raid. I'm going to go, I'm going to end the video now.
[04:12:15] So I'm not going to bother you, but thank you for joining me to, I mean, for four hours.
[04:12:20] If you made it through this video, I doubt you did, but if you did, great.
[04:12:25] Um, one of the reasons I'm saving these videos is because I want to go back through the video
[04:12:30] so I can see what I did if I screwed something up with something. So I have my own record of that.
[04:12:34] Um, the transcript, the full transcript of this video is going to be in Artavic Rob slash videos
[04:12:41] as a markdown file that will eventually be searchable. So eventually you'll be able to point your
[04:12:48] agents at Artavic Rob slash videos if you want to search my video content and not have to deal
[04:12:56] with YouTube's horrible search engine. So that is coming in the future. So if you made it this long,
[04:13:02] hopefully, uh, that's something that you can look forward to. But that's one of the reasons I have
[04:13:07] been starting to take videos of all these and put them up on YouTube is for that purpose.
[04:13:11] So that I have a documented history of, of, of this stuff, uh, for reference so people can go back
[04:13:17] to it and historically or whatever. So thank you for joining.
