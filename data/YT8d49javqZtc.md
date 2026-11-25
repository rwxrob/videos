# 😎 copy from one computer to another the cool way with netcat

Shows how to copy a file between two machines with netcat when SSH isn't available, by starting a listener on one side and sending the file from the other over UDP or TCP. Also covers using UDP port 53 so the traffic looks like it is DNS, with warnings that deep packet inspection can detect and block it and that exposing ports at work can get you fired.

Chapters:
0:00 Copying files without SSH using netcat
0:29 Setting up a UDP netcat listener
1:11 Sending a script between two machines
2:35 Using TCP and checking the copied file
3:03 Using port 53 and other options
4:04 Workplace risks and deep packet inspection

`#netcat #linux #terminal #networking #commandline #filetransfer #cybersecurity #hacking #protips`

## Category

Science & Technology

## Transcription

[00:00:00] Hey, you want to see a really great way to copy a file between two systems, even if those
[00:00:07] systems don't have a SSH installed?
[00:00:09] Yeah, we found that, I mean it was suggested to be completely fair, chat GPT suggested
[00:00:14] it because I was looking for alternative to baseband and they said, "Yeah, just use NetCAD."
[00:00:19] So the answer is use NetCAD.
[00:00:21] And it's actually really cool.
[00:00:22] We actually had some contributions from people in the community who suggested that this is
[00:00:25] a way to, I'll get to that later, you have to wait till the end of the video.
[00:00:29] So anyway, so NC-U, we'll talk about that later, it says for UDP- and then L, it can
[00:00:36] be separate if you want.
[00:00:37] And then the port number, 666 because we're going to be really mean and it's nefarious.
[00:00:42] This number is over, it was a 1024 so I don't need root access, right?
[00:00:46] If I was anything under 1024, I don't know, say 53, spoiler alert, then you could do that.
[00:00:53] And then it says, "Hey, just copy that, all the outputs is slash to tempo."
[00:00:56] So to show you that it works, let's actually zero out tempo, "Hey, did you know you could
[00:01:00] zero a file out by just piping it to it like that?"
[00:01:03] Yeah, that's right, our redirecting to it.
[00:01:06] So now let's, we'll do our command again, it's going to start up a listener, it's listing.
[00:01:11] And over here, this is a Mac by the way, this is my laptop.
[00:01:15] And then over here, I'm on one of my proxmox servers with my case controller.
[00:01:20] And I actually was like tinkering away on a script and I have read-only git cloning happening.
[00:01:26] So I wanted to be able to transfer between and I could scp it, I could, you know, start
[00:01:31] up an SSH server or I could run scp from my laptop and I could copy it over.
[00:01:36] But what if I didn't have SSH, it's just so much cooler to do than I got.
[00:01:40] So I want to hit it and check it out.
[00:01:42] So I have this installer script to install QVIP, which if you don't know what that is,
[00:01:45] watch another video.
[00:01:47] This is setting up a virtual IP from my Kubernetes cluster and it's a script I want to run on
[00:01:54] all of my nodes, all my control play nodes.
[00:01:57] But I, you know, I wrote it and compiled it here, composed it here and I was like, I didn't
[00:02:00] want to Tmux copy it because then you get the extra extraneous spaces and stuff in there.
[00:02:05] And, you know, so how can I get it over there without having to have any problem?
[00:02:10] Well, you just run netcat and set it, we're setting it to UDP just for fun.
[00:02:16] You could just leave it without that if you want.
[00:02:17] And then we pass the IP number of my laptop and the ports.
[00:02:22] And then we give it the file and then we can, we can wait around for that.
[00:02:27] But when you control see it, it actually closes a connection down on the other side because
[00:02:31] we're doing UDP.
[00:02:32] It doesn't close a connection down.
[00:02:33] If you want to leave that off, it'll, it'll do the same thing.
[00:02:35] Let's try it without UDP really quick just to show you same idea a little bit less to
[00:02:40] type.
[00:02:41] And if you're just doing a simple thing like this, and then you can just control see.
[00:02:45] And when you feel like it's there and it will shut down both sides because TCP IP has this
[00:02:48] idea of a connection, and then you can actually cat this file or VI, this file temp foo.
[00:02:54] And you can see that my script has come over perfectly and, you know, it's completely binary
[00:02:59] compatible.
[00:03:00] So, it's kind of a cool little technique.
[00:03:03] But I'm going to end you with this that was, this was suggested by somebody in our community
[00:03:08] who is in the security group in a security land space and they, you could do this.
[00:03:15] You could do this like here and 53 and then run UDP dash L, and now you are sending, you
[00:03:25] know, as long as you put 53 on the other side and you just do, you're now sending your traffic
[00:03:30] as DNS traffic.
[00:03:32] So you can complete your packets are completely disguised as DNS traffic.
[00:03:36] And you know, the port 53 is likely not going to be blocked on any, any path along the way.
[00:03:42] You can just do an HTTP server and a source directory, you can also do that.
[00:03:45] Yeah, you can, you can fire up an ACP.
[00:03:47] There's a lot of fun ways to do this.
[00:03:48] This is basically just all completely in the open and you don't have pay spend available
[00:03:52] or you don't have eke.io which got shut down, which was my really, that was my favorite.
[00:03:56] And you're not, you know, you're not giving any of this data out to any external entities.
[00:04:00] So it's kind of a cool little way to, to copy stuff.
[00:04:04] You got to be careful though.
[00:04:05] If you're doing this in an enterprise environment and your admins find out that you're open
[00:04:12] up, you know, you're exposing ports on your login servers, that's like a firing offense.
[00:04:18] Be careful with that.
[00:04:19] Make sure you don't do stuff like that.
[00:04:20] But that, that's a fun little thing.
[00:04:22] Make sure you learn about Netcat.
[00:04:23] Netcat is good for all kinds of reasons.
[00:04:25] You can, you can transfer binary files.
[00:04:27] Yeah.
[00:04:28] And, and deep packet inspection will absolutely get you any Palo Alto router won't allow this.
[00:04:35] We used to, we used to use the trick of like tunneling through SSH ports, you know, port
[00:04:40] or HTTPS 443, we would set up lists, SSH servers on 443, which is normally HTTPS web traffic.
[00:04:48] So that boards, students and their school classrooms could actually log into skill stack
[00:04:52] and do their, their, their coding and stuff like that when they were bored in their math
[00:04:57] class.
[00:04:58] And that got shut down.
[00:04:59] As soon as they've got a Palo Alto router, they started detecting the traffic packets
[00:05:02] were not.
[00:05:03] They said, Oh, this is an SSH packet.
[00:05:05] So packet inspection is getting more common, it used to be expensive to have the devices
[00:05:10] that would do that.
[00:05:11] School districts didn't have the money, but they do these days, but so, so yeah.
[00:05:17] So if you try to do this and you try to just send random data over port 53 and, and there's
[00:05:24] a Palo Alto router someplace in the, and along the line, it'll shut it down.
[00:05:27] It might even flag you.
[00:05:29] So, you know, if you do that, take your, at your own risk, bye.
