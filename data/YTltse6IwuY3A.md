# 💢 SysDE Team Dynamics and Challenges

Describes the challenges of working as a systems development engineer between operations and software development teams, including legacy Perl code, resistance to Git and testing, and untestable modules. Covers strategies such as making breakage visible, building trust, and balancing minimal ops hacks against over-engineered software designs.

Systems Development Engineers (SysDEs) face unique challenges facing both the software development world (apps) and the purely operations world (ops). Learning how to navigate the team dynamics, expectations, and misunderstandings and mismatched priorities is essential.

Chapters:
0:00 Intro: SysDE, DevOps, and platform roles
1:03 Legacy ops code and no version control
3:50 Pushback against Git and PR process
5:23 Making breakage visible to drive change
7:29 Unsung quality work and outages from unsaved code
8:09 Untestable code and global database connections
9:19 Being the person who complains
10:35 Replacing legacy code with Go APIs
12:39 Bridging ops minimalism and software overengineering
13:38 Wrap-up and the value of a good manager

`#sysde #devops #platformengineering #git #testing #legacycode #operations #softwareengineering #teamdynamics #career #techlife #rants`

## Category

Education

## Transcription

[00:00:00] I just came up with a team meeting and so the challenges of being a systems development
[00:00:09] engineer/platform engineer/whatever DevOps kind of, they're kind of the same.
[00:00:17] I want to talk about some of their ones right away if you're going to get into this lifestyle.
[00:00:23] So I've been a software engineer, which is, you know, 100% software engineer, lock you
[00:00:27] in a quarter of a keyboard call, code as fast as you can, sort of thing, which of course
[00:00:31] has been entirely impacted by AI now, in good ways.
[00:00:34] I've been an operations person back when in the internal system administrator and that
[00:00:40] is, you know, to say that you're keeping the machines up and running.
[00:00:44] This was back in the day before it was really, I think there's always been a requirement to
[00:00:48] know how to code reasonably well in order to write scripts and stuff, but a lot of system
[00:00:51] administrators then and now have no idea how to code and they definitely don't know about
[00:00:59] the best practices of software development.
[00:01:03] So today, I'm going to share a story.
[00:01:06] So most of my team are legacy, the people that have written a lot of parole, I'm doing
[00:01:12] a lot of parole, and the parole code that was written is, you know, the kind of code
[00:01:17] that you would expect to be written by a bunch of system engineers in the 90s and in 2000s,
[00:01:21] early 2000s.
[00:01:22] It's not testable at all, in order to test that you have to run the entire system and
[00:01:27] go to the web page and run the thing, there's no unit testing, there's very little commenting,
[00:01:33] there's redundant copies of the code all over throughout the code base.
[00:01:37] And I am not going to hold them accountable for that because they're operations people
[00:01:41] that wrote a bunch of code that they live tested, by the way, in fact, I had to develop
[00:01:46] an entire system to run a deploy check to be safe so that these people that are making
[00:01:50] changes to the code base, while we're doing this really, you know, existential threat
[00:01:54] testing to get this thing out, don't impact everybody.
[00:01:59] They didn't even have any of this to get until last year, and we kind of like tried
[00:02:02] really finally got this team to put their stuff into get.
[00:02:07] They absolutely refuse to put anything and go, and if anything, they're going to try
[00:02:11] to allow it to be in Python at some point, because why?
[00:02:14] Because their team, the operations people, they know Python and Bash, they don't know
[00:02:19] anything else, and they don't want to know anything else.
[00:02:22] And you know, they're kind of short about that whole thing, like why the hell are we
[00:02:26] doing this?
[00:02:27] There's a good thing.
[00:02:28] And so these are the kind of people they go in and they make live changes to running
[00:02:32] code.
[00:02:33] It's on a test machine, to be fair.
[00:02:36] It's on a test machine to test instance of the whole thing.
[00:02:38] But they'll go in there and make live changes to code that generates web pages, and they
[00:02:42] risk breaking a web page or something to do their testing.
[00:02:46] And there's no coordination with any of the other developers on the team.
[00:02:50] It's all through Teams chat, and somebody will change the thing, and there's no way
[00:02:53] to know whether something changed.
[00:02:55] So I wrote a tool called deploy, which compares a list of things and permissions to really
[00:03:00] quick and dirty to everything that's on the system so that before I go break somebody
[00:03:05] else's changes, I can see what things have been changed.
[00:03:08] And there was actually one specific time where the code that I wrote, which was deleting
[00:03:13] jobs, was broken because somebody else deployed their branch of test code on top of mine in
[00:03:19] deployment and production, breaking my code so that the senior manager that ran the things
[00:03:25] like, why is this particular thing broken, which was my thing, by the way?
[00:03:29] And I had to say, because at first I was like, oh, I'm so sorry, I didn't get it deployed
[00:03:33] probably.
[00:03:34] And then I looked into it, and I'm like, no, I deployed it, and then it got stepped over
[00:03:37] by somebody else who didn't bother to check whether these changes had been put in it.
[00:03:42] But I had deployed, and only deploy is what's in the top of our slurner, more dev branch,
[00:03:47] so that any changes get PR properly and get put in it.
[00:03:50] I am getting constant, constant pushback against using Git for any of these changes.
[00:03:56] The PR process is too slow.
[00:03:57] These Git commands are this, you know, back channels, senior managers and people are asking
[00:04:02] me to train them on how to use Git, because these are operations people.
[00:04:06] These are not people that were raised in software development.
[00:04:08] And quite honestly, that included me until two years ago, I didn't know yet either.
[00:04:12] I was like, screw get, I don't care, I'll just use Git for backups.
[00:04:15] I couldn't do branch.
[00:04:16] I hated PRs, and God help you if you try to pull all the changes from a dev branch into
[00:04:20] your current branch that you're working on, you know, in order to get a thing, it's a pain
[00:04:24] in the ass.
[00:04:25] But guess what?
[00:04:26] It's essential to the system developer engineer job, and part of the dynamics of working in
[00:04:30] this job means that you're going to be working with a lot of people, particularly older people
[00:04:35] who are maintaining legacy codebase, but more importantly, legacy coding practices, which
[00:04:41] means they do whatever the fuck they want, and then you kind of just deal with it.
[00:04:46] And so if you're coming, if you're, if you have been a sister, you're a young person,
[00:04:50] or even you've grown up in software engineering, you're trying to straddle the ops apps kind
[00:04:54] of barrier by doing system development engineering work, then you are going to be stuck constantly
[00:05:00] frustrated with people pushing back saying, why is it taking us long, we don't really
[00:05:05] need that.
[00:05:06] We need to focus our attention on getting this testing to work, and getting this code
[00:05:09] to work rather than, rather than making sure we have these other things in place until
[00:05:13] they break the code they got deployed, because they didn't do those things, and that cost
[00:05:17] you an hour to figure out what broke, because they had to disambiguate a merge conflict,
[00:05:21] because they didn't go through the process.
[00:05:23] So they don't, so, so how do you manage that?
[00:05:26] Well, the first way to manage it is make sure anytime something breaks, it's highly visible,
[00:05:31] because they won't buy into the idea of code management and get until they see shit break,
[00:05:37] and they see people lose time, and they, and I hate to say that, but this is the only way
[00:05:41] the people from the operational, you know, OG backgrounds are going to see this problem.
[00:05:47] That's the only way they're going to realize it is when they see shit break, and they see
[00:05:51] their deliverable slip, and their timeline slip, because, because somebody is rolling
[00:05:57] out somebody's code because there's no coordination among, and a team of only six people, okay?
[00:06:02] So you can't bring other people onto the team if you're not following these practices,
[00:06:07] because, you know, three or four cooks in the kitchen all in the same, you know, pearl
[00:06:10] module is going to break everything, whether it's pearl or python doesn't matter.
[00:06:14] So just the first challenge you're going to have to face is that, is that you're going
[00:06:18] to be dealing with people who don't code, people who don't code, and not only do they
[00:06:22] not code, they don't value coding best practices, period.
[00:06:27] They don't, they don't understand it, they don't want to do it, they would rather it
[00:06:30] just be a bunch of tar balls in production, and they definitely would rather copy and
[00:06:34] paste an entire bash script with no functions in it and put it someplace else, then to actually
[00:06:40] take the time to factor that and then use it properly.
[00:06:43] That's just what you're going to be fighting against constantly all the time.
[00:06:48] So you've got to figure out how can I approach this, and the best way to approach it is to
[00:06:52] show people how things break and how things slow down and how they're losing money, because
[00:06:56] you're only going to get them to adopt what you want them to do, which is CICD and, you
[00:07:02] know, actual, you know, get ops practices and things like that.
[00:07:07] You're only going to get them to adopt those things if you show them how it saves them
[00:07:10] money and time and keeps them running and can't avoid that outage that we've had.
[00:07:15] We have had four outages because our Harvard source code was not saved and get.
[00:07:21] It was deployed and changed live in Kubernetes, and those changes were never saved and get
[00:07:27] anywhere.
[00:07:29] Okay, so these are the challenges you're going to face, and so you might have to be the person
[00:07:34] if you're straddling the gap in the middle, you're going to have to be focused on quality.
[00:07:38] That means you're going to have to be doing things that are going to be very unsung, maybe
[00:07:41] not even contribute to your performance review at the end of the year, because they're not
[00:07:45] valued.
[00:07:46] Because they're not valued.
[00:07:47] Keeping the shit running and avoiding an outage is not valued until the outage happens.
[00:07:53] So, unfortunately, unless there's an outage happening, they don't realize why it needs
[00:07:58] to be done.
[00:08:00] So that is the only way to do it.
[00:08:02] You really can't convince people that, you know, because as long as it's working, they
[00:08:07] don't see this in issue.
[00:08:09] And you have to let things break, and you know, I have another issue right now.
[00:08:14] Somebody's importing a Pearl library that's making a database connection in the global
[00:08:18] space every time the module is imported, which prevents the entire module from being tested
[00:08:23] in any way, because it requires a database to be up and running in order to even use the
[00:08:29] module.
[00:08:30] This is absolutely, positively, an anti-pattern in any software development field.
[00:08:36] Any software engineer would look at that and go, "What the fuck?"
[00:08:38] I mean, this is like a fireable offense in the software engineering world.
[00:08:43] But it was enough to get the thing to work once upon a time, and it was good enough,
[00:08:47] and now it needs to be there.
[00:08:48] And so now when somebody wants to expand the code and make a testable function that's just
[00:08:51] parsing a job ID, you can't test it because it depends on a library that has to connect
[00:08:57] to a fucking database.
[00:08:58] So that can't be run in your local laptop or in your customized container environment
[00:09:02] or any other testing environment, because now you have to have the database set up for
[00:09:06] that module to even be used at all.
[00:09:09] So the life of a DE is going to be constantly running into serious breaches of protocol
[00:09:16] when it comes to software development, and you're going to have to get used to it.
[00:09:19] And you're going to be branded the person who complains.
[00:09:23] You're going to be the water boiler.
[00:09:25] You're going to be the person who yells at other people.
[00:09:29] And I don't yell at people, but I'm like, "Why do we need this?"
[00:09:34] You have to constantly be saying, "Well, why do we need this?"
[00:09:37] You know, any other team, any other software development team or assistive or DevOps team,
[00:09:41] the question, why do you need testable unit code in your scripts is like a no-brainer.
[00:09:45] It's like an assumption.
[00:09:47] But in an environment like this, you're going to have to be justifying why you need to be
[00:09:52] able to write code that can be tested.
[00:09:54] Because their answer to this is, "Well, just run it and see if it breaks."
[00:09:57] Like, "Yeah, but run what?
[00:10:00] Run what?
[00:10:01] Run every single piece of the entire system in order to see if it works."
[00:10:06] So we're actually having an outage right now, a blocker, because we're not able to fix
[00:10:11] something because there's five levels of abstraction and we cannot activate one of those levels
[00:10:17] of abstraction to get into the piece that's broken.
[00:10:20] We can't do it because all of the pieces have to all be run concurrently in order to
[00:10:24] even produce a test of the overall system.
[00:10:27] This is what happens when you don't have testable units of code and modules.
[00:10:32] And that is a regular part of this job.
[00:10:35] This job is about getting rid of all of that and creating interfaces, specifically web
[00:10:41] APIs, that do all of the magic, that can be written and go, or a strictly typed language
[00:10:47] that's underget, that can be managed by everybody, and then those things that are really important
[00:10:51] to the business can be encapsulated in a way that is then no longer visible to the systems
[00:10:57] of operations people.
[00:10:58] And that makes them very uncomfortable because they're the ones who wrote those things.
[00:11:03] And so for them to be able to do that, you've got to build enough trust with them to say,
[00:11:06] "Okay, we're going to replace this, you know, thousands of lines of ancient pro code with,
[00:11:11] you know, one-go API endpoint that they might push to have it in Python because now they
[00:11:15] can't work on it."
[00:11:16] The truth is you don't want them working on it.
[00:11:18] You don't want these old operations people that have no software development experience
[00:11:22] at all touching anything in the web API endpoint source base code because they don't
[00:11:27] value things like tests and source management and putting together, you know, testable
[00:11:34] work cases, use cases, and writing a test plan, a project management, those, they're
[00:11:38] operations people.
[00:11:39] That means they keep shit running and they put out fires.
[00:11:42] They don't value any of that other stuff.
[00:11:44] They might, you know, on paper, but they don't actually understand it because they haven't
[00:11:47] been in it.
[00:11:49] So I don't fault them for it because that's their background.
[00:11:52] That's their background and stuff.
[00:11:53] But I had to make this video while I was on my mind because it's a little bit of a red
[00:11:57] tea video, but it is a part of the job.
[00:12:00] If you want to do this job and you want to interface with the operations people and make
[00:12:04] their jobs easier, more specifically, the jobs of the applications and users that are
[00:12:09] using the operational stuff and facilitating the use of, you know, making systems that
[00:12:15] make managing the operational modes and machines and everything easier, if you want to do that,
[00:12:21] you've got to have to get used to talk to the Unix and Linux and the admins who don't
[00:12:25] want anything to do with writing code.
[00:12:26] This is changing over time, but, you know, anybody that's, anybody that's over 40 is
[00:12:32] going to still have these tendencies.
[00:12:36] And so as a software developer, you're going to be kind of struggling with this constantly.
[00:12:40] The other takeaway from this is you're going to be working with software engineers all the
[00:12:43] time.
[00:12:44] And they're going to say, do this and do this.
[00:12:45] And they're going to overly pitch something that's not necessary.
[00:12:49] So ops people tend to think the absolute minimum necessary to get the thing done, you know,
[00:12:53] how good is what can this hack be?
[00:12:55] And the software people are going to be pushing these big grandiose things.
[00:12:58] They're going to take way too long, have way too many layers of abstraction.
[00:13:02] And yeah, maybe they're testable and everything, but they're completely unnecessary and they
[00:13:06] take too long and they're super expensive.
[00:13:08] So you have to bridge the gap.
[00:13:10] The job of assistive or DevOps or proper engineer, where I work, is bridging the gap between
[00:13:15] those worlds.
[00:13:16] I mean, it's keeping, you know, like keeping the software development ideas in check.
[00:13:22] Like no, we really don't need to do this entire thing to do this entire thing where I could
[00:13:27] have this whole platform together.
[00:13:28] We don't need all of that, you know, pull back on those people and kind of push on the
[00:13:34] other people in the operations to do things that are going to improve sustainability over
[00:13:37] time.
[00:13:38] So that's the end of my rant here.
[00:13:41] Hopefully that gives you an understanding of what the assistive job is like and what
[00:13:45] the team dynamics are going to be about and what the challenges are going to be facing.
[00:13:50] If you're lucky, you'll get a manager like mine, you 100% understand the challenges of
[00:13:55] both sides of the fence and has experienced perhaps project managing different types
[00:13:59] of projects that span those gaps.
[00:14:03] And I absolutely do have that manager right now who gets me and understands me even if
[00:14:06] several people above me don't because, you know, they're from the operations world.
[00:14:11] So, that's the end of my rant, I'm done.
