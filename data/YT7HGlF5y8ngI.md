# ☕️ Is it worth going into tech with AI everywhere?

Argues that AI is reshaping tech careers, starting with a demo of an AI agent installing Slurm and writing Ansible playbooks, along with the security risks of giving it full laptop access. Examines which roles are most at risk, including tech writing, entry-level coding and cybersecurity analysis, and which are safer, such as project management, software architecture, operations and high-performance computing infrastructure.

Yes. But DO NOT go into tech writing, cyber security, and these other jobs without knowing how AI will shape them.

Chapters:
0:00 Using Claude agentically for Slurm and Ansible
1:41 Why tech writing is disappearing
2:45 Software engineering versus coding jobs
5:17 Books, docs and learning with AI
6:06 Cybersecurity analyst jobs and bug bounties
9:57 Safe careers: HPC, ML infrastructure, operations

`#ai #techcareers #cybersecurity #softwareengineering #claude #hpc #devops #ansible #techlife #techjobs`

## Category

Education

## Transcription

[00:00:00] All right, we've been using Cloud all day.
[00:00:02] I've been learning Cloud.
[00:00:03] You can see it here.
[00:00:04] It's helping me install Slurm.
[00:00:05] It's doing it way faster than I ever would.
[00:00:07] I don't know anything about Slurm, but it's teaching me about Slurm at the same time,
[00:00:10] and it's like wicked fast.
[00:00:12] It's writing Ansible Playlists for me, and it's amazing.
[00:00:16] It's absolutely amazing.
[00:00:17] I am a big fan once somebody, by the way, the documentation on the official Cloud site
[00:00:25] says you can't use Cloud Pro from the command line.
[00:00:27] It's all wrong.
[00:00:28] Even in their own documentation, some play cells, there's a thing that says here's how
[00:00:30] to do it.
[00:00:31] So the docs are out of sync, which I spent at least an hour fighting about, and then somebody
[00:00:35] in the chat is like, "No, you can.
[00:00:37] Here you go.
[00:00:38] Go do it.
[00:00:39] And now it's working."
[00:00:40] It's super awesome and terrifying, and I definitely am going to come up with a video
[00:00:44] about how to do this safely.
[00:00:46] Right now, Cloud has access to everything my laptop has access to.
[00:00:50] That includes my private email, every single photo I've ever taken, all of my GitHub keys,
[00:00:54] and potentially my bank accounts, my cookies for every single website I've ever been on.
[00:00:59] This is not the way to run Cloud.
[00:01:01] You should probably be running it in a container that has isolated access to your GitHub repo,
[00:01:05] a specific GitHub repo, and nothing else, and then run it in there to do us development
[00:01:09] so if it decides to get its own ideas about how to do things, it doesn't have access to
[00:01:13] anything.
[00:01:14] So that video will be coming.
[00:01:17] I think it's an amazing tool, but it's also terrifying how much access it has.
[00:01:21] That QBT doesn't do that because it's all shelled off in its own little window and it
[00:01:26] doesn't leave that window.
[00:01:27] Cloud's actually making changes to your own system, agentically, and that's fine.
[00:01:32] So should you be afraid of all of it?
[00:01:33] Yes, you should be really terrified if you're in tech because if you pick the wrong tech
[00:01:37] job, your tech job will go away.
[00:01:38] This is not fear-mongering.
[00:01:40] This is accurate.
[00:01:41] So let me tell you the jobs that I think, the top jobs that are going to be decimated
[00:01:46] by AI, the number one tech job that will not exist anymore is tech writer.
[00:01:53] That job is going away.
[00:01:55] The AI's can analyze an entire code base and write all of the stuff about it.
[00:02:01] They can completely understand an entire application and write user documentation for that in book
[00:02:05] form in 20 minutes.
[00:02:08] That job is gone.
[00:02:10] The tech writer job is gone.
[00:02:11] You need minor people that have decent ability to read stuff to be able to run it and those
[00:02:16] people are usually going to come from the development team or the HR team or the project
[00:02:20] manager team.
[00:02:21] So you're going to have project managers are going to be doubling as tech writers eventually.
[00:02:26] Project management is very safe.
[00:02:28] That job is going to stay because the project managers are going to be picking what's important,
[00:02:32] what needs attention, what needs to be run.
[00:02:34] Those jobs are safe.
[00:02:35] You can actually have architectural review from an AI that says, "Well, you should probably
[00:02:39] spend time here and here and here," but that will always take a human to pull the trigger
[00:02:42] on it and say, "I want to do this."
[00:02:45] This reminds me of another career, software engineering.
[00:02:48] Software engineering isn't going anywhere.
[00:02:50] You still need people to envision how the systems are going to be built.
[00:02:54] The architects, it just means that the software engineers are going to be software engineers
[00:02:58] and not coders.
[00:03:00] Programmers and coders, that job is gone.
[00:03:01] It was already decreasing at a rate of 7%, according to the Bureau of Labor and Statistics
[00:03:06] and a per year, and software developers, I'm software engineers and architects.
[00:03:11] Those jobs are shooting up and they're still shooting up.
[00:03:14] No matter how many times people say, "Oh, we can reduce our code or workforce."
[00:03:19] The people that are getting cut are the minor programmers.
[00:03:21] The people that interns, the people that are being told, "Hey, go write a function that
[00:03:24] does this or this.
[00:03:25] That can all be done in seconds with AI, and I have done it, and everybody else on my stream
[00:03:30] has done it."
[00:03:31] People are experimenting with it.
[00:03:32] It's scary because it still has to be PR reviewed, so make sure that stuff all gets saved,
[00:03:36] but what's happening is you still have a human involved.
[00:03:39] They're just approving the PR that gets merged.
[00:03:42] All the code that's going into the PR is being written by AI with prompts at any different
[00:03:48] level, and that's going to be the thing.
[00:03:52] You still have to know how to read code.
[00:03:54] You don't necessarily need to know how to write code.
[00:03:56] You need to add edit code, but you have to be able to read code.
[00:03:59] That means you need to be able to read code in the target languages that are going to
[00:04:02] be used, which is like, go for Cloud Native, Rust for a low-level kernel development or
[00:04:08] whatever.
[00:04:09] You have to know how those architectures work in order to get the prompts and in order to
[00:04:18] approve the PR.
[00:04:19] The people that approve PRs without reviewing them will die.
[00:04:23] Their companies will die.
[00:04:24] They'll go away the way of the 2000 boop.com bubble burst.
[00:04:28] This is not an AI bubble.
[00:04:30] This is not going to burst.
[00:04:32] The fact that people have fired people in the software industry because they didn't
[00:04:36] think those people were, firing them was probably premature, but the fact is those lower-end
[00:04:42] jobs for doing that development are never coming back, and they won't.
[00:04:47] Software development is going to be impacted the hardest.
[00:04:50] You don't have to be an educator or an entertainer or an influencer or an engineer to tell you
[00:04:57] that.
[00:04:58] It's obvious.
[00:04:59] It's going to affect it.
[00:05:00] Is it going to take your job?
[00:05:01] Probably.
[00:05:02] It's going to take the lower-end jobs, but it's also going to simultaneously catapult you
[00:05:06] up to senior program or status because you're going to be able to see.
[00:05:10] As long as you pay attention, you're going to be able to see what the code does and ask
[00:05:13] it to explain it to you in ways that no book could ever do.
[00:05:17] This is why books are going to cease to exist in the tech world.
[00:05:21] Books were already out of date instantly.
[00:05:24] Any tech book.
[00:05:25] It doesn't matter how iconic, like the C programming language.
[00:05:28] Other than it's the reason to keep it around for a fashion statement, they don't need to
[00:05:33] be existing.
[00:05:34] They don't use it because modern coding practice and C practice and stuff like that, even an
[00:05:39] AI that gets it wrong is still going to be better than a book that gets it wrong.
[00:05:44] I'm telling you, a lot of books get it wrong.
[00:05:45] Those books are all going to get consumed by AI.
[00:05:48] Tech writing is gone.
[00:05:49] Buying tech books is gone.
[00:05:51] Going to the docs is going to be right.
[00:05:53] The online documentation for the different tools that are out there is going to get better
[00:05:57] and better and better as more people discover this.
[00:06:00] That leads me to the absolute, other than tech writing, the number two job that it was
[00:06:06] going to be totally decimated by tech is cybersecurity analyst.
[00:06:11] That job doesn't exist.
[00:06:12] In fact, I would suggest that the one technical industry that is going to be completely blown
[00:06:20] away by AI is cybersecurity in general.
[00:06:25] The reason for this is because 52% of that, according to the leader of a cybersecurity
[00:06:30] firm, who got me to get out of cybersecurity because I didn't want to be writing documents
[00:06:34] all the time, and I said, "Well, I want to actually do things."
[00:06:37] I stayed in computing, which ended up being high-performance, saying, "I have machine
[00:06:41] learning computing," and stuff like that.
[00:06:42] I stayed in there.
[00:06:43] Thank God.
[00:06:44] If I had switched gears to become a security analyst, which would have been by all indications
[00:06:48] the right thing to do, according to the Bureau of Labor Statistics, it was increasing at 32%
[00:06:52] per year.
[00:06:53] It was the fastest growing career of all.
[00:06:55] This year, it's increasing at a rate of 25%, which is 10% less than it was before, and
[00:07:01] the data science jobs are passing it up, and that trend is going to continue.
[00:07:06] Business security analysts in particular are going away.
[00:07:09] Half of the job is writing security docs.
[00:07:13] There's a couple things that have hit already about this that I want to share.
[00:07:18] Autoropic is after finding 500 zero-day vulnerabilities in 30 minutes.
[00:07:26] The reason the AI is going to totally take over all of this stuff, they had the hacker
[00:07:32] today thing.
[00:07:33] They had to close it down because they were all these really sloppy AI reports that were
[00:07:36] coming in.
[00:07:37] We have people in my chat right now who are security people who can't get people to pay
[00:07:40] bug bounties because they can't prove that they are real and they didn't use AI to find
[00:07:44] it.
[00:07:45] So everybody, the industry, the window has closed where the people that used to pay
[00:07:51] bug bounty money are now realizing this is all crap.
[00:07:55] And so 2025 was the year that the whole industry woke up.
[00:07:58] It's too late.
[00:07:59] They're like, "No, we're not paying bug bounties at all."
[00:08:01] In fact, we're going to replace our internal security people, which they already did.
[00:08:05] That's why they're paying bug bounty because they didn't want to hire true security people
[00:08:08] internally because they're like, "Okay, if somebody happens to find a thing, we'll
[00:08:11] pay them out 20 grand, otherwise screw it because they don't want to pay, corporations
[00:08:16] don't want to pay."
[00:08:17] They never want to pay for security.
[00:08:19] So now they have even less reason to pay.
[00:08:21] They're just going to buy somebody's tool or product probably from Anthropic and they're
[00:08:26] going to say, "Hey, we've got this AI tool for you that will keep you safer than any
[00:08:29] bug bounty internal system would."
[00:08:31] And the number of security people is going to drop to maybe one super good guru who
[00:08:36] can do forensics because AI can't really do that.
[00:08:39] It can do bug bounty, but it can analyze everything in Metasploit.
[00:08:42] It can write the report for you.
[00:08:44] There's nothing left to do as an entry-level security analyst, period.
[00:08:48] There's a lot of people on the chat that were arguing that that was never really a job.
[00:08:53] It was always a push-buttons job, run Metasploit, write report, repeat, and run this.
[00:08:59] In fact, the biggest bug bounty people, that's what they did.
[00:09:02] They automated their bug bounty systems, they had big clusters internally, they were finding
[00:09:05] the really easy bugs, the low-hanging fruit, they were reporting them and collecting their
[00:09:09] checks, and they really shot up.
[00:09:12] They made a lot of money.
[00:09:13] They made a lot of buzz about it.
[00:09:16] Some of them made a lot of buzz about, "Hey, man, I don't even know how to code."
[00:09:19] I'm probably learning how to code Python.
[00:09:21] You know what I'm talking about.
[00:09:23] If you can spend any amount of time on YouTube, you'll see all the bug bounty get rich influencers
[00:09:29] and how fast those people all fell, "Thank God," I'm sorry, that was a little harsh,
[00:09:36] but I always hated that because they're like proud that they finally learned how to code
[00:09:41] after they've made all this ridiculous money after reporting super easy shit to find with
[00:09:46] the bug bounty program.
[00:09:47] That is all gone.
[00:09:48] That one that's gone.
[00:09:49] In fact, even Namsec is pivoting out of hacker stuff from HackerOne, the guy who made HackerOne.
[00:09:57] If you are in security, the takeaway from this is find another job.
[00:10:01] Like focus on enabling high-performance machine learning computing.
[00:10:05] That's a job that's going to be around forever.
[00:10:07] There's going to be people that are going to need to manage.
[00:10:11] As automated as all the systems get for Kubernetes and Slurm and everything that's running all
[00:10:16] these models, everything that's creating the models that are running our world, that stuff
[00:10:21] all needs to be supported.
[00:10:22] There still needs to be people that put the computers into the racks.
[00:10:25] There still has to be a person who configures those machines, no matter how automated it
[00:10:29] is with Ansible and AI, like I just did.
[00:10:32] That stuff's still infrastructure is code.
[00:10:34] That somebody's got a babysit all of that stuff, just like somebody has to babysit the
[00:10:37] software that's being developed.
[00:10:39] The people that are learning how to architect code, how to keep up on hardware, the operations
[00:10:43] people, they are safe.
[00:10:45] They haven't always been the sexiest jobs, but those jobs are really solid.
[00:10:50] If you can add high-performance computing and AI systems in that, and you know about what
[00:10:55] an H100 is and how to keep it running and not wasting its time, now you can really change,
[00:11:00] you can really use AI to your benefit by helping you automate the CISTEE like I am and write
[00:11:05] the automation layers and stuff in between that are unique to your environment.
[00:11:11] We're actually looking at a moment where we'll be able to give an overview of our architecture
[00:11:16] and where we want to go.
[00:11:17] We can use AI to even dictate or suggest architectural decisions upfront, not make them, but suggest
[00:11:23] them and then you can use that, but there still needs to be somebody that implements those
[00:11:27] things until we start to get true infrastructure as code and now you got AI writing terraform
[00:11:32] for you and you're like spinning up a bunch of yamps.
[00:11:34] The really great thing about HBCML is that that stuff requires hardware and hardware
[00:11:39] can't be virtualized.
[00:11:41] As long as you're involved with actual hardware and deploying it and managing it and making
[00:11:46] sure it's being used because it's being rented for like $20,000 a GPU, then you're going to
[00:11:51] be set.
[00:11:52] The blacksmith jobs are going to be good to go for the foreseeable future, they're not
[00:11:57] going anywhere.
[00:11:58] These are the people that are enabling AI, they're not the people that are being replaced
[00:12:02] by AI and that's where the jobs are.
