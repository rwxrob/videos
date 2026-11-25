# 🔰 Get bash with brew

Walks through installing a newer bash on macOS with Homebrew, calling brew by its full path, and checking which bash version is running. Shows how to make the Homebrew bash the login shell, including troubleshooting a non-standard shell error, and previews why customizing the shell requires learning some scripting.

Chapters:
0:00 Installing bash using the full brew path
1:38 Restarting the terminal to find bash
2:07 Checking which bash version is running
3:52 Changing the login shell on macOS
4:58 Troubleshooting the non-standard shell error
6:47 Homebrew paths and Apple's shell change
8:08 Customizing the shell means learning to script

`#bash #homebrew #macos #terminal #commandline #shell #unix #linux #techjobs #learning #mac #brew`

## Category

Education

## Transcription

[00:00:00] All right, so the first thing we're going to install with brew is bash.
[00:00:06] We're not going to talk about bash versus e-shell right now, that's a separate video.
[00:00:10] So get on the command line, brew, oops, we're not going to be able to do brew, remember,
[00:00:17] because it's in that weird place, opt home brew, I pushed tab there, bin brew.
[00:00:24] Now we have to do this the first time because we haven't set up our shell yet to know where
[00:00:29] the brew command line, the brew command is, which we are going to do, but we're going
[00:00:34] to do it after we get bash installed.
[00:00:37] So we're going to go ahead and use this long winded one.
[00:00:41] If you're on an Intel Mac, it might be user local.
[00:00:44] So opt home brew, bin brew, install bash, I think, let's try it.
[00:00:52] So it's going to go get the bash cast, can download it, disable this by heavy, blah, blah,
[00:00:57] blah, blah.
[00:00:58] So now let's just see if it finds bash, bash, bash, v, oops, nope, not that, we don't need
[00:01:07] that yet.
[00:01:08] Oh, this is from my, this is from my bash RCA, which you're not supposed to know about yet.
[00:01:14] So, so that, so if you have a bash, it should be, you should be good to go.
[00:01:20] Man bash, this is not going to be the same bash, probably.
[00:01:25] Um, actually, let's do, well, you can do this, you can do bash.
[00:01:32] If you just execute bash, you should get a new bash, right?
[00:01:36] Now the question is, which bash is it though?
[00:01:38] And I, I think you're going to need a new shell for that.
[00:01:41] So right now you don't know how to reinitialize your shell.
[00:01:45] So go ahead and stop your terminal and restart it.
[00:01:47] I don't ever do that, but this is the thing to do for now because you don't know.
[00:01:53] So we're going to go ahead and open another terminal command T and this time we should
[00:02:00] be able to ex, ex, bash and we should get bash here.
[00:02:07] Let's, let's see what, what environment variables we have.
[00:02:12] I'm trying to, I'm trying to figure out which version of bash we actually have.
[00:02:20] Um, let's do a search, I mean, I know one way, but I want to see what you would do if you
[00:02:26] found it.
[00:02:27] What would you find?
[00:02:28] How can I know which version of bash, bash dash V usually, echo bash version.
[00:02:39] All right, so echo, that's what I was going to do.
[00:02:41] So honestly, I just wanted to make sure that was, there wasn't a better way.
[00:02:47] So this is 3.2. and if you can go to a search to say, what is the most recent version of
[00:02:53] bash, most, I'm still searching using, not using the German, I do this from the terminal.
[00:02:59] So stay tuned.
[00:03:00] If you want to see videos about how to search from the terminal, it's way more effective.
[00:03:03] So what is the most, uh, recent version of bash, because this is the kind of thing you
[00:03:11] could ask Chad CPT from the terminal as well, so this looks like it did not find the bash
[00:03:17] that we wanted to because our path is wrong.
[00:03:20] So I think we're going to probably want to do opt home brew bin.
[00:03:24] And I'm guessing that bash got installed here, which it did.
[00:03:31] And now let's echo bash version, go bash version, and we get 5.2.
[00:03:41] So that is going to be our new shell and, but that's, that's how you install that there.
[00:03:52] The hard part now is to change our shell, we're going to need to do this account.
[00:03:58] This, this particular command, now this, this change cell command is a, is a Mac only sort
[00:04:04] of thing.
[00:04:05] I mean, you can do it on the Unix as well, other unices, but it's generally not, you generally
[00:04:10] wouldn't do this, you would change it as you password, um, if you're doing some Linux,
[00:04:15] but that's information you don't need to do.
[00:04:17] So right now let's just do this opt home brew bin, bin bash.
[00:04:25] And that should get us where we need to be, yeah, I have, oopsie, I have to try it again
[00:04:43] because I have a really, really long password, I show, yeah, ah, non-standard shell, I'm going
[00:05:02] to have to throw this video away too, it is totally a standard shell, yeah, I don't know
[00:05:12] what's going on with that.
[00:05:16] My Mac doesn't have that, my other Mac is, is totally fine, it finds all the right things.
[00:05:21] They're not doing a CDU, super secret password, does it have to be CDU?
[00:05:43] Oh my gosh, the bad thing about having a good password is it's really hard.
[00:05:55] Changing shell for root, that was kind of stupid, but, oh well, ah, I guess we can give it a
[00:06:03] user, no, I needed to change it for root anyway, so, I don't use the change shell command,
[00:06:08] I know, I probably should, I usually use it in Etsy password, I changed it, off name shell
[00:06:15] user, yeah, I thought you could change your own shell, can't you change your own shell?
[00:06:26] That's very interesting, all right, let's try this again, all right, there we go, it worked,
[00:06:40] oh well, I guess I'll leave all that in there, so now I have, now bash is my new shell, echo
[00:06:47] bash version, thank you for the help everybody, sorry I was such a, a noob with that, but they've
[00:06:55] changed some things with brew, the way brew works, I know, I don't think you should need
[00:07:01] CDU for the individual user, but looks like that took, are not in your path, bash in this
[00:07:11] case, yeah see bash, bash used to install packages in the right place, I mean brew used to install
[00:07:17] packages that were, that would resolve properly, and I'm, I'm struggling right now because the
[00:07:24] new brew doesn't do that, so I'm glad I'm struggling for people to see it, and it says an on-setter
[00:07:31] shell because it's not the apple provided version, which is totally lame, so I'm glad you got to
[00:07:37] see my first hand struggles and reaction to all of the changes that they've made, I'm definitely
[00:07:43] going to do a ranty video about the difference between the, you know, the shells and Z shell and
[00:07:51] bash and how I think apples got their head up their rear end with regard to changing from the
[00:07:57] bash shell, the reason they did it primarily by the way is the licensing and legal restrictions,
[00:08:01] that, no matter what tell, anybody tells you that's the main reason they did it, so the good news
[00:08:08] is is that we actually have bash installed, we've got bash 5 on, and we can now start customizing bash
[00:08:15] beginning with putting brew into our path, and we'll start talking about what the path is,
[00:08:22] to do all of that though, we're going to have to start slowly getting into what does it mean to
[00:08:28] write shell scripts, what does it mean to write bash scripts, this is one of those chicken-and-the-egg
[00:08:33] scenarios that gets really messy, and I don't want you to be afraid of it, but we definitely are
[00:08:39] going to have to learn how to code a little bit before we learn to code, and just in order to
[00:08:46] customize the shell, so we'll be doing some things that are actually code, just to get the shell
[00:08:52] bright, and then we'll come back later, and we'll come to understand that all that stuff that we
[00:08:57] wrote into the configuration files was actually code, and we can now use that to write our own
[00:09:02] scripts for other things, that's probably one of the most challenging parts of getting started
[00:09:09] on Unix and Linux is this notion that you have to know how to script in order to set up the shell
[00:09:16] that you're going to use, and so where do you start, right, and I'm going to save the rest of
[00:09:23] the conversation about that to later, the spoiler is that you usually have to take somebody else's
[00:09:28] pre-configured settings and just adopt them and trust them, I mean people have been doing this for
[00:09:33] years, and then you gradually learn how to customize them and make them your own, and that has been
[00:09:39] a rite of passage for Unix people since the beginning of Unix, so don't be afraid of that,
[00:09:45] don't be afraid of making the mistakes like I made, and I'll end the video there.
