# 🤷🏻‍♂️ How do I helm show values for sub-chart deps?

Shows how to save sub-chart values files alongside a Helm chart's main values.yaml, using yq in a build script to nest each one under its sub-chart key and strip comments without editing the originals. Uses the Harbor chart with its PostgreSQL and Redis dependencies to cover finding versions in Chart.lock and how values are merged. Also fixes an outdated Harbor override that sets the wrong PostgreSQL image tag.

You can't with helm show values, but you can save them once you get them using this amazing yq trick. 

Chapters:
0:00 Why Keep Sub-Chart Values Files Together
1:02 The yq Trick for Nesting Values
2:28 Finding Sub-Chart Versions in Chart.lock
4:19 Saved Values Files and Postgres Backups
5:34 How Layered Values Files Are Merged
7:48 Tracking Down the Wrong Postgres Image Tag
10:53 Removing the Override and Verifying the Fix

`#helm #kubernetes #yq #harbor #postgresql #devops #yaml #protips`

## Category

Science & Technology

## Transcription

[00:00:00] Let me share with you a trick that will allow you to keep sub chart values files with your
[00:00:12] main chart values.yaml file and you're like, "Well, why would I do this?"
[00:00:17] As you can see here, Helm, Helm template, Harmer, so Harmer has, at least a bit not only chart
[00:00:24] has three different charts involved and the only place to look for these, I've talked about
[00:00:30] some other videos, is in charts.lock. You can't look it up with Helm's show chart and you can't
[00:00:36] look it up with, you know, get values or any of those things after you've even put it in a mini
[00:00:41] cube, we tried all that. So why would you do this? The main reason to do this is it's very simple.
[00:00:49] You want all of your values.yaml files together because you've made customizations to them. You've
[00:00:57] done whatever you want to do to them and you want to store that at that level. So you can go back
[00:01:02] and do change management and, you know, all of the good things that you do. So here is the secret.
[00:01:08] And I'm going to give Chad GPT a little bit of credit here. I asked Chad GPT how to do it and
[00:01:14] initially had told me how to do it with Python and then I said, "What about the Go version?"
[00:01:18] And it kind of turned me on to this idea. And then I added about comments. So what this magic
[00:01:23] right here is this is, this is really, if you don't see anything else in the video, this is what
[00:01:26] this magic of YQ is. I love YQ. If you haven't learned YQ, the Go-Lang version of YQ, you need
[00:01:32] to learn it. You need to put that tool in your shed. And what this does is it takes all of the
[00:01:39] values inside of this YAML file, which I'll show you in a second. And it puts them under this new
[00:01:50] root node, key. So they're all under Postgres. And then it removes all the comments. And that's
[00:01:59] just to make it easier to see. Okay. And the same thing here. So why am I doing this in this build
[00:02:08] script? I'm doing this in the build script because, you know, I could have done that, right? I
[00:02:15] could have altered the values dash Postgres file to be all indented. But then I would have been
[00:02:21] messing with the original file. And how did I get those files? Well, as is updated, is documented
[00:02:29] in my updating section, I've actually went into the night trying to make a helm update. I want to
[00:02:34] do helm show chart or helm show lock so you can get the actual versions, which you can't do with
[00:02:39] show chart. I also wanted to actually dash dash, you know, helm show values dash dash include some
[00:02:44] values, but then it would have to coalesce the values. It was really complicated. And the takeaway
[00:02:48] is as I screw it, I'm not messing with helm. I'm just going to make my build script do the right
[00:02:54] thing. And I'm going to document in my case app, read me how I got those values. So the by hand
[00:03:02] process to get those values is to do a show values on each of these specific charts at a
[00:03:10] specific version. And you're probably asking, how do I get that information? The only way to get
[00:03:16] that information is to open the charts dot lock file in the chart that you have. That means you
[00:03:23] have to download the source or get to open the tarball or whatever or go look at the charts
[00:03:27] lock file. That's the only place it's saved. Unfortunately, the helm command does not have show lock or
[00:03:33] whatever. And I was considering adding a PR for that. If somebody wants to help me convince me to do
[00:03:37] that fine, I didn't care enough because I got past what I needed. And so by doing this, you can see
[00:03:44] this is actually really simplified the creation of these values files. So I've kept the name and
[00:03:50] convention of values.yaml for the main one, right? That is a pretty common convention. And that's a
[00:03:57] pre existing convention from our Kate's app standard that we kind of follow. And then in order to
[00:04:04] avoid, you know, omitting or missing data that is in the other values stuff that was implied but
[00:04:09] never seen, including the Postgres backup, which is in there just has to be enabled, which we
[00:04:14] recoded because we didn't know it was there. These values files are now being saved. So let's look at
[00:04:19] those briefly. So in the resources file, you see values Postgres. And this is the reason that I put
[00:04:29] that fancy YQ command in there, right? Because this is exactly the same values.yaml file, you would
[00:04:37] expect to find if you were Kate's appifying Postgres, right? Because it's not Postgres because it's a
[00:04:44] sub chart, it is Postgres, but it's, you know, it's part of the harbor project in this case. Then I'm
[00:04:50] bringing it in, I'm bringing the exact one in that the same exact one, and I validated this by doing
[00:04:55] get keys after installing the whole thing. So I know it works. But here you got all these beautiful
[00:05:00] comments, right? And this is where you would find in this case, you would find the PG dump. This is
[00:05:05] where we I found the PG dump command existed already. There's already a full blown backup in here,
[00:05:10] but you just had to enable it. In fact, if you go to backup, let me go find it. So here's the backup.
[00:05:17] And you can actually enable a set enable to true. It's false by default, right? So now I just go in
[00:05:22] here and I change this. And next time that I wanted to update the version, I can just get this value
[00:05:28] file against the upstream version without any modification to the values file itself.
[00:05:34] The modification that happens to it happens dynamically when we run build. And that's when
[00:05:39] it drops the comments and kind of tucks all of that file under the Postgres and Redis does the same
[00:05:48] thing so that when it's combined, and this, by the way, the order matters of the values. You can use
[00:05:53] dash F here if you want instead. So when this order comes in, these things are kind of layered
[00:05:59] over the top of each other. And and this this value is filed at the end, which also includes Postgres
[00:06:06] stuff is is still kept. It's still kept, right? We tested this by activating the backup in this
[00:06:15] one, and then disabling it again in the overriding values of YAML file and the disabling one, which
[00:06:21] means to use a big fancy word that the values data from all three of these is coalesced so
[00:06:30] that ultimately you get what you would see when you do get values after the whole thing has been
[00:06:34] applied. And if you want to do that, you can actually build this out and do kubectl apply or
[00:06:39] whatever install. And you will see the exact same result. You'll see the there will be a Postgres
[00:06:48] top level node and a Redis Post the top level node and it'll have all the data from the original
[00:06:53] Postgres values file and the Redis values file. And they will all have been combined coalesced,
[00:06:58] if you will, together. And I've considered, you know, running a little bit of mini cube and doing
[00:07:02] it all and then grabbing that combined data and putting it in. But then if you did that,
[00:07:06] you would lose all of that really useful build information that, you know, goes into that.
[00:07:15] I mean, the point of pulling the values file out, and this has become a very solid convention
[00:07:20] in this world, is, is that all of the documentation about how you would configure your Kuberty's
[00:07:26] application is in the values file. This is, in fact, so much so that they've got parameters and
[00:07:30] they've got, you know, ways to document, you know, the JSON schema and everything in here. So,
[00:07:36] you really don't want to mess with this. And, and being able to inspect this file
[00:07:41] at any moment, if you're coming to the project new or something, and you want to know what's
[00:07:45] going on, you want to read, what do I change the thing, what do I, what do I do to change the
[00:07:48] image tag or whatever. This is where you would come to do it, right? Speaking of image tags,
[00:07:54] the image, here's an interesting case. So, the actual image tag here, for Bitnami Postgres,
[00:08:01] is 16.4. Now, something that's very interesting that I want to show you, is even though the image
[00:08:07] tag in the, you know, this chart, I want to show you how that the last one wins, because this is,
[00:08:13] this is correct, right? And this is why this harbor chart is so messed up, because this harbor
[00:08:19] chart has a dependency on this specific chart, that is pointed to for the image tag, 16.4.
[00:08:24] And then, the bug is, and this is very much a bug, the, the bug is, is it the values.yaml file
[00:08:33] that is in harbor here. Oopsie, where am I, am I, am I in the image file? What am I doing?
[00:08:39] Resources. All right, so, and here you'll see that the bit, this is, this is, I've already talked
[00:08:48] about this bug in another chart. So, there's this, like, really outdated comment here that has no
[00:08:53] relevance. We're on 2.11, I'm almost done, I'm going to make it a bit. And then, and then we've
[00:09:00] got, right here, we've got image, Docker.io, Bitnami Postgres, 13.6, right? So, so this image tag
[00:09:06] overrides the one in the actual chart, which is listed as a dependency in charts.log,
[00:09:12] which is totally asked backwards and broken. And you, you need to fix it yourself if you're
[00:09:17] going to do that. That's why I found it here. But let me just prove to you that, that the last one
[00:09:23] wins. And then we will do that is just with a simple, like, you command against, uh, the, the
[00:09:28] Postgres, um, we'll do Postgres Postgres SQL dot image dot tag in the, uh, resources, um,
[00:09:39] I'm sorry, the manifest, which is the one that was generated with the build command.
[00:09:43] Uh, man, where am I? Why are you not? Why you know work?
[00:09:48] manifest slash base slash app.io. And I, oops, that's why I'm using practice. Rob. Oh my God.
[00:10:01] What? Oh, right. Right. Um, that's all right. Um, all right. I, I, I, I, I, I did the same thing
[00:10:09] I did before. Um, we actually need to see if the crown job got added. Okay. So, because this is
[00:10:15] much more verbose, right? So, so there it is. There's the PG dump thing. And, and the way you
[00:10:19] know that this was installed is because, because it's got PG dump ball here, right? Then that,
[00:10:24] I've already established it. That's the way to know that that, that, that, uh, that that got,
[00:10:28] but, but that's not what we were looking at. We were looking for the image. So let's go, uh,
[00:10:32] let's go look for what images, uh, let's actually just grep images out of there. I'm mixing my
[00:10:37] things up, uh, grep image, um, out of here, actually image grep, uh, postgres. And you'll see
[00:10:46] that this is at postgres image 13, even though, as you saw, and the other chart, it was right.
[00:10:53] So that there are a number, there's, there's two fixes for this. Um, and one of them would be
[00:11:00] to remove, to alter the, the values file, the incorrect values file and to fix it. And that would
[00:11:08] mean taking this, just getting rid of it. So if I get rid of this section now, it should resolve
[00:11:14] correctly because the upstream chart is correct, right? Now there's a bunch of other stuff here
[00:11:19] that you can't mess with. So you don't, don't take it rid of that, but I'm going to go ahead
[00:11:22] and remove this because it's absolute bull crap. All right. So we're going to, we're going to take
[00:11:28] this or out. Um, and that one, I guess we could leave postgres image registry. Uh, I don't know if
[00:11:36] even want to keep these postgres image shagging will tell us the recommended, um, please postgres.
[00:11:42] I just think, Hey, I think all of this stuff could, could get taken out. So we're going to take this
[00:11:47] out. Um, and just leave that there. This is stuff that was that I think is still needed. We haven't
[00:11:55] tested that yet. But so now when we run, uh, when we run our build, uh, it should actually put the
[00:12:01] right version in and I don't know, we're going to, we're going to say, oh, by the way, I am still
[00:12:07] dumping the temp file. This is, this is what the data looks like that is getting, uh, you see,
[00:12:14] with that, that fancy YQ magic, you see what it does. It got rid of the comments. And this is the
[00:12:20] same YAML file. This is the same postgres YAML file. It just put everything under postgres SQL so
[00:12:24] that it could be combined, uh, and, and override the, the, you know, the stuff in the other one
[00:12:29] at the right place. So, so now we're going to grab for the image tag and hopefully we'll have the
[00:12:33] right one. Now we do. Now we have the 16.4 image tag, which is authoritative because according to
[00:12:39] charts dot lock, that is the, the charts on which the harbor chart depends. And that is the, the,
[00:12:48] the, the version and the, the ancient bug, you know, inclusion and the, the, you know, the postgres
[00:12:54] override that was there and now it needs to be removed. That bug needs to be submitted to the
[00:12:58] harbor chart. I might end up doing it myself. Um, because 16.4 is totally valid and it will
[00:13:04] totally work. Even since some of the documentation postgres 12 and up, uh, is required actually for
[00:13:09] the latest version of harbor, the harbor, uh, version 2.11. And there you go. So that, that's a summary
[00:13:16] of how to, how to make those changes. I actually think that that is the most elegant way to fix this
[00:13:21] problem. Uh, before I did this, before I included these other charts into the resources file, uh,
[00:13:28] my fix was to, uh, override that and to change that line from the other one. But now if somebody
[00:13:35] would do a get dip against the upstream chart value file, they would see that that entire section
[00:13:41] has been taken out and then they could look at the build file and go, well, what are we actually
[00:13:45] using for that? And then the answer now is we're using the postgres upstream chart officially.
[00:13:52] We're not screwing with it and we fix things the way, you know, the home gods intended.
[00:13:59] I don't know what to say there. It's probably time for me to stop talking. Bye.
