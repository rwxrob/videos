# 🤷🏻‍♂️ "What's a 'container engine' and which one should I use?"

Explains what a container engine is in the context of Kubernetes and Nomad, and how it differs from desktop container tools such as Docker and Podman. Compares CRI-O, containerd and Docker on size and on how much access they give for debugging on a node, and gives reasons for choosing containerd, especially in a home lab.

Chapters:
0:00 containerd vs Docker in short
1:53 Why Docker fell out of favor
4:05 Engines versus tools, CNI and runc
5:54 CRI-O, crictl and the lightweight approach
8:04 containerd and a custom install script
8:47 CRI-O, OpenShift and node access
11:39 containerd's ties to Docker
13:33 Installing Docker CE or Podman on nodes
14:01 Anti-pattern: using Kubernetes nodes for Docker
17:17 Why containerd is the choice here

`#kubernetes #containerd #containers #crio #docker #devops #homelab #linux #comparison`

## Category

Science & Technology

## Transcription

[00:00:00] all right so i have to make this video somebody somebody i'm i'm doing
[00:00:04] container D commands and like what's ctr and this lbg answered the the question
[00:00:09] about you know what's the difference between container D and darker and i
[00:00:12] love this answer i just have to share it lbg dn says to put it short darker is
[00:00:17] container D plus of the other stuff on top of it
[00:00:20] that's useless for Kubernetes
[00:00:24] and that's that's kind of my take on it um
[00:00:29] this is a very short video so of the container engines that exist
[00:00:35] and and maybe maybe i'll go to make a point mode here we go
[00:00:39] this is make a point mode behold um also it gives me a better thumbnail
[00:00:44] so there let's go through the container engines right
[00:00:50] so i believe it's called the container runtime interface it's a Kubernetes
[00:00:53] thing it's Kubernetes has got all these acronyms that define
[00:00:57] pieces of architecture that have to be there again kubernetes is a specification
[00:01:00] it's not software it specifies how software should be and how it should work
[00:01:05] uh krio is still better and we're gonna that's a great fight to have
[00:01:08] okay uh and and so here we have uh you know i'm using
[00:01:15] container D most people these days i'm just gonna cut to the chase everybody
[00:01:18] uses container D today a few uh people you know use krio
[00:01:24] which is an even light we're gonna get into what their differences are but a
[00:01:27] few people use krio almost never nobody still uses
[00:01:30] docker community edition or docker as their container engine
[00:01:35] particularly since i think it's been now two years since Kubernetes
[00:01:38] officially kicked docker out and said we don't want any
[00:01:44] docker and apparently apparently my reactions from my
[00:01:49] mac and pro are in favor of kicking docker out
[00:01:53] and so there's no docker right why no docker
[00:01:56] docker is a devil i've made videos about this before
[00:01:59] the docker company original founder of docker is long gone moved on to pursue
[00:02:02] other interests and docker is seriously the devil
[00:02:06] um uh it doesn't have a CRTO term no it doesn't and that's the biggest argument
[00:02:11] against it which we will talk about in a second so
[00:02:13] um the now the docker is out and let's just really quickly summarize why
[00:02:18] docker is a devil and why it's out number one
[00:02:21] docker has pulled fast ones on people in the business world
[00:02:24] for a long time and the people in the open source world
[00:02:26] the company actually pulled the rug out from several open source projects
[00:02:30] that said you can't store your stuff here and end up making charging money
[00:02:33] even though they're open source and it was a huge fiasco they couldn't even
[00:02:35] get to their own containers and the entire open source world
[00:02:38] said whoa we're out of here and so what do they do they all go to the
[00:02:42] github container registry these days g h c r is where you'll see images coming
[00:02:46] and getting pulled from or they decided to run their own registries
[00:02:49] like harvard like uh Kubernetes itself and a bunch of other places
[00:02:53] because they're just done with docker uh there are still some images that are
[00:02:57] being hosted on docker hub but nobody you know who's paying any attention
[00:03:01] wants any dependency on this kind of this horrible horrible company
[00:03:04] docker also turned around and tried to charge uh everybody who was running
[00:03:09] docker on the desktop uh money overnight they gave them like
[00:03:13] six months and then they they pushed it out farther because all of a sudden
[00:03:16] they're saying hey enterprises we're going bankrupt and now you have to pay
[00:03:19] and so everybody clamored this was two years ago
[00:03:22] everybody clamored to try to find an alternative for the desktop to run
[00:03:25] containers for small projects and things like that and people tried
[00:03:28] podman desktop there was a at one point there was uh uh
[00:03:31] what was the other one um uh open open what was the open container
[00:03:36] quay yeah there've been tons of alternates it turned out to put podman
[00:03:40] is usually the winner when it comes to like desktop container engines
[00:03:44] and tools uh podman is kind of one in that space it's
[00:03:48] you know red hat with the 11 rahatum they've decided that it's also safer
[00:03:51] because it doesn't you know have that socket issue going
[00:03:53] if you don't want anything that is then you just have to study containers and
[00:03:56] short docker is the devil nobody wants to use it anymore and nobody should use
[00:04:00] it and so what are you going to use right the entire
[00:04:02] Kubernetes infrastructure was based on docker originally
[00:04:05] well that's no longer but it hasn't been the case for something like two years
[00:04:08] so what is the case now is that a lot of things have emerged to replace it and
[00:04:13] i'm going to name the top three things uh we're talking okay we're talking about
[00:04:18] container engines right now not uh tools for running containers on your
[00:04:23] desktop they're different so podman and docker
[00:04:26] uh scopio build up all those things that you use to deal with containers and
[00:04:31] move them around those tools and stuff those are not in the scope of
[00:04:34] conversation right now set those aside what we're talking about is a container
[00:04:38] engine in other words i want to put a container engine on a thing because i
[00:04:41] want to run kubernetes or i want to run many kubernetes or i want to run no
[00:04:46] mad right uh and all of these things require
[00:04:50] containers and and some of them share they all have they all have similarities
[00:04:54] in particular no mad and kubernetes are very interesting because they both
[00:04:59] require a container engine and they both require something as started as a
[00:05:03] kubernetes standard called the container network interface
[00:05:06] um so the c&i and that's the way the container does networking and how it
[00:05:10] talks to each other and how containers network with each other
[00:05:12] and so these are all related to the conversation
[00:05:16] um they all are built obviously container these containers we're talking
[00:05:19] about are not jails or not bsd they're all built on something called lxc
[00:05:23] then and a lot of people would argue for the lx community that lxc is the one
[00:05:27] true way to use a container and it's really low level and that uses
[00:05:30] something called cgroups and there's actually a low level component called
[00:05:34] run c which has become the abstraction of how to run a container
[00:05:38] on top of lxc and that has now become sort of
[00:05:41] dependent pieces all of these things use run c why is this important
[00:05:44] because all of the container engines that i'm going to talk about
[00:05:47] have different layers of complexity and bloat
[00:05:51] that are layered on top of run c more or less
[00:05:54] okay so krio which our friend is abigee has been mentioning
[00:05:58] is by far the lightest it is super duper lightweight
[00:06:02] it's this teeny tiny wrapper of run c it's pretty much just run c
[00:06:06] and for that reason if you need to debug a container or you want to do
[00:06:09] docker type things like you know exec into a container
[00:06:12] or see it or ls and remove the image and all these different things
[00:06:16] a lot of those functions are not included with the command line tools to use
[00:06:20] uh to use uh that there are a number of utilities that relate to all of this
[00:06:26] uh new container engines stuff some of which i actually am kind of deficient
[00:06:30] skills wise in uh one of them is crease c t l so uh c ri c t l this is called
[00:06:36] container runtime uh interface so all the container engines since
[00:06:41] kubernetes made the the the declaration dau shalt
[00:06:44] define and follow the container runtime interface
[00:06:46] every container engine on the planet that matters
[00:06:49] uses c ri and so this tool has been maintained
[00:06:53] that interfaces directly with anything that speaks c ri
[00:06:56] now but the container runtime interface doesn't cover everything that you would
[00:06:59] want to do with docker podd man and so you may be like thinking oh my god
[00:07:02] where did my commands go right and that is because
[00:07:06] the container runtime interface has been designed for kubernetes
[00:07:09] that's where the comment at the beginning of the video comes in
[00:07:11] uh that it's it's not the stuff that you would want to do on a desktop so
[00:07:15] it's eliminated a lot of those things that you might want
[00:07:18] uh for better or worse right and then so each container runtime engine is
[00:07:21] decided okay how much are we going to add on top of the base
[00:07:24] functionality of run c and c ri and c n i the container networking interface
[00:07:29] which defines how they talk to each other so um you know if you're trying to
[00:07:33] if you're just trying to get containers to work
[00:07:35] uh on your desktop this is not the video for you this is the video for
[00:07:38] which engine should i pick so krio is c ri dash o is it when we first used it
[00:07:44] two years ago was rather immature and it didn't really work and had some bugs
[00:07:47] in it um and but it but it since it's it's come
[00:07:50] around i'm not going to use it though for reasons we'll talk about later
[00:07:53] it's the lightest weight it's the smallest engine you can
[00:07:56] possibly run on a node uh whether it's a virtual or a real
[00:07:59] node being a machine um and you you know it's the smallest thing you can get
[00:08:04] it's just baseline layer on top of run c uh and it is step up from that and you
[00:08:09] get container d container d is kind of the legacy from
[00:08:13] docker and docker se uh and as actually unfortunately
[00:08:18] the packages if you want a package installed container d uh you still
[00:08:21] have to go to the docker project uh uh for those things and that is why i
[00:08:27] wrote my own uh installer for container d based on
[00:08:31] container d's documentation uh that is not a package
[00:08:35] but this is all the stuff that you would get from a package this is how you
[00:08:39] install container d it's ads bash completion for container d
[00:08:42] this installs run c it installs the the container d plugins for c and i
[00:08:47] and all of that stuff now why would you pick container d over over over
[00:08:52] just um you know korea uh korea is the default for open shift
[00:08:56] yeah but open shift is a red hat offering and they have more control over the
[00:08:59] container engines they don't want people open shift is more of a
[00:09:02] one solution meets you know come is is good for everybody kind of thing
[00:09:06] and they want lightweight you know so they don't want to impact their thing
[00:09:09] plus usually if you're doing an open shift you're already deploying red
[00:09:12] hat and so red you know open shift plus red hat equals you know
[00:09:16] joy for them and enterprise um and and so they
[00:09:19] they kind of control the whole ecosystem so they really don't want people poking
[00:09:24] around in the container engine but if you're me
[00:09:27] or you're any other a lot of other people in their home lab or some other
[00:09:31] thing sometimes you want to use that container engine on that node for
[00:09:34] other purposes or you want to you just don't trust
[00:09:37] uh the minimalism of korea and other things like that because
[00:09:40] you really want to see what's going on when kubernetes stops working and you
[00:09:44] want to go you know look kick you know get under the hood or whatever and see
[00:09:47] what's actually going on and the only way you can actually see what's going
[00:09:49] on a container engine is um uh so yeah well it's it is now
[00:09:55] korea was not battle tested two years ago it was not we was throwing all kinds of
[00:09:59] errors in our test cases at work and so we started to decide
[00:10:02] enough to do it um you know these technologies are
[00:10:06] evolving all the time so you probably want to reevaluate every year
[00:10:09] whether you want to do it but if you're deploying a cluster and that cluster
[00:10:11] can be around for a year or two uh which is probably a bad idea by the way
[00:10:14] you should be automatically updating your cluster pretty frequently
[00:10:18] otherwise you're going to get you know day two problems in your enterprise
[00:10:22] so what container engine you use that decision is larger than a few
[00:10:25] uh but if you want more access you've been using it for five
[00:10:29] that doesn't surprise me a lot of a lot of advanced people have been using
[00:10:33] uh korea for a long time and making it work um i'm just telling you that when
[00:10:37] we tried it in our enterprise uh that the people who did it wasn't me
[00:10:41] they had an exceptional number of complications with the container engine
[00:10:44] in our enterprise now we might have had hardware concerns that were different
[00:10:47] um but you know obviously you have to test all these things out korea was the
[00:10:51] lightest weight therefore technically it probably is going to be
[00:10:54] the least likely to have problems once it gets stable because there's not a lot
[00:10:56] of things to maintain but it also exposes the least amount of
[00:11:00] things to you under the hood you have to go through
[00:11:03] uh kubernetes or no matter whatever it is to get to the stuff that you want to
[00:11:07] see about the container engine there's no way to you know open the hood or go
[00:11:11] under the car and see how it's working you can't
[00:11:13] you know SSH into the box and then run a command that doesn't have anything to
[00:11:17] do with the with the thing using the container engine
[00:11:19] and that can be that can be problematic and by the way that is
[00:11:23] primarily the difference between these things so korea gives you almost zero
[00:11:28] access to any of the things that are happening under the hood
[00:11:31] uh you found some small issues open prs for them okay nice
[00:11:34] um but and then and then but but you know it's it's lightweight mobile
[00:11:39] container d it's kind of the step up from that it's not docker but it's
[00:11:42] heavily inspired by docker and currently controlled by docker
[00:11:46] and i think that's super important container container d has not yet
[00:11:50] broken free of the docker umbrella if you want to install container d it is a
[00:11:54] separate project but the project the the package installs and everything
[00:11:58] are still coming from the docker the docker team
[00:12:01] if i'm wrong about that please you know put it in the comments be nice
[00:12:04] you know i'm just going on what i last heard so but as far as i know as of
[00:12:08] this moment the container d project it still has ties with docker
[00:12:11] it's so much so that you can't apt install container d
[00:12:14] unless you add the docker bloat which includes adding the literal docker
[00:12:20] hub package repository to your app repose just to install it by using
[00:12:24] apt install if you're on a bun too and i'm not doing that so i wrote a
[00:12:29] script to do it in the official container d alternative way which is
[00:12:33] you know download the service and add it to the system to
[00:12:36] download you know the container d stuff download run see download the plug-ins
[00:12:39] you know add an edc and edc control d can pick that
[00:12:45] tom will file and modify it using a tom will python script which is all in
[00:12:48] my script you can go look at it and and that's all the stuff that a
[00:12:52] package install would do for you but you know it's not a package it's
[00:12:56] ugly should somebody make a package under the apt repo that
[00:13:02] is coming from a distant repository for container d i think they should but i
[00:13:05] don't want to be the one to do it and if it if it does happen it should come
[00:13:08] from the container d project which right now doesn't seem motivated to do that
[00:13:12] they just want to continue to use the one that's being maintained by docker
[00:13:16] so i i don't know the reason for that but it's important that you know that
[00:13:19] you're not getting you're not free of docker
[00:13:21] uh you know things in fact there are still some pieces
[00:13:25] even if Kubernetes that used to be docker you have to install the docker
[00:13:27] se package to get them that may have changed in the last two years i'm about
[00:13:30] to find out so that's a lot to talk about what about
[00:13:34] docker se community edition yeah you can just install docker se community edition
[00:13:39] docker we're talking about the desktop saying the docker same docker command
[00:13:42] everything you can use that you can use that that will put in the
[00:13:45] all the container engine you want on your on your nodes if you want but it's
[00:13:48] got a lot of extra stuff there that doesn't need to be there
[00:13:50] uh you can use docker if you want if you want to install docker on all those
[00:13:54] nodes you can do that too you can install pod band on those
[00:13:56] nodes and any of those tools will work but at each stage in the game
[00:14:01] you you you've added more bloat um to give you one solid example
[00:14:05] which i think is a bad example but i'm going to cite it for you anyway i think
[00:14:08] this is an anti-pattern let me just say it right up front
[00:14:10] but our business when we might the place that i work when i first got here
[00:14:14] they had people using this it makes me sick to even say this
[00:14:20] because it's such a bad practice um yeah extra attack service all kind of
[00:14:25] thing we had people that were using they didn't have
[00:14:28] docker on their desktop and they weren't allowed to install it
[00:14:31] so we had system administrators who needed to use docker to for all the
[00:14:34] normal docker things right for getting an image and compiling an image and
[00:14:37] creating a docker file and all those things right
[00:14:39] they were actually reusing Kubernetes node machines
[00:14:43] as their personal docker space and so they would SSH in they would SSH in
[00:14:49] his route because they had root access the rest of the user base didn't
[00:14:53] and they said well i need docker i don't want to put on my desktop or whatever
[00:14:56] and so they would SSH in his route and they would use docker use in the docker
[00:14:59] command and they and their container images and all their
[00:15:02] stuff would end up getting intermixed with the stuff being managed by
[00:15:05] Kubernetes on that node that is a major major violation of best practice
[00:15:11] one of the biggest anti-patterns in history i can't believe they did it
[00:15:16] and they they did this because they said they didn't have any other way to use
[00:15:19] docker i think that's totally stupid thank you for
[00:15:24] the follow i thought that was totally stupid i was like why are you doing this
[00:15:27] this is so dangerous and then and then and then the other guys were saying
[00:15:30] well we can't administer our endpoint nodes unless we can use docker and i'm
[00:15:33] like what are you talking about let's say well we need to get in there and see
[00:15:36] what's going on in the container engine to be fair
[00:15:38] the container engine docker container engine Kubernetes was broken back then
[00:15:42] and there were certain cases where the images would stick around and they would
[00:15:45] bloat out the container engine did you ever remember this this was Kubernetes
[00:15:50] version whatever i don't remember what version it was
[00:15:52] but there was a time when Kubernetes had a legitimate bug in it
[00:15:55] that caused containers to sit there forever and not ever get cleaned out
[00:15:59] and the only way to clean up those images was to give ssh over with docker
[00:16:03] and then delete all the extraneous images and make sure they weren't being
[00:16:06] used by Kubernetes which if you're a Kubernetes admin
[00:16:09] i mean the whole you know promise of Kubernetes is to save you from that
[00:16:12] crap and they did not do that oh my god and it was
[00:16:15] it was horrible i don't ever want to go back to that world um
[00:16:18] you know it's been two or three years since i really looked at that level of
[00:16:21] Kubernetes that deeply i'm doing it now in my home lab
[00:16:24] but the point i'm trying to make is um if if you didn't get
[00:16:29] if you weren't burned but people who have been burned by not being able to
[00:16:33] manipulate the images that are in the container runtime engine
[00:16:36] on their on their endpoint nodes people have been burned by light like we were
[00:16:40] they're very very leery of krio because they don't have the access to do that
[00:16:46] they don't they don't have the same debugging and administration access to
[00:16:50] the underlying container image that was absolutely essential to restoring
[00:16:54] Kubernetes functionality when that bug existed
[00:16:57] and so they've been burned by that and they're like oh hell no i am not doing
[00:17:00] that i want access to my container engine
[00:17:02] you know attack surface insecurity or not i don't care i'm going to go do it
[00:17:07] and maybe they have other you know bad reasons like i need a docker engine
[00:17:10] someplace i don't want to put on my desktop because docker i have to pay for
[00:17:13] it now which is stupid that's totally stupid don't do that
[00:17:17] but if but that so they've been burned by it so
[00:17:20] so a lot of people have sort of landed on this middle ground
[00:17:25] and and the middle ground i i personally believe the most popular container
[00:17:29] engine right now um and is yeah i'll definitely link to this
[00:17:34] that um i think that the most the most uh the most popular container engine today
[00:17:40] particularly for home labs is container d for that reason
[00:17:44] it has the level of access for tweaking and watching what's going on with your
[00:17:48] images even if it's just for learning purposes
[00:17:51] um and you know it doesn't it doesn't hobble you when you try to see what's
[00:17:54] actually happening under the hood uh like krio does
[00:17:58] but it also you know it it's it's kind of on that side so it gives you more
[00:18:03] access into it so people like me that are uncomfortable with
[00:18:05] the absolute minimum of and by the way i did try to run a Kubernetes cluster
[00:18:09] with krio and tested it when i did my last Kubernetes cluster
[00:18:13] and then i realized that i couldn't do anything in the image and that was when
[00:18:16] i decided i did not want anything to do with it
[00:18:18] um because i i wanted to be able to to tinker and that is why
[00:18:22] that i have chosen container d all of my peers at work including the ones that
[00:18:26] by the way the people who did that shit in the cluster sorry for the swear word
[00:18:30] they're gone now all of them they've all went on to do other things
[00:18:34] the team that i'm with now they know their shit they know what they're
[00:18:37] doing i'm super happy to have them as teammates
[00:18:40] why is my reaction at working that makes me sad there we go
[00:18:45] so that is why i am using container d uh
[00:18:49] container d or krio that's what i would use um
[00:18:52] there may be other content container runtime engines i don't know about them
[00:18:56] let me know in the comments uh if i should know about them
[00:19:00] Those are the only ones that really matter, though, in my opinion.
