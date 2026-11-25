# ⛔️ don't make these postgresql developer mistakes

Covers mistakes made while setting up a local PostgreSQL container with Podman to test a pg_dump backup intended to run as a Kubernetes cron job. Explains how installing client tools from OS package managers can lead to version mismatches with the server, and weighs using a client container or the official Postgres image instead.

Chapters:
0:00 Building a Postgres backup cron job
0:37 Starting a Postgres container with Podman
2:23 Mistake of installing client tools with apt
3:27 Why OS packages cause version mismatches
4:09 Old environment variables and PGPASS setup
4:52 Why a client container would help
6:53 Using the Postgres image and exec tradeoffs

`#postgresql #podman #containers #kubernetes #pgdump #linux #devops #development #fail`

## Category

Science & Technology

## Transcription

[00:00:00] All right, I want to summarize a few things that I was reminded of with regard to Postgres.
[00:00:06] I'm actually currently working on a thing called Kate's app dash Postgres SQL dash backup.
[00:00:12] It will be just a cron job.
[00:00:15] It's one of the smallest simplest Kubernetes applications that you could create, but I
[00:00:20] hit a number of blockers along the way and mistakes that I want to tell you about that
[00:00:26] relate to me thinking about all of the stuff like somebody from 2001 when I first learned
[00:00:32] Postgres and put everything out there.
[00:00:37] I got the part where you make a Postgres server in a Docker container correct, and for that
[00:00:44] I actually wrote a script just in a tools directory here called start Postgres container.
[00:00:52] The patch GPT did remind me how to use Podman, I decided to use Podman versus Docker.
[00:00:59] And that, you know, I'm exposing port 542, which allows it to be seen on a local machine
[00:01:06] or anything, you know, any other container that can talk to that local machine, you need
[00:01:09] to expose those ports that I remember.
[00:01:11] I put the environment variables in the env file, which are super secret.
[00:01:17] This is a really common container thing that I don't necessarily like.
[00:01:20] I do it anyway, Postgres user, my password, I've got to shut that up.
[00:01:28] I don't know if I'm going to be able to shut that up, which one was it?
[00:01:32] SC.
[00:01:33] I'll do that next time.
[00:01:34] So anyway, I put these passwords in there so they would be set up during the initialization
[00:01:39] of the database, and then I ran the thing that started the container.
[00:01:43] Okay, so there's no Kubernetes involved yet.
[00:01:46] This is just containers so I can write the test script around the Pgdump and put some
[00:01:50] sample data in there and practice doing the dump of the data.
[00:01:54] You could just run the Pgdump command and do a one line and put it in a bash script.
[00:01:58] But, you know, right now I'm trying to kind of flesh it out.
[00:02:03] It probably amounted to local data directory so that this other system can see it and when
[00:02:10] I'm running commands that will load data from that directory, I can start to have done
[00:02:14] any of that yet.
[00:02:15] And then where the image is, and I'm pulling it down from Docker home, which I hate, but
[00:02:19] because it doesn't exist anywhere else.
[00:02:23] So that got me the database running, but then the problem started.
[00:02:29] How do you access your database, right?
[00:02:31] And these are extremely newbie problems that I had because I've been writing go code and
[00:02:36] doing all kinds of other things that work.
[00:02:37] I haven't been doing any of this.
[00:02:38] I haven't touched Postgres in years.
[00:02:41] So the first thing I did wrong was, even though I'm running at a VM, I was like, "Oh, I need
[00:02:46] PSQL.
[00:02:47] So I'll just sudo apt install, you know, Postgres, right?"
[00:02:50] No, wrong.
[00:02:51] Because why?
[00:02:52] Number one, I had to add an app repository to get the latest version of Postgres to get
[00:02:57] the PSQL and I want to get Pgdump so I can do the dump.
[00:03:01] And you can still see the error here on top of my screen, Pgdump version 14 doesn't match
[00:03:05] version 16.
[00:03:06] So that's one of many errors that could be avoided by setting up a test container client,
[00:03:14] client container to access the other container.
[00:03:17] You can probably combine them, but I think containing it, that's the solution.
[00:03:20] If you wanted to jump ahead, that's the answer.
[00:03:22] And I'm going to start doing that tomorrow and I'll do a status update video on that.
[00:03:27] So what I'm getting at is that when in the old days, which, you know, I'm old, you know,
[00:03:35] you would set up a server, you put a version on there and you, of course, you're going
[00:03:38] to use package management because it's easier, but redhead and Postgres and Ubuntu even are
[00:03:42] both notoriously bad at keeping really, you know, back, back, back level versions.
[00:03:47] Now I could fix this.
[00:03:49] I actually need to back up and test 16.4.
[00:03:51] That's the one we're using in our harbor registry.
[00:03:55] So that's the one that I want to do.
[00:03:56] That's the one I want to back up, but I can't do it if I'm using the app package managers
[00:04:00] or I'm using the OS package managers and why would you, right?
[00:04:04] You need to be able to get the one that matches the one you want, which means you're going
[00:04:07] to need to install Postgres in a different way.
[00:04:09] So by doing this, I did a whole bunch of things.
[00:04:13] And not to mention the fact that I had a leftover PG database, PG database environment variable
[00:04:20] in my bash RC from when I was doing a coworking database for a long time ago, because it is
[00:04:25] nice to have, you know, the most, the localized version of it.
[00:04:28] So you can use the PSQL command and then all that other stuff gets populated for you.
[00:04:33] So you can just do that, right?
[00:04:34] So I finally got the PSQL command to work.
[00:04:37] I got a PG dump to work and everything so that, you know, I can just do PSQL like this
[00:04:43] and I get a database.
[00:04:45] That's by, you know, setting up a PG pass and then setting the environment variables correctly
[00:04:48] and all that stuff that we would do in 2000.
[00:04:52] But the problem is as soon as I got that done and I started doing the thing I wanted to do,
[00:04:57] which was just PG dump, you know, I was like, which version is this even?
[00:05:02] It's like, Oh, no, you can't use it.
[00:05:04] So you can barely see, that's the same area that before.
[00:05:10] The point of it is that had I done, had I created a client container from the beginning,
[00:05:18] which I was going to do it.
[00:05:19] I thought, Oh, that's going to be too much hassle.
[00:05:21] If I can rated a client container and a Docker file for that or something and just pulled
[00:05:26] down like, I don't know, like a Debian container or even God doesn't even have to be that.
[00:05:31] It could be anything, anything that could support the installation of Postgres.
[00:05:34] I could even probably do, well, no, I think it about it.
[00:05:39] I could probably do all of this on the actual container itself.
[00:05:42] That's probably what I'm going to try.
[00:05:44] I've been trying to decide whether I need two containers to write this or not.
[00:05:47] This is all just reading the test phase of it before we even turn it into a, because we
[00:05:52] have to be able to test, you know, the backing of the database, which is super easy.
[00:05:56] It's just one command, but we still have on a test.
[00:05:58] I still want to test it right now when I tested in a cron job and put it in mini cube and
[00:06:02] do all those things.
[00:06:03] And for that, we have to have an image that contains this stuff.
[00:06:10] And you know, I'm starting to think now that I can probably just pull in the Postgres container
[00:06:16] image as into the Kubernetes pod in order to do this cron job, but I'm getting ahead
[00:06:23] of myself.
[00:06:24] What I wanted to say is if you are inclined, and most of you probably aren't because you're
[00:06:29] younger than me, but if you're inclined to try to get your virtual machine so that it
[00:06:35] has the same client and everything that it needs to talk to your database, which is
[00:06:39] using the latest container image, good chance it's not going to match.
[00:06:44] And it should have been really obvious to me and it wasn't.
[00:06:47] So I'm just putting it out there so that you can know that when you're going to try this.
[00:06:53] My current strategy going forward is going to be to just use the Postgres image.
[00:06:58] Just use the Postgres image as is, I'll see if it has everything in it.
[00:07:01] It's obviously got PG dump and everything in there.
[00:07:03] So all I need to do at that point is mount a volume and have some data, put the data in
[00:07:08] there, dump it and then compare the two sets of data.
[00:07:12] And in order for me to use the PSQL command, I will have to exec into it.
[00:07:16] I'll have to go into the into the data.
[00:07:19] I don't have to exec from the command line or opt to go into the container and do stuff.
[00:07:23] And one of the reasons I don't like that is because I lose all of my fancy command line
[00:07:29] stuff because I'm in this, you know, really bare bones, Debian system or something.
[00:07:35] And there are ways around that.
[00:07:37] I've made a workspace container in the past to get around that, but it's really big and
[00:07:41] bloated.
[00:07:42] It gets bigger as you go because you want to put all these things in there.
[00:07:45] So it's like, so there is something of a middle ground there and I'm going to try to shoot
[00:07:50] for.
[00:07:51] And that is running, just running one liner or darker commands against the running container.
[00:07:57] But that's not how containers work, right?
[00:07:59] They spin up a container in order to run in order to execute a thing and then they go
[00:08:06] away.
[00:08:07] So if this is the one that's containing the database, I kind of want it to be around
[00:08:12] with it and keep the data in it when I'm doing a thing.
[00:08:16] So a number of things I still have to look into there and learn about.
[00:08:19] So that's all.
