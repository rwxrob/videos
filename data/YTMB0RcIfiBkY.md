# 😎 Rename main and Start New Branch

Walks through archiving an existing Git repository's history by renaming the current branch to archive, pushing it, and then creating a new orphan main branch with no commit history. Covers the git branch -m, git push -u, and git switch --orphan commands, including a mistake along the way, and ends with a fresh initial commit.

The best way to start a new archive branch and start a new main with no commit history to slog through.

Chapters:
0:00 Why start a fresh main branch
1:24 Rename current branch to archive
2:28 Push the archive branch
2:52 Create an orphan main branch
3:58 Verify empty history and wrap up

`#git #github #terminal #linux #versioncontrol #beginners #devtips #tips #coding`

## Category

Education

## Transcription

[00:00:00] Um, I got a great tip here from Chris, uh, in our community, I was about, I actually
[00:00:08] forgot that I had a home lab repo from back in the day when I made this, which I think
[00:00:15] I showed in Excalidara.
[00:00:17] I'm super proud of it because I spent so much time on it.
[00:00:20] But to be completely honest, I totally forgot everything.
[00:00:24] And I don't have any of this hardware.
[00:00:25] I'm all donated.
[00:00:26] But I want, you know, I was in quite an accomplishment to make that home lab.
[00:00:31] And, uh, you know, I forgot I even had a home lab thing.
[00:00:34] I was like, where do I put my answerable to make my new slurm things using Ansible, right?
[00:00:38] And I'm like, oh, I should probably have a home lab repo.
[00:00:40] And I'm like, wait, let me see if I have a home lab repo.
[00:00:41] And then I'm like, wait, I have a home lab repo.
[00:00:43] And then I was like, looking at my home lab repo, I'm like, this is insane.
[00:00:46] There's how much detail I put in my Linux home lab repo, like here it is, right?
[00:00:51] This is, by the way, you know, art of picture hub slash home lab, there's a thing there.
[00:00:56] And I went to exceedingly great detail as private, I had to make a public again to, you know,
[00:01:01] put the infrastructure stack on here and decide what I installed on it and everything.
[00:01:04] This was a huge project over a year, I remember doing, and I didn't remember any of it.
[00:01:12] So here's, here's the tip.
[00:01:14] The tip was, I don't want to throw that away.
[00:01:16] So, so Chris was like, no, no, no, no, stop because I was about to like make a branch for
[00:01:21] the new stuff.
[00:01:22] And I was like, no, I want to use the main stuff.
[00:01:24] So then I was going to make a branch, and then I was just going to continue to work
[00:01:27] on me.
[00:01:28] And then Chris goes, no, what you need to do is rename it and then create a new branch.
[00:01:33] And that will create an orphan main, which won't have any of the old commit history.
[00:01:36] And I'm like, that is brilliant.
[00:01:39] Why didn't I think of that?
[00:01:40] Because I don't live and get as much as others.
[00:01:42] So, so here's, we're going to do it right now together.
[00:01:45] So the first thing is get -m to rename the current branch I'm on, and we're going to
[00:01:51] name it archive, you know, and I don't, we could probably put some more information on
[00:01:56] that.
[00:01:57] On the day of the truth, I'm just going to call it archive.
[00:02:01] And yeah, and then we're going to go, so then we're going to, whoops, what did I do?
[00:02:09] What did I do wrong, friends?
[00:02:10] I'm going to go check my AI and see what she says.
[00:02:13] Get branch, oh, it's branch derp.
[00:02:16] Derp, uh, branch, I should not type that.
[00:02:22] Get branch archive.
[00:02:23] Okay.
[00:02:24] So now I'm on archive, get branch.
[00:02:28] There's no thing about that.
[00:02:28] So now we have to push it though, right?
[00:02:33] Get push -u origin archive.
[00:02:38] And that will push up the, uh, branch and it's going to make a pull request where I
[00:02:43] don't want to pull request because I'm not going to merge it or anything.
[00:02:47] So I'm going to ignore that and then I'm going to make a new main branch.
[00:02:52] And I suspect I could just do a switch -m -c for main.
[00:03:00] Let's see if that will work.
[00:03:02] Let's try it.
[00:03:03] All right.
[00:03:04] So get switch is my preferred thing.
[00:03:05] I don't do check out people like that.
[00:03:06] I don't care.
[00:03:07] Get switch -c main.
[00:03:08] Let's see what happens.
[00:03:10] Wait, get switch orphan.
[00:03:14] Does it have to have dash dash orphan - Oh, do you want to do?
[00:03:26] Okay.
[00:03:27] I don't know about that.
[00:03:29] I don't know.
[00:03:30] I'm doing.
[00:03:31] Have you ever done this?
[00:03:32] Current command branches from the archive.
[00:03:35] Okay.
[00:03:36] Oh, I see.
[00:03:41] Get branch orphan main.
[00:03:47] Branch switching.
[00:03:48] Yes.
[00:03:49] Get switch orphan main.
[00:03:51] Switch to new branch main.
[00:03:53] Get log.
[00:03:54] Woo hoo.
[00:03:55] Your current branch has no commits.
[00:03:57] What?
[00:03:58] That is so cool.
[00:04:00] Check out as old people use.
[00:04:02] Boom.
[00:04:04] We got it.
[00:04:05] Chris, thank you so much for that.
[00:04:06] I will make my initial commit.
[00:04:08] Hey, look at that.
[00:04:09] All my files are gone, which is great because I was just about to like do me do all the
[00:04:13] files from the branch and everything.
[00:04:15] So much better.
[00:04:16] I love it.
[00:04:17] I totally love this.
[00:04:19] Yeah.
[00:04:20] Chai just learned something.
[00:04:21] The great Chai just learned something too.
[00:04:23] This is why we collaborate on live streams, even at work.
[00:04:27] Hopefully that helps.
