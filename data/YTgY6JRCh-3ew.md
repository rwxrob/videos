# 💰 DON'T SPEND A TON on your first linux lab "server"

Recommends refurbished Dell OptiPlex small desktops as an affordable first machine for a home Linux or Kubernetes lab. Covers what lab nodes need, including low cost, small size, low power use, SSD storage, solid networking and network (PXE) boot. Compares them with Raspberry Pi-style boards and with towers used for virtual machines.

Chapters:
0:00 Which computers for a home lab
1:16 Refurbished Dell OptiPlex price and specs
1:49 What a lab node needs
2:29 Who should buy one of these
3:02 Raspberry Pi comparison and hardware specs
3:40 Your first lab purchase and towers later

`#homelab #linux #delloptiplex #kubernetes #refurbished #networking #pxeboot #techjobs #learning`

## Category

Science & Technology

## Transcription

[00:00:00] What computer should you get and/or computers should you get?
[00:00:07] This is a big question.
[00:00:08] It came about people were asking me this question
[00:00:11] as a follow up to, well, I have my CKA,
[00:00:15] my certified Kubernetes administrator,
[00:00:17] and you're telling me I should make a lab,
[00:00:18] but I don't have money to make a lab.
[00:00:20] And the question is where do you get computers?
[00:00:22] What kind of computers do you recommend
[00:00:23] for building out your lab at home?
[00:00:25] So I'm gonna tell you, I'm gonna share with you
[00:00:28] the computers that I bought to build up my lab,
[00:00:32] and why I think that it's not as big an expense
[00:00:34] as you might think it is.
[00:00:35] You are gonna need a switch of some kind,
[00:00:39] and I don't wanna go through all the things
[00:00:40] you're gonna need here.
[00:00:41] That's part of the learning processes
[00:00:42] for you to figure out what stuff you actually need.
[00:00:45] But if you look on my screen,
[00:00:47] you can see the core piece of this.
[00:00:51] So in order to do any kind of lab environment,
[00:00:55] you need to have more than one computer,
[00:00:57] and those computers need to be actual computers,
[00:01:00] they need to be significant, they need to be fast,
[00:01:02] and they need to have pretty fast SSD solid-state drives
[00:01:08] in order to simulate things like SED,
[00:01:10] and these really, really low latency things you need at home.
[00:01:16] These Dell OptiPlex are some of the best ones you can get.
[00:01:19] These are refurbished, and I got these for $150 each.
[00:01:24] Now, consider for a side, this one was $127,
[00:01:27] they've gone even down even farther.
[00:01:28] Considering that these computers are,
[00:01:32] the specs on these computers is amazing.
[00:01:37] In fact, let's look at it.
[00:01:38] So it's got a quad core I5, you don't need more than this.
[00:01:42] You're doing simulations of nodes,
[00:01:44] you don't need a fan, don't think about gaming
[00:01:46] and all that stuff, that's not what you're doing.
[00:01:47] You're just building out hardware nodes
[00:01:49] that have other fundamental requirements,
[00:01:52] and what are those requirements?
[00:01:54] They need to be cheap,
[00:01:55] they need to be small, so they fit in wherever
[00:01:58] you're gonna put them,
[00:01:59] and that means they don't take a lot of power.
[00:02:01] They need to have really solid networking capabilities,
[00:02:05] and they need to be able to pixie boot,
[00:02:07] that means they need to be able to be booted from the network,
[00:02:10] so that you can practice re-imaging things
[00:02:13] by just rebooting them and having them pull down
[00:02:15] their operating system from the network.
[00:02:17] They need to do what's called network boot, and that's it.
[00:02:22] And so they don't need a lot of disk space.
[00:02:25] In fact, the disk space that you're gonna be adding
[00:02:27] is probably gonna be coming in another space.
[00:02:29] So, who needs a computer like this,
[00:02:32] and when should you get one?
[00:02:34] If you are just starting out,
[00:02:36] and you're watching this video
[00:02:37] because you're doing the beginner boost,
[00:02:38] and you wanna get good, and you don't wanna,
[00:02:40] I mean, you may have considered saving up your money
[00:02:42] for a good Mac laptop for your own personal use,
[00:02:45] but you wanna server, you can run at home,
[00:02:47] or two or four, and you wanna be able to run those,
[00:02:50] doing different things and practice networking,
[00:02:52] and all of the great things that you need to do
[00:02:54] to be able to become a real good infrastructure engineer,
[00:02:58] then this is the way to go.
[00:03:00] These are the things that you get.
[00:03:02] People buy raspberry pies and orange pies and things like that
[00:03:06] to try to replace an actual computer.
[00:03:08] They're good computers,
[00:03:09] and they have some pretty interesting racks
[00:03:11] where you can put them all in there,
[00:03:12] but in my opinion, they're a bit too small
[00:03:15] to kinda do this kind of thing.
[00:03:17] So 256 SSD is pretty damn good.
[00:03:20] 3.1 gigahertz, 16 gigabytes of RAM.
[00:03:23] You're not getting these machines
[00:03:25] to be able to carve them up into virtual machines, right?
[00:03:28] You're getting them so that you can put a whole bunch
[00:03:30] of them in a stack, and practice your networking
[00:03:33] and your VLAN setup, and you're setting up CNI
[00:03:37] for Kubernetes, that's why you're getting it.
[00:03:40] If you have no other decision to make,
[00:03:43] then what is my first computer that I'm gonna buy,
[00:03:47] and you already have a computer you're using
[00:03:49] to watch this video, probably a macro Windows machine,
[00:03:53] then I think probably your first purchase
[00:03:54] should be a computer like this.
[00:03:57] Somebody might also say, well Dell sucks,
[00:03:59] Dell sucks for laptops, but Dell for servers is really good.
[00:04:02] So this is the first kind of computer
[00:04:05] I suggest that everyone get for their server room,
[00:04:09] and one of the reasons it's nice,
[00:04:10] because it doesn't have a screen,
[00:04:12] that means you're gonna need to learn
[00:04:13] how to use a remote screen,
[00:04:15] you're gonna have to learn how to SSH into it,
[00:04:17] all of the great things that you need.
[00:04:18] So the first cheapest piece of your lab might be one
[00:04:22] or two, an OptiPlex, an OptiPlex like this.
[00:04:25] And then later, if you wanna splurge a little bit more money,
[00:04:27] you might wanna get a tower that you can practice
[00:04:29] carving up into virtual machines,
[00:04:32] which is something you would get later.
[00:04:34] A lot of people would recommend to you
[00:04:35] that you get that first, because you can put
[00:04:40] whatever you want on there to chop it up
[00:04:41] into multiple little tiny machines.
[00:04:43] But the truth of the matter is, you still need
[00:04:47] something to run a Minecraft server on for fun,
[00:04:50] running Linux to get your Linux skills good or whatever.
[00:04:53] And one of these Dell OptiPlexes is really great for that.
[00:04:56] So that's my recommendation.
[00:04:58] Take that to heart, make your own decisions,
[00:05:01] and we'll talk to you later.
