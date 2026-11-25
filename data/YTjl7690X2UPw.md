# raw → git dotfiles → cozy workstation

Explains a shift away from relying on a few easily copied config files toward pulling a full dotfiles Git repo, using a shared work jump box as the example. Compares working on a vanilla system, cloning dotfiles and using a multicall binary, and covers read-only pulls, work-specific configuration and why splitting dotfiles into multiple files is now reasonable.

Chapters:
0:00 Rethinking the few-config-files approach
1:38 Vanilla system or full dotfiles
2:42 Setting up a shared HPC jump box
5:56 Three ways to work anywhere
8:14 Read-only Git pulls and code ownership
11:46 Work-specific config and private repo problems
15:11 Trust Git and split your dotfiles

`#dotfiles #git #linux #bash #terminal #vim #neovim #github #unix #sysde #coding`

## Category

Science & Technology

## Transcription

[00:00:00] As I've been going through my doc files, I have discovered a very massive shift in assumption
[00:00:08] about my workflow and how I accomplish any given thing on any given system.
[00:00:14] In the past, I have talked a lot about having one or two files that you just have to copy
[00:00:20] over to a system and be good to go, right?
[00:00:23] So VMRC, Tmux, Comp, BashRC, that kind of thing.
[00:00:28] And I now have decided that those days are over, and other people may have been wanting
[00:00:37] to say, "I told you so right here, and this is your time.
[00:00:39] We'll put it in the comment," which I'll then promptly delete.
[00:00:44] But, you know, so I have right now in my scripts directory, I have -- where am I?
[00:00:57] I also know scripts.
[00:01:01] I have 341 scripts that I've been importing.
[00:01:03] It's been taking me quite a while to do this, and I use these scripts a lot.
[00:01:07] Now, people like me would argue, "Why are you using those scripts?
[00:01:11] You shouldn't become dependent on them."
[00:01:13] And I completely agree.
[00:01:14] I'm still very able to do anything on a bare vanilla system that doesn't have anything
[00:01:18] installed at all.
[00:01:19] A lot of people who, you know, can't -- a lot of YouTube influencers and people out there,
[00:01:26] they are completely useless on a raw system, period.
[00:01:30] And I am not.
[00:01:32] And there are a lot of people that I work with that I know, young and old, who are not.
[00:01:36] They are able to work on any system.
[00:01:38] So what I was -- what I have been holding onto is this idea that there's a middle ground
[00:01:47] there.
[00:01:48] So you're either using an absolute vanilla system, or you're not, and you're using your
[00:01:54] cozy, you know, dot files, right?
[00:01:59] There's really no middle ground.
[00:02:00] There used to be.
[00:02:01] There used to be.
[00:02:02] But that middle ground, in my experience, that middle ground is kind of gone now.
[00:02:05] What does that mean?
[00:02:06] That means that you're either on a system where you can get pull your dot files in a
[00:02:12] read-only manner, and you are immediately good to go.
[00:02:16] That means I get all 341 of my scripts.
[00:02:18] I get my RC files.
[00:02:20] I get my bash completion or completion files if I want them.
[00:02:24] I get, you know, if you're on Z show, you get your function files.
[00:02:28] All the stuff that you -- that I would normally use to argue against use of a particular technology,
[00:02:34] for example, Z show.
[00:02:36] Because, you know, or neobim or any of these things, like why do you want all these plug-ins,
[00:02:40] dependencies, you know, all of this stuff?
[00:02:42] And the point of it is, is that, you know, when you get into a new system -- so let me
[00:02:46] give you a very specific example that I'm actually working on right now.
[00:02:50] So right now, I -- there is a new system at work.
[00:02:53] It's a multi-user system.
[00:02:56] It's -- it's -- I won't tell you the name, but it is a -- you know, it's a high-performance
[00:03:00] computing jump box that everybody goes on to.
[00:03:04] And it's the only box that has access to all of the things and tools that I need.
[00:03:11] Okay?
[00:03:12] So why is that a problem?
[00:03:15] Because my nice cozy Mac here, my Unix system, right, with a custom desktop environment,
[00:03:19] otherwise known as Mac OS, is a completely different system, by the way.
[00:03:25] It's Unix.
[00:03:26] It's not Linux, which is another reason I've switched to POSIX, Perl, and Go and no bash.
[00:03:32] You know, and people have been arguing about me with that.
[00:03:35] This is -- that's a different video.
[00:03:37] That is a -- that is a -- that is a hard-cutting back to six years ago, five years ago.
[00:03:40] I didn't write any shell code that wasn't POSIX compliant, period.
[00:03:45] Mac door dash P, by the way, in 2018 became POSIX compliant.
[00:03:47] Just read that back the other day.
[00:03:49] So the point being is that I wanted my dot files to be usable anywhere, whether there
[00:03:54] be a Z shell or there be a POSIX, not a Z shell, of course.
[00:03:58] We actually have that as an option, by the way.
[00:04:01] And our system, when you set up a new account, you can indicate whether you want a bash shell
[00:04:05] or a Z shell.
[00:04:06] You don't get the chance to use Z shell.
[00:04:07] That's the true story.
[00:04:08] And this is a huge multinational corporation that would probably shock you.
[00:04:12] And so anyway, this jump box, I want to set up my stuff.
[00:04:16] Well, I have 341 scripts to pull over.
[00:04:18] I have -- you know, and I love them, right?
[00:04:20] I need to do some installs, but the installs need to be local installs, because I don't
[00:04:24] have -- even though I have root access, I'm not -- obviously, I don't want -- if I run
[00:04:28] an installer, I don't want it to app install anything into, you know, the host of us, which
[00:04:34] wouldn't work anyway, because it's Red Hat.
[00:04:36] So, you know, there's -- this is a justification for another thing I'm going to do in a different
[00:04:40] video about writing my own installer scripts, and we'll do that whole thing.
[00:04:45] But the change in perspective is this.
[00:04:48] You either have vanilla access to a thing, or you have your dot files, right?
[00:04:53] And these days, access to the Internet and pulling a Git repo is kind of a no-brainer.
[00:04:59] Now, I was raised in a time where that kind of luxury could not be counted on, where your
[00:05:04] VPN did not have proxy access to GitHub, and it, you know, was like strictly forbidden
[00:05:10] for you to bring software, including your dot files, down from a remote system, and
[00:05:14] put it on your local system.
[00:05:16] Those days are gone.
[00:05:17] I mean, the reason I can say that is because a company that I work for that, when I got
[00:05:21] here, had VIMM 7 installed, and that was it.
[00:05:24] I got them to put VIM 8 on there, thank God, 8.1, 8.2, but, you know, a company like this
[00:05:30] that is finally -- that has been for more than five years, okay, with pulling down Git
[00:05:35] repos containing all of my dot files and all those configurations in a, you know, in a
[00:05:41] localized way on my share drive.
[00:05:44] That reality has changed, you know, something in my head about how trans -- what does it
[00:05:53] mean to be able to work anywhere, right?
[00:05:56] These days being able to work anywhere means one of three things, all right?
[00:06:01] It means one, you can use the vanilla system, two, you can pull down your dot files using
[00:06:07] Git and make it into your cozy system remotely -- oops.
[00:06:14] For three, you've hacked the system and you don't want to touch disk at all, in which
[00:06:19] case you make a bonsai root kit, okay?
[00:06:22] So those are the three ways to gain remote access to a thing and use it, right?
[00:06:28] So vanilla, vanilla, that means you use what's there, including PowerShell if you have it
[00:06:33] on Windows, somebody mentioned, you know, dot files configuration, which means you pull
[00:06:39] a Git repo or a multicol monoliths with embedded resources like bonsai can do.
[00:06:45] Those are the three things that I want to make and the reason this is significant is
[00:06:51] because I need to make this video because I have regularly argued for, like, things
[00:06:58] like VIMRC and let me just go down the rabbit hole a little bit here, okay?
[00:07:03] So one of the reasons that I have a VIMRC instead of a NeoVim.lua is because I know VIMs
[00:07:12] are going to be on the system and I'm not going to be able to install NeoVIM, right?
[00:07:16] So that is one of those kind of gray areas where my dot files will progressively say,
[00:07:23] "Oh, you've got NeoVim great, let's use that."
[00:07:26] But if not, we're going to use VIM, and so keeping VIMRC around still holds water there.
[00:07:33] You know, there would have been a time when I would say I'm not using NeoVim at all because
[00:07:36] I can't be sure I'm going to have NeoVim on the system.
[00:07:39] And I can actually have both now in a Git repo.
[00:07:43] If I assume that I'm going to be pulling down a Git repo, which I would do anyway, right?
[00:07:46] I'm not going to SCP my MRC, my Tmux, and my VacherC around.
[00:07:51] I have done that in the past.
[00:07:53] In the past, I've FTPed or SCPed around those three files and been good to go on the target
[00:07:59] systems.
[00:08:00] But those days are gone, those days are really gone.
[00:08:04] And so, you know, I mean, these days, you pull down, you know, you pull down your Git
[00:08:09] repo and you can do whatever you want once you get your Git repo down.
[00:08:14] There is a little bit of a strategy with this related to this that I want to talk about
[00:08:17] before we close up this video.
[00:08:19] And that is read only Git repos.
[00:08:22] So by, you know, technically, most people's contracts, if you make change, if you write
[00:08:28] any code on a, on a company system and you commit it, they own it.
[00:08:34] They own that code.
[00:08:35] So hypothetically, somebody can say if you made a, if you added a little script addition
[00:08:40] and you pushed it to GitHub from a jump box that the company owned, technically, legally,
[00:08:46] they own it.
[00:08:48] And there's a great Silicon Valley, I think it's episode, season two or three, but the
[00:08:53] talks about this, this is true.
[00:08:55] So I don't do that.
[00:08:56] What I do is I do a Git poll, I do a Git poll and I pull down the read only changes and
[00:09:03] if I need to make a change as in order to avoid merge conflicts and legal issues, it's
[00:09:09] an early one.
[00:09:10] Yeah.
[00:09:11] So in order to avoid legal issues, I, I, I pull it, I pull it down and then I make changes
[00:09:17] on my local system and then I get pulled the changes, okay.
[00:09:21] And the only trouble I can get in there is pulling in some script that I've written to
[00:09:26] use on, on a company system that hasn't been authorized.
[00:09:30] But that is a very solid, you know, area.
[00:09:36] Everybody does that.
[00:09:37] I, I, everybody on the planet who's in technology pulls in their dot files from some Git repo,
[00:09:44] where they're public.
[00:09:45] That is, it would be silly to try to litigate against a person for bringing their personalized
[00:09:49] dot files over from wherever.
[00:09:52] And you know, that's just, it's just silly.
[00:09:54] So as long as you can, you know, quantify what it is you're pulling down as, oh, this
[00:09:59] is how, this is how I work.
[00:10:00] I need to get these configurations on my system.
[00:10:02] Nobody's going to come after you for that.
[00:10:04] And they're especially not going to come after you as long as you don't push any changes
[00:10:07] to that configuration, which you don't want to do anyway, because of merge conflicts up
[00:10:10] to the system.
[00:10:11] So, so that is the approach.
[00:10:13] And based on that approach, I have been motivated to really, really clean up my dot files recently,
[00:10:21] because in the new year, a lot of the code that I'm going to be writing is going to be,
[00:10:25] it's going to need access, not only inside of the company, but it's going to need to
[00:10:29] be run.
[00:10:30] I'm going to be doing more interactive shell work from a remote jump box, as opposed to
[00:10:36] my laptop, you know, my work laptop.
[00:10:40] That is very important, because that means that, you know, my dot files need to be useful.
[00:10:46] They need to represent that.
[00:10:47] And they need to be pretty clean, because, I mean, truth be told, I read a warning today
[00:10:53] while I was reading about this at work, about use of shared storage.
[00:10:57] And it said, just a reminder, you can put personal movie files and song files in your
[00:11:04] shared store, Luster storage.
[00:11:06] And I just, I just had to laugh, because, you know, there's like some moron out there.
[00:11:13] You know, there's at least more than one of them.
[00:11:16] So I just think that was really funny that they had to say that it's like, people are
[00:11:20] downloading personal movie files on, on shared storage.
[00:11:26] And the machine learning models are like running out of space, because people are putting their
[00:11:29] movie files on company storage.
[00:11:31] I'm like, well, how dumb are you?
[00:11:34] Seriously, people don't do that.
[00:11:35] Anyway, here I am, you know, all like, do I really have enough space to pull down all
[00:11:40] 341 of my dot file scripts, you know, onto the system, even though some of them are related
[00:11:45] to Twitch and thing.
[00:11:47] And yeah, my, I do have a fear though, because my personal, the fact that I thought about
[00:11:51] making two different dot files, because dot files repos, because I still actually might
[00:11:58] do this, because there is some work specific stuff that is that I need to do.
[00:12:06] They took away our ability to store personal repos at work.
[00:12:10] This is one of the stupidest things is the least thought out decision I've ever heard
[00:12:14] at work so far.
[00:12:16] They migrated to what's called an inner source architecture, which means we use github.com.
[00:12:22] That's not a corporate secret, a lot of companies do this.
[00:12:25] But when they did that instead of doing get up enterprise server, which is on-prem and
[00:12:28] behind the VPN, they, they are now, you know, passing through the cloud and everything and
[00:12:33] using cloud authentication is our only security, which is already an issue and, and, and we
[00:12:39] use github.com.
[00:12:41] So the problem with that though, is that they, they, they destroyed our ability to create
[00:12:47] personal github repos, but we can't do it at all.
[00:12:51] So, you know, but we can pull down anything on github.
[00:12:58] The thing that sucks about that is that, you know, when I just figured it out, you know
[00:13:03] what I can do, anyway, it's, it's like, it's like, do you trust, do you trust the, do you
[00:13:11] trust the authentication systems enough to protect your private repos or not, right?
[00:13:18] I think I just answered my own question.
[00:13:21] Yeah.
[00:13:23] I generally don't trust private repos because, again, for a longest time there shared storage
[00:13:28] space with other accounts and stuff, it's super easy to eventually hack it.
[00:13:32] There was a hack at one point where private didn't mean private anymore.
[00:13:37] And you know, I don't, I don't know how I feel about that.
[00:13:40] If I were to store, if I were to store specific configuration files that apply to this job
[00:13:48] in a private repo someplace, like let's say I was a multi, a multi account contractor,
[00:13:53] that would probably be a thing that I would do, I, because they, normally I would put
[00:13:56] those kind of files on their internal github storage so that they belong to the company
[00:14:01] because they're related to company configuration stuff.
[00:14:03] That's, you know, proprietary applications configuration.
[00:14:07] And for me to put proprietary applications configuration on my personal private github
[00:14:12] repos seems kind of odd.
[00:14:14] I don't think that would probably be a good thing.
[00:14:16] It's not a violation, but at this point, that's the only thing I could do.
[00:14:21] And I'm specifically talking about proxies.
[00:14:23] So setting up your socks proxy, for example, that's a major thing.
[00:14:27] And that is very specific to the account and the company you work for.
[00:14:31] And that is something that I can never put into my dot files, my public dot files, because
[00:14:37] it would, it would give away where I work, it would, it would, it wouldn't work first
[00:14:41] of all.
[00:14:42] And, and, so it does, it does raise a question about, well, you know, and I have a, my, my,
[00:14:47] my bash mercy is set up to automatically source a, a bash mercy underscore work, if there
[00:14:52] is one.
[00:14:53] And right now that underscore work file is something I have to copy around by hand from
[00:15:00] my own laptop.
[00:15:01] It's not stored in git anywhere, which I hate.
[00:15:03] I really wish I could put that in GitHub somewhere, but there's no place to put it now.
[00:15:08] It's either I put it in an own personal private, does anybody have any ideas on this?
[00:15:11] Anyway, if you have an idea, put it in the comments, the, the point of it is the main
[00:15:14] point of this video, uh, is thou shalt trust in git because everybody has git now.
[00:15:24] Git is the way to do file distribution for this kind of stuff.
[00:15:28] Everybody has it, including the most conservative companies.
[00:15:31] Therefore, if you're worrying about keeping all of your configuration into one tiny little
[00:15:36] script, you know, don't, and, and let me, let me, let me build on that.
[00:15:42] So, you know, I have a big long, long bash mercy file because I wanted that one file to be
[00:15:48] able to copy over.
[00:15:49] Guess what?
[00:15:50] No more.
[00:15:51] I'm going to actually break it up.
[00:15:53] I'm going to break it up into multiple files, which it was four years ago, I had it that
[00:15:56] way.
[00:15:57] Um, but the problem is is, and that as each people will say bad things about z shell too,
[00:16:02] because yeah, all the functions have to be in separate files.
[00:16:04] And we're like, well, yeah, but now you're, you're, you're, you know, your bash mercy
[00:16:07] is not transported.
[00:16:08] We can't just SDP it over anymore.
[00:16:10] And the people that are operating on the assumption that they're going to be able to
[00:16:12] have all their individual ZCL function files as with it, that lazy load, which is really
[00:16:17] cool, by the way, and, you know, and all of this other stuff, they, I used to tell them
[00:16:22] they were crazy.
[00:16:23] How do you know you're going to be able to, you know, you have to SDP that bash mercy over
[00:16:26] and now you've got 50 and you've got 30 files, you got a copy over it.
[00:16:30] I was wrong.
[00:16:31] Well, I wasn't wrong.
[00:16:32] I was right, but for the time and the time today is get everybody has get.
[00:16:38] If you're on a jump host and you don't have get, if you're on a container and you don't
[00:16:42] have get and with GitOps being a thing, even the most conservative enterprises is, is making
[00:16:49] sure that all of their internal systems have access to get specifically get hub and not
[00:16:54] get lab and all those other things, which is another reason you should just get up swear
[00:16:57] to God.
[00:16:58] I swear to God, that's the reason you should just get up and other things.
[00:17:02] Um, I mean, you can use other things that's just harder to authenticate.
[00:17:05] You don't have the G H tool, blah, blah, blah, blah, blah, so, so this, this is the main
[00:17:09] takeaway of this.
[00:17:10] I'll make this the last thing I say in this video, the main takeaway is stop worrying
[00:17:15] about singular files and your doc files.
[00:17:18] Be okay with things being in separate files and trust and get, trust and get and being
[00:17:23] able to pull it down.
[00:17:25] So that's, that's the takeaway end of the video.
