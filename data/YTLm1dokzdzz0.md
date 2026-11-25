# harbor installed into minikube, but stuck not talking to redis

Reports on installing Harbor into minikube: Postgres and the build, deploy and teardown scripts work, but Harbor is stuck because it cannot reach Redis, possibly due to a DNS problem. Also covers trouble with minikube drivers and web interface access from a headless VM on Windows, plus thoughts on minikube, kind and home lab plans.

Chapters:
0:00 Recap of Postgres and deploy scripts
1:23 Minikube drivers and web access struggles
3:18 Harbor stuck connecting to Redis
4:10 Possible networking, DNS and resource causes
5:55 Testing access and home lab plans
7:55 Why minikube over kind
8:57 What's coming next

`#kubernetes #minikube #harbor #redis #devops #homelab #postgresql #coworking`

## Category

Science & Technology

## Transcription

[00:00:00] Okay, so it's Thursday September 26th and I'm going to report on what we did
[00:00:07] yesterday and in regard to Harbor and what we're going to do today and really
[00:00:12] quickly so this video should be under 15 minutes. I hope this is the video you're
[00:00:18] going to go watch to catch up when you come in middle stream and I say go watch
[00:00:21] the video and catch up. So yesterday we set out with a goal to get Postgres
[00:00:25] installed. The video coming, yeah. And we did. We got it. We got it working and
[00:00:32] installed. The problem is, in fact I'm going to put this down to the top. After
[00:00:37] we got it all installed, we finished the build deploy and deploy scripts, which
[00:00:42] the deploy and deploy is basically just kubectl apply -k using customize and
[00:00:50] there's no template. There's no template substitutions happening right now and
[00:00:53] customize. That'll come later when we do vaults and stuff like that. Still in the
[00:00:56] to-do list. But we need to and then the on deploy is ridiculously easy. That's
[00:01:01] just a kubectl delete to everything in that namespace. So that those are done.
[00:01:07] The build of course is now done because once we got the once we change the the
[00:01:13] tag for Postgres from 13 to 16.4, the build is now you know working and it's
[00:01:19] going in and that's that all that stuff ready is up no problem. At one point
[00:01:23] yesterday we got everything working. It was all working. It was it was ready. And
[00:01:29] then we spent probably two hours trying to get the web interface in a way that
[00:01:37] could be accessed. And that's because this is a VM running in Windows and I
[00:01:42] actually had to redo minicube. I should probably put that here. So tried we
[00:01:51] tried the kimoo driver. We tried the kimoo to the none and and the you know
[00:02:05] the docker driver. And I had to install a bunch of prerequisites for that to do
[00:02:09] none. I had to install crease ETL and and all this stuff. I had I spent spent
[00:02:16] spent a lot of time installing pre rec for drivers for minicube drivers. So we
[00:02:28] did we lost a lot of time on that but I feel like it was educational. There's
[00:02:34] probably I mean you can go watch the bot for the next 60 days but if you really
[00:02:36] care to do all that otherwise that we ended up landing on docker because of
[00:02:43] the resource issue went with the docker the docker driver. And we actually got
[00:02:51] that to work. Actually to remember I think we actually got the kimoo 2
[00:02:59] driver to work. Both of them allowed us to install everything but I'm trying to
[00:03:04] recall if we ever had a successful version of the whole thing with with all
[00:03:09] the stuff being ready. We saw there was at least one time yesterday where
[00:03:12] everything was installed and ready and there was no need to disable anything.
[00:03:18] And by the way don't try to disable Redis. We disabled Redis just to see if
[00:03:24] we could get to work as Redis was the problem and we ended up I noticed it in
[00:03:33] the value spell it actually still needs to do caching so it just does it in a
[00:03:36] different way. And that also failed. So we're having right now we're stuck and
[00:03:42] that's what we're going to do today. Right now we're stuck on on the Redis
[00:03:48] problem. So figure out why harbor cannot access Redis. And we did all of our you
[00:03:56] know we walked out the vents everything and the the errors is that it
[00:03:59] can't harbor can't create its cache because it can't talk to Redis. And this
[00:04:04] is a known problem. It's like all over the internet we found all the things but
[00:04:07] we couldn't we couldn't get anything to do to fix it. So that's where we are. We're
[00:04:10] stuck on that. I don't think it's resource related but it might actually be
[00:04:14] related to the fact that when we're trying to get all these drivers to
[00:04:18] work and we were trying to get a way to view the harbor interface the web interface
[00:04:25] we I did a lot of stuff with networking. I didn't do anything to the system to
[00:04:31] Anton specifically that explicitly that I can think of. We started up some SSH
[00:04:35] proxies or something like that those things we rebooted Anton so those
[00:04:38] sort of all gone away. It is possible that we have screwed up Anton and so
[00:04:43] Anton is the VM and so somehow Anton is unable to do the routing. It is also
[00:04:51] possible that I brought it up the first time and core DNS was not up yet
[00:04:54] before I ran the install within Kubernetes and so the second time I did it I
[00:04:59] let all the services for Kubernetes come up and I checked the system you
[00:05:03] know services to make sure they were already before I did any apply and I
[00:05:07] applied it went in but then from that point on it's having a problem getting
[00:05:10] Redis. It says it can't resolve it and so I have a feeling it might be DNS
[00:05:14] related but I don't know so that that's where we are and we're gonna be
[00:05:19] looking at that so if I can't get this working today I'm gonna try to just
[00:05:26] go through the steps again and recreate it maybe I missed something by just
[00:05:29] running up you know you know run the build script on a fresh VM. I have
[00:05:34] torn down and built back up the cluster in minicube several times we gave it
[00:05:37] more resources we bumped it up to I think six or seven procs in the VM and
[00:05:41] then and then when we did minicube we gave it 8 gigabytes or so 10 8 or 10
[00:05:46] gigabytes so so that you know that's a thing and that was it we talked a lot
[00:05:55] about the system integration testing to establish whether it's you know working
[00:05:59] or not the first point being can you access the web interface and and you know
[00:06:03] we spun our wheels a lot on that I am fighting internally because I am
[00:06:09] doing this for work I am fighting internally a bunch of dialogue with
[00:06:13] myself about trying this in our dev environment and seeing if it would just
[00:06:16] work but I still feel like the issues with getting it in minicube and stuff I
[00:06:22] still when I when I when I transferred over to work some of this work it's not
[00:06:27] gonna be you know the exact same thing but there's gonna have to be Istio we're
[00:06:30] gonna involve that some of the stuff's gonna have to change and come on and be
[00:06:33] added on to that and there's also the lingering knowledge that I need to get an
[00:06:41] actual lab running if I you know minicube service and minicube tunnel
[00:06:46] commands were not working of course because it's running from a VM and the
[00:06:51] VM just headless and is running in Windows so you know I'm wanting to start
[00:06:55] your browser so that minicube loves to do it couldn't do it so you know that if
[00:07:00] if I'm I'm glad I'm hitting all those problems because that is actually gonna
[00:07:04] influence my home lab decision so tuning on Fridays for the home lab thing if you
[00:07:07] want to but that is really definitely solidified my decision to make sure I
[00:07:13] have my own cluster number one and you know get KVM working on there and to
[00:07:20] put a a some sort of desktop environment on it and you might ask well why would
[00:07:27] you do that I'm no I'm not a fan of Linux desktop but by having a Linux
[00:07:33] desktop on my home lab when I need to do a quick and dirty test of this kind of
[00:07:36] thing I can VNC into it and I can run minicube you know as sort of got
[00:07:42] intended and it will pop up my browser and it will show me and I can forward
[00:07:45] services and do everything that makes minicube great for really quick and
[00:07:49] dirty testing of development of katsap development stuff like that so so that
[00:07:55] these those hurdles that I hit with minicube are actually good because I
[00:07:59] actually really like minicube lately the latest version of minicube has got a
[00:08:02] lot of things that including watching every single thing it does it I just
[00:08:07] found about this yesterday somebody told me it like puts it all in a log and so
[00:08:11] most of my development I'm I will maintain an individual cluster to run
[00:08:17] certain applications that I want but to tell you the truth most of the
[00:08:20] application development I'm gonna be doing is probably gonna be standing up
[00:08:23] minicube I don't use kind anymore kind kind is a great tool it is a still a
[00:08:30] great tool but it can't hold a candle to minicube these days all the stuff that
[00:08:34] many oh they added the add-ons for minicube are just insane we added added
[00:08:38] the ingress add-on yesterday so I'm a huge fan of minicube and minicube has
[00:08:42] gotten so good in my opinion that with a KBM back driver in minicube you really
[00:08:49] don't need much more than that if you're an API developer I'm honest to God I and
[00:08:54] I think you're you know that's kind of the sweet spot where minicube is trying
[00:08:57] to target so so that's to take away for today come join us if you want to be
[00:09:02] part of the of the debugging process and everything otherwise I'll report back
[00:09:07] tomorrow people have been asking about words go programming all that stuff if
[00:09:12] and when I do that I'll be sure to make a video about it but we it that is
[00:09:17] generally gonna be what I do this after this harbor stuff is done and I'm
[00:09:20] back to back to a bunch of the go-coding so stay tuned there we'll be go coding
[00:09:24] here there will be home labs stuff on Fridays it will be IRL things but I'm
[00:09:29] not pushing the IRL and the yoga bits anymore I'll make a occasional IRL
[00:09:34] clip or something like that but that stuff you don't need to worry it's not
[00:09:36] coming in the videos for YouTube so thank you YouTube see you later
