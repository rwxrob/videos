# 🎉 bitnami/harbor has a pg_dumpall backup k8s cronjob INCLUDED!

Shows how enabling backup in the bitnami/harbor Helm chart's values file adds a configurable Kubernetes CronJob that runs pg_dumpall to a persistent volume. Also explains how Chart.lock pins subchart versions, how subchart default values are included and overridden from the parent values.yaml, and why helm show values makes flattening and tracking those defaults difficult.

Chapters:
0:00 Enabling the built-in Harbor Postgres backup
1:00 Inspecting the generated pg_dumpall CronJob manifest
2:39 Why staying close to upstream matters
3:57 Chart.lock and the actual Postgres version
5:06 Values file changes and enabling backup
6:31 How Helm includes and overrides subchart values
9:46 Flattening charts without subchart values files
12:17 Open question on values file precedence

`#kubernetes #helm #harbor #postgresql #bitnami #pgdump #cronjob #devops`

## Category

Science & Technology

## Transcription

[00:00:00] Hallelujah, hallelujah, I'm gonna do
[00:00:06] He's just really love this setup. Okay. Thank you. Yeah, I'm gonna do all of the things
[00:00:11] I mean, I cannot believe how cool this is so
[00:00:16] Hold on to your Kubernetes hats because
[00:00:21] all I had to do was add back up enable to the harbor values.yaml file and
[00:00:30] I get a Kubernetes a beautiful Kubernetes cron job better than anything that we had written
[00:00:37] better than anything that I would have written
[00:00:40] That already does a full Postgres dump all back up with a configurable cron job
[00:00:50] Pause the video pause for effect if you don't know how cool that is then you need to like play with our person more
[00:00:57] Right because you would have had to written right and written all this stuff
[00:01:00] So what you're looking at right now this this is a dip of
[00:01:04] the
[00:01:05] resulting
[00:01:07] Manifest file in our case manifest slash
[00:01:10] base slash app dot yaml because we use customization
[00:01:15] And here you can see a couple of really interesting things so right away you see harbor Postgres
[00:01:19] Whoops, you see however Postgres QLPG dump all right you also see this new label
[00:01:25] That's on everything all the metadata is there actually by the way
[00:01:28] I confirmed that this is actually true because those are those come from the charts dot lock file in
[00:01:35] The harbor chart that locks the specific dependency on this chart
[00:01:40] Which means that when you do helm template it actually grabs that version of the chart
[00:01:45] Even though it's not it's not represented in the yaml and the and the values file and I'll talk about that later
[00:01:50] That means that that actually is the version that's being used in the official harbor project despite how fucked up
[00:01:57] Sorry, I swore there. I was not supposed to swear the values file is right. It's really messed up
[00:02:03] Okay, and so let's keep going so I mean you can go you can go through this you on your own
[00:02:08] But this you can see this is like everything you would expect. There's all the Postgres stuff there
[00:02:12] Here is the very very good right here is this like really amazing PG dump all if exists stuff going on
[00:02:20] It has the password there actually has the volume mounts it creates PVC
[00:02:24] Separately and slash backup, which is by the way the same thing we were naming our mount points
[00:02:28] So it's all the stuff that you would ever care to have for a PG dump all and it is built in the
[00:02:36] official bit Nami harbor chart
[00:02:39] So the reason it's important to say that is because this is one less way
[00:02:46] That we are going to divert from upstream and if you know what it means
[00:02:53] To divert from upstream if you don't know what that means
[00:02:56] Let me just tell you it means work it means work and stress and risk any time that you can use a
[00:03:03] deployed upstream supported by the community thing in your enterprise
[00:03:08] You should do it because almost always you're gonna be better now. Sometimes you get massive failures like helm itself
[00:03:15] It's a massive failure. I've been complaining and screaming and yelling and swearing the whole time about how screwed up the architecture is for
[00:03:21] Helm doesn't matter. That's what people use
[00:03:25] Is also proposed us we're not using the operator for lots of reasons including all the CRD's that are created
[00:03:30] If you don't know why we can we can have a debate about that, but thank you for the comment
[00:03:34] So every time I talk about postgres I get somebody who suggests that we use the operator and that's a short-sighted recommendation
[00:03:41] That's just it's fine. It's just they just not taking into account our sister our situation
[00:03:46] This is by the way, this is harbor not postgres. So it's postgres inside our okay
[00:03:51] So but when I'm so the takeaway from this very short video is hey look here and look at all I had to do to get that
[00:03:57] Let me let me show you the other thing. So by the way, here's the chart lock while we're there
[00:04:01] Here's the chart lock that says
[00:04:03] You are getting postgres versus a 15.9 of the chart which is
[00:04:08] 16.4 version of postgres that is hard-coded and is
[00:04:13] The gospel it doesn't matter what's it doesn't matter the devalues files totally screwed up and says and tagged a version 13 of postgres
[00:04:19] That is the gospel therefore you can go forth and conquer knowing that that is the way it's supposed to be so if you go back though
[00:04:27] you can you can look here now at the the resource file for the values and and
[00:04:34] Using Mac OS hell yeah, I'm using Mac OS. Why would I not?
[00:04:44] You couldn't hear you couldn't hear I
[00:04:48] Feel so bad. Let me do that again for you
[00:04:56] Mac is a unique system it qualifies
[00:04:59] Unix is way cooler than Linux
[00:05:02] So anyway, here we go
[00:05:05] X resource values file. So here's the value spell there it is okay
[00:05:10] So right away, let me show you how this differentiated from the the actual original harbor one, right?
[00:05:18] So and I think I actually have that
[00:05:23] Yes, I do so let's let's dip
[00:05:27] resources a
[00:05:29] values
[00:05:31] - Harbor and
[00:05:33] Resources values channel. They're the same essentially. So these are the this is the only thing that changed between the two
[00:05:42] So
[00:05:43] Here we have a tag that's 13.6
[00:05:46] Okay, and that's the broken tag. We've already talked about that in a separate video
[00:05:51] So we updated it to 16.4, which by the way is consistent with its dependency. I just showed you in the charts dot log file
[00:05:58] Right
[00:06:00] So I'm not gonna rant anymore about that. I want to
[00:06:05] Here we have backup
[00:06:07] Enable true, where did I find that I?
[00:06:09] Found that because I went to the postcard told you in a previous video
[00:06:13] I went into the Postgres bit not me chart and I saw this thing called backup in there
[00:06:18] I saw this PG dump stuff and I was like what's that about because I'm about to write all that was already there the whole time
[00:06:23] So I just had to turn that to true the reason that's not there is because it's not in the harbor yaml spot that harbor
[00:06:29] dot yaml file why because
[00:06:31] helm does something very strange with
[00:06:35] Dependent subcharts and I'm gonna end with this but it's super important that you understand this if you don't understand anything else
[00:06:41] About helm in this video just know this when you do helm the show values in order to generate the values file
[00:06:49] That you're gonna go in and then update right and you have some chart dependencies
[00:06:53] And you can look for those in charts dot lock or you can look at them at the top of the chart file with the dependency
[00:06:59] I don't know why they're both there with authoritative place to look for them honest to God
[00:07:03] It's here because it actually has the version locked down
[00:07:05] So go look in chart dot lock versus chart dot yaml
[00:07:08] So this is more than everyone I know about home, but maybe this will save somebody else pain and suffering
[00:07:13] So all of these images and infrastructures and annotations these are wrong
[00:07:16] This is completely wrong and this here this list of dependencies is all nice and everything
[00:07:20] But it doesn't lock down the version it's like oh you can lock that that version someplace
[00:07:24] I don't know this must be because it's metadata or because it's documentation data
[00:07:27] I don't know I don't care because the actual version is in chart dot lock
[00:07:32] So just know that the actual version for this chart is in chart dot lock
[00:07:36] This means that effectively
[00:07:39] Effectively when you run if you helm
[00:07:42] Template or you run helm install either way what helm is doing and and this could be this
[00:07:48] We just confirmed this by looking at the resulting manifest the yaml files that come out of those commands, right?
[00:07:53] So what helm does whether it's documented this way or not is it it grabs these
[00:07:59] Starts with its own yaml dot
[00:08:01] You know values that yaml file and it starts with its own stuff
[00:08:04] And it runs its chart file and it uses those values to generate all this stuff and then it grabs the entire
[00:08:12] Value default values dot yaml and the entire chart for every one of its dependencies right as Postgres and in this case common
[00:08:19] Right and those things become
[00:08:24] Logical that logically included into the chart. So that means all of the the values that this is very important
[00:08:32] Okay, I'm gonna pause there for a fact all of the values dot yaml from the Postgres pitami chart the penancey
[00:08:39] All of the values dot yaml from the reddest chart dependency are
[00:08:44] Effectively and logically included when you run the template command even though when you do the show show values
[00:08:53] You know to helm show values command to get the harbor values dot yaml file
[00:08:57] You are not getting the value files for Redis or Postgres
[00:09:03] But they are still valid and then to top it all off
[00:09:08] In order to make it easier for us
[00:09:11] They have allowed us to put all of that into the values file
[00:09:15] Which is why you get crap like this you get this thing, right?
[00:09:19] So this is how helm works helm says if there is a you know farthest to the left
[00:09:27] Postgres dot SQL in this case that matches one of our helm dependency names
[00:09:33] Everything in here is
[00:09:35] authoritative everything in here wins over the other
[00:09:40] Upstreamed chart values yaml file. That's kind of implicitly loaded but not printed anywhere
[00:09:46] Now the thing that bothers the crap out of me is that when you do show values here, there is no option
[00:09:52] Let me get this is very important. I looked for it forever and if you know where it is, please put it in the comments
[00:09:57] I'll come kiss you on the mouth
[00:09:58] There is no option to do helm show values that will get that will pull down
[00:10:05] The values dot yaml files for each of these sub-chart dependencies in an organized way
[00:10:12] So that you have them all along with your values that yaml file from the the core repo that you're copying
[00:10:18] This means that if you want to follow the flatten and then apply kind of idea that most of us do
[00:10:25] That's the idea behind my Kate's app and our specification for Kate's apps
[00:10:28] If you want to do this properly
[00:10:30] Then the only way to do it is to do show values and save up resources
[00:10:36] Values dot yaml but in addition to that you have to call that same exact command for every of this one of the subcharts
[00:10:45] And then and then this is where they comes. This is where the kicker comes in in order to include those all
[00:10:52] Right, so you have them all for reference in order to include those all and to get them all into the final template
[00:10:58] You have to modify your build command, which I have not yet done
[00:11:03] But you have to modify your build command to include all of those resources
[00:11:09] so values - heart values - Postgres
[00:11:14] Redis, etc
[00:11:15] You can either do that or you can just look at those charts and do what I did with the backup and then go into the
[00:11:24] Master values dot yaml file and override them at that location so that you don't have to keep that
[00:11:30] But most people most people who are gonna want to flatten
[00:11:34] They're gonna want to keep ahold of those charts because they're gonna want to know
[00:11:38] What changed between versions and there's no way to know that if you have a dependency like let's say let's say the subchart dependency
[00:11:45] We're to change right and you would have no way to know how the values file changed from what you just built to the new one
[00:11:52] You have no way of knowing that because you can't dip the previous values and the final not to mention the fact that all the comments
[00:11:58] That come in the values file that we've gotten used to reading and knowing oh, I'm gonna go change this thing here
[00:12:03] Don't exist they don't exist
[00:12:05] Because they are not in the subchart. They're not they're they're not stored anywhere
[00:12:10] So you have to go get them by yourself. That's the only way to do it now. There is one
[00:12:17] remaining mystery and that is what wins
[00:12:21] right I have a feeling that the the the main values file for the main project in this case harbor wins out over everything else
[00:12:31] But I'm going to further do some research here to find out if the order of the file inclusions
[00:12:38] Which I which was a totally it said multiple files allowed and I was like, oh, okay, so I didn't know that before and
[00:12:45] So what this means is that it's very possible that the last file wins
[00:12:51] Right, so any place that you have global values that that conflicts with one another and and I'm pretty positive
[00:12:58] There's going to be some pretty radical helm scope naming collisions that are going to happen
[00:13:03] And so I'm going to proceed to test
[00:13:07] what happens when you
[00:13:09] Download the entire postgres values file and combine it in this way rather than just overriding it as a tiny little section within the
[00:13:17] supported, you know and included postgres
[00:13:21] Part of the harbor yaml file
[00:13:24] Personally, I don't I would rather not do that right? I would rather have the entire values files or each of the subchart dependencies
[00:13:33] available so I know what I'm dealing with and
[00:13:35] Hopefully this is helped you understand home a little bit more
[00:13:38] I had to make this video because it's driving me absolutely crazy and it's the weekend and I want to get out of here
[00:13:42] I hope you had fun
[00:13:44] Figuring this out as well as I did. Bye
