# 🤣 Chatgpt is like that one friend who says "trust me bro"

From 2024. I may have changed my mind on some of this.

Looks at cases where ChatGPT is helpful, such as quick questions and mundane code, then at one where it confidently and wrongly claims that Go allows methods on types declared inside a function. Its corrections introduce another error by saying types can't be declared in functions at all, leading to advice on using it as a helpful tool without fully trusting it.

Chapters:
0:00 Where ChatGPT actually works well
3:52 Local types and methods in Go
9:27 Testing methods declared outside the function
11:10 ChatGPT's confident but wrong answer
14:12 Apologies, de-escalation, and another wrong answer
17:18 Takeaways on using ChatGPT for coding
18:32 Learning, professional networks, and trust

`#chatgpt #golang #ai #coding #llm #programming #learntocode`

## Category

Science & Technology

## Transcription

[00:00:00] Hopefully that's the thumbnail right there really angry Rob or constipated one of the two
[00:00:04] Here's the thing
[00:00:06] Chad GPT is not bad
[00:00:09] But when it is bad it is really bad and I'm gonna show you why this is a very specific example that I was using today
[00:00:17] Of Chad GPT and I'm actually going to show you a good example and I'm going to show you a bad example
[00:00:22] And I see that I'm clipping. I'm sorry
[00:00:26] You know deal with it
[00:00:28] All right, so let's let's actually go to an example of Chad GPT working. I
[00:00:33] Realize this is small on the screen. I'm sorry
[00:00:35] We're gonna come back to this one right here
[00:00:38] This is this is me asking zurtec which actually this is really cool
[00:00:43] I'm gonna give you a couple examples of Chad GPT actually totally working and the reason I'm paying a subscription for it
[00:00:48] I really love it
[00:00:49] There's the white noise as I told you about
[00:00:51] Yeah, she's like doing kitchen stuff. I mean, it's ambiance consider ambiance. All right. Anyway
[00:00:59] Claude is goaded for code, okay
[00:01:01] I'll have to try that so I was asking about zurtec treating long code V to which I've had a problem with them having our time
[00:01:06] concentrating a different video about that and
[00:01:09] So and the histamines are anecdotally some way to do that and I've been so I was able to ask it some stuff about that and
[00:01:15] Then I'm trying to give you another positive example
[00:01:20] There's a bunch of attempts to try to do the thing that I'm doing I'm writing code with and it comes pretty damn close
[00:01:24] It did give me some ideas
[00:01:26] That was some go-code from before you can pause the video if you want to see any of those
[00:01:30] I actually asked it about naps recently
[00:01:34] What's the optimum size for a lot for a nap?
[00:01:38] I think that's like back here. I'm trying to get back to the one piece of good code
[00:01:41] This is the ideal code that this doesn't I love you guys already know this
[00:01:45] So, you know people who are taking sides on the Chad GPT thing as usual. It's usually not black or white
[00:01:50] It's not one side or the other. It's actually a really good tool if you use it right
[00:01:54] You just but don't depend on it permanently
[00:01:57] You want to make sure to check yourself obviously I asked a lot of questions about sweet pea and music and stuff like that
[00:02:02] It's really great at that
[00:02:03] It's like way way faster than checking with Google about things that I want to ask it really quickly
[00:02:09] But so let me show you this
[00:02:13] One a long time ago I asked that I said hey
[00:02:15] Can you just can you just count all the leading spaces on the on the function right and it wrote this function for me really quick
[00:02:21] And that that kind of thing my friends that is worth it because you know, no amount of time
[00:02:27] Yes, I can I'm a fast type or whatever. I'm actually not a very fast programmer. You're being why would you be this loud right now?
[00:02:34] I literally told you that I was just about
[00:02:39] Okay, I'm gonna wait, I'm gonna I'm gonna walk into my office
[00:02:43] I'm gonna walk into my office to complete the video rather than upset my wife by you know
[00:02:49] Are you are you making amish things?
[00:02:55] Ooh, that sounds good. Okay. All right, so I'm going into the other room going into my yoga room slash office
[00:03:02] It's got a totally different lights. Just you know what how about we go out on the patio over here. How about that?
[00:03:07] I promise you or not. We're gonna look. This is a look. Just be happy. You have a video. I don't want to hear about it
[00:03:13] In the comments, why do you I don't want here? Okay, this is what you get. Otherwise you get no video
[00:03:20] okay, so
[00:03:22] she have chat GPT bad right no chat GPT is good and bad and
[00:03:27] Here we go
[00:03:28] so we have counted the leading spaces and you see how it doesn't that's the kind of code that it just like go is pain in the
[00:03:34] ass to do this kind of thing and
[00:03:36] It just spit it out and it works and immediately you can tell it works just by looking at it
[00:03:39] And and that's where chat GPT is really great. I told you about you know looking at minor queries. It's really great
[00:03:44] But let me show you
[00:03:46] Another another area where it's really really wrong, and this is this is what made me want to make this video, okay?
[00:03:52] So I've been writing this I've been writing this
[00:03:55] Supposedly easy code. It's not easy for me because I have long COVID right now
[00:03:58] my brain is just like not working and
[00:04:01] I'm you can tune in with me later about that, but and it I seriously it's taking me three days to make this very minimal
[00:04:07] You know you function if you want to know more about that tune in but
[00:04:11] And I was actually trying to get a I was trying to get you to do it for me because it's
[00:04:16] Super dumb code that I really don't care about and it was about that time that I said, you know
[00:04:21] I was like, you know what and if you don't know go I'll tell you about it a little bit, so
[00:04:28] In go
[00:04:30] You can the object oriented programming part of go
[00:04:35] Allows you to do stuff like this
[00:04:38] right
[00:04:39] You can define a type like this. This is invalid code by the way as you can see from my screen
[00:04:45] This is invalid code
[00:04:47] and but you can see here go told me that was okay and
[00:04:51] You can inline a struct you you can do that you can inline a struct, but you cannot inline methods
[00:04:57] It's always been true for go and you know
[00:05:00] I
[00:05:01] Was wondering if maybe something had changed in one two two that I didn't see in the release notes because I didn't check
[00:05:06] Through this notion one two one and one two two probably should go through that make a video about that
[00:05:10] but the point of this is that
[00:05:13] You know I was like damn that would be really cool because then it would this is a totally stupid example
[00:05:17] It made by the way, but it's using exported. You would never do that. You use lowercase, right?
[00:05:21] Because you don't this is all within the this is all within a function scope. It's all minimally
[00:05:26] You know this this kind of stuff usually comes right here
[00:05:31] so so this is completely valid go code all right as you can see the errors went away from my automated, you know
[00:05:38] Memthing and that is cooked that compiles right that will totally compile
[00:05:44] But the one chat GPT told me
[00:05:46] So this this this is the danger and this is the reason for this video
[00:05:50] Okay, the reason for this video is is because of how definitive chat GPT sounded and it's very very dangerous because
[00:05:58] Chat GPT sounds that has this error of authority like it like it really knows what it's talking about when it clearly doesn't
[00:06:03] It's a chat GPT is like you're a very very knowledgeable friend who's fucking totally wrong
[00:06:09] Sometimes but then doubles down on how wrong they are rather than come around right that friend only the difference with
[00:06:16] Chat GPT is is that if you give it new information it will unlike your your pedantic, you know, know it all friend
[00:06:22] It will actually change its mind on you and I want to read this to you
[00:06:25] It's very important that that you see at least this example if you before you make any decisions about AI
[00:06:32] specifically large language models AI by the way, it's not the same as large language models and
[00:06:37] Adam ruins everything did a whole thing where he's like throwing AI under the bus and calling everybody stupid for using it
[00:06:42] No, he's stupid for saying that that's AI's got tremendous value
[00:06:47] Including these you know significantly wrong large language models on occasion, so so but I just wanted to show you this
[00:06:54] So let's after the zertick thing has going always allowed creation of name types like structs within the body of a function
[00:07:02] Because I thought I was going crazy, right?
[00:07:04] I thought that I was trying to do something that I wasn't seeing the errors pop up from the you know the the real time
[00:07:11] Syntax checker either I have you working with my them and and it was and it you know
[00:07:16] It turned out to be something out it turned out to be that you can do the inline struct you can even do name structs
[00:07:21] But you cannot add methods and a method and go is is a is a is a is a a function with a receiver
[00:07:30] That's what this is. This is a receiver
[00:07:32] That says it's kind of like hanging up a function off of a struct, right?
[00:07:38] I'm which I really love because at runtime even
[00:07:41] Actually, no, not at runtime, but yeah, I mean that's a different thing you'd have to use that you'd have to do an assignment
[00:07:44] You can't do it or rent them out. So forget I said, but you can have a receiver and do the thing all right?
[00:07:49] So you could have this oops you can have this
[00:07:54] Right that's totally valid go
[00:07:57] But you cannot that stupid to do that you would probably do this instead
[00:08:03] Right you have a lower case because you don't care about the scope you want it to be lowered
[00:08:07] So you know it's nice. It's easy to remember it reminds you that it's it's a struct that you have in here
[00:08:11] You can even you can even do anonymous structs which I had done. That's what this was before I did this
[00:08:16] You do type, you know item. I guess
[00:08:19] Is a struct no wait you can do inline structs, which are really cool. It's very sea light to do this
[00:08:25] We actually assign to one that you're gonna reuse like and you don't want to use
[00:08:30] Some sort of map notation, which is really heavy do heavy-handed. So you could do you could do this is an inline struct
[00:08:36] So yeah, you do item equals struct and you can define especially if it's an int it's like they're the same type
[00:08:43] This is really great. You can say
[00:08:45] account
[00:08:46] and you can say
[00:08:50] Last or something and then make it int and you can actually do that. You can actually initialize it with an initial value the
[00:08:56] Default initializer values for instance are zero. So that you don't need to do that and go anyway
[00:09:02] That's an inline struct right now. That is normal to use. This is normal to use
[00:09:06] But as soon as you try to hang a function off of it, you have an error
[00:09:11] Okay, so that's all the go that you need to know here
[00:09:16] To be able to follow along with my conclusion, okay, so so there's like no. No, I don't even know that
[00:09:22] It's not even go syntax. It's never been go syntax. What the hell are you doing, right?
[00:09:27] I don't think you can do this wouldn't that be cool if you could oh
[00:09:31] My god
[00:09:33] I may have discovered something
[00:09:39] No
[00:09:40] Wait a second
[00:09:42] Wait a second
[00:09:45] The scope of this type is within main, but this way way way what what is going on here?
[00:09:52] I think it just is but they find something about go. So maybe
[00:09:55] Chi GPT is sort of right. Why didn't that bark at me? Is that gonna compile?
[00:10:02] So you can define the function you can hang a function off of an end off of the type of you have to do it outside of the
[00:10:07] Out of sight of the containing body of the fuck. Oh
[00:10:09] If that's always been a go thing and I'm gonna stand corrected and Chi GPT was kind of bright
[00:10:14] Even though the example they gave me was totally dead wrong. Let's try this. This this might be worth it all by itself. Go run
[00:10:21] Oh, here we go undefined person item declared and not used
[00:10:25] Well that I know well, we don't need that one
[00:10:28] There's a singing person. Let's go look at this person right here
[00:10:32] persona
[00:10:35] Person
[00:10:37] P dot greet
[00:10:39] I'm this this works. I'm gonna freak out undefined person. I thought so okay. That's what I would expect. All right
[00:10:46] So yeah, that's what I that's what I've always expect this
[00:10:49] This would be completely wrong because a person is supposed to only be visible to step within the main body of the bunch
[00:10:54] That's the reason for using
[00:10:55] structs like this because you don't want to pollute your global namespace with and you know
[00:11:00] With a bunch of stuff you want to put it and so if that had worked out have been really surprised
[00:11:04] We already know that this does not work
[00:11:07] for the reasons that you're getting there and
[00:11:10] Okay, so let's proceed to you know throw chat GPT under the bus for this
[00:11:15] So because for what a one second here
[00:11:17] I'm like second-guessing myself, which is really great chat GPT
[00:11:20] This is where I went wrong and you cannot be me and you can make a better decisions, okay?
[00:11:26] I've started to trust chat GPT probably way more than I should I've been using it for a lot
[00:11:30] I've been using it for route planning on my bike. I've been all kinds of stuff
[00:11:34] I've been talking to it like it's real I've been saying telling to thank you and my mistake was that I started
[00:11:39] I started really trusting it and I was like, okay, chat GPT. So did go did the language change
[00:11:45] I said did the language change is as it always been possible that I can actually add
[00:11:51] structs within the body of my function and
[00:11:54] And it said yes go as always allow the creation of name types such as structs with the body of a function
[00:11:59] This feature has been available since goes early
[00:12:01] This is a very specific answer in go you can define a structure or a custom type within a function
[00:12:06] Although the scope of that type will be limited the function is fine that that's that I knew right and then and then here's here's a part
[00:12:13] That's both good and bad. So it actually gives me an example here
[00:12:15] This is completely valid code kind of stupid because you know person is exported even though we're no exporting happening in this case
[00:12:23] Person is blah blah blah. All right now
[00:12:26] There's something that I like about chat GPT here and something that I really hate the first thing I like is like
[00:12:31] Is can they have receiver methods? I?
[00:12:34] That's what one two three four five. That's five. That's a five word question
[00:12:40] To chat GPT that's based on the previous context
[00:12:42] So I didn't have to rewrite that if I was doing Google searches and stuff that would have taken me a lot longer to ask
[00:12:47] But chat GPT is the one thing I do like about chat GPT
[00:12:51] Queries is that I can actually supplement it and chat to GPT is a pretty damn good job of
[00:12:56] Taking the previous context of the thing that we were talking about and adding on the information and that's what it did
[00:13:01] It just got the answer wrong. So it said can they have receiver methods? It knew what a receiver method was
[00:13:07] This this is where it gets really weird. Okay. This is where it's your it's your friend
[00:13:12] It's wrong, right? I mean it's it knew what a receiver method was which blows my mind
[00:13:16] I mean, that's just totally bull's mind. Yes types including structs defined within a function in go can have receiver methods
[00:13:21] This is categorically positively false. I've already proven it
[00:13:26] We tried to compile the code that is code that won't compile and never has compiled
[00:13:30] However, the methods associated with these types of limited scope and value. Okay. This is wrong
[00:13:34] And then and then it proceeds to even double down on how wrong it is it actually gives you an example of an embedded
[00:13:40] Fection this this code will not compile that is the basis of the code you're looking at on the other part of the screen a
[00:13:46] Copy and paste it as is and immediately got all these warnings and errors
[00:13:49] I was like I didn't think this was gonna run but I was like God
[00:13:53] It is so sure that this is gonna run it is so sure it was very convincing and I was like
[00:13:59] Okay, I guess you know more than I do Chad GPT. And so then I went back to look at this stuff
[00:14:05] Start person is the finest telling me all about it and everything
[00:14:08] Which is really great and then I tried it and it wouldn't compile and I told it it was full of shit
[00:14:12] And this is actually really fun. This is also kind of a kind of a lesson in in in de-escalation
[00:14:19] So Chad GPT is really good at de-escalating being a moron. This is kind of funny. So this is completely wrong
[00:14:26] What are you a noob going programmer? This has never been true. You're absolutely right
[00:14:32] I apologize for the confusion in my previous response and go name types like structs cannot be defined inside function bodies
[00:14:38] And this has never been allowed in the language
[00:14:41] You can define types of the package level but not within a function if you attempt to declare a type inside the function
[00:14:46] Go we'll throw a compile-time error. Here's the example of what of what isn't allowed of what isn't allowed in go
[00:14:54] Okay, and you know what's really sad about this is that this is also wrong
[00:14:58] This is totally allowed. It's right there. I just did it
[00:15:02] Go to chat GPT does not know
[00:15:06] Does not know that you can define types within a function, but not their method functions
[00:15:13] It doesn't know that and it's look at that. It's even tell me so it tried to correct itself
[00:15:17] And I actually told you something else is wrong and I want to say this is a result of a compilation
[00:15:22] This will not I just did it. It's not a compilation or you dumb piece of shit
[00:15:26] Okay, so then I went back here the correct approach is to do this put it outside
[00:15:31] It is good, but you don't have to do that again. I apologize for the mistake and then I got mad
[00:15:35] I got mad and I said then why would you tell me that you could do it even make an example?
[00:15:39] I won't even compile and go and then there's the de-escalation part
[00:15:43] I appreciate your patience, and I completely understand your frustration. You're absolutely right
[00:15:49] Tell somebody they're right and and if you had a fight with them and my initial response was incorrect what?
[00:15:55] Yeah, the mistake I made was entirely on me, and I appreciate you bringing my attention
[00:16:01] There is a lesson about life to be had in there
[00:16:05] Chad GPT may be in AI, but because it's an AI it has wraps of information and data
[00:16:11] Scientifically speaking that tell it that when it's wrong it needs to de-escalate immediately or people will stop paying for it
[00:16:18] And I'm like reading that going okay fine. All right. All right. You're right
[00:16:22] I was right you were wrong, and I was right. All right. Let's move on
[00:16:25] And most humans won't do that ever and if you're in tech you know this
[00:16:30] And go name types such as I'll find some way to be right on the side
[00:16:33] They'll make an angle to make it right because they're human backfire effect
[00:16:38] And go name types such as structs cannot be declared inside functions bullshit. I just did it. Okay
[00:16:45] Here's here's the thing so and then it gives me an example now this this is actually compatible good code
[00:16:51] They did export the person for no reason which is probably okay, especially if you're using the internal package
[00:16:57] Go watch another video for that. What is the internal package if you don't know what the internal package is you should use it
[00:17:03] Everybody should use a dear internal package
[00:17:06] Okay, so let's go here
[00:17:08] The example will work perfectly because the purse the strip person is defined in the package level
[00:17:13] I genuinely appreciate you catching your okay, so so the takeaway from this video is is very basic, right?
[00:17:19] the takeaway is
[00:17:21] Chad GVD is really really great at getting you to where you need to be and getting you to ask the questions
[00:17:27] You need to ask and answering some questions for you really quickly
[00:17:31] It's also really great at doing the mundane coding that's super easy
[00:17:35] You know like iterating and enumerating and that kind of stuff that takes you just way too long to write the code and
[00:17:40] And for that reason I am truly training myself to become a Chad GVD prompt engineer and
[00:17:46] I this is this is this is a total 180 for me because I when it when I first saw yeah
[00:17:51] I was like oh my god. It's never gonna replace people. There's gonna have to be people there
[00:17:54] It's true, but it's like sitting next to a guy in a cubicle who thinks he knows everything and is pretty damn smart
[00:18:01] But doesn't know everything, but they're like well-rounded about more things than you would ever imagine
[00:18:06] They're basic. It's actually just basically your best cubicle buddy
[00:18:09] I mean I can get answers from Chad GVD like in a fraction of the time that it takes me to go do even a command line search
[00:18:15] And if you know me you know that I do a lot of really you know millisecond
[00:18:19] Let level command line searching because I don't like that being able to search really quickly is the single greatest advantage in the number one skill
[00:18:26] You need to learn beyond knowing how to learn learning how to learn and let's talk about education for a second
[00:18:32] And I'm gonna go ahead and wrap up with that
[00:18:33] When I the thing that got me to turn around you know my position on AI some years ago a year and a half ago
[00:18:38] Or so was my good buddy LTM Bob who teaches at university at least he did till very recently moving into the corporate sector again
[00:18:48] Told me how great it was for education. He's like this is a fantastic tool for education now
[00:18:53] And I want to put a bullet point on that right now
[00:18:57] Yes, it's great for education, but in this case you would be totally
[00:19:03] Pardon my one French word fucked if you use this if you use this and you went and as
[00:19:10] With all the confidence and assurance that Chad GPD did you created code that wouldn't even compile
[00:19:17] You'd be lapped out of any kind of job interview for go programming anywhere now
[00:19:22] Most people who do that kind of interview don't expect you to know all the answers up front
[00:19:26] They do expect you to do the things in testing compile
[00:19:28] They would this kind of thing they would say compile it and by the way
[00:19:31] This dumb friend of ours Chad GPT who's also really smart doesn't have the ability to compile the code to see if it works
[00:19:38] So so so don't keep up your personal network of friends
[00:19:42] Because you're professional in a group your programming group your meetup group your favorite twitch streamer
[00:19:47] You know these kind of things are still gonna be really relevant for you because when you ask those questions when you've done all the work
[00:19:52] To answer the question for yourself like the auto diet act that you are and you can't get the answer
[00:19:58] You've got to turn to your professional learning network
[00:20:00] Not just Chad GPT. Chad GPT is one member of your professional learning network
[00:20:06] And i'm going to conclude with that don't ever trust it completely just like you never trust anybody else
[00:20:11] you know
[00:20:13] and
[00:20:15] Yeah, i was going to ask you your your your opinions on love and trust
[00:20:21] There's a statement in a movie that we're watching right now or a thing the old man is called
[00:20:26] Where they say you can either trust somebody or you can love them
[00:20:30] But you can't do both and i feel like that's how you should go with Chad GPT
[00:20:36] You should never trust you have each beat but you can love it. You just should never trust it
[00:20:41] I i'm done now. I promise i'm done now. I'm gonna go turn off the recording
