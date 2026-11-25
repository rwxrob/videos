# 😎 Get GOOD with Go with Go by Example 👍

Recommends Go by Example as a way to learn Go quickly for people who can already code, and compares it with other Go books and online resources. Shows how each example opens in the Go Playground, discusses its limits for absolute beginners and outdated code, and urges the maintainers to review pending pull requests.

Chapters:
0:00 Why give Go by Example another look
1:10 Problems with other Go learning resources
2:09 Who Go by Example is best for
3:07 Running examples in the Go Playground
4:33 Avoid Go versions older than 1.19
5:17 Contributing to Bonzai and open source
5:48 Strengths of simplicity and Head First Go
7:20 Outdated code and the closures example
8:57 Can absolute beginners learn from it
11:07 Pending pull requests and possible fork

`#golang #gobyexample #learntocode #programming #goplayground #opensource #coding #education #protips`

## Category

Education

## Transcription

[00:00:00] Go by example. I have been hearing about Go by example for years. I've never met
[00:00:05] Mark or Eli. They look like wonderful people. However, I have heard from people
[00:00:12] who have learned Go for the first time by using Go by example. One of them is the
[00:00:17] primary contributor to the the Bonsai project. And his Go code, Chite, is some
[00:00:26] of the best Go code I've ever seen. He has a natural understanding. He's extremely
[00:00:29] pedantic about his Go code. And he has helped me realize things about Go, like
[00:00:33] for example, not necessarily putting an argument identifier if you're not using
[00:00:36] it, inline typecasting and a couple of things that I and the use of tagged modules
[00:00:44] as long as you put a prefix so you can have model three posts. These are all
[00:00:47] things that Chite taught me that he had discovered. And because his first
[00:00:52] experience with Go was Go by example, I decided to give it another look. And to
[00:00:57] be fair, I looked at Go by example, God, 2019 or something like when it first came
[00:01:04] out. And it didn't really impress me at the time. Of course, there's always been a
[00:01:10] real drought of resources online. And now there's like, seems like there's a
[00:01:13] plethora of resources online, most of which are either overly complicated. Go
[00:01:18] one-on-one, right? I'm looking at you or teach you bitwise mathematics, even though
[00:01:23] you're an absolute beginner and expect you to already know C, that would be you
[00:01:27] tour of Go, which by the way has dropped off. It's not even getting supported
[00:01:30] anymore, even though it's listed on the front page. And then there's all of the
[00:01:34] books, right? There's Go in action, which is really, really outdated and has big
[00:01:38] bugs in it. There's, you know, I had to write an orata for my school when I did
[00:01:43] that one. There's the book from Donovan, the K&R people that wrote, you know, the
[00:01:47] K&R book, which is ancient. There's the other book that Doxy, the Go, you know,
[00:01:52] what is it? The Caleb Doxy book, which is ancient. It covers Go like 1.2. There's,
[00:01:57] there's the head first Go, which covers Go 1.7. They're so old. So it's really
[00:02:03] hard to know where to go. No pun intended to learn Go. And Go by example, as of this
[00:02:09] day, what is the day? I don't even know. But as of this day, Monday, November 18th,
[00:02:15] at 8.31 p.m. Go by example, is my single biggest recommendation for learning Go.
[00:02:22] If you know how to code, if you don't know how to code, you're gonna be lost.
[00:02:29] You're gonna be lost. And people I am working as fast as I can to make a
[00:02:34] resource that teaches computer programming, computer science with Go to
[00:02:39] absolute beginners who don't even know what a variable is, other than in math.
[00:02:43] I'm working because that resource doesn't exist. And if you want to help me
[00:02:47] contribute or read feedback and read the book as I'm writing it, I'm using a lot
[00:02:52] of AI for that. I'm doing it online. You know, plug for that. If you want to help
[00:02:55] me with that, if you want to help me with the Bonsai project, great. But if you're
[00:02:58] looking to learn Go fast and you already learned a code in JavaScript or Python
[00:03:01] probably, or maybe Java, then you should use Go by example. And this is a big thank
[00:03:07] you to Mark and Eli. I am gonna actually work through this a little bit and I want
[00:03:11] to show you something that I didn't see it took me a full day to realize this.
[00:03:15] And everybody on the stream is making fun of me because I didn't see it right
[00:03:19] away. I did a huge spiel about, hey, if you want to make your name in the world,
[00:03:25] you should make a PR, you should work the project and make a PR that allows you to
[00:03:28] run these examples in the really amazing Go Playground. At least one of you out
[00:03:34] there knows what I'm talking about. Can you see it on the screen here? Let's take
[00:03:39] a moment to look at the screen. Is it possible that such a thing already exists?
[00:03:43] I downloaded the entire source code and still missed it. So maybe you waited in
[00:03:51] this video, you're watching. A lot of you signed off of the video early and it's
[00:03:54] like, okay, use Go by Go by example, good got it, I'm out of here. But for the few
[00:03:59] of you are waiting until this part of the video, let me show you something very
[00:04:02] amazing. You can click on this little blob of an icon and it will actually take the
[00:04:08] code into the extremely amazing Go Playground. And within the Go Play, if
[00:04:14] you're an educator, if you're an educator, this is amazing. If you're an educator,
[00:04:18] you're probably stuck teaching if you're computer science, God help you go watch my
[00:04:21] video on college board. But you know, you can click on Run right here and you can
[00:04:26] run it. Something that's really cool about the Go Playground too is you can click
[00:04:28] over here and you can actually change whatever version of Go you want. By the
[00:04:33] way, don't learn any version of Go before 1.19. Go one point, there's there's the
[00:04:40] world of Go before 1.19. And there's the world of Go after 1.19. And some would
[00:04:45] argue that was something similar 1.13 is when they brought in modules. People,
[00:04:50] people don't use any Go older than 1.19 unless you have a mandated requirement to
[00:04:56] do so. There is just so much about the language that's changed and gotten better,
[00:05:00] most notably generics, but also the any untyped interface. A bunch of things that
[00:05:05] make computer programming much easier, especially if you're teaching or you're
[00:05:08] learning it for the first time. This is the Playground. You can go play with it in
[00:05:13] the Playground. You can modify it. You can check out whether a thing is going to
[00:05:16] work or not. And oh, thank you for the sub. That was very nice. Well, wait on
[00:05:20] Watson has actually just made their first PR against the Bonsai project. Thank
[00:05:24] you. It's very timely. So I appreciate you doing that. And by the way, I encourage
[00:05:29] you to come on in. I've got plenty of work for you. If you want to help do minor
[00:05:33] contributions to the Bonsai or big ones where you're learning Go, I have projects
[00:05:37] that you can contribute to if you want to with very specific help wanted things. So
[00:05:40] you can put your name out there on on an open source contribution. That's not
[00:05:43] insignificant. It's not some help doc, you know, which is always needed. But you
[00:05:48] know, so anyway, this is not about that. This is about the Go by Examples tool.
[00:05:52] And I want to just tell you so, so the Go by Examples tool, albeit really plain
[00:05:57] and simple, is plain and simple. And that's what makes it so great. It's so easy to
[00:06:03] get bogged down by all of the, you know, the pain and suffering of this, right?
[00:06:08] The one negative I would say is that because it is so plain and simple, it
[00:06:12] kind of lacks that, you know, mnemonic device appeal that has been scientifically
[00:06:18] proven to help you remember things better. I'm talking about headfirst. And by the
[00:06:21] way, the author of Headflow First Go, I forget his name, is amazing. He's one of
[00:06:26] the most amazing authors I've ever read. I wish we could get him to write an
[00:06:30] updated version of Headfirst Go for Go 1.23. I have read that there is a new
[00:06:36] version in the works for Headfirst Go. I am praying for that because that would
[00:06:41] be handed to hands down the best possible thing that you could possibly have. And
[00:06:46] so here we go. Go is an open source programming language designed to build
[00:06:50] scalable blah. Here's the official documentation. Here's your first example.
[00:06:53] And then it continues to have all of these very basic things, variadic functions,
[00:06:59] closures, recursion, even gets into generics, go routines. And what I find so
[00:07:03] amazing about this is just how simple it is. It's like, it doesn't, it's not, it's
[00:07:07] not trying to sell you one thing. It's not trying to give you the mnemonic
[00:07:10] device. Like my book is where it makes turns everything into a spell, right? But
[00:07:14] it like is just simple. And it's really fun. So here we go. Here we have like a
[00:07:20] function. We're going to do that function here. And there are a couple of things
[00:07:23] that I find wrong about it. So there for example, let me give you a couple of
[00:07:27] examples of things that I don't like. And so I did notice that there is the use
[00:07:31] of the it seems that most of these examples have not been updated for 1.19
[00:07:35] and advanced after that, most notably the use of the of the empty interface
[00:07:40] that's called. So you can actually see this there. Anytime you see in the code
[00:07:45] you see an interface with, I'm trying to find one here. Oh, I'm trying to find it.
[00:07:51] Where are you? Where have you gone? I can't find you now. I don't know where it is.
[00:07:58] But if you see there's so there's a thing called any, which is much easier to use
[00:08:03] now. I'm not seeing it here. I was impressed that they do have 4n in range
[00:08:08] which is how you iterate over integers. That that is not something covered by
[00:08:12] most books even though it's very useful. They I'm still trying to find the
[00:08:17] untyped interface. I mean the empty interface array idea. Maybe it's down
[00:08:22] here in closures functions. I mean the concept this is a good example of why
[00:08:27] this isn't good for beginners. The idea of a closure is has it's very hard for
[00:08:31] beginners to understand in my experience. It goes towards anonymous functions with
[00:08:35] the form closures. That's it, right? And I guess they made a link to what it is on
[00:08:39] Wikipedia so you can go read about it. That is probably not the most you know
[00:08:44] exposition about what that is and why I would use it. I mean I guess I guess they
[00:08:51] tried to focus on just teaching you the principles and letting you go learn
[00:08:54] about what a closure is. So if you're an absolute beginner let's actually amend
[00:08:59] what I said about not using this. It's possible if you're in I mean it's
[00:09:03] possible. I don't know. I haven't sent anybody I can't make a comment on this.
[00:09:08] But if you're an absolute beginner who doesn't know anything about programming
[00:09:11] the simplicity of these examples might be enough to help you learn about that. So
[00:09:17] let's let me so in the auto didactic approach to learning if you're going to
[00:09:21] go by examples that assumes you know how to code already and you're reading the
[00:09:25] explanation which is ultra ultra simple and is using words you should know from
[00:09:28] programming like closure. You might be able to use that and you might be able to
[00:09:33] say okay what is a closure and you can go read about closure and you can read
[00:09:39] about the computer science principles that are in each of these examples as you
[00:09:43] go so that you can supplement your learning about go with a broader learning
[00:09:48] about what computer science is and how to program. That is a very likely
[00:09:52] possibility. If you do that by the way please let me know. I really want to know
[00:09:56] who has never coded before who can actually learn how to code by going
[00:10:02] through go by example and my my intent by creating a code wizard's first spell
[00:10:09] book learn computer science and program practical programming with go as a first
[00:10:13] language is the same thing essentially as these examples except for the examples
[00:10:18] are spells and they have been put into a spell form so and with pretty pictures
[00:10:23] and stuff so that you can associate you know the setting of a variable for
[00:10:28] example by you know putting a rabbit in a hat and then pulling a rabbit out of the
[00:10:32] hat and putting a pigeon in the hat you know and those kind of those
[00:10:35] nivonic devices but you might not want that you might be a no-nonsense kind of
[00:10:39] person who just wants just give me the stuff and that and then like okay well
[00:10:42] this is how you do a thing but why would I do that thing right and you can kind of
[00:10:46] imply the the reasons for that and that and a lot of this stuff if you're just
[00:10:51] starting out learning how to code you just be doing little things in your
[00:10:54] code book and tell you figure out how to make something bigger and then it would
[00:10:58] be more of a go get you know go get the examples and stuff like that so that's
[00:11:03] all I'm gonna say about go by example but have a look at it and and and by the
[00:11:07] way if you happen to be the go by example people I strongly encourage you to kind
[00:11:11] of accept some of those PR's it looks like your project just hasn't been updated
[00:11:15] in like three months so I almost forked the project and did some of those PR
[00:11:20] requests and added some stuff to it I don't intend to do that but if there's
[00:11:24] no attention to this repo over the next three or four months I might do that and
[00:11:29] if you need help please let me know if you need somebody to help manage the
[00:11:31] project I'd be happy to help submit some PR's right now though you have almost a
[00:11:38] dozen PR's that have had no attention that are fixing things that you need to
[00:11:41] have fixed so please take a look at it otherwise I'm not gonna be able to
[00:11:45] recommend it or I'm gonna fork it just make my own version of it
