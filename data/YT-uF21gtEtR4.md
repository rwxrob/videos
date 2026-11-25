# 🤯 WARNING: Kubernetes default storage is like /tmp

Explains why dynamically provisioned storage in many Kubernetes clusters uses a delete reclaim policy, so removing a PVC or its namespace also destroys the data. Demonstrates losing Harbor database backups this way, then keeps them using a storage class with a retain policy. Covers the tradeoffs of retained volumes, including cleanup, access control, tracking and rebinding them, and copying backups outside the cluster.

Chapters:
0:00 Default reclaim policy and dynamic volumes
1:45 Why Kubernetes storage is ephemeral by default
2:55 Harbor setup, database backups, and PVCs
6:47 Undeploying the namespace deletes the backups
9:51 Namespaced PVCs versus cluster-level PVs
10:38 Redeploying with backups on retained storage
16:38 Testing the retain policy on undeploy
18:56 Tracking and managing retained volumes
22:50 Protecting backups and large registry storage

`#kubernetes #devops #storage #harbor #k8s #persistentvolumes #nfs #backups #persistentvolumeclaim #linux #protips #education`

## Category

Science & Technology

## Transcription

[00:00:00] By default, almost every storage class provisioner,
[00:00:06] trying to get my words right,
[00:00:08] defaults to delete reclaim policy.
[00:00:13] And what that means is that every one of these,
[00:00:17] this is very confusing 'cause this is PVC, it's not.
[00:00:20] This is a PV, this is a persistent volume
[00:00:23] that has been dynamically allocated
[00:00:26] for this specific PVC and this specific PVC only.
[00:00:31] The most important difference
[00:00:33] between a physical persistent volume
[00:00:35] and a persistent volume claim is where they live
[00:00:39] and where they're managed.
[00:00:40] The persistent volume is a cluster level resource.
[00:00:47] And therefore, you have to be able to do cluster things.
[00:00:50] You have to have admin rights and all that kind of thing.
[00:00:52] Which is why most of the storage class providers
[00:00:55] dynamically create them.
[00:00:57] Because otherwise, the person creating the PVC,
[00:01:00] which lives in the namespace,
[00:01:03] it's in the user namespace area.
[00:01:05] So this is where you're always seeing PVCs get created
[00:01:08] by people that are making applications
[00:01:10] and deploying them and things.
[00:01:11] It's a totally different permission scope, right?
[00:01:14] So the reason these storage classes are set up
[00:01:16] to automatically create a persistent volume
[00:01:19] is because if not, they'd have to trouble the admins
[00:01:22] or whoever and have them go create a persistent volume
[00:01:24] for everyone.
[00:01:25] Therefore, what you end up getting is you're getting,
[00:01:28] you end up in most clusters on-prem
[00:01:30] and elsewhere in the cloud or stuff,
[00:01:32] you end up getting a storage class default,
[00:01:37] which is very, you know, painless.
[00:01:41] And what that says is, okay,
[00:01:43] your storage is not gonna survive
[00:01:46] undeplying your namespace or taking it down,
[00:01:48] deleting your namespace.
[00:01:50] And that means that your storage is a femoral,
[00:01:52] just like your containers.
[00:01:54] I really, really, really want to hit on this point.
[00:01:57] This is probably the most important thing
[00:01:59] an old guy like me had to really bang
[00:02:01] into his head to understand.
[00:02:04] Storage is a femoral in Kubernetes by default.
[00:02:09] That means it doesn't hang around.
[00:02:11] Your store most Kubernetes systems are set up
[00:02:15] so that everything is slash temp
[00:02:20] to use a reference from the old days.
[00:02:23] I know somebody's gonna yell at me
[00:02:25] 'cause they're gonna be pedantic about it.
[00:02:27] Because why?
[00:02:28] Because it's just easy.
[00:02:29] Because if they didn't do that,
[00:02:31] you'd have to go through all the management
[00:02:33] of creating a persistent volume
[00:02:37] for everybody who ever wanted to use a disk
[00:02:40] in a Kubernetes cluster.
[00:02:42] And then the whole point of it
[00:02:43] being able to be used would be hard.
[00:02:44] Why does this matter?
[00:02:45] Because watch what happens when I undeply the PVC.
[00:02:49] And let me give you a very specific,
[00:02:51] very, very specific case here.
[00:02:54] So I found this because I was testing
[00:02:57] backing up the database.
[00:03:00] So here you see this physical volume
[00:03:02] has got PG dumps, all these PG dumps.
[00:03:04] It turned it up to one minute
[00:03:05] so I could see them all happening.
[00:03:07] And so these are my database backups.
[00:03:09] This is rather important
[00:03:11] that I have database backups around.
[00:03:12] And what I'm about to show you
[00:03:14] is that all these backups are gonna be deleted automatically.
[00:03:18] And this is very scary.
[00:03:20] (upbeat music)
[00:03:21] So this is very, very scary
[00:03:24] because the whole point of the backup
[00:03:27] is to be able to come back and get it again, right?
[00:03:30] Well, here is, right now I'm on another,
[00:03:34] so this is the harbor.
[00:03:36] This is, I told you I have two storage classes, right?
[00:03:39] So I just switch storage classes.
[00:03:42] I switched to use the new one.
[00:03:43] I explicitly am using the new one
[00:03:45] which has a policy of retain
[00:03:47] because I'm testing what happens
[00:03:49] when you delete a physical volume
[00:03:52] and when you delete a PVC or you, you know,
[00:03:54] indirectly by, you know,
[00:03:56] undiplying your entire namespace in this case, harbor.
[00:03:59] So, so let's go.
[00:04:01] You might have to pause this video
[00:04:02] and watch it several times
[00:04:03] because it's very complicated.
[00:04:05] So there, here's all my,
[00:04:06] this is a working harbor instance.
[00:04:09] It's absolutely beautiful.
[00:04:11] It totally works.
[00:04:12] It's running its backups.
[00:04:14] The zero doesn't mean not ready, by the way.
[00:04:15] That means it's a job or a crown job.
[00:04:17] This is actually a big annoyance of mine.
[00:04:19] That this is running,
[00:04:20] but it doesn't, technically it's not running
[00:04:22] because it was a crown job.
[00:04:22] Therefore it doesn't ever get a one here,
[00:04:24] which means it looks like it's broken already,
[00:04:25] but even though it's not, it's absolutely not.
[00:04:27] It's totally clean and healthy.
[00:04:29] It always was, even though it wasn't wearing me.
[00:04:30] So, harbor post-resis of mine we were looking at
[00:04:32] and the dump, these dump jobs are the things
[00:04:34] that are creating those dump files in the PVC, right?
[00:04:37] So this, this is a working running Bitnami harbor chart
[00:04:42] that has been the install.
[00:04:44] Then you can go look at my, my, my,
[00:04:46] Art of X-Rob slash K8S app dash.
[00:04:51] Harbor, if you want to see how I'm doing this,
[00:04:53] because I want to have Harbor in my own environment at home
[00:04:56] and I'm also testing a deployment at work.
[00:04:59] So, so this all looks well and good, right?
[00:05:02] Everything is running, the PVs are being created,
[00:05:05] the files are being created in the physical volume
[00:05:07] by themselves.
[00:05:08] But let me, let's look, take a look at the PVCs.
[00:05:10] Get PVC, whoops, okay, get PVC.
[00:05:17] And here you can see you've got all the PVCs, right?
[00:05:21] And you can see that they're,
[00:05:22] they're using the DC NAS storage glass.
[00:05:25] And here's the actual volume.
[00:05:27] So this is, even though it's got PVC in the name,
[00:05:29] that's because that persistent volume was created
[00:05:32] for this and only this PVC.
[00:05:35] That's what the RWA means.
[00:05:37] The RWA means that nobody gets access
[00:05:42] to this storage except for this,
[00:05:47] anything that's binding to this, right?
[00:05:51] To this, to this PVC.
[00:05:52] This is very, very, you know, exclusive.
[00:05:54] There's not a lot of things going on there.
[00:05:55] That means this physical, this persistent volume
[00:05:58] is only visible, I mean, only accessible to this, that's all.
[00:06:03] Now, there is a level of complication
[00:06:05] where you could actually share a physical volume
[00:06:09] across multiple PVCs.
[00:06:11] And I haven't played around with that option
[00:06:14] because that does require an entirely different source glass.
[00:06:16] But the reason we're looking at this
[00:06:18] is I want you to see that,
[00:06:21] I mean, some of this stuff can go away, right?
[00:06:23] Like we need a temporary disk space to like
[00:06:25] have the database, to have the server run
[00:06:27] and put our configuration files in there
[00:06:29] and maybe write some caching and stuff like that.
[00:06:31] So most of the time, you know, obliterating the storage
[00:06:36] for a running deployment, a running pod is fine.
[00:06:40] Most of the time that's fine.
[00:06:41] And that's why Kubernetes defaults to this.
[00:06:43] But sometimes it's not.
[00:06:45] And I want you to see how it's not.
[00:06:47] So, I mean, it goes without saying
[00:06:50] that these databases backups are important, right?
[00:06:56] I mean, that's the whole reason I did this.
[00:06:58] The whole point is to keep these databases here.
[00:07:00] And I'm gonna, I'm about to conclude here and show you.
[00:07:02] Unless you have copied these specific files
[00:07:06] out of this directory and onto another
[00:07:09] stateful system of some kind, they are going to get blown away
[00:07:13] when you try to just reconfigure
[00:07:15] or change your namespace or undiploid.
[00:07:17] So I have an, here's my deploy script.
[00:07:20] My deploy script just, you know, just after we flatten it
[00:07:23] and template out, we just do apply, you can look at all that.
[00:07:26] And that's the thing that builds up the new application.
[00:07:29] And then we have this undiploid.
[00:07:30] This is pretty common across all our applications.
[00:07:33] And then we have this undiploid, right?
[00:07:34] Okay, I'm just gonna delete all those manifests,
[00:07:36] which include the namespace, right?
[00:07:39] One of the manifests that is written here
[00:07:44] is the namespace itself.
[00:07:48] And so if you delete the names,
[00:07:52] it's very, very common to delete a namespace.
[00:07:55] I actually just realized there might be something
[00:07:57] I could do differently here rather than delete the namespace.
[00:07:59] I could delete all the pieces of it,
[00:08:01] but not, but leave the namespace around.
[00:08:03] Let me say, show you why.
[00:08:05] Because, but that's very uncommon.
[00:08:07] The common thing is to just delete the entire namespace
[00:08:09] because the namespace is supposed to be sort of
[00:08:11] the whole grouped together application, right?
[00:08:14] And that's what it's doing.
[00:08:15] So, then I do undiploid here.
[00:08:18] And it's gonna take a little while,
[00:08:20] it's gonna delete all these things.
[00:08:26] But watch what happens over here.
[00:08:28] So now we do the tree.
[00:08:32] And you'll see over time, actually this is,
[00:08:36] they just have this on a watch here.
[00:08:38] So you can see that they're all gone.
[00:08:43] They're all going away.
[00:08:45] And now they're all dead.
[00:08:46] So every single one of those temporary PVCs,
[00:08:52] those temporary persistent volumes,
[00:08:53] which if you think about it,
[00:08:55] it's kind of ass backwards really, right?
[00:08:57] I mean, why call it a persistent volume?
[00:09:00] If it's not, but if it only persists as long
[00:09:02] as the application is around,
[00:09:04] that doesn't sound very persistent to me at all, right?
[00:09:08] So that's a pretty bad thing.
[00:09:11] I just lost all my backups.
[00:09:13] So you better hope you have a copy of them, right?
[00:09:17] It gets worse though.
[00:09:19] In our prediction environment,
[00:09:20] we have a 15 terabytes of container registry storage
[00:09:24] where all the containers that are submitted in images
[00:09:27] are submitted to harbor are stored on disk.
[00:09:31] Now, if I had deployed this,
[00:09:35] I would have just lost all 15 terabytes of that data.
[00:09:38] And you can't really back that up easily, right?
[00:09:40] So what is the solution here?
[00:09:42] This is what we're testing.
[00:09:45] And I'm going to show you at least my initial attempt.
[00:09:47] And I'll probably end the video here
[00:09:48] so I can do some more work on this.
[00:09:51] But the main crux of this video, it just happened.
[00:09:53] When I unduploid the resource, the namespace,
[00:09:56] when I undelided the namespace
[00:09:57] and everything that went with it,
[00:09:58] including PVC, because why?
[00:10:00] Because PVC is a namespace resource.
[00:10:04] PV is not, PV is cluster level.
[00:10:08] PVC is namespace level.
[00:10:12] Those two are different.
[00:10:14] And they might seem like they're the same
[00:10:15] because usually the PV's being dynamically allocated
[00:10:18] like I just showed you.
[00:10:19] But that's not always the case.
[00:10:21] You can specifically create a storage class
[00:10:24] and assign to that, or you can specifically create a PV
[00:10:29] and changes parameters in a storage,
[00:10:32] even in the same old storage class.
[00:10:34] So right now I'm experimenting with that, right?
[00:10:36] Like, and I don't know.
[00:10:37] I don't know what's going to happen here.
[00:10:39] So let's go ahead and deploy using,
[00:10:43] we're going to deploy the manifest I just built.
[00:10:48] And we're going to take a peek and see what happens.
[00:10:51] So this is going to start spinning up.
[00:10:54] Wait, where are we?
[00:10:55] We're on Harbor?
[00:10:56] We need to go back to, we want to go back.
[00:11:00] Where's NFS Harbor?
[00:11:01] Here we go.
[00:11:02] Okay, so here we are watching the same directory
[00:11:05] on Harbor now and NFS Harbor, right?
[00:11:10] So we can close this one.
[00:11:12] Wait, okay, this is interesting.
[00:11:14] So we still have some PV's popping up on NFA's case,
[00:11:18] but we also have stuff popping up on Harbor
[00:11:21] on a different storage class.
[00:11:23] So we have stuff in two places.
[00:11:25] I have two NFS, two NFS exports, two NFS mounts,
[00:11:28] that are simulating two different storage classes.
[00:11:31] And you can see it up here.
[00:11:34] You can see that this is the case one.
[00:11:35] This is the dynamically allocated storage of PVC.
[00:11:38] And you can see that the backups are not on this one, right?
[00:11:42] I mean, you can't really tell that right here,
[00:11:44] but you will be able to, it'll start writing it, right?
[00:11:46] So actually, let's go in and change that.
[00:11:52] So we're gonna change, okay, edit, oh gosh, let's see.
[00:12:00] Let's edit the job, is it a job?
[00:12:06] I can't remember what it is.
[00:12:08] I think it's a cron job, yeah.
[00:12:09] Cron job, cron job batch, Harbor close, okay.
[00:12:13] Let's go change this from hourly to minute two, three, four, five.
[00:12:20] All right, so that's been changed.
[00:12:22] Okay, get pods.
[00:12:23] So there you see, the pods are almost all up.
[00:12:26] Job services are the last one to come up in these core.
[00:12:29] And we'll start to see the backup kickoff,
[00:12:36] probably at the top of the hour here.
[00:12:38] So let's actually do this.
[00:12:40] Let's do Washington to get pods.
[00:12:44] It's my favorite, there's other ways to do this.
[00:12:48] And we're just gonna watch this until a backup shows up.
[00:12:52] So here's the case app.
[00:12:53] This stuff is largely not gonna change.
[00:12:55] This is, you know, configuration files
[00:12:58] and actually the trivia stuff.
[00:13:02] I think this one down at the bottom here
[00:13:05] is where the registry is gonna go
[00:13:09] and frankly in my testing,
[00:13:11] I should probably create an automatic image creation
[00:13:14] into Harbor as a part.
[00:13:16] There's a whole, you know, system integration test suite
[00:13:18] that I'm starting to work on as well,
[00:13:20] a bunch of scripts to actually see
[00:13:22] how this stuff is all working.
[00:13:24] And I'll be making videos about that later, but, okay.
[00:13:27] So we have our backup execute off.
[00:13:29] So nothing changed in the NFS case,
[00:13:31] but we pointed the backups at the other storage class.
[00:13:35] So let's look at that.
[00:13:38] That is where is it?
[00:13:40] Is this it? No.
[00:13:42] Oh, here it is.
[00:13:43] Okay, so, so there we go.
[00:13:45] There's our dump, right?
[00:13:46] So we got our PG dump.
[00:13:48] It's now storing it in, you know,
[00:13:50] a completely different mount point.
[00:13:52] In this case, it's a different machine even,
[00:13:55] that a virtual machine that has exported NFS Harbor now.
[00:13:59] This is where things are gonna get interesting.
[00:14:02] Now what happens when there's two, we get one every minute.
[00:14:06] So now, incidentally, we have it set to only show three.
[00:14:12] We have an on-fail and success.
[00:14:15] You know, they'll only keep three around thing.
[00:14:17] If you don't know what I mean.
[00:14:19] Okay, so there's our storage volume.
[00:14:20] Yeah, we can go ahead and close this one.
[00:14:23] What else we got?
[00:14:24] So, okay, here's our pods.
[00:14:26] So there will only ever be three of these things
[00:14:29] that say completed because of a setting
[00:14:32] I can't remember right now.
[00:14:33] It's something on success and failure.
[00:14:35] That's just to show you the last jobs that ran
[00:14:38] so you can go in there and check on them
[00:14:40] and see what they're doing.
[00:14:42] It doesn't save jobs.
[00:14:43] The pods that are created for jobs are not retained.
[00:14:48] And make sure you set that by the way,
[00:14:50] 'cause if you don't set that,
[00:14:51] you will blast out your container engine
[00:14:54] with a bunch of defunct job pods.
[00:14:59] Anyway, so, you know, it's been running for a while
[00:15:03] and we've got our stuff here.
[00:15:06] There's our dumps.
[00:15:07] We got several dumps in here.
[00:15:08] Okay, so since this storage class once again is,
[00:15:13] is a, wait, what?
[00:15:16] Oh, right.
[00:15:18] Bad mag, that's a different thing.
[00:15:21] I kind of got stuff all over.
[00:15:22] I should probably label it better.
[00:15:24] What is this?
[00:15:25] Is this Kate's?
[00:15:26] Yeah, let's label this better.
[00:15:28] Let's label this.
[00:15:31] NFS, Kate's.
[00:15:34] So we can see, and then NFS Harbor.
[00:15:36] All right, so we have Zet, NFS Harbor,
[00:15:38] and then we have the actual harbor installer thing
[00:15:41] and the files, okay.
[00:15:44] So K get pods.
[00:15:46] I mean, you can see that.
[00:15:47] K get, by the way, here's the cluster itself.
[00:15:51] I mean, my Kubernetes cluster is just three control plans
[00:15:53] and three workers.
[00:15:58] All right, so K get SC.
[00:16:02] And so they're completed, they're removed
[00:16:04] from the container type, yep.
[00:16:05] They just keep around so you can describe them.
[00:16:07] Look at those.
[00:16:13] So they're kept in EdCD, but the container is taken out.
[00:16:16] Really, I did not know that.
[00:16:17] So LBG is just saying in the chat that the,
[00:16:21] that after a job or a crown job completes
[00:16:24] that the actual container is immediately gotten rid of,
[00:16:27] but it just keeps the information around about it in EdCD,
[00:16:31] which is the Kubernetes database.
[00:16:33] So you can go look at what happened and stuff.
[00:16:34] That's interesting.
[00:16:35] Okay, I did not know that.
[00:16:38] So again, here are the two storage classes we created.
[00:16:40] The only difference between them is the reclaim policy.
[00:16:45] And we're about to test what happens when I unduploy
[00:16:51] all that stuff.
[00:16:51] You saw how that deleted the physical volume,
[00:16:54] the persistent volumes when I did it with a retain,
[00:16:58] with a reclaim policy of delete.
[00:17:00] But I don't know what's going to happen.
[00:17:02] Honestly, I don't know.
[00:17:03] So let's try it out.
[00:17:06] So we're going to unduploy again.
[00:17:08] This is just deleting the whole thing.
[00:17:10] And we can kind of watch it in real time,
[00:17:15] because watch this in real time.
[00:17:17] So I'm suspecting this class is going to stay up.
[00:17:22] And this one is going to go away.
[00:17:24] So this one we watch is being deleted.
[00:17:27] And then this one is being retained,
[00:17:29] which is what we would expect, right?
[00:17:33] And PVC.yaml before you delete it.
[00:17:37] PVC.yaml before you delete it.
[00:17:39] Dump to PVC.
[00:17:41] We don't need to dump the PVC.
[00:17:42] I don't need to do that.
[00:17:43] I have the manifest board already.
[00:17:46] So there we go.
[00:17:50] So you can see that by changing the storage class policy
[00:17:59] to retain, I got to show you that again, myself again,
[00:18:04] by changing the retailing policy to retain
[00:18:08] on this storage class, and by explicitly telling
[00:18:12] the backups to use that storage class,
[00:18:15] you'll notice the other stuff in this particular application
[00:18:19] did not, right?
[00:18:20] It used the default temporary ephemeral sort of storage.
[00:18:26] But by changing, so there it is.
[00:18:28] But by changing it to use this other one,
[00:18:32] these database backups were saved.
[00:18:37] You don't have the additional permanent case added
[00:18:39] to bind it to the PV.
[00:18:40] Right.
[00:18:41] So, and that's kind of the next part of this.
[00:18:45] So the next part is, well, okay,
[00:18:48] we got our database backups.
[00:18:49] They didn't get taken out.
[00:18:52] But then the question remains,
[00:18:54] well, what do we do with these backups?
[00:18:57] Okay, the backups are still there.
[00:18:59] The volumes haven't been deleted.
[00:19:01] They're not going anywhere,
[00:19:03] but now they're really not going anywhere
[00:19:05] unless you explicitly get rid of them, right?
[00:19:08] And so actually, one of the things that I want to look at now
[00:19:12] is this, and this is, LBG is kind of hinting at this.
[00:19:15] So if you do,
[00:19:19] if we're gonna do a Kget PV, not PVC this time,
[00:19:25] and you'll see that there are still volumes
[00:19:30] that are in the harbor, well, they're in the,
[00:19:36] they're on the harbor storage class,
[00:19:38] but somebody was saying, we should dump them
[00:19:41] before you delete the, before you unduploid,
[00:19:44] you should actually save out the name
[00:19:47] of the persistent volume so that you know
[00:19:51] which one went with your last running version of your database
[00:19:54] 'cause you lose all reference to that,
[00:19:56] but it's still there, right?
[00:19:58] So in this particular case,
[00:19:59] it's not hard for me to figure out,
[00:20:00] it's the only one left, right?
[00:20:03] And there could be an argument made
[00:20:05] that it's really not as important to know in this case
[00:20:08] because these are dated, right?
[00:20:12] So if you know the content of the PV,
[00:20:15] the, you know, you can go back,
[00:20:16] I mean, this is a very precise case
[00:20:19] because I just need a copy of the flat backup, that's it.
[00:20:22] I don't, I don't need, and frankly,
[00:20:24] I only need the last one, right?
[00:20:26] So I can keep these things running around
[00:20:28] and then I'll get one of these sort of crazily named.
[00:20:32] Now, why is it named that?
[00:20:33] Because it was still dynamically allocated.
[00:20:36] It was still dynamically allocated.
[00:20:38] That's why the name has got that weird identifier in it.
[00:20:41] So it's unique, it doesn't crunch, you know,
[00:20:42] crunch back up as and just, you know, disagree with something.
[00:20:45] And then you get all of this PG dump date in here.
[00:20:48] So potentially, you know,
[00:20:50] it would be nice to put in my undiply,
[00:20:52] oh, hey, don't forget that your dumps are over here still.
[00:20:56] You know what I mean?
[00:20:58] In this case, right?
[00:20:59] But in order to get this retained policy
[00:21:01] for this, we need to do this.
[00:21:02] So this has been a very short video to just,
[00:21:06] it's relatively long,
[00:21:07] but it's a short video to say one thing.
[00:21:11] The one, I just, all I want to show is one thing,
[00:21:14] that you can have exactly the same storage class
[00:21:18] and you can have one of them be the ReKline policy,
[00:21:22] delete a one of them retain.
[00:21:24] And if you set it to delete,
[00:21:26] the underlying data will never be deleted by Kubernetes.
[00:21:31] And for somebody who might want that,
[00:21:37] yeah, we need image storage backup.
[00:21:38] We talked about that at the beginning of the video.
[00:21:40] That's coming, that's also going to be added.
[00:21:42] So that's kind of taking us to the next point.
[00:21:45] So the takeaway from this video is one thing.
[00:21:49] If you use the default,
[00:21:54] you're going to get burned.
[00:21:55] You're going to get burned because for this kind of thing,
[00:21:59] you're going to reset, you're going to clear your names,
[00:22:01] but it's all very common things that people do all the time
[00:22:03] during Kubernetes management.
[00:22:05] And your files will be gone
[00:22:07] because they're going to get cleaned up
[00:22:09] because it was essentially temp
[00:22:10] because the retained policy was not set.
[00:22:13] And in order to get a retained policy,
[00:22:15] you have to have a specific storage class created
[00:22:17] that does that.
[00:22:19] And then when you do that,
[00:22:20] you have to give very, very limited access to that
[00:22:22] because anybody that you allow to create
[00:22:27] PVCs against the retained storage class,
[00:22:31] you need to babysit that yourself now.
[00:22:34] Not only do you have to babysit it,
[00:22:35] make sure people don't leave it around
[00:22:36] because you're going to burn up all your disk
[00:22:38] and they're not going to clean it up, right?
[00:22:40] But you also have to be able to make sure you know
[00:22:43] what PVC, what was the name of it from the last one that ran?
[00:22:49] So at that point, it becomes kind of a question of,
[00:22:52] okay, what's easier?
[00:22:53] Is it easier for me to set up a part of the cron job,
[00:22:58] something that SCPs over the PG dump file to something else?
[00:23:03] And in the case of PG dump files, that's probably okay.
[00:23:05] The size of them is not too big, they're not big,
[00:23:09] but that does kind of, somebody mentioned it already.
[00:23:13] So all the time, like on upgrade,
[00:23:17] you would definitely run it on install.
[00:23:19] So when you, I mean, you redeploy and then you deploy a new one,
[00:23:24] you never just leave the thing around.
[00:23:26] That's the nature of like managing your Kubernetes
[00:23:28] applications.
[00:23:29] You got to be able to do that in order to build a paper.
[00:23:31] Somebody asked about something else,
[00:23:33] I'm getting distracted.
[00:23:34] So, but, so in this case, in the case of the PG dump files,
[00:23:40] these, these, these SQL files are relatively small
[00:23:43] and adding a file transfer to a stateful storage system
[00:23:47] outside Kubernetes scope is going to be a good thing to do.
[00:23:52] That's going to be something that we could totally do.
[00:23:55] And it would be really easy.
[00:23:57] But what about the 15 terabytes of image registry storage?
[00:24:03] Right?
[00:24:03] What about that?
[00:24:04] How do you back that up?
[00:24:06] Right now, if somebody uninstalled harbor or undupled harbor
[00:24:10] and deleted the namespace for harbor in our Kubernetes cluster,
[00:24:13] which is a very common,
[00:24:15] the modern way to do clusters is not to leave things around forever.
[00:24:19] It's, it's to be able to bring up and tear down,
[00:24:22] tear up, bring up and tear down your applications very easily.
[00:24:25] The whole CI/CD kind of idea.
[00:24:26] Now, it gets hard when you got 15 terabytes of storage,
[00:24:29] you got to figure out some kind of exception to that rule.
[00:24:31] But being able to just run unduploy and deploy
[00:24:34] and have it be essentially the same as a container,
[00:24:36] a femoral and have it not and have it just work
[00:24:39] is a big part of that.
[00:24:40] But then you have to be really conscious of the stuff
[00:24:42] that you absolutely want to persist
[00:24:44] beyond, beyond a deploy and an unduploy.
[00:24:47] So, so those are the, those are the ways
[00:24:49] that we are going to go about doing it.
[00:24:51] One of the solutions and this is why I mentioned
[00:24:54] the registry thing is if you have 15 terabytes in a thing,
[00:24:59] then you definitely want to be able to keep that around.
[00:25:03] That was something you probably never, ever wanted to lead.
[00:25:06] The, the, you know, it just wouldn't.
[00:25:09] In fact, but then, then it becomes a matter of,
[00:25:11] well, how do you reassociate that with the other things?
[00:25:15] So, so let's say, so a disaster recovery scenario
[00:25:18] in that case would be that you would,
[00:25:20] you say you tear down your cluster, your application
[00:25:23] and then you bring your application back
[00:25:25] and then you look up what that PVC is either,
[00:25:28] or it's part of your tear down process,
[00:25:30] you write it out someplace to a file.
[00:25:31] So you know the name.
[00:25:32] And then you re-associate that name,
[00:25:35] you re-bind that name, that storage class to the PVC.
[00:25:38] So, so that you don't lose that 15 terabytes.
[00:25:42] All right.
[00:25:44] And that's the end of that video.
