# Back to Go, Rust is Slow (in Ways That Matter to the Most People)

People are now writing formal academic papers debunking Rust's lies about safety and the rest. The more I learn about how shitty and dishonest Rust is (and its community)  the more motivated I am to look at C and C++ (again) and the more I'm not just ambivalent about Rust, I'm actively advocating against it. Rust is fucking bad for the world. There are still *zero* significant projects in Rust while there are now hundreds in Go including Kubernetes, Docker and the entire cloud native ecosystem. Rust is a fail. Die, die, die. Learn it and watch your career die with it.


https://youtube.com/playlist?list=PLrK9UeDMcQLpp9EcYfnoAb4VQvN6931F5

People don't like being told their beloved language is actually a bad pick for *most* software projects, but Rust really is. Go is faster and safer *overall* in ways that matter to the most people, which is why the entire Cloud Native industry is based on Go (including the k3os operating system which has a C kernel with the rest in Go). Go was initially designed to meet this exact need at Google. Rust wasn't. Rust solves problems for sure, just very few that *most* developers need. 

Update: ESR agrees (http://esr.ibiblio.org/?p=7294#content)


Hence, the embarrassing fact that Rust has nearly zero adoption by the industry and remains mostly a toy language enjoying the peak of the Gartner Hype Cycle as it falsely promotes a standard of safety that does not hold up to any practical scrutiny.

People who actually work in large development shops or manage them understand that developer productivity is far more important than raw execution speed for most things. The rest complain. The single greatest IT cost is developer on-boarding and training. 

Is the Rust runtime faster? Usually. Do your own research. Look up the stats on the fastest web servers,  results are fluid. Read the follow up on the Discord blog about them later moving to Erlang and comparing Go 1.9 (1.14 is current) to most current Rust.

Personally, I'll take a language specifically designed to address the needs of enterprise computing by the creators of C, Unix, Plan9, and  Unicode over an accidental hobby-turned-"systems language,"  volatile, heavy async/await concurrency, unnecessarily complex, read-only, butt-ugly, trendy language run by a shady "rust is political", NodeJS-y governance team any day. 

I expect a lot of C++ code to be replaced with Rust, and that's a good thing. Rust is a good thing for *a very limited few applications.* But for everything else in the get-stuff-done-safely-and-quickly application space it is not only a terrible pick, but one that might even get you fired if you force it on a company without understanding and prioritizing the needs of the company you work for. Cool is not a criterion.

 [Update: https://www.techempower.com/benchmarks/ confirms Rust, C and C++ have the fastest web servers period. I was wrong about that (having remembered another study that only compared, PHP, Java, Erlang, Node, and Go). Go is next, but Go is the clear leader from the dozens of enterprise case studies porting from non-compiled web frameworks. In fact, I have yet to read a single case study of *anyone* using Rust for any web services in an enterprise environment.]


[Please do not comment unless you watched the entire video. Comments prove people aren't. And by the way, this is a live stream that's why it's messy and opinionated and downright wrong in several places. I've noted the important corrections. Thank you.]

## Transcription

[00:00:00] Something I've discovered recently and I'm really I'm to keep getting reminded of it
[00:00:03] I was reminded of this a couple years back when I gave Russ a really good look and
[00:00:07] As much as I've been kind of enamored by Russ lately because of its peg parser rest dot or for Pesta.rs
[00:00:15] I've been kind of put off by how slow rust is and I'm gonna justify that comment and this is not a clickbait
[00:00:22] This is actually
[00:00:25] Something that I've been reminded of that I think we all need to be reminded of and I think
[00:00:29] Particularly those of us who are attracted to rust
[00:00:32] for all the right reasons end up
[00:00:35] Overlooking some really serious flaws with it because it's so sexy and fast and promises promises
[00:00:44] promises
[00:00:45] safe programming and and I think some of it is is not true frankly
[00:00:51] Having had an initial an initial exposure to it and writing some code in it
[00:00:55] Then I'll talk about how to what I did and all that so I'm just gonna give away the ending here
[00:00:59] Go is way faster
[00:01:03] On pretty much every front then rust and that includes runtime speed
[00:01:09] But it's faster for compilation. It's faster. The fastest the web server in the world is currently a go server
[00:01:17] And most importantly and this is the main reason I'm making this video go is faster for developers
[00:01:24] to write and I know that gets underplayed all the time
[00:01:30] If it's runtime, I'll be shocked
[00:01:32] Goes yeah run runtime speed runtime execution speed for go
[00:01:38] It's slightly slower than rust, but that's not that doesn't mean it's faster and when you're talking about concurrency
[00:01:43] That's you know a different thing. So I don't even want to look at all those things because those are the things that people use to justify
[00:01:50] Selection of rust over go all the time and it completely bulldozes one of the major
[00:01:58] Considerations every single organization and programmer should invest in and and I'm gonna tell you what that is right now
[00:02:06] So I'm gonna cite an article. It's one of many articles out there
[00:02:09] That I found well, I was just reading up on this
[00:02:13] I mean I've got my own opinions
[00:02:14] But I just thought I would go out there and read what other people had to say and I really like this one from Sendar
[00:02:19] An info world write up and but ultimately he sums up that rust advantages are correctness at runtime common mistakes are avoided
[00:02:29] Because you know it's a little bit more memory safe and that's true, you know, you can't you can't do as many things wrong
[00:02:36] But you pay for that you pay for that safety and I want to get to that later
[00:02:40] The top tier execution speed so it definitely has the fastest execution speed for most things
[00:02:47] There's actually some things that go beats that on and one of them is is web servers
[00:02:51] And I don't want to pull it up right now
[00:02:52] There'll be a separate video, but if you go look at the statistics there are one of the fastest
[00:02:57] HDB server in the world right now is a go server
[00:03:00] And I'm thinking that there might be reasons for that reliable involving concurrency, but I don't want to go there right now
[00:03:07] Memory safety without garbage collection and people slam on go all the time because of garbage collection garbage collection is a good thing
[00:03:13] If you want to be able to write code really quickly because it simplifies the language. We're gonna get back to that
[00:03:18] Hardware level code. All right, so if you want to write hardware level see replacement code or
[00:03:24] You know C++ replacement code rust is still phenomenally awesome. And this is why I was so enamored with it
[00:03:30] I was actually going out to see pest on our s
[00:03:33] Which is a peg parser, which is really great so far from when I've read I haven't actually tried to use it
[00:03:38] But my after my initial experiments and you know people it's I'm gonna just disclose
[00:03:43] I have not written a lot of go code, but I've written enough go code in the last two days
[00:03:47] To realize I don't want go for night
[00:03:50] I mean I don't want rust for 90% of the code that I want to write and neither does the rest of the world
[00:03:56] In fact, they've made that very clear the world wants developer speed not execution time speed
[00:04:04] And that's why popular pop interpretive languages have been so popular for so long and there's a lot of good that came out of interpreted
[00:04:11] Languages that has moved us to our time now and I made another video about that in a blog about
[00:04:15] The interpreter language mania that kind of I believe ended with
[00:04:20] Kind of coffee script tanking and showing the world that we've kind of lost our minds and and that they're we actually do need strict typing
[00:04:26] You know and there's another video about that
[00:04:28] But we don't ever listen to even saying TypeScript is a good thing
[00:04:31] We should make Python more like TypeScript. Those are his own words. You can go to my discord chat and read it. Um, so
[00:04:38] Typing type languages compiled languages are modern. They're replacing interpret languages for lots of things
[00:04:44] Particularly node and Python on the back end
[00:04:46] We're starting to see this a lot and I don't need to make the case for this
[00:04:48] You can go out to go.dev or any of the sites out there and read the case after case study where go is replacing interpretive language on the back end
[00:04:57] particularly for you know GraphQL API integration middleware all that jazz not to mention that you know was made in Docker
[00:05:05] Recently I heard a rumor that one of the darker guys said that they might have picked
[00:05:09] They might have picked Rust if they had known about it and that would make sense because it's a low-level language
[00:05:13] It doesn't have garbage collection. It's also the reason that Dino Ryan doll who made node
[00:05:19] You know and then abandoned node for go made Dino first and go and then decided to move to Rust
[00:05:26] It makes a lot of sense. You don't want to let write a language interpreter and go
[00:05:30] That's not what go is for so I one of the big things I want to take away from this is even though
[00:05:35] I I'm gonna make the case that go is a faster language in ways that matter more than runtime speed
[00:05:41] Rust is still the go-to pick for things like alacrity language parsing
[00:05:47] You know anything that's got really really high
[00:05:51] You know
[00:05:53] Stuff that would be impacted by garbage collection above all
[00:05:56] Or where it's really matters if you have any kind of overflow and in another thing too that I actually fell into a trap
[00:06:01] The last couple days actually started to think that made some logic that go might actually be less safe
[00:06:07] Then rust in some cases
[00:06:09] Because if you don't run go build - race
[00:06:12] You won't see your race conditions and that's ultimately it
[00:06:16] And that's really easy to teach somebody just run go build - race and you will see any of those race conditions
[00:06:22] You might sneak in there on accident using drop-dead easy concurrency that go has compared to rust
[00:06:28] disastrously bad promises async await model, which if you've ever used
[00:06:33] Go routines versus
[00:06:36] Versus async await. There's a lot of people who prefer async await because that's what they learn
[00:06:40] But it is a much harder paradigm to pick up which is gonna make my case even further that go is a faster language than rust
[00:06:47] All right, so let's read the go advantages quick developer cycles number one quick developer cycles
[00:06:53] Why does that matter that all the reason Python is exploding right now is because of quick development cycles, right?
[00:07:01] So it's no surprise that we are starting to see and they're in the discord you can go read them
[00:07:05] We're starting to see longtime machine learning people posting about the tensorflow port to go because of the quick developer cycle
[00:07:13] Go is displacing Python in a lot of places. Go completely displaced to Python and at the company where Guido van Rosen was working
[00:07:21] Who then retired that's a fact look it up. He was working. He was working at Dropbox
[00:07:26] They completed their port from Python to
[00:07:30] To to go and they didn't need any of that stuff anymore
[00:07:34] They didn't let go of Guido as far as I know and by the way Guido has got an amazing brain
[00:07:39] He's an amazing person if he happens to watch this
[00:07:41] I just want to say I have I share your affinity for language parsing
[00:07:45] And I can't wait to write my own peg parser for a project
[00:07:48] I'm working on that's what he was trying to put a peg parser for the next version of Python
[00:07:52] I don't know where that's at right now anyway, so
[00:07:55] High tier execution speed and this is what it's not top tier but it's high tier and it's high enough in fact
[00:08:00] It is so high that it destroys Python on execution speed now as well as startup speed
[00:08:07] And this is why you see so many command line utilities and terminal UI apps being built in go
[00:08:13] Because imagine if you could write, you know a terminal user interface application in Python and but you have all the speed and startup time
[00:08:21] Of of a compiled C language. That's what you get with go and it's just phenomenally good at that
[00:08:27] You have memory safety by way of garbage collection
[00:08:30] Which means you don't have to think about it that simplifies the writing of the language and we're gonna get to that again soon
[00:08:35] That's the main thing I want to show
[00:08:37] Developer convenience, it's easier. This also goes for libraries. So I recently had the opportunity to compare a few libraries
[00:08:45] for example something as simple as
[00:08:48] parsing yaml now Russ has got a phenomenally great parser and you know and it uses Tom Oh for other things
[00:08:55] But it's got a it's got a forget the name of it
[00:08:57] But it's got a really great library that does all the different parsing and stuff
[00:09:00] But go has has JSON yaml and XML parsing built into the language and it's actually a part of the tagging system for the structures
[00:09:08] Which blows away Russ syntax
[00:09:10] I mean, it's like night and day difference if you've written if you've actually written in Rust and you've actually written go
[00:09:16] When it comes times to marshaling an un marshaling data, there's no comparison
[00:09:21] Going just destroys rust
[00:09:24] In terms of clarity of code and that's where we're gonna keep coming back to straight forward code
[00:09:30] That's they put that on the bottom, but I tell you what it is true go has really unsexy syntax in fact
[00:09:36] The generics design the way it's looking to use parentheses instead of angle brackets really triggers me in fact
[00:09:41] It triggered me so much it almost made me leave go
[00:09:43] I recently tweeted about that and and I was just being stupid
[00:09:47] Because I went back and looked at it and I was like okay
[00:09:50] They did this for compiler optimization and and then I compared the two languages to one another and I was like oh my god
[00:09:57] It is so the language syntax is so much easier to get behind with go even if I don't really like this sort of you know
[00:10:05] Inheritance-esque part of it. I do like functional languages
[00:10:09] and that has you know
[00:10:11] Russ has been influenced a lot more by functional languages
[00:10:15] Very clearly and and you can see that in the language with these really big long, you know like
[00:10:21] You know dot dot dot dot this right and that just affects the syntax. I suppose that's fine
[00:10:27] but go with more traditional imperative language, you know, it's just super easy to get your head around and and
[00:10:32] For most applications, that's the best thing and that makes you a much much faster programmer
[00:10:38] And and you know, I don't need to go into all the details about
[00:10:42] All of that
[00:10:43] I will I do want to say a few things about Russ that I really found that I really really love
[00:10:48] First of all, I absolutely love the Russ documentation
[00:10:51] The people that have been working on the Russ team and I think identified who she is
[00:10:54] I'm actually going to do another blog about the core team members and how why why it matters that you should compare the core team members of
[00:11:00] The go community to the go team members of to the core team members of the Russ community not to mention the original language designers
[00:11:07] Particularly if you're trying to decide how much technical debt you want to accrue in a particular language once you have thousands of lines in a particular language
[00:11:13] You know things like whether the language is going to be around or be massively changed within a year like Python did to so many people
[00:11:20] Those are big issues and so being able to sort of predict the likelihood of something like that happening in a given community is a really
[00:11:27] Important decision if you want your code to be around in five years ten years and and so I actually that's another video that
[00:11:35] I'll do but I've been I've been going through and in screw basically
[00:11:39] Almost stocking to a degree each of the core team members and each of the designers from both of the languages
[00:11:46] To compare the brainpower and you know the values and the views of the people behind the language
[00:11:51] And you know a little bit of a spoiler here the director of the node JS project
[00:11:55] is now a core team member with the nine core team members of the Russ project and
[00:12:00] To me that is totally exactly what I would expect to discover because there is a lot of node think
[00:12:07] In the Russ community and you know and I think about that
[00:12:11] So anyway, I mean those are decisions that you can like you know throw stones at me
[00:12:15] Whatever you want to me they matter because I I really want to know who I'm gonna you know what kind of community
[00:12:20] I'm gonna have to deal with for the next 20 years or whatever
[00:12:23] But but the documentation one of the people on the core team is a who's in charge of the materials and name
[00:12:28] She's fantastic. She's done amazing things on the documentation front
[00:12:32] Go could really learn from them on this go has
[00:12:36] Frankly, you know abysmal documentation right now
[00:12:39] It's almost impossible to find an up-to-date book on it right now and I get asked this all the time
[00:12:43] Tour of go is not even compatible with a non-JavaScript web browser
[00:12:47] I mean there's just they've tried to do go.dev to like bring that up and everything
[00:12:51] So when it comes to the comparison in terms of of speed
[00:12:55] Part of that speed decision is how effective how fast are the developers?
[00:13:00] And if you're a CTO you care you care about how fast it's gonna be for your for your developers to make a language
[00:13:07] This is the reason you know that I believe that there were you know a lot of
[00:13:11] People that threw it the other weight behind note and stuff at the enterprise level because they thought oh hey
[00:13:16] Wow, I'm gonna be able to leverage all the JavaScript people over here to do different things and more things and make them really productive really quickly
[00:13:22] And in fact, I think that was the thinking behind the interpreted mania that kind of hit the whole world
[00:13:27] And I don't know there's a lot wrong with that other than just to state that that's a thing
[00:13:32] So one of the factors in developer and developer speed is how well they can learn and grok the language
[00:13:38] How welcoming the community is how fast they can get answers and I got to tell you on the documentation front rust destroys go
[00:13:45] It just destroys because it's got all of the documentation here
[00:13:49] I was able to quickly learn how to do an iteration over a Unicode character string which
[00:13:56] They actually separate out. In fact, you can't even access strings
[00:14:00] This is this actually think this is a really poor design decision on rust part versus go
[00:14:05] it actually really kind of gives up a little bit about about
[00:14:10] the priorities
[00:14:12] Russ has no problem telling you that you cannot index into a string and
[00:14:17] Rust people will tell me well, that's because you have to understand the rust way blah blah blah
[00:14:21] I don't want to do anything unsafe and I completely I think this is one of the coolest things ever about rust
[00:14:25] That's why I'm saying it so right here
[00:14:26] You could actually if you if you use ranges, you can crash your program see this right here
[00:14:30] Remember that promise of safety
[00:14:32] read that line
[00:14:35] Crashing your program is not safe. There's no way to trap the panics or anything like that. It just dies
[00:14:45] There are ways to trap panics and go there are not in rust
[00:14:50] All right, so I mean not at least not in the way that they are and go in least the easy way
[00:14:55] So, you know saying good language is safe. That just means I can't write bad memory buffer overflows and all that
[00:15:01] That's one thing saying a memory is actually has you know easy to use safety things to put into it
[00:15:06] It's a different thing and I know this is hardly opinionated and there's lots of you gonna hate me
[00:15:10] But I don't care
[00:15:11] I'm just telling you my clip shape take on it
[00:15:13] So you can decide what you think and make your own decision which I tell everybody to always do so here's a problem
[00:15:18] This is what I really love though. So for C and Shars first of all, it's not a shar
[00:15:22] Okay, it's not a shar a shar to these guys at rust means a Unicode code point
[00:15:29] which is called a rune and go much much clear in fact by default when you iterate over a string in in
[00:15:37] In go your your your by default iterating over the Unicode characters
[00:15:42] It's implicit in fact the only way for you to iterate over a byte like they do down here is for you to cast
[00:15:48] the thing you're iterating over as an array or a vector or a slice or whatever of
[00:15:53] Bites you have to show you have an explicit cast. You don't so have some dangling function and method call off the end of it
[00:16:01] And so that syntax is already so much better. It's clearer to read. It's easier to write and you're not as confused
[00:16:10] And you know and it's it's already what you're expecting to have happen anyway. So it's a lot. It's more
[00:16:17] Just easier for you to grok when you're learning how to write the language
[00:16:20] This actually took me much longer than I would have expected to look up even though my the end result is I think this is cool
[00:16:26] That they block you. I mean if they had allowed you to actually iterate over, you know, bites of a string
[00:16:32] Without this I would have been like oh hell no
[00:16:35] Because nobody you know codes this way anymore
[00:16:38] Any language that does not have Unicode awareness for strings in all of its iteration all of its for loops all this indexing and strings is
[00:16:46] A dead language to me. You should not be writing in language and it's worth stating that two of the core
[00:16:53] Authors of the Unicode code standard itself were in the original design team
[00:16:59] Ken Thompson and Rob Pike for the go team rust cannot even come close to claiming that
[00:17:06] You know Brendan I maybe looked at the language a couple times. Yeah, look
[00:17:10] I know I don't know that for sure
[00:17:11] But when you compare the brainpower of the people behind who made and the experience above all of the people who made go
[00:17:18] Compared to rust it's undeniably in the favor of go and which is why it's so interesting because go is such an unsexy language
[00:17:26] It's deliberately unsexy because it's meant to be
[00:17:31] maximum developer efficiency
[00:17:34] Originally for Google and now for the world. I mean it's been this is not a language that has any ties whatsoever to Google anymore other than people
[00:17:40] Some people at Google still work on the project
[00:17:44] So anyway, let me come back to speed of execution, but I wanted to say something like this. So I actually had to look this up
[00:17:50] Had I been coding this and go it would have just done the right thing
[00:17:55] And I wouldn't have ever had to go to the documentation on this so how much time did I spend on looking at the documentation?
[00:18:01] Oh, I don't know. Maybe a half an hour. I read this whole article right here
[00:18:05] The point I'm making is that on this particular point the amount of time it took me to learn this and do it properly
[00:18:12] Was at least 10 to 20 times more than if I had done it on go
[00:18:17] so the single greatest claim above rust that go can make is that it is faster to write and
[00:18:24] Easier to maintain and anybody who's been in this business for any amount of time will tell you code is maintained
[00:18:30] Way way more than it's written and that was my job at IBM maintaining code looking for bugs
[00:18:37] And you know those bugs if I had to look for those same bugs that I had to find now
[00:18:42] That if the typically compliance manager software that I was working on at IBM as second-level support
[00:18:48] If I had to do the debugging there, I might not have had to use a symbol the symbolic debugger
[00:18:52] I could have took the source code and ran it with the race condition check and found the bug
[00:18:56] Right and rust claims that that bug would never have existed
[00:19:01] So there's actually a series fallacy that's going around about rust and I really want to just stop this
[00:19:08] Rust is not safer than go. I'm gonna say that and rust is not safer than go now if if you
[00:19:17] overall overall as a language it is not safer and the reason rust is not safer is because there are a lot of things to
[00:19:24] Consider when deciding whether a language is safe or not and most of those things don't have anything to do with memory
[00:19:31] Management and whether or not you you have mutable and immutable strings
[00:19:35] I think it's so cool that it has that I kind of wish go had it
[00:19:39] But it has nothing to do with the overall decision about how safe a language is in fact something that trumps that ability to write
[00:19:48] I don't care what Microsoft's article says, you know what makes length
[00:19:51] You know what makes code safe code that is clear and easy to understand
[00:19:56] Code that the most of the bugs most of the substantial serious bugs that happen a language are not memory buffer overflows
[00:20:03] You sure they're really bad and they're horrible when they happen, but that's not where most of the errors in software happen
[00:20:09] I've been doing software support and review for so long. I can't tell you most of the errors and by the way
[00:20:14] This is why I'm dropping shell for my Ken knowledge utility
[00:20:17] I'm going to start doing that today later, but most of the errors that that destroy an application are logic-based
[00:20:24] User errors they are not related to some, you know
[00:20:29] Assurance that you can't run make a race condition or you can't do this or that
[00:20:34] What what they the humans are the most dangerous thing they are the most dangerous thing to your software if you're a company
[00:20:40] And you're making a decision about how safe of a language you want to pick
[00:20:44] Don't pick the most complicated language you can pick that had that guarantees you can't overflow memory pick the most
[00:20:51] Simple language you can write and this is why Python is becoming so popular even though people break
[00:20:55] It's right complex Python all the time because developer productivity and developer safety
[00:21:02] Trump rust there's two things you can't do in Rust so far that I know of and if you if I can I
[00:21:07] Went to go document my code and rust and I looked at all the other rust examples
[00:21:11] And I was like there's no in-line documentation as far as I know there's no way to even extract in-line documentation off the code
[00:21:17] You know another thing there's not there's no built-in implicit obvious way to write unit test code goes unit test ability is like
[00:21:25] Phenomenally amazing is way better than anything that I can imagine this has and and across the board
[00:21:32] Everything is simpler and go and that is not a liability
[00:21:35] That is a plus because it's going to help you write safer and it's going to help you write code faster
[00:21:41] So maybe it maybe it gets you know, a lacquery beats
[00:21:44] I would never write go in a lacquery. That's a stupid pick and thank God you can practice Unix philosophy and you can say
[00:21:50] I want to write this in this language and I want to write this in this language and those two things can work together
[00:21:55] They don't have to be these big monoliths that do everything and that's really awesome because that means I can still
[00:22:01] Love love love a lacquery. I can love love love white top, you know and these other things
[00:22:06] But it also means that I can really really love c-term and c-pick and all of these terminal UI applications
[00:22:12] They're written and go it also means that pen testers and security people are they're not going to pick rust
[00:22:18] No, they might write an operating system in rust because it's fun or something
[00:22:21] But when it comes to writing a utility really quick or writing or writing, you know a tool of some kind that they can they can
[00:22:28] Deliver over cross-platform goes going to be way better because you can write it quickly
[00:22:33] It doesn't mean writing it safely is less important is writing it quickly and you're gonna see I'm I'm I mark my words
[00:22:40] It's already started you're gonna see go just take over the security community
[00:22:45] I mean other than like really high-performance low-level systems engineering like you know
[00:22:50] Gamazo and other people have been doing it roughs, which is fine and cool
[00:22:53] You're gonna you know because it's more of a C++ and you know a C replacement than it is go goes more of a frankly
[00:22:58] It goes more of a Python and a Java replacement if you asked me so so those two are gonna exist side-by-side
[00:23:04] But stop saying that go is slower than rust and making your decision entirely based on that because that is an uninformed
[00:23:12] Decision for the long term of your software project. You're writing you're making decisions about what is going to be around for a long
[00:23:20] Time what's gonna be maintainable?
[00:23:22] What has the the highest backing? What is has got the easiest way to write test cases?
[00:23:27] what what is gonna make you know the least amount of headache when it comes to documentation and
[00:23:32] Frankly what language is slower slower to adopt changes, and I know you think that that's a liability
[00:23:40] It's not it's it's a it's a positive thing because when a language is slowly adopting changes
[00:23:46] That means that they're spending a lot of time in fact
[00:23:49] It worries me a little bit that go has started to speed up. It's it's its feature adoption
[00:23:54] I think there was some things that could have done a little bit differently and the whole module thing
[00:23:58] I like it modules don't get me wrong, but and generics
[00:24:02] I think there's something things they could still do differently there, and that sounds like that's already a done deal
[00:24:06] In fact if there's one thing about go that scares me is that the decision-making process is speeding up somewhat
[00:24:12] And it as if it wasn't you know the node project for God's sake or you know something in the JavaScript realm
[00:24:18] Things are changing so fast over there. Nobody can keep any track and the bugs are rampant and prolific
[00:24:25] So you know and you know rust didn't even have concurrency until when like a year or two ago
[00:24:31] I think so you know concurrency was fundamentally built into the go language from the beginning
[00:24:37] And it really clearly shows so this is definitely a rant, but it is a rant and is a strong opinion I have
[00:24:44] Because I see a lot of false information out there right now about go being slower than rust
[00:24:51] If you're making a language selection, you need to consider all angles in terms of speed and that does not just mean runtime execution
[00:25:01] So I hope you don't get too mad at me if you do want to get mad at me
[00:25:06] You can flame me in the comments. I want you can come argue with me on the stream
[00:25:10] And I'm gonna go ahead and take some comments from the peanut gallery now and and hear what they have to say
[00:25:15] I probably I think I missed a few tomatoes being thrown
[00:25:18] So I'm gonna do that and then I'm gonna post this video and you'll see it on YouTube otherwise come join us on Twitch
[00:25:23] At RWX Rob. All right, what do we got?
[00:25:28] Put the moon back on so I can be nice and peaceful and I better better turn up the chat a little bit. All right
[00:25:36] Prototype goes to production
[00:25:38] Yeah, semi click final a topic a wholeheartedly agree with at at RWX Rob
[00:25:45] But why is rust constantly marketed as the next C++
[00:25:50] That's a good point. I think it's I because it I don't know what do you think C++ devs are sufficiently used to the pain
[00:25:59] Oh, that's beautifully said this beautifully said
[00:26:02] Let's turn up a little bit of music. I have even have music on I don't even think I have any music today
[00:26:08] Oh, nope, I was playing the copyright free stuff and I didn't even turn it on button on so I'll cut that out
[00:26:16] That's nice. What's happy music?
[00:26:19] Alright, so
[00:26:21] Let's go ahead and talk about this
[00:26:24] Let's see. Yeah, I mean go looks great and it's easy to find simple things
[00:26:27] What I want to build is complicated and it's hard to put find good examples into diet design powders at this time completely agree with that
[00:26:34] So it's sexy to me. Yeah, a lot of people think it's I think a lot of people think you know
[00:26:39] It's funny the people who think go is sexy tend to be people who have been around the block more and they've seen more than one language
[00:26:47] And I'm not trying to link lists
[00:26:51] Yeah, let's see
[00:26:55] Yeah, I don't get that joke, which is again another reason there you are Rob you're wrong. I mark
[00:27:01] There's amazing testing an extract. No, there's not. No, there's not on that particular point
[00:27:06] No, it's not it's not nearly as built in and it's amazing
[00:27:09] I've already tested some of it and it's not nearly as good as rust, but you go chase that trend mark. I know you
[00:27:16] See keep up the great work. I appreciate what you're doing. Thank you for that. Here's the stuff on testing. Yeah, I read that and
[00:27:23] Yep
[00:27:25] Yeah, you built you can put the test stuff inside of the code along with your code. Yeah, I read that part
[00:27:31] And I'm not a fan of that. So we should probably talk about that later
[00:27:37] But I am I love this so testing testing in go the test cases are written separately
[00:27:44] In the built-in unit testing that has always been a part of the language by the way
[00:27:48] It wasn't tacked on later and then they've added on the ability to put testing inside of language
[00:27:54] The documentation stuff. Yes, you can publish create documentation
[00:27:58] But it is not built into the language. In other words, you cannot you can do some of okay
[00:28:04] That's nice and I do oh by the way. I did want to say I'd already prop told you
[00:28:08] I really like how they're documenting this and that they use markdown for the documentation that I really really like that
[00:28:13] They're using markdown for the documentation as opposed to go doc which always bothers me because I have to write go doc documentation
[00:28:21] Then I also have to write read me documentation
[00:28:23] This documentation is not automatically published
[00:28:27] At least as far as I know to like the way go doc is and
[00:28:32] So yeah, I can use those documentation comments
[00:28:37] Yep adds one to the number given I also like that they don't have
[00:28:41] that they don't have the the
[00:28:44] Convention of putting the name of the thing first. There's like tiny little things like that that are in the go documentation
[00:28:50] Standard that I like better
[00:28:51] It's not just because I that's what I know. I just think it was well thought out
[00:28:56] Cargo doc
[00:28:58] For convenience actually kind of triggers me to that you have to use cargo with rust instead of using the tools that come with go
[00:29:06] There's no like front end for it
[00:29:08] So yeah, but I'd really really like that it allows markdown documentation
[00:29:12] This is something that continues to make itself known in the Rust community
[00:29:16] So the the the language itself sucks in terms of reading it. It's almost impossible to make any sense of but
[00:29:24] But the go the go document the go code itself is easier to read
[00:29:29] Even though it has less ability to provide really really happy, you know documentation
[00:29:35] Like this it's in markdown and that's because of goes like minimalist approach to all this stuff and I understand where that's coming from
[00:29:44] Panics errors safety documentation comment on tests
[00:29:50] Yeah, there you go. So if you want to make a comment that doesn't have a thing
[00:29:53] Yep, there you go. Let's see. What are we going on about?
[00:29:57] Are you going you're going to go right now? No, I'm going to be just a second. Give me a second here
[00:30:02] So let's finish up here. What else we got?
[00:30:06] I've helped people profiling Python software gain of speed by a factor of seven just right placing an implicit function call with an explicit one
[00:30:15] Speed is usually limited by coder experience at a basic level that I completely agree with
[00:30:20] That's you know, that's you know, what else makes a Python really slow is using classes
[00:30:25] If you I actually benchmarked this if you use a plain old dictionary in Python versus a class
[00:30:32] Which actually underneath the hood uses a dictionary?
[00:30:35] Because it was tacked on later. It's way slower at runtime. So explicit is also better
[00:30:44] But that you look writing explicit code that is impossible to read is not going to slots, right?
[00:30:52] Right. I think you know what I'm talking about
[00:30:55] Testing directory top line has a separate unit tests. Yep, and test organization documentation isn't auto published as far as you know
[00:31:01] Yeah, I went through a no JS phase as well
[00:31:03] Then TJ express creator suddenly dropped it and said he was going to start go has been a great instance that is funny Ninja
[00:31:09] on that same day I read that same article and I immediately changed to go in 2014 and I regularly refer to TJ on the stream
[00:31:20] TJ has been one of my
[00:31:22] long time
[00:31:23] Sort of mentors from afar. I follow what he does the thing I like about TJ above everything else
[00:31:30] And it's gonna sound weird. I don't mean it is a slight. He's not a technologist at the core
[00:31:35] He's an artist. He's a photographer
[00:31:39] He's self-taught and he wants practical solutions that are elegant easy to read God
[00:31:46] If you've seen coa or you know, any of the stuff that TJ has run his code is elegant
[00:31:52] It's not complicated at all. It's designed to be easy to read. It's absolutely beautiful and
[00:31:58] So that is what we should be striving for we should be and yeah
[00:32:02] We should be striving for elegant code not complicated code. That's more explicit
[00:32:08] And so that means if we can get both which I think rust is I mean rust go tries to
[00:32:14] Do for us, and I think it's closer to that then there are some things that we have to do explicitly like checking for null return values
[00:32:20] Which I still am okay with and things like that and go that rust does not do as well
[00:32:26] When I found out oh God when I yesterday probably the probably the straw that really broke the camel's back for me
[00:32:32] was when somebody told me that it was idiomatic rust to leave the return statement off of the end and
[00:32:39] To take a semicolon
[00:32:42] Okay, so can I tell you how stupid that is I think that is the stupidest design decision
[00:32:48] I've experienced in a language in the last 10 20 years
[00:32:51] They decided to say that rather than explicitly so you can make the you make the whoever just made the case for
[00:32:58] Explicitness is better in rust. Yeah, no because you know what they just said the I actually wrote return space
[00:33:05] Value semicolon and I got I got somebody gave me a hard time
[00:33:10] Because they said oh on the last on the last line you take is idiomatic to leave off the semicolon and to drop the return keyword
[00:33:20] Because those are implicit
[00:33:25] But the fuck is it explicit or is it not explicit?
[00:33:29] You can't do both and if there's one thing that my impression about rust it can't make a
[00:33:35] Mind it keeps trying to be this and if you look at the history of its synchronous city or its asynchronous decisions
[00:33:42] This is in asynchronous in now. It's out now. This is in now. This is in it can't make up
[00:33:47] It's mind and so you end up getting this language that looks like somebody slammed together
[00:33:52] The the syntax is of every other language on the planet and and then you know claim it made claimed. It was memory safe
[00:33:59] I think it's just threading. Yeah, well, it's not actually
[00:34:03] It's not it's it's not just threading. No
[00:34:09] You know anything about green threads you know that that statement is is way way understated alright so
[00:34:15] And and that's what go you know go routines are their green threads which make maximum efficiency efficient
[00:34:20] You said of threading and guess what rust doesn't do it rust gives you full control that you have to implement your own
[00:34:26] Green threads, which is probably I know you're probably gonna tell me there's a cargo crate for it
[00:34:29] I don't care because I want to tell you right now as much as I love
[00:34:35] Alacrity and some of the other really really key kind of sweet spot applications that were done in Rust
[00:34:42] My personal problem when it comes to making
[00:34:45] applications in software has nothing to do with learning the syntax of a language or you know
[00:34:51] It's about how fast I can write in the language and this is why you see me picking up bash when I probably should be using go or Python
[00:34:59] Because I can code fast in bash speed of development is more important to me
[00:35:04] I'm more of a writer and a developer who wants to make shit
[00:35:07] Then to spend time reading documentation and stuff and so I value those things and I believe I can't say
[00:35:13] But I believe you know a developer like TJ values those things similarly
[00:35:17] They're happy to use a Mac to do their development because it means they can do things faster
[00:35:23] And you'll never see me doing that again
[00:35:25] But my my priority is on making stuff and stuff that will stay around and it can be useful
[00:35:31] It's not on you know esoteric small things. This is also why I don't run rust as my primary operating system
[00:35:37] I don't want to futz around with my operating system all the time
[00:35:41] I want to do stuff with my operating system. I want to make software
[00:35:45] I want to make you know what I mean? I want to make applications. I want to change the world
[00:35:50] I want to make the next read me world documentation knowledge management system
[00:35:53] I want to make the next cool game
[00:35:55] Well, if you know if the language is going to get you there faster
[00:35:59] Then pick that language and that's why interpreted languages have been long for a long time. I've been very very popular
[00:36:05] It takes a while to be productive in rust. You know what?
[00:36:07] I'm kind of tired of hearing that condescending thing from you mark and others people tell me that
[00:36:14] That the reason that I'm slow with rust is because I am not proficient in rust yet
[00:36:20] But I I've no enough language is what 12 at this point that that you know
[00:36:25] I can tell when a language is never going to be
[00:36:29] productive for development
[00:36:31] I can tell just by looking at it and and I had that same impression at first a little bit with go
[00:36:36] And then you get your head around it, and you're kind of fine
[00:36:39] Haskell is another one that I had that kind of impression with too
[00:36:42] The truth of the matter is it is like something
[00:36:46] I think is a pretty fair argument to say that you can write Python faster, then you can write go
[00:36:51] There's a trade-off there. I mean I think I'm not gonna just agree with you that that but then and at every stage
[00:36:56] You're making a trade-off. You're making a trade-off. What am I getting for this trade-off?
[00:36:59] This is taking me longer to write this code how how much like bash?
[00:37:03] I'm like I wrote my entire knowledge management utility in bash
[00:37:07] I'm like do I really need to make this and go or rust?
[00:37:10] I mean why what's the reason for doing that? Well, you want to be able to run on any computer?
[00:37:14] No, I really don't I just want to be able to run it for me
[00:37:17] So so every one of you is going to be making trade-offs along the way
[00:37:21] PHP is a productive PHP has one purpose and that is to do website stuff and
[00:37:28] That's it
[00:37:29] Some people can code fast and PHP to make websites and and if you don't have a priority on
[00:37:35] On creating websites that actually can run on multiple
[00:37:40] Endpoints and you really don't know what Jamstack is nor care and you don't want to participate in the modern web development stack
[00:37:48] Which does not include PHP?
[00:37:50] Fine if you're productive in it be productive in it and depends on the scale of your application
[00:37:55] But if you and the reason I kind of come on glued on this rust thing this morning
[00:37:59] Is because people people companies big companies are getting behind rust for big things
[00:38:05] And you mark my words and I put this in the blog mark my words in five to ten years
[00:38:10] You're gonna see tons of massive rust code bases that are gonna come out of this and you're gonna start seeing people say
[00:38:18] Rust is read only and they're gonna forget
[00:38:20] They'll have forgotten about Pearl by then and they will be telling you all of the same things that people today hate on Pearl about
[00:38:27] When Pearl was used for server-side web development when it was never intended to do that
[00:38:32] It was intended to be you know the world's best
[00:38:35] Auk and said and TR and cut replacement and people continue to to bag on Pearl
[00:38:39] But you mark my words one of these days somebody is gonna say that they're gonna this all of a sudden become popular
[00:38:45] Back right now rust is at the beginning of the Gartner hype sky Gartner hype cycle
[00:38:49] And if you don't know what that is go look it up
[00:38:50] So everyone's jumping on the bandwagon and they're saying how cool it is and and it's gonna get adopted because of it
[00:38:55] It's gonna get adopted all over the place for a lot of really significant reasons
[00:39:00] The the thing that really pulled me in was being able to write memory safe code at the sea level
[00:39:06] That's what pulled me in above everything else
[00:39:10] And I allowed myself to believe a lie
[00:39:12] That is that I could not write memory safe code and go and that is a lie
[00:39:17] And that's a lie that I've allowed myself to believe it's a lie that that rust continues to perpetuate on everybody else
[00:39:24] Another lie is that is that rust is slower the rest to see it and if you want to write in see and you can do so safely
[00:39:30] Obviously, that's the fastest language in the world
[00:39:32] Working and go when you compile the machine code. I
[00:39:36] Can't explain green threads to you right now
[00:39:40] But you can't really evaluate rust versus go
[00:39:43] And until you understand the concurrency models of both of them how they're implemented and how fast they can be coded in
[00:39:50] Because the world is moving to 64 core systems that are going to demand a highly
[00:39:57] effective concurrency model both on the developer cycle as well as the run time
[00:40:03] And if and if you don't believe me on that
[00:40:06] Start to look at the stuff that's coming out now on the server side and the number of cores is bumping up
[00:40:11] By the way, that's also going to torpedo any
[00:40:15] JavaScript framework on the back end because it will only be tied to a single proc even if they manage to get workers working
[00:40:22] They're just you know, the JavaScript community is trying to get web workers basically on the server side
[00:40:27] So they can actually have some kind of concurrency. That's not event driven
[00:40:32] You know, it's not like you know the vent driven concurrency that they have now
[00:40:36] Right now JavaScript can only be bound to a single process. Anyway
[00:40:40] If you don't know see all is worth learning rust instead
[00:40:44] I don't I don't know I don't know I look I'll tell you this
[00:40:48] There's one thing that I really love about rust if you truly learn rust
[00:40:53] At least and I've only learned a little bit of it
[00:40:56] But I've learned enough to know that it causes you to think about your code way differently
[00:41:00] You have to think about you know variables not in sense of like being a box that you can just change stuff
[00:41:06] But being a thing that never changes that then you have to hand off to something else
[00:41:10] It's more of a functional approach because of its you know immutability in general
[00:41:14] Which just means you can't change stuff by default in rust and that's kind of cool
[00:41:20] So I strongly encourage you to learn rust at some point
[00:41:24] It's still going to remain on my list of languages to learn and I'm still going to deploy things in it
[00:41:28] I plan on making my parser
[00:41:31] Using past, you know in rust and I'm I for that reason
[00:41:34] I don't think I think there's still some things you should pick for that
[00:41:38] Because of the Unix philosophy says you know make one command really good and then tie it to another command that might be a go
[00:41:43] Or see your Python who cares?
[00:41:45] So so that's the thing
[00:41:47] I personally I don't I don't think I don't think server-side JavaScript has a future at all
[00:41:53] They're gonna see some cool things with that with Dino
[00:41:56] And though there will be some out. I know some use cases, but the core
[00:42:00] Server-driven middleware case that people are using node for right now is it's already been replaced
[00:42:06] There's already a massive migration underway to get that stuff out of out of the way
[00:42:10] No, yeah, no jazz has worker threads. I think I mentioned that worker threads are not anything
[00:42:17] Yeah, worker threads are nothing nothing like green thread concurrency. That's built into the language from scratch
[00:42:23] No jazz is just is just an example of what happens when you say
[00:42:27] What if and people start tacking shit on to the outside of it and throwing things at it as opposed to it being designed from the ground
[00:42:34] Up to do what you want to do and into his some degree
[00:42:38] That's the way rust is kind of come about and that's why it looks like a really powerful frankenstein
[00:42:43] That's got pieces of all the other, you know flesh golems
[00:42:47] Attached to it because it's got the good things from all these other languages all been like sewn on to its face
[00:42:53] And it's exactly what it looks like
[00:42:58] Yeah, let's see, uh, so I see uh, so I say I know coding I know a bit of oversight, but I haven't had me interested
[00:43:05] Yeah, uh, it's not really people figure out how to share resources for production setups in node for over a decade now
[00:43:11] Yeah, no, they haven't figured it out. They they do it doing it and having figured it out is completely different
[00:43:18] If you've been in an enterprise environment before you've seen that I haven't seen any node in the enterprise
[00:43:21] But I imagine it's the same stuff people people conduct tape shit together and all sorts of ways
[00:43:26] Doesn't mean it's the best way to do it
[00:43:32] Yeah, I'm not a fan of, um, that was a bad joke
[00:43:36] Uh, yeah, let's see, uh, okay rust wouldn't be great great starting language since it's not that intuitive. I agree
[00:43:43] Uh, I I also do I you're gonna I've been saying fun things about rust javascript
[00:43:48] I'm gonna say it again javascript to date is my favorite language syntax of all. I love javascript
[00:43:55] I love it. I really do
[00:43:57] The community's kind of weird and where it's going. It's kind of uncharted
[00:44:01] Uh, and it's changing literally every day, but I still stick by the statement that javascript is the best first language
[00:44:08] Uh, people think python is the best first language
[00:44:10] I I teach bash first because it's all something you're already using not because it's the best to understand syntax and inheritance
[00:44:16] And that you can you can teach first-class functions better in javascript than any other starter language
[00:44:22] Because you can do anonymous functions, which you can't do on python
[00:44:24] So a function just becomes an assignment just another parameter this past an argument that's passed to a parameter first-class and first-order functions
[00:44:31] Those are things you can teach very very well with javascript javascript is a phenomenally awesome first language to learn
[00:44:38] Uh, it gives you a lot of power. Uh, it gives you, you know, all kinds of stuff
[00:44:42] Uh, yeah
[00:44:44] I've been forced to play around and see before it's pretty my capabilities just wondering
[00:44:48] And and what way is is rust slower than go?
[00:44:51] Uh, well, I just said that already. I made a whole video about it. You're gonna have to go back and watch the video. I'm sorry
[00:44:57] Uh, but to summarize
[00:44:59] It's the developer process is much slower
[00:45:02] Uh, the test process is slower the documentation process is slower
[00:45:05] Uh, and not and the the runtime process and writing concurrent code is slower
[00:45:11] Uh, and so a lot of those things are slower a lot of the things that you might not think are slower
[00:45:16] Uh, and but they actually matter more they actually matter more than than having a little bit of speed over it in runtime execution
[00:45:24] Uh, it can do you you can't okay. Sorry. You're gonna hit me with the one-line lambda function
[00:45:30] That is not an anonymous function
[00:45:36] One-line lambda function does not count
[00:45:38] That you like like parse together with like multiple comprehensions. That doesn't count. Sorry
[00:45:45] Uh, context decorators for sort of functions are the best thing in python
[00:45:48] Uh, well, yeah, but they are they're in every language, right?
[00:45:52] Uh, and but they're not completely true because you cannot you have to define the function
[00:45:58] Uh, you can pass a lambda, but if you want to define a function so in javascript, you can do well
[00:46:03] I mean we're kind of getting off the rust go thing
[00:46:05] but in javascript you can actually assign
[00:46:08] An anonymous function to a constant and when you're working with beginners
[00:46:13] Showing the assignment operator in that operation is so
[00:46:16] Stinking clear and easy to understand if you're trying to teach
[00:46:20] I've taught lots of beginners and if you teach the same thing in python what you have to do
[00:46:24] You have to write out a python function and then down below you have to assign the function name to an operator to a to a variable
[00:46:31] All right, and they're saying well, that's good because now you have name functions and people sometimes in the javascript community say
[00:46:35] Well, you should never have unnamed functions because then you can't refer to this context and it changes everything
[00:46:39] I mean, I know I know all of that but my point is is that when you're teaching an absolute beginner
[00:46:44] And you want to be able to make the case that
[00:46:46] Functions are just data like everything else or just data not not data
[00:46:50] But there are data types essentially there are types and they can be assigned and passed around just like everything else
[00:46:55] I don't know of a better beginner language to make the case to show that than javascript
[00:47:00] It is really really great. In fact, it's kind of the go-to for a lot of javascript developers
[00:47:05] They'll actually do constant, you know, hello hello equals and then they'll write especially with with enterprise with es6 syntax with the other stuff
[00:47:14] This is not about rust anymore at that point. So I'm gonna go ahead and
[00:47:19] To your show to your community is something to behold. Excuse mr. Rob aka red pill rob
[00:47:25] Yeah, I really I really love your job. You're dropping by and saying hi
[00:47:29] To all the rust as I've said always and ever on my channel, uh, I have a lot of passion about this topic about this discovery
[00:47:36] I've just made
[00:47:37] I feel strongly about it because I spent hours researching this on my father's day this morning
[00:47:43] And I spent a lot of time writing about it yesterday and blogging about it
[00:47:46] I don't have strong opinions lightly and I'm happy to change them when I get new information
[00:47:51] And that's really evident for my blog last week when I've just about through go out for rut for rust
[00:47:56] And then I actually coded in rust for a good day or two and was like trying to do simple things
[00:48:02] Like really simple things and I was like, you mean I have to iterate over backwards over the array and it's not in some but basically
[00:48:09] Uh stuff that I was like, okay, this is cool
[00:48:12] Uh, if I really have to have what rust offers me, but rust is not offering me enough
[00:48:18] To make this pain worth it and and so for that reason I'm just letting it go. It doesn't mean I hate you
[00:48:24] Uh, you know, I absolutely love you guys. Uh, it goes for you mark, too
[00:48:28] I know mark is into the rust a lot right now and we'll continue to test its limitations mark marks got a lot of
[00:48:33] Mark, I I'm gonna I'm gonna dox him a little bit
[00:48:35] Uh, I think it's pretty common now that mark is one of the guys that have been private mentoring
[00:48:39] He's open about that but um
[00:48:41] And he and I go back and forth on a lot of this amazing stuff. Uh, he's doing he's watching
[00:48:46] He's gonna he's doing some amazing things out there in the world
[00:48:48] Uh, and so I just want to say thank you and I'm going to go back to
[00:48:53] Just being boring
[00:48:56] Oh, I told mask. How's it going?
[00:48:59] Good to see you
[00:49:00] Uh, so yeah, I'm going to go just do something silly and uh, uh, I'm going to still be here
[00:49:07] Uh, but I'm going to leave my stream on tennic
