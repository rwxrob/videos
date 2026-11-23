# 🎤 Why not mount configs into boost container?

Beginners should expect everything they do in a container to die when when exit (for the most part). Even though we violate this a little for the Boost we want people to learn to save it in Git if they want to keep it around and make those mistakes (that we all make) now and not later on the job.

`#questions #containers #tips`

## Transcription

[00:00:00] I was asked a pretty fair question while I was developing the Boost container.
[00:00:04] It's like why don't you add a way to load in all the configurations so that people don't
[00:00:14] lose their stuff?
[00:00:17] The reason is very direct because that's not how containers are designed to be used.
[00:00:27] They can be used that way, but the way containers are meant to be used in the enterprise universally
[00:00:35] is as a singular ephemeral meaning that they live and die all the time, and that what's
[00:00:43] in them is in them, that they, any information that needs to be passed into them is passed
[00:00:49] in through environment variables, sometimes amount points, but almost not ever.
[00:00:57] In case of Kubernetes, there's amount points and config maps and all that, so you can put
[00:01:01] a file in there, but the idea of it specifically as a beginner of thinking about a container
[00:01:10] as a thing that's going to contain, it's like your laptop Linux and you're going to be able
[00:01:16] to change all your configs and everything and load them from somewhere.
[00:01:19] I think is a mistake.
[00:01:21] I think it's actually a bad way to think about containers for a beginner.
[00:01:26] Beginners need to immediately think about containers as going away, as living and dying.
[00:01:32] When they type exit, that thing goes away, right, and even though we violate that a little
[00:01:37] bit for the boost here to be, to reattach to the container that's still running or actually
[00:01:42] not running and start it up and then reuse it because it's got stuff inside of it, not
[00:01:46] being able to throw it away, and we do do that to get them started, but it's more important
[00:01:52] that the user, especially the beginner, gets used to saving out whatever it is that they're
[00:01:58] doing.
[00:01:59] So whatever work they're doing in their container, that work in order to be stateful, in order
[00:02:05] to persist beyond the life of the container, should be saved someplace else.
[00:02:12] But almost always, that is not in something that has been mounted in the container.
[00:02:18] It's almost always communicated through a network connection.
[00:02:24] And in our case for the beginner boost, that means storing it in Git.
[00:02:28] That means from the very first day almost, we are going to start practicing saving content,
[00:02:35] saving everything we do in Git.
[00:02:37] And if somebody has an experience during the beginner boost where they accidentally delete
[00:02:42] their container and lose all their work, we want that to happen.
[00:02:45] The reason we want it to happen now is because we want them to understand that you should
[00:02:49] never, ever preserve state in a container.
[00:02:53] And I guarantee you, there's somebody watching this, please leave a comment below, if you
[00:02:58] have ever accidentally made the false assumption when you're in a container, that something
[00:03:03] you changed was going to live on beyond the container and then lost your work.
[00:03:08] I've done it.
[00:03:09] I think a lot of you have too, it's a very tough lesson to learn, but it's an important
[00:03:13] lesson to learn early on.
[00:03:15] And the way to do that is to not encourage people to mount volumes and mount other things
[00:03:21] into the container, which you will eventually learn about doing, but not now.
[00:03:24] Right now you want to learn that it doesn't exist unless they get saved in Git.
