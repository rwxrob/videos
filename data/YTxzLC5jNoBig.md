# 🐧⎈🏠 Breaking Lab: Kubespray Cluster Apps, Management Cluster and Upgrade Steps

Continues building a Kubernetes home lab deployed with Kubespray by listing the cluster apps to install, including MetalLB, Istio, External Secrets, LeaderWorkerSet and Kyverno. Reviews the management cluster design, outlines the steps for creating and upgrading clusters, and explains the complications of overlaying a modified Kubespray fork, added as a Git submodule, onto the container image at runtime.

Chapters:
0:00 Recap of the Kubespray Cluster Install
3:10 Listing the Kubernetes Cluster Apps
5:39 Investigating the LeaderWorkerSet (LWS) Operator
9:21 Metrics Server, Storage, Prometheus and Operator Apps
10:46 Kyverno, OPA and the CNCF Landscape
13:36 Cron Jobs, Harbor and Provided Services
16:02 Lab Architecture and the Management Cluster
19:47 Documenting Cluster Creation and Upgrade Steps
22:01 Modified Kubespray, Submodules and Container Overlays

`#kubernetes #kubespray #homelab #devops #gitops #kyverno #cloudnative #ansible`

## Category

Science & Technology

## Transcription

[00:00:00] back. We're back and we're going to do some work. We're going to work for quite a while
[00:00:05] today. So as you can see, the first thing we're going to do is work about work on getting
[00:00:14] in rest of the activities, apps in my list, to have a list of those things. And I need
[00:00:22] to practice deploying them. So at least thing to have them in the list. And then I'll do
[00:00:27] one or two of them as a sample. Just to recap where we were when we left off when we were
[00:00:33] doing breaking lab last time. And I have the wrong half of this, but oh well. We deployed
[00:00:42] Kubernetes using an extended Docker container for a Cube spray. And you know, that was it.
[00:00:55] That was really it. We determined what case apps were installed by that specifically. We
[00:01:02] discovered we determined that. I'm trying to find out where it is set up on for PC's
[00:01:10] and we shall create these tips and caveats stuck to install. Here we go. So Kubernetes.
[00:01:20] Yeah. Kubernetes.calico, container D, install of QVADM. It's called QPCTL. Cubelet. Etcetera.
[00:01:36] I think there's probably a few other things. But these are the main things. QPCTL is actually
[00:01:41] important because, you know, if you're just installing Kubernetes cluster and you don't
[00:01:46] have to install it on your laptop or whatever you're using to access the Kubernetes cluster,
[00:01:51] that could be that could kind of throw you off. So, so that's what's up with that. These
[00:01:57] are all essential things. These are from the default file. We did determine that the versions
[00:02:05] are for which of these are saving the downloads directory, the downloads YAML, which I enlisted
[00:02:11] somewhere else. I think it's up here. A meeting just started up. There's a meeting going on
[00:02:20] right now. And I'm not going to go to the metrics meeting. And I am not going to be
[00:02:24] joining that. But so we're going to go ahead and get some work done here on this. We need
[00:02:30] to get this done. I have to get the entire thing done and running by Monday. It turns
[00:02:35] out next Monday. So you're going to see me doing a lot of live streaming of how I do
[00:02:41] this. I am going to be replicating in the home lab, very small pieces of the larger
[00:02:46] thing that I have at work so that the things that we come up with actually apply at work
[00:02:51] and I just copy them over without a without a problem. So, so that's that's the goal.
[00:02:58] And right now I'm looking up the list of applications that was sent to us to do. And
[00:03:10] let's see, group bars all. I'm looking at that list right now again. Here we go. All
[00:03:20] right. So, so we have a number of case apps that have been installed by there are so much
[00:03:34] are required by Kubernetes. Some that are not. So, metal LV, I'm going to list them all.
[00:03:43] We have one. I'm going to just list them what they're called. We have a security one. I'm
[00:03:49] going to say case that Kate's app. Case that Kate's app security. I'm going to actually
[00:03:59] make these all their official names. External secrets. I'm going to actually be creating
[00:04:08] these from scratch publicly, because I want to use them at home. And I want to make them
[00:04:17] available for other people to use. So, metal LV, Kate's case that Kate's app dot. I almost
[00:04:28] think we do case that app. Let's do that. Let's do Kate. So, you know, it's not steady.
[00:04:40] It's not stutter. Case that app dot. External secrets. Metal LV. And we are going to be
[00:04:47] setting up installers for all of these. And that's going to be informing decisions I
[00:04:53] make elsewhere. So, yeah. What other apps do we need? If you guys are in Kubernetes,
[00:05:01] these are all things that we need. Istio is Google's kind of like, you know, all the
[00:05:10] missing parts of Kubernetes. Virtual server, you know, side guard containers, stuff like
[00:05:18] that for security. Node feature discovery. We played with that yesterday, and we actually
[00:05:26] installed that last time. NVIDIA device plugin, which we also played with yesterday. We are
[00:05:35] going to install it itself. It does install it, but then you're dependent on the keyboard
[00:05:39] and stuff, which we do not want to do. What is this one? I don't know what this one is.
[00:05:58] This is weird.
[00:06:23] Give me a second. This naming convention is on purpose, so you can find them.
[00:06:51] Okay. I'm going to go ahead and click on that. I'm going to go ahead and click on that.
[00:07:16] I don't know what this one is. I'm kind of interested in this.
[00:07:31] There's something called the other word for set. I don't know what it is. Yo, yo, Xinya.
[00:07:55] So let's see if we can find it. I don't know. I've never heard of this before. I don't
[00:08:05] know what it is. It's in our infrastructure, and I've never seen it. It's a standard Kubernetes
[00:08:11] resource as of June 2025. However, based on the name, it's likely to bring to custom Kubernetes
[00:08:16] pattern of CRD. A custom controller pattern where I want to put it up again.
[00:08:32] How do you install it? It's a six project, LWS project.
[00:08:52] It's the place the LWS operator CRD is controlling a webhook. It's a standard upstream support
[00:09:02] installation path like red. It's not customized. Or you can install it with Helm apparently.
[00:09:12] LWS. We're going to call ours LWS. Yeah. It's LWS. It sounds like we don't have to upstream
[00:09:21] this. We do have Kyverno. Kyverno. We have -- that one I knew, Kate. That metric server.
[00:09:44] That talks to Grafana and everything. ktsapp.storage, which is just the power storage classes. ktsapp.promethius.
[00:10:06] Keep spray operator. Why don't we have the ktsapp operator in here. I guess they are
[00:10:21] using ktsapp operator. I didn't think they were. Yeah.
[00:10:33] They must be using the ktsapp operator for the ktsapp deployment, which I will look into.
[00:10:46] Kyverno is an alternative OPA. It actually Kyverno is OPA. I think Kyverno is the implementation
[00:10:58] OPA. If I remember right. There's a bunch of competing ones. There's gatekeeper. Let's
[00:11:08] go look at the dashboard real quick. If you look at dashboard -- no, that's not it. I'm
[00:11:19] sorry. Landscape. We could actually go find application, continuous integration. Sorry
[00:11:28] for the -- I can't help it. This is the only way to read this thing. Service mesh. They
[00:11:36] show APS during CKS training. Kyverno is -- one of the reasons Kyverno is nice is because it
[00:11:44] has a ton of built in rules. Let's see if we can find it. It might be a different tab.
[00:11:54] We had that problem last time. Kyverno. I think we sucked. We spent like an hour looking
[00:12:07] through landscape. Database, scheduling, service, proxy mesh, remote procedure calls, cloud
[00:12:16] native, cloud networking, CNI. Here we go. Security. Kyverno is incubating. We had that
[00:12:28] at one point. Open policy agent. There it is. OPA.
[00:12:36] I think they're both -- okay. So that one is graduated. Yeah. That would explain it.
[00:12:45] That means it's been officially approved and everything. Office of general purpose policy
[00:12:50] engine. Kyverno -- the reason Kyverno came on our radar is because it has a ton of free
[00:12:58] to find -- there's a site that has a collection of all the best practices security-wise and
[00:13:09] it's implemented in Kyverno. And it's like, you know, if you want kind of like batteries
[00:13:15] included in security, Kyverno has that. I haven't worked with it in a long time. I'm
[00:13:20] actually the one who suggested it years ago, but it got implemented by other people. So anyway,
[00:13:28] I would like to take a look at that. Kate's app. -- I'm surprised to put the QSPRE operator
[00:13:36] in. That's kind of sounding weird to me, but whatever. And then we have Kate's app.crons.
[00:13:45] This is a collection of all our crown jobs. And I actually want that for myself, too.
[00:13:51] We do put our city in every single cluster. So these are all things that are, you know,
[00:14:00] put in the case apps. Provide services carrying a harbor. We actually have a harbor one, too,
[00:14:08] but I don't see it here. Harbor is not automatically installed with everything else. Let's say
[00:14:19] this is a -- installed with Kubernetes in every cluster. So these are our Kate's apps. And
[00:14:38] we have a process for pushing that out, which we'll talk about. We do have -- provide the
[00:14:44] services case app. So provide -- let's see. Provided services. These are also a Kate's apps.
[00:14:51] We do harbor for images. We do make box internally. Then we have a text on the store. So these
[00:14:56] are Kate's apps, but they are not automatically installed with every Kubernetes cluster. So
[00:15:02] this is a list of ones that are getting installed. And, you know, this is like -- you know, this
[00:15:11] is very much a batteries included, kind of a lab that I want to build here. At the end
[00:15:16] of the day, when this is done, the CI/CD stuff will -- you know, it will kick off all these
[00:15:25] other installs automatically by Git repo. So we only need to simulate one of those. So
[00:15:33] although we're going to have to get Istio and Metal will have -- some of these are really
[00:15:38] required. The cluster won't even run without it. And that is about -- I'll have to say
[00:15:52] about that. Okay. So what's next? Oh. I mean, that's -- okay. So we actually just passed
[00:16:02] off one of our to-do's for the day. The to-do was -- oops. What do they require Kate's
[00:16:10] apps or carpet customer apps to work? Boom. What are our Kate's apps after record services?
[00:16:16] Harbor, et cetera. Boom. We've done that. We are done with the CI/CD stuff to be on the
[00:16:20] management cluster. That's now done. We defined our breaking lab architecture. We drew pictures
[00:16:28] of that. So let's review that real quick. My training peaked up. This is for the biker
[00:16:33] there today. Did I say that? Yeah. Okay. Here's the lab. So here is the lab. We're having
[00:16:44] fun with the breaking lab with the all names and stuff. So it's a case cluster that are
[00:16:51] created by kubespray, including our main control plane management cluster. And so it's probably
[00:17:09] worth calling that out like that. And stuff. If you don't know what a management cluster
[00:17:27] is, it's a cluster that you use to install other clusters and things. That's what it's
[00:17:33] for stuff for that generally is not customer-facing, not multi-tenant, blah, blah, blah. And that's
[00:17:40] what we're going to do. So we need to stay laser focused on getting these kubernetes
[00:17:51] clusters up and running so that we can actually practice doing the upgrade. So the most important
[00:18:00] thing is upgrading Kubernetes. Honestly, I don't even think we need to. I don't eat
[00:18:15] the process for upgrading the kates apps in place. But that is a big part of it. We have
[00:18:22] a single script that we run that runs the playbook to build any cluster. And there's
[00:18:28] kind of like two processes for building out these clusters. I don't have a cluster at
[00:18:35] all phase. And then I want to build this cluster phase. If you watch any of the other videos,
[00:18:49] you may remember me kind of shaping on the fact, let's go back to kubespray, that my team
[00:18:58] has decided this is very complicated to describe. I'm going to try my hardest. The reason it's
[00:19:04] so important that I'm able to articulate what I'm about to tell you is because it is the
[00:19:09] most complicated part of the upgrade process, which I have been tasked with testing and
[00:19:16] doing, okay? Are you guys bouncing around? Are you guys getting dropped frames? You guys,
[00:19:22] if you start dropping frames, please let me know. I must have like wiggled something
[00:19:27] wrong or something. I see there was a number of dropped frames. If that happens again,
[00:19:32] please tell me, okay, this stream went offline and bouncing came back probably just because
[00:19:37] I played with the power. Anyway, what am I talking about? There's the process for creating
[00:19:48] a cluster in the first place. And then there's the process for creating clusters with that
[00:19:55] cluster, right? So let's see if we can actually call that out in the documentation. Let's try
[00:20:04] to do that. So let's document document. I level steps to create an upgrade cluster. Okay,
[00:20:23] so the first one is I need to create a, you know, I need to create a cluster from scratch.
[00:20:32] Okay, that means I have nothing. And then the second one is I need to create a cluster
[00:20:42] using the management cluster. Okay, these are very important. Okay, so one of them is
[00:20:55] I don't have anything. I just need to get a cluster running. And the other one is I have
[00:20:59] a cluster and I want to trigger the creation of one or more sandbox clusters just by updating
[00:21:05] my inventory, right? And I want that to get up to propagate and everything. So we're still
[00:21:14] kind of on the credit cluster from scratch. And the reason that's because I can't do the
[00:21:17] testing of the upgrade. And then we have upgrade, upgrade cluster using the management cluster
[00:21:28] using cubes for a management cluster, using GitOps and cubes for management cluster. So
[00:21:44] that's the thing. And then we need to upgrade the cluster using GitOps. Actually, we can't
[00:21:53] do that. So upgrade the cluster using the management cluster. Okay, so the hardest part
[00:22:01] about this is for reasons that I don't fully understand and would probably argue strongly
[00:22:08] against if I could find an alternative, we have decided to alter cube spray. And that
[00:22:18] cannot. And so yesterday, LBG is not here right now, but yesterday, yesterday, I had
[00:22:24] a lot of people giving me crap about using, you know, downloading using the cubes for
[00:22:32] a repo and modifying it and then, you know, running my creation of sample clusters using
[00:22:40] the actual cubes for a repo as opposed to the container. So, you know, the Docker file,
[00:22:48] the container files and creates the container that contains everything in the cubes for a
[00:22:53] source code repo is in there. And you can do that, you can go download the image. So,
[00:22:58] so this, what gets messy here is that there is the image. And then there is the source
[00:23:05] code. And the image contains a certain parts of the source code, but not all. So what my
[00:23:15] team had to do, which is the most convoluted thing, and I got to tell you, I'm not a proud
[00:23:20] of this, they, they, when they go to do an installation, so the way you do a normal installation
[00:23:27] is well documented on thing, we did it, we did it the other day, and I finally got my head
[00:23:30] around it. You run a Docker, the Docker container, or a an extension of the Docker container,
[00:23:37] so that you have more tools, which is what we did. You run the Docker container, and,
[00:23:41] and it does everything. And then this runs bash, and then when you get inside of it,
[00:23:46] you then run the answerable playbook, right? Now we ended up writing a script script that
[00:23:51] runs the answerable playbook directly from the container rather than you're running bash
[00:23:54] and then running the script, the answerable playbook interactively, because it's just easier.
[00:24:00] But what, what my team has done in addition to that LBJ, how you doing? So what my team
[00:24:07] is doing instead, which is absolutely, okay, because they had to change the cube spray
[00:24:12] source code, what they decided to do was instead of writing a script that would change all
[00:24:21] the stuff that they changed it by branching the upstream, making their changes in the
[00:24:34] source code, and then pulling down the Git repo from within the running container and
[00:24:42] overlaying the Git repo content into the container image so that their dips are applied
[00:24:51] to the container at runtime. And I honestly do not understand all the reasons why they
[00:25:01] did that. I, they have the reasons, but I think it's disastrously bad idea. I wish
[00:25:06] that they had not done it. I wish that they had avoided that. It's too late. That was
[00:25:11] all decided a year ago. But that is the reason that they still have it. And so the way that
[00:25:16] they do it is within the CI/CD repo, they, they, they create a sub module branch of the
[00:25:26] actual upstream module. It is 100% a branch of the upstream. And, you know, that it is
[00:25:37] also a fork. So that's, that's how they do it. So not only did they use some models,
[00:25:44] but they use some models in a way that requires a sub model to be synchronized with the image
[00:25:49] that contains the stuff that's built from the sub model, which is just, it's just mind
[00:25:54] blowingly complicated to a beginner trying to get into this. And that's why that's why
[00:25:58] I couldn't understand it. I couldn't understand why they were so insistent on this sub model.
[00:26:03] The reason is because they're messing with stuff and roles and other places that I, that
[00:26:08] they tell me can't be done unless they modify the upstream. Personally, I think it probably
[00:26:15] could be done, but we just haven't, they just haven't found the way to do that yet. So,
[00:26:22] this method, I have to repeat this. Are we epic again? Okay, so I'm so sorry. I'm so sorry.
[00:26:33] I'm so sorry if we're epic again. It doesn't say we're epic. I hate it when it does that.
[00:26:43] I don't know how to fix this. No, the last time it's been plugged in the whole day. That's
[00:26:50] the second one. I don't know what's going on. Sometimes I think Spectrum is like, is
[00:27:04] like screwing around with me. I feel like, I feel like this is gonna go away once I get
[00:27:13] a hard line. I don't know that, but I feel like if I get a hard line, it's gonna, this
[00:27:18] is gonna go away. So, where are we?
