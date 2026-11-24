# 🚀 How can I transition to a SysDE career?

Explains how to transition from a traditional sysadmin or software role into a systems development engineer (SysDE) career, centered on automation and building internal tools and APIs for developers. Covers key skills including Go, Bash, REST API development, certs, secrets and OAuth, containers, Kubernetes and Slurm, observability tooling, testing practices, and idempotent design, with examples from enterprise HPC work. Also distinguishes SysDE from DevOps and platform engineering and discusses the role of AI tools and Markdown in modern development.

- Fundamentally about automation
- Get wicked good bash
- Learn Go really well — especially REST API development
- Spending most time creating tools for developers to use
- Getting really good with modern software development practices
- Develop a sense of what developers need to help the enterprise
- Get really good with cert and secrets and oauth
- Learn to provide and setup visibility and tool
- What are any gaps I might have?

Chapters:
0:00 Why this question and the Go essentials
1:40 Role of a SysDE in legacy environments
3:00 Gaps: Claude, agentic AI and API work
5:00 Seeing the enterprise holistically as an architect
7:20 Skills, knowledge and abilities
8:40 Asking ChatGPT about sysadmin to SysDE
10:00 Automation, Ansible, Argo CD and K-SAP
11:40 Bash and why Go wins over Python
14:10 Systems as products and internal CLIs
15:30 Certs, secrets and OAuth
17:20 Observability: Grafana, Prometheus, Elasticsearch
20:00 SysDE versus DevOps and cloud roles
21:00 Software engineering practices and testing
24:00 Ansible, OpenShift and Red Hat
25:50 Containers, Kubernetes and Slurm
27:40 Story: building a server compliance platform
31:30 Building platforms, not maintaining servers
34:50 Idempotency, Claude and Markdown
39:00 Recap: SysDE, DevOps and platform engineering

`#sysde #golang #devops #automation #kubernetes #bash #sre #careeradvice #ansible #linux #techjobs #advice`

## Category

Education

## Transcription

[00:00:00] So, I got a common question from someone who's already in the industry is asking how to
[00:00:06] transition to a systems development engineering job and before I answered it and just put some
[00:00:12] of my own thoughts out there, I wanted to make a video about it just to get the comments
[00:00:17] out there rolling to get people in here.
[00:00:22] I do really want to help invite people who have got more input into this to comment on
[00:00:27] threads like this to try to help and maybe that'll bubble up the visibility of this video.
[00:00:35] But in a nutshell, you got to learn go.
[00:00:39] I mean, that's like the number one thing.
[00:00:41] If you really needed learning it well and that means especially API development, REST
[00:00:53] API development, I mean I had to be precise with that because the core responsibility of
[00:01:03] a systems development engineer is to facilitate use of existing systems by developers.
[00:01:13] So you're spending almost the entire time spending most time creating tools or developers
[00:01:23] to use in order to access the most important pieces of the industry, of your IT department.
[00:01:40] And I'm an HBCML, which means that we are primarily responsible for, you know, currently
[00:01:48] we're migrating, we're actually, we're injecting code into an existing Perl code base so that
[00:01:56] it can leverage SLURM transparently as an additional piece of architecture to PBS which
[00:02:03] has been in the environment for over 20 years.
[00:02:06] So that's where my main priorities lie.
[00:02:12] And I think that that's probably similar for a lot of large companies.
[00:02:16] They already have existing systems.
[00:02:18] So the SISTI's job, in my opinion, is to bring forward modern development techniques by putting
[00:02:29] in that layer of abstraction between the legacy or the old systems and allowing modernization
[00:02:36] into the new development environments and stuff.
[00:02:38] And so that's just the general idea of the whole thing.
[00:02:41] So you're spending a lot of time writing code, you're spending a lot of time understanding
[00:02:47] the applications that enable that code to work.
[00:02:50] So that means getting, obviously, getting really good with software development practices.
[00:03:00] And, you know, and for me, I have some gaps here, so I'm not very good with CLOD.
[00:03:08] I haven't used CLOD, at least got a little bit to test it out and I need to get good.
[00:03:12] In fact, some of you recently told me about a CLOD certification that was just announced
[00:03:16] like last week or this week and I plan on getting it even though I'm in my 50s.
[00:03:21] Just because I think it's a, I think everybody should do it.
[00:03:24] It's a multiple choice test.
[00:03:25] It's obviously a pat on the back like, hey, you know, CLOD, you don't really don't need
[00:03:29] a certificate.
[00:03:30] I made a whole video about why certify, which you can go watch to determine whether you
[00:03:34] need a cert or not.
[00:03:37] But I think it would help me to encapsulate the learning that I feel like I need to get
[00:03:42] really good with agentic AI, you know, LLM, large language model development.
[00:03:48] So I mean, not the development of them, but the use of them for development, particularly
[00:03:52] when it comes to systems like so crafting, crafting a REST API is a pretty common thing.
[00:03:59] So, you know, craft a REST API using that, you know, following this specification from,
[00:04:10] you know, whatever API, Apigee, for example, whatever API platform that you use to define
[00:04:15] the API and then implement it, you know, in this language or implement the stubs in this
[00:04:22] language, I think, I think that kind of work is going to really dominate going forward.
[00:04:29] There's going to be a lot of work to simplify and modernize the middle layers of APIs and
[00:04:37] just to consolidate them.
[00:04:39] Another big problem is in the microservices world, which kind of went crazy.
[00:04:44] We have too many tiny microservices and a lot of those are being combined together into
[00:04:49] single microservices and single services that have a multiple endpoints or in terms of like
[00:04:55] Web APIs stuff.
[00:04:57] So you've got to, obviously, you've got to learn to code.
[00:05:01] You probably already have this, but you've got to really develop a sense of what developers
[00:05:11] need to help the company, the enterprise.
[00:05:19] So that means that you've got to see things holistically.
[00:05:23] And this is something I think that most people who are transitioning into a SISTI career
[00:05:28] from either software or operations don't have as much trouble with as, well, actually,
[00:05:38] I think people coming from the software side of things are going to have more problem with
[00:05:43] this than the people who are coming from the operations.
[00:05:45] So people who go to the SISTI, which kind of sits in between applications and operations,
[00:05:49] I personally think that the software people have a bigger struggle because they are used
[00:05:55] to seeing large applications with multiple pieces, but they're not used to seeing, in
[00:06:01] my opinion, the overall architecture and how the architecture serves the company.
[00:06:10] They see how their application serves a specific user, which is good, but they don't necessarily
[00:06:16] see how the larger picture, that could be, it depends on the person, but you really have
[00:06:23] to like back away and this is like an architectural skill, right?
[00:06:28] So I think the SISTI career, in my opinion, fundamentally includes a sort of senior IT
[00:06:36] architecture role as well.
[00:06:38] In fact, I spend a lot of my time in with the IT architecture hat on, you know, and not
[00:06:47] even writing code, which is one of the reasons I like AI so much, is I can dream up ways
[00:06:51] to integrate the systems to simplify and remove, you know, points of failure and risk and layers,
[00:06:57] you know, and I can say, okay, hey, this is what we should do here and this is what we
[00:07:01] should go here, and having the ability to like bring those things together, I don't know
[00:07:07] how you would develop that.
[00:07:09] So in the collection of, you know, skills, knowledge and abilities, SKAs that I learned
[00:07:15] from my ex-wife, actually, from Target, that's one of the things they would evaluate them
[00:07:20] on.
[00:07:21] Skills are things that can be developed like, you know, typing speed and coding, knowledge
[00:07:27] is obviously you can develop it by learning about how to do it, reading, it's more, you
[00:07:30] know, baseline knowledge you can call on, and you know, that includes learning how to research
[00:07:35] really quickly using AI or search engines, but then there's abilities, and abilities
[00:07:39] are harder to develop, it can be developed, but abilities are innate for the most part.
[00:07:45] So that means do you see connections?
[00:07:49] Do you see the overall big picture?
[00:07:51] Or does your brain live in that space all the time?
[00:07:54] And abilities are much, much harder to develop, you know, lifting 500 pounds, yeah, you can
[00:08:00] develop that, but you don't get it overnight, right?
[00:08:02] You've got to like really, really put yourself in multiple situations, you can't just like
[00:08:06] go take a course on, you know, how to see the enterprise better.
[00:08:13] But I do think that that's, so developing a sense of what's needed is an ability that
[00:08:20] if you either have it or you need to learn it, but before we leave this, let's go ahead
[00:08:26] and ask, and let's go check my understanding to see if I'm right on this, yeah, and we
[00:08:32] will talk about what technologies are involved, like what are your gaps.
[00:08:36] So let's talk about that.
[00:08:39] So what are any gaps I might have?
[00:08:44] And it depends on where you're coming from, but let's go ahead and ask my chat GPT about
[00:08:50] this, which I would encourage everybody to do.
[00:08:53] How can I transition to a SISDE role from more of a traditional SIS admin role?
[00:09:07] I think the first thing she's going to tell, Chloe is the name of my chat GPT, she's probably
[00:09:11] going to tell us coding because that's just kind of a part of it.
[00:09:18] I'm actually in a great position, a lot of the best system E's.
[00:09:20] I've known and start with strong system and you gradually replace manual operations with
[00:09:24] code.
[00:09:25] So this is where the SISDE role is kind of the same as the SRE role.
[00:09:29] I always hated the site reliability engineer title from Google, which was related to, this
[00:09:36] is the site stay up, but they brought in the scope of that definition to mean all kinds
[00:09:40] of things.
[00:09:41] And it always bothered me, I actually really like the SISDE title itself.
[00:09:46] And the Mind Center traditional system intends to think, how do I configure this system so
[00:09:51] it works?
[00:09:52] The SISDE thinks, how do I write software that creates and operates the system automatically?
[00:09:57] So yeah, this is fundamentally about automation.
[00:10:02] So, you know, fundamentally about operation, about automation.
[00:10:13] And that means learning things that normally wouldn't be in a system administrator role,
[00:10:19] such as, not just how to code, but how to use operations tools, like how configuration
[00:10:25] management with Ansible or whatever, you know, CICD and deployment of applications in RGO
[00:10:32] CD, for example.
[00:10:35] The standardization of how you're going to install Kubernetes applications, so the Kubernetes
[00:10:40] app, the K-SAP specification, which I created in our enterprise, it's since been contributed
[00:10:46] to by many people on the team, which is really great, and we're taking it to a V3 and our
[00:10:52] V3 K-SAP specification, which we actually might go public with and present at a KubeCon, is
[00:10:58] which uses something that predates the rendered manifest pattern, which is the same thing,
[00:11:02] which is take your Helm chart, flatten it, and then put it in Git so you can detect changes
[00:11:07] to it as you're doing your deployment, and then automate the deployment using kubesprayer
[00:11:11] Ansible.
[00:11:13] So, you know, so all the technologies that go with automation, that means you've got
[00:11:18] to have like wicked, good, bash scripting skills, bash scripting.
[00:11:28] I'm not talking about bash scripting and Python scripting, now my buddy, my co-sisty,
[00:11:38] probably the lead sisty on the team, besides me that we work with together, he just tests
[00:11:45] Python.
[00:11:46] When he got on the team, he was like, "Should I write this in Python or go?"
[00:11:50] I was like, "Well, I've written the only go code on the entire team, and everybody hates
[00:11:55] me before, I can't write it or maintain it."
[00:11:59] It was the right thing to do, by the way, k-login, or login tool, and I said he wanted to make
[00:12:06] an API, not just an API, but eventually wanted to make an API.
[00:12:12] As did I, that's just how we came together, but he wanted to make a singular library of
[00:12:18] all the common commands that we do, and get rid of all this like ones, you choose scripts
[00:12:21] everywhere, and I said, "Should I do it in Python or go?"
[00:12:24] I said, "Well, the team is more of a Python team, but I love go, I think it should be
[00:12:28] better to go, because it would be self-contained."
[00:12:30] He ended up putting it in go, thank God.
[00:12:32] He started it in Python, and then I took the tool, and I ported the tool from Python to
[00:12:40] go, the whole thing, because I felt kind of bad that I told him to do it all in Python,
[00:12:48] but we needed this one binary, and we're having trouble with it, and I was like, "No, we need
[00:12:51] to get all of that.
[00:12:52] That's all got to be in go."
[00:12:53] We imported all, we've never looked back.
[00:12:55] We didn't even talk about the dark times when it was written in Python, and that's really
[00:13:01] why you have to learn to go.
[00:13:02] Go is the perfect language for this work.
[00:13:07] You get a single binary out of it.
[00:13:09] You can write tooling, you can write API, you can write single app containers that don't
[00:13:17] have an operating system, they're just a single binary in there.
[00:13:20] You cannot do any of that with Python or Bash.
[00:13:24] If you're going to put Python in a container, you have to have a full teeny operating system,
[00:13:32] like Alpine or something, and then put Python in there.
[00:13:36] But unfortunately, you can't get away from Python.
[00:13:38] I haven't officially coded Python for this team ever.
[00:13:45] I've coded either in Bash or Go, in fact, I'm going to take Python off here, because
[00:13:50] you don't even need Python for Ansible.
[00:13:53] Ansible is already written, as long as you use the existing things, but yeah, you've got
[00:13:58] to be really, really good with Bash.
[00:13:59] That means you should run everything for shell check and shell up in a shell up in teeth
[00:14:03] or not doing it.
[00:14:04] You need to get really good to go, because all the applications in this space are written
[00:14:07] in Go.
[00:14:08] We need to be able to read those and write them, and you're going to spend most of your time
[00:14:13] creating tools for developers to use in automations.
[00:14:16] Let's go back to what she says.
[00:14:18] The job stops being about service and because of systems as products.
[00:14:22] Oh, I love that.
[00:14:23] That's what it is.
[00:14:25] Our V3 and our API, our API is our product and all the development teams use my API that
[00:14:31] we wrote.
[00:14:32] A typical responsibility is to start looking like writing automation tools, building internet
[00:14:36] CLIs, internal command line interfaces and APIs, again, this is, I wrote my own command
[00:14:42] line interface like library, Bonsai, because of this.
[00:14:47] It means writing common functionality and putting it into modules that can be reused
[00:14:50] and loaded into mostly Go or Bash.
[00:14:56] That's why Bash falls on its face, by the way, as soon as it depends on some common
[00:15:00] code someplace, you really are writing it in the wrong language.
[00:15:04] Taking infrastructure orchestration systems, we've talked about that, it's not just leveraging
[00:15:10] the ones that exist, but writing your own Cube Spray manual additions, which we've done.
[00:15:15] We actually work the Cube Spray source and alter it to use our own.
[00:15:19] We use it as a sub-command module, which I don't like, but it's the best way to get Kubernetes
[00:15:24] employed.
[00:15:26] It means doing other things with, as I mentioned, Argos CD already.
[00:15:34] Those are the main systems as far as I know.
[00:15:36] It means getting really good with secrets management.
[00:15:39] I should probably put that there, get really good with cert and secrets and OAuth.
[00:15:50] This is actually probably one of the biggest sticking points that I think a lot of systemies
[00:15:55] have is that they don't understand OAuth.
[00:15:58] Honestly, a lot of them don't understand certs.
[00:16:01] We have sys admins who have tried to manage certs and totally done it wrong, so the cert
[00:16:07] doesn't match everything or they have too many certs, and certs are hard to understand.
[00:16:13] They're really hard to keep fresh in your brain.
[00:16:18] Next time we have to work with certs, I'm really going to lean heavy on AI.
[00:16:22] I think AI is probably one of the areas that can best benefit from AI as cert management,
[00:16:27] because there's so many little things that you have to use together to get a proper cert
[00:16:33] setup and maintain it well, especially in the world where certs are being forced to
[00:16:37] be renewed once a month.
[00:16:42] That's the thing.
[00:16:43] There are cert management tools that Tommy Fondell has told me about in the past.
[00:16:48] Some companies have a one-day cert policy, and they have cert engines that are serving
[00:16:54] off.
[00:16:55] Knowing how to authenticate and manage all of that and keep it all safe, that's a big
[00:16:59] part of this job.
[00:17:00] I'd say that's probably, to me, that's one of the most challenging parts of this job,
[00:17:05] because it's not obvious.
[00:17:07] It's hard to do that stuff.
[00:17:09] It's the same thing every time, but it's one of those things where you forget it because
[00:17:14] you're not doing it every day, and it's so important that you get it right, because if
[00:17:19] you get it wrong, stuff stops working big time, you have big time outages.
[00:17:24] Learning infrastructure or orchestration systems, we talked about that.
[00:17:27] Monitoring deployment provisioning, yes.
[00:17:30] I don't consider integrating monitoring into the thing, but it is in there, so you've got
[00:17:39] to learn to do.
[00:17:40] This is really system and stuff, right?
[00:17:44] Learn to provide and set up visibility tools.
[00:17:50] That means, alas, the search, it means, you know, it was an open trace, what is it called?
[00:17:59] The common trace one?
[00:18:01] It means learning how to set up whatever your monitoring is and how to integrate your monitoring
[00:18:06] visibility and logging tools.
[00:18:12] Everybody's different.
[00:18:13] We're evaluating data trace right now.
[00:18:14] It seems like a constant argument in the company about what tool we're going to use for visibility
[00:18:19] and logging.
[00:18:20] We're running Alastair Scarpana, Prometheus, and now dynasty on top of everything else.
[00:18:31] These are things that you have to know, and whether you're creating a Prometheus exporter
[00:18:36] or a Prometheus service is a pretty common thing you have to do.
[00:18:42] You probably already have that if you've been a systems administrator of some kind, because
[00:18:47] modern system administration, I'm speaking to the old parts out there, it requires more
[00:18:52] than just looking through the sys logs, you know, nobody goes in our log anymore.
[00:18:58] They write in the last a search query to get all that same information, and then they set
[00:19:02] up exporting of all their logs into a central server.
[00:19:05] If you're still dealing with logs directly, you're living in a really old decade past.
[00:19:12] So make sure you learn all those tools, they're kind of assumed these days, if you're a system
[00:19:18] administrator or operations person, it's kind of assumed you know how to make a Grapana dashboard.
[00:19:22] This is something I had to learn relatively late in my career, was how to set up Grapana,
[00:19:28] how to make a Grapana dashboard, how to set up Prometheus, how to install the Prometheus
[00:19:34] agents on the different nodes and stuff, how to write my own Prometheus monitoring tools
[00:19:39] that I could leverage in Grapana, how to set up Elasticsearch, how to run it, how to make
[00:19:45] an Elasticsearch query, how to tie Elasticsearch queries into Grapana dashboards.
[00:19:51] Those are all really, really critical SIST-E skills, even though they kind of come along
[00:19:57] with the sys admin role that's kind of implied in a SIST-E.
[00:20:01] It's implied as a SIST-E, in my opinion, that you can do, you can hold your own as a software
[00:20:07] developer and as a system administrator, an SRE or old school admin, but you're kind
[00:20:14] of the combination of the two.
[00:20:17] Other people would call, but they have different names for this role.
[00:20:20] Some people would call it DevOps or Cloud Native Engineer, I don't agree.
[00:20:23] The Cloud and Native DevOps and those kind of engineering roles, to me, are more about
[00:20:30] using the Cloud GCP Azure to kind of assume that you know how to integrate with that.
[00:20:34] That is not true for SIST-E, a SIST-E is doing a lot of development for things on site.
[00:20:41] You might be hosting in the Cloud, but your work is not like getting good at Cloud.
[00:20:46] I never touch the Cloud in my job every day, never.
[00:20:50] I don't use it for anything.
[00:20:52] We build our Cloud and we make our Cloud available to other people.
[00:20:56] I don't know if that's a flavor of the SIST-E role or if it's universal, but I don't know.
[00:21:02] Using infrastructure like software projects, this is absolutely so key, making sure everything
[00:21:08] is in Git, every configuration.
[00:21:10] In fact, deploying configurations automatically through GitOps and through Git-A actions,
[00:21:15] GitHub actions, those are all needed.
[00:21:18] The kind of work you're going to do with bonsai command framework and automation is very close
[00:21:21] to SIST-E or Git.
[00:21:23] Strengthening the programming side, the biggest difference rate is real software engineering
[00:21:26] practice.
[00:21:27] Going on a real language, most SIST-E teams use one of Go, Python, Rust, and occasionally
[00:21:33] Java.
[00:21:34] I cannot imagine what a pain in the ass using Rust would be as a SIST-E language.
[00:21:41] I can't even imagine it, unless you had to do really low level integrations, it's such
[00:21:49] a horrible language to write in quickly.
[00:21:53] Python and Go are way, way faster for quick development and that's kind of implied in
[00:21:58] the role is that you're going to develop things quickly and you're going to iterate quickly
[00:22:02] and that everybody is going to be able to understand your code.
[00:22:06] I get big enough problems using Go.
[00:22:08] I cannot imagine my second level manager who wants to be able to read the source code of
[00:22:12] stuff that we're doing, could never read Rust, it would be ridiculous for us to do that
[00:22:17] in Rust.
[00:22:18] Already, we already have to justify Go and Go is super easy to justify since every single
[00:22:24] operating system, since every single core native cloud application is built and Go.
[00:22:30] Go is extremely dominant for infrastructure tools, Kubernetes, Docker, Terraform, which
[00:22:34] fits into your interests already.
[00:22:37] The software engineering discipline learned to treat infrastructure tools like software
[00:22:40] products, unit tests, integration testing, structure logging.
[00:22:43] This is the problem, I actually talked about this earlier in my challenge video.
[00:22:48] The system administrator, operator, SRE people, they don't understand why they need a unit
[00:22:53] test.
[00:22:54] They don't understand why they need to put this code here into a function so it can be
[00:22:58] tested when it's just parsing a job ID.
[00:23:01] They don't understand it.
[00:23:02] It doesn't come naturally to them.
[00:23:04] Well, how am I supposed to test this?
[00:23:06] I'm like, well, you just run the application.
[00:23:08] We're talking about a big application just to test the one thing.
[00:23:13] The idea of integral unit testing and functional programming is foreign to the entire group,
[00:23:19] and you just have got to be ready to help justify why you want to write testable code.
[00:23:24] CI pipelines, packaging, and versioning are handling, structure, and logging, and integration
[00:23:29] tests.
[00:23:30] So integration tests are a different thing.
[00:23:33] Sadly, we don't have a lot of integration testing.
[00:23:37] Most of the time, that means applying it to a sub-environment, and your tools shouldn't
[00:23:43] feel like scripts, they should feel like products, yes.
[00:23:46] This is a thing.
[00:23:47] So you're spent a lot of time taking that one's bash script that's existed forever
[00:23:50] and modernizing it, putting it behind a web API or something.
[00:23:56] Start replacing shell scripts with tools, bash scripts with going Python, I do that every
[00:24:00] day.
[00:24:01] Manual server config with infrastructure as code, absolutely, SSH loops orchestration
[00:24:05] systems, ad hoc monitoring, telemetry pipelines, open telemetry, that's what I was looking
[00:24:10] for.
[00:24:12] You're going to run commands, automated workflows.
[00:24:17] So yeah, yep, that's so funny, because I wrote the SSH integration layer just so that
[00:24:24] our web APIs could talk to the existing system nodes that can't be communicated with other
[00:24:31] than through SSH.
[00:24:34] We can't put a microservice over there, it's not allowed.
[00:24:37] So cluster CTL is your tool.
[00:24:39] I wish I could use cluster CTL where you could just spin up a cluster by yourself.
[00:24:44] We've written basically our own cluster CTL tool in CUBE spray that does essentially the
[00:24:48] same thing.
[00:24:51] Terraform, if you're putting that many machines together, we don't use Terraform because we're
[00:24:57] an in-house provider, Ansible Sol puppet chef.
[00:25:02] We were on a chef and puppet for years, and we're now modernizing all an Ansible and OpenShift.
[00:25:09] So if you're not learning Ansible and OpenShift, make sure you're learning that.
[00:25:14] They're really the only one that matters right now, in my opinion.
[00:25:19] Red Hat, you can hate on it all you want, it doesn't matter.
[00:25:24] Red Hat has completely dominated the enterprise Linux space except for maybe Susie.
[00:25:30] Susie is still there in a lot of European companies that I've heard from, and it's still
[00:25:37] very dominant, it's actually mostly controlled by Microsoft these days.
[00:25:40] They own most of the engineers on Susie, as I understand it, work for Microsoft these
[00:25:45] days.
[00:25:46] It's a great distro.
[00:25:48] Susie was one of my first distros, but I couldn't read it because it was in German.
[00:25:54] You've got to know containers, you've got to know containers so well.
[00:26:00] If you don't know, anybody who doesn't know containers today is really going to get left
[00:26:04] behind, specifically Podman containers, Podman and Aptainer containers.
[00:26:10] I think those are the two most important container engines.
[00:26:12] There's another one coming on the scene from the video, I forget the name of it, but knowing
[00:26:17] OCI containers, specifically Podman and Aptainer, which is the default in SLIRM, is super duper
[00:26:27] critical.
[00:26:28] You've got to know that.
[00:26:29] I know the difference between an OCI image, which you can access through a URL versus old-school
[00:26:35] Docker images.
[00:26:36] You probably should learn a little bit of Docker in order to understand how much it
[00:26:39] sucks, and container D is implied in all of this.
[00:26:45] Podman backed by container D, orchestrations, Kubernetes and SLIRM and HPC, no mad is one,
[00:26:51] but really, you don't need that.
[00:26:53] You need Kubernetes and SLIRM, the end.
[00:26:55] If you're going to work in high performance computing, you need SLIRM, the end.
[00:27:00] If you're going to work in anything else, you need Kubernetes, because that is the
[00:27:03] orchestration framework, and it's not going anywhere.
[00:27:07] It is not going anywhere.
[00:27:08] I've been wishing it would die, and I hate it's complexity for years.
[00:27:12] It's not.
[00:27:13] It's not.
[00:27:14] It's like saying Python's going to go away.
[00:27:17] Prometheus, Kepano, Pentalometry, those are the things I mentioned.
[00:27:20] You don't need all of them, but you'll definitely need this metal model.
[00:27:23] Real Sisty works when you're going to stop maintaining servers, start building platforms.
[00:27:28] This is funny, because I got famous, my team and I got called in when I was at IBM to build
[00:27:39] a tool called Virtual Server Administrator.
[00:27:44] This was way before any of this stuff was done, and I was doing Sisty-E work before I
[00:27:50] knew there was a title.
[00:27:51] That was the title for it, because I had been writing a lot of pearls.
[00:27:57] I got pulled in on a team, and their job was to manage a bunch of servers, and to just
[00:28:03] check them for security compliance and stuff like that, but to do it at a massive scale.
[00:28:09] I'm trying to give you a sense of what the job entails by telling you about this.
[00:28:15] I wrote a compiled pearl using something called Pearl-the-E-X-E.
[00:28:21] This is what we only had back then, there was no go.
[00:28:25] It would run, I wrote a transport layer, and you'd run this agent on all of the nodes.
[00:28:32] We didn't call them nodes back then, we just called them servers.
[00:28:36] It would report up all of its stuff, and then it would go to a central thing, and then it
[00:28:42] would, that central huge database that I wrote, the first time I ever wrote a really substantial
[00:28:47] database model, which I wrote in DIAB, by the way, like diagramming tool, which you
[00:28:53] can use to export SQL for the DDL, and actually that was the area when I printed out all the
[00:28:59] Postgres.
[00:29:00] I taught myself Postgres, and I taught this huge thing in Postgres.
[00:29:04] I don't even think you need to learn database tools and Postgres and stuff like that today.
[00:29:09] I don't think you would need that to be a cisTE, because those tools already exist, especially.
[00:29:15] Who knows?
[00:29:17] You might have to integrate, you might have to write database integration layer at some
[00:29:21] point, but usually more about using the tools that already exist, but no, but you probably
[00:29:26] do have to write some of that, because you're going to have to, like the metadata about
[00:29:30] a server, we still suffer with that.
[00:29:32] It's probably going to be one of our next projects in the new year.
[00:29:34] We still suffer with having a common metadata database for all of our nodes, all of our
[00:29:38] computer notes in the enterprise.
[00:29:42] We've got a whole bunch of tagging going on.
[00:29:44] We've managed everything for tagging, but we don't have a centralized way to query that.
[00:29:52] We've tried to stuff it into annotations and tags and Kubernetes and annotations and tags
[00:29:55] and slurms like that, but sometimes you need to have just an extra metadata thing on the
[00:30:00] box, but then the metadata gets inevitably out of sync with what's on the system, blah,
[00:30:04] blah, blah.
[00:30:05] That's what kind of fills that space, so I don't know how much databases, how much database
[00:30:09] integration you would have, but that's what I ended up building.
[00:30:11] It was this thing that would report compliance, and then we had a dashboard that would show
[00:30:15] what machines are out of compliance and what it weren't, and the holy grail was that we
[00:30:19] would remediate that and that meant giving root access to all these, to these agents that
[00:30:24] ran out of the systems to fix them, but that was the role, and it was so successful that
[00:30:28] it actually fired a bunch of systems and kept us around, that's the true story.
[00:30:35] Eventually, our tool became better than Tibley, and Tibley got embarrassed and paraphrasing.
[00:30:42] This true story that sells people would sell our customers on this thing that we had in
[00:30:50] global services, and we had customers start asking ourselves, people, what about Tibley?
[00:30:56] I'm paying for that.
[00:30:57] When Tibley got word of that and got mad, and Tibley consumed us, they had a hostile
[00:31:02] takeover of our team, and I became a Tibley admin and made an extra 30K a year.
[00:31:09] It's really funny.
[00:31:11] I saw Tibley developer overnight, because Tibley software management product was very strongly
[00:31:20] in the SIST-E space, the systems management and development space, and we had Tibley monitoring
[00:31:26] everything, and so you're not maintaining servers, you're not just keeping up and running,
[00:31:32] you're building platforms, and these days, you don't really care if a server stops working.
[00:31:38] You distribute your work across multiple nodes, compute nodes, that's why they're called
[00:31:41] nodes and not servers, because a server is like, "Oh my God, don't let the server go
[00:31:45] down and we're all going to die."
[00:31:47] These days, that's not a thing anymore.
[00:31:49] It's like you run multiple of them, and they're all serving.
[00:31:53] The idea that you would have a single point of failure and a single server is ridiculous
[00:31:56] in 2026.
[00:31:59] You would deploy through Kubernetes, you have multiple pods, and if you're running a Slurm
[00:32:04] Jobs, you have different nodes, if the job dies, it'll go over to another node automatically.
[00:32:11] That's modern SIST-E work, is keeping everything working, deploying framework, CICI pipelines,
[00:32:19] provisioning, scaffolding, internal CLIs.
[00:32:23] We have a model with CLI, which is where we dump all of our stuff.
[00:32:29] Creating developer environments, and think about tools that will make your team faster,
[00:32:34] build up portfolio of systems, this is easier to move roles.
[00:32:37] Example of great SIST-E from Pro Go projects, cluster bootstrapper, yeah, that's what we
[00:32:45] did.
[00:32:46] We've got a way to not only, we have a tool that will bring up a cluster from scratch.
[00:32:56] If we give it the list of nodes, and then we run this kubespray recipe-ish thing, it will
[00:33:03] stand up a cluster from scratch on those machines.
[00:33:09] Using kubespray, you could do it in any other number of ways.
[00:33:13] There's a lot of other tools to do that.
[00:33:16] If you want to take it one step further, you can even provision the hardware if you have
[00:33:20] a VM environment, but we don't, because we're a high-performance computing, so that means
[00:33:24] all our stuff's hardware.
[00:33:26] Which means that we have a way of imaging, and we have pre-check scripts that run on
[00:33:32] systems that have been provisioned in the hardware space to make sure that our hardware
[00:33:35] matches everything else.
[00:33:38] There's actually a proposal on the table that I just evaluated to automate all of that,
[00:33:45] which means, but at a certain point, you can't automate.
[00:33:48] At a certain point, somebody's got to go put the computer in the rack.
[00:33:54] You can't automate that.
[00:33:57] All the other stuff, once the hardware's in there, setting it up, provisioning it, making
[00:34:03] sure it has the proper network bandwidth required for that particular system, that it's reporting
[00:34:08] well to all the other systems, that it's not been allocated to both Kubernetes and Slurm.
[00:34:15] It has a dedicated purpose as a node.
[00:34:21] Provisioning and automating VMs, infrastructure as code, infrastructure as code does not really
[00:34:26] apply in the HPC space I'm finding is more and more.
[00:34:30] The more and more I get into this with HPCML, and the more I realize that that stuff is
[00:34:36] hardware, the problems that face the hardware HPC team, the team that's fundamentalized
[00:34:41] nodes are actual nodes, they don't fall neatly into the, "Oh, let's run a firecracker VM
[00:34:48] automatically."
[00:34:50] It's more about taking hardware and managing it.
[00:34:54] Make sure it's the right data center, and that you have the data center distribution
[00:34:59] of the nodes properly, so if the node got bombed or something.
[00:35:04] In selling Kubernetes to Slurm, registering, monitoring, deploy services, check those services,
[00:35:12] happy, healthy, look them up in Grappana, learn to design systems, that interview will
[00:35:17] focus on system design, reliability, scalability, failure modes, and automation.
[00:35:23] Automation is a big, big piece of this.
[00:35:25] I think in terms of control planes, agents, APIs, and events, events queues, and item
[00:35:30] potent operations, item potent is a big, big word in system DE, it's a big word in all
[00:35:38] of this.
[00:35:39] Item potent simply means that you declare what you want, and then the system over time
[00:35:45] creates that situation.
[00:35:47] I want three servers that are doing this and this and this, and it will maintain the state
[00:35:52] of the system.
[00:35:53] That's what Kubernetes is so good at, despite its complexity.
[00:35:56] It's really amazing.
[00:35:57] You can say, look, I want three servers constantly answering this thing about this thing, and
[00:36:03] then if one of those pods goes down or gets bad or out of health, or you can even kill
[00:36:07] it, and it'll automatically make a new one because of the item potent declaration that
[00:36:12] I want three of them.
[00:36:14] And then the system knows that you want that third one, and then we'll do it.
[00:36:19] The thing that's really great about item potent operations is that they are meshing really
[00:36:24] well with the idea of systems development.
[00:36:28] Recently, I've been learning CLOD, and I don't know it very well.
[00:36:33] I think you should learn it, but item potent stuff, I was reading about the CLOD MD file.
[00:36:40] So one of the things that I don't like about CLOD, at least when I initially used it, is
[00:36:45] that it doesn't remember context, at least I didn't, not the way I was doing it.
[00:36:49] If you provide a CLOD MD file in Markdown, which is an essential skill now, Markdown
[00:36:54] was always like, help you document things, not anymore.
[00:36:57] You're now coding in Markdown.
[00:37:00] Markdown is the language of programming AIs because you write the prompts in Markdown.
[00:37:07] These complex prompts are written in Markdown.
[00:37:09] So we're going to talk about that in the beginning of this later, but if you're not mastering
[00:37:13] Markdown, well, you are not going to be able to make AI work, and therefore you're not
[00:37:19] going to be able to develop anything.
[00:37:21] So spend some time on it, get it right.
[00:37:26] But in Markdown, so the Markdown specification of what the context is for a particular Git
[00:37:32] repo during a software development project with CLOD is largely an item potent thing.
[00:37:37] So the reason you're putting it in there is so that when CLOD does anything, CLOD remembers
[00:37:42] the item potency of the main prompts that were required for the context of that development.
[00:37:49] It's like, no, I never ever want to use JavaScript here.
[00:37:52] I only want to use this go tool.
[00:37:54] I want to use this thing.
[00:37:55] Those are item potent declarations about how the system should always be from a software
[00:38:03] side of things.
[00:38:05] From a server administration side of things, it's more about, oh, I need three servers
[00:38:09] all the time, or I always want two database connections or I, you know, whatever.
[00:38:15] So those, you know, it's like, this is how I want my system to always be, and then the
[00:38:20] system maintains all that for you, which gives you really easy opportunity to maintain four
[00:38:25] nines of time.
[00:38:27] And as long as you can eliminate the single points of failure, like in our case, Harbor,
[00:38:33] which when it goes down, nobody does anything because we got, that's the only thing that
[00:38:36] serves up containers, I really wish that I could figure out how to add Harbor redundancy,
[00:38:43] you know, other than deploying it in Kubernetes so that all the pieces are there, if all that
[00:38:49] entire Kubernetes cluster went down, what would happen, right?
[00:38:54] So I don't know that those are bigger meta pictures and questions.
[00:38:57] So I've spoken way too much in this video.
[00:39:02] So I'm just going to recap, mark making the market transition.
[00:39:05] You don't need to say I want to stop being a system and I specialize in building automation
[00:39:09] infrastructure software.
[00:39:10] There you go.
[00:39:11] That is, that is the rule.
[00:39:14] And many people move through system into DevOps, the platform engineering to SISTI.
[00:39:19] In fact, I've been called my manager in recent, my recent performance review in which I got
[00:39:25] a kick ass race and bonus.
[00:39:28] I was called a platform engineer in there, a senior platform engineer, but it's really
[00:39:34] more about SISTI to me.
[00:39:36] So they do kind of relate, and I think this is, I'm glad she mentioned this, because these
[00:39:41] terms get confused and I like how she organized it.
[00:39:46] DevOps is kind of like adding cloud to system administration and some coding.
[00:39:50] Platform engineering is like adding a lot more coding and sort of architecture to the
[00:39:56] DevOps role and then along with a lot of other CI/CD and then SISTI is like 100% about building
[00:40:03] automated systems and actually writing code to develop new systems that do that, that
[00:40:09] do that automation.
[00:40:12] The real change is manual operations going to infrastructure software.
[00:40:17] So yeah, I am writing infrastructure scripts or infrastructure software, script versus
[00:40:22] software, bash versus go, pearl versus go, well that's sort of software and you're there.
[00:40:29] So skill measures companies like Amazon, Google, Stripe are looking for hiring SISTIs.
[00:40:35] Well, that's good to know.
[00:40:37] So, and I think as we're saying that three people on my team went to work for NVIDIA.
[00:40:42] They left my current company and worked to NVIDIA and I'm quite confident they're working
[00:40:47] there as SISTIs even though they're not very good coders.
[00:40:49] None of them, they would be the first people to say that, by the way.
[00:40:53] So the transition, the short answer is learn how to code, good, well, learn how to code
[00:40:59] well.
[00:41:02] Yeah, so anyway, that's it.
[00:41:10] Please put the comments down in the section below if you disagree, hopefully be nice about
[00:41:14] it.
[00:41:15] And yeah, please put as many comments as you like.
[00:41:17] I really like comments.
[00:41:18] I'm going to start reading them a lot more.
[00:41:21] They're really good for promoting visibility apparently in the videos.
[00:41:25] Don't forget to do the whole like and subscribe thing so that other potential SISTIs can
[00:41:29] find this stuff.
[00:41:31] It helps with the visibility, you know, don't make any money on YouTube.
[00:41:37] Don't need to either, but so it just helps with the visibility.
[00:41:40] Appreciate it.
