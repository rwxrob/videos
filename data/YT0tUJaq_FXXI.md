# 🎄🚀 Code Go in the Terminal with The Code Mage's First Spellbook (Holiday Boost 2024 - #1)

Kicks off a Holiday Boost series by reading through the opening of The Code Mage's First Spellbook, a beginner book on learning to code in Go from the terminal. The book is still in progress and free to read online, and notes cover related books also being written. Topics include its copyright, learners' freedom to take responsibility for their own learning, finding mentors, focusing on one language and the terminal first, and why coding and operations skills matter for careers.

Chapters:
0:00 Introducing the Holiday Boost series
3:00 Mentoring plans, copyright, and free use
4:29 Series scope: coding first, Vim, and terminal basics
6:10 Related books in progress
11:54 Book dedication
12:42 Prerequisites and freedom to learn
17:43 Who the book is for and learning to code young
20:49 Experienced readers and the Podman container shortcut
22:02 A note to parents and educators
26:32 What the book covers
27:09 Fantasy theme and SkillStack memories
30:05 How to use the book and find a community
32:20 Starting SkillStack and the spread of coding clubs
37:57 Finding a mentor and becoming one
40:00 AI as a learning companion
41:31 Trust, commitment, and mastering one discipline
47:51 A story about tech careers beyond coding
50:25 Why learn to code: creativity and problem solving
52:48 Tech careers, salaries, and job outlook
55:06 Critical thinking, software, and operations skills
58:15 Wrap-up and working ahead

`#learntocode #linux #terminal #coding #beginners #mentoring #programming #cybersecurity #education #golang`

## Category

Education

## Transcription

[00:00:00] all right here we are again we're gonna do something new we're gonna do a holiday
[00:00:11] boost and I put the skill stack highlights up here from long ago we made
[00:00:17] this fun little thing probably make something like this by the end of the
[00:00:22] holiday I don't know how soon we're gonna get to it but if you're here and you are
[00:00:27] watching this video you are watching the day one of the holiday boost and no it
[00:00:34] doesn't have anything to do with advent of code I was gonna call it advent of
[00:00:37] skill or ao skill or whatever but I was like why are we doing that plus we were
[00:00:42] already late because we were already on what day four or so so it's December 4th
[00:00:46] but we are gonna learn how to code and I don't know if we're gonna finish it by
[00:00:52] the end of December I don't even know how fast it's gonna go but we're gonna go
[00:00:55] ahead and start so let me go ahead and introduce how we're gonna do the
[00:01:01] holiday boost this year and potentially every year I think we actually will
[00:01:06] probably have more than one cycle for the beginner boost and not necessarily
[00:01:11] always on May the 4th even though we really love that so first of all let me
[00:01:15] show you how to get going this year I have a book I just finished the first
[00:01:23] part of the book the preparation stuff all up to the code challenges code
[00:01:29] challenges are down here and I got the first code challenge done so we can take
[00:01:33] a look at that we're actually gonna start with the book and now and work through
[00:01:38] it for about an hour and it looks like Linux Santa and so we're gonna we're
[00:01:45] gonna go ahead and start working through the book and all we're just gonna read
[00:01:49] it but this is the first year ever actually not just the first year for
[00:01:53] doing the beginner boost but the first year I have ever had a book I've started
[00:01:56] this book many many times I've always rewritten it actually rewrote the book
[00:02:01] at least three times in the last week trying out different ways to get you
[00:02:07] guys started the most quickly and yeah there's the link to the books it is I
[00:02:14] Bellum yes go go check out the book links they're there on the screen so
[00:02:20] artifacts Rob that get up that I always slash book slash code made I call these
[00:02:25] my perpetual publishing books they're not finished yet eventually they will be
[00:02:30] finished and at that point I will actually print and create a printed
[00:02:33] version and approach the school districts about it you know there's the
[00:02:38] copyright stuff the regular stuff to go through so without further ado we're
[00:02:42] just gonna jump right into the book so that you can follow along you can give
[00:02:48] you something to follow and I'm gonna zoom in so you can see it a little bit
[00:02:52] better so here we go we're gonna get going I want to sign copy you know what
[00:03:00] well we're probably gonna end up meeting each other over time I mean the goal of
[00:03:04] since I now finally have a book we probably will meet and I probably will be
[00:03:10] in the car doing on the road kind of in-person mentoring kind of in the spirit
[00:03:17] of what I did before when I did skill stack but you know kind of on the road
[00:03:21] signing with GPG I don't know about that so so let's just get into it so yes
[00:03:27] there is a copyright yes you can copy it yes it's free yes it has trademarks
[00:03:33] this is free in the sense that you can use it for free at this location but you
[00:03:39] can't if you make a copy of it you know it needs to be so that you're trying to
[00:03:44] contribute or fix an error but it's usually probably better for you to just
[00:03:47] make an error so a lot of people wanted to contribute and help out and I
[00:03:51] certainly appreciate that but I do plan on selling this book and using it in my
[00:03:55] retirement and approaching school districts in order to use it for you
[00:03:59] know kids that are that are twelve and up to learn how to code and for that
[00:04:05] reason I am going to keep it copyrighted you know so we're not going to talk
[00:04:10] about that further you get it for free you know that you'll always be able to
[00:04:15] get it for free you just if you're going to get a paper or a PDF or an ePub you're
[00:04:19] gonna pay so appreciate that this is a bookshelf I did put this in here there's
[00:04:26] a bunch of other books that I'm working on the same time we don't need to talk
[00:04:29] about that I do want to say one thing though about the beginner boost this year
[00:04:34] this holiday boost and specifically is that we are not covering everything about
[00:04:42] the terminal this year this is the first year ever that we are jumping right into
[00:04:48] the coding in fact the first thing we're gonna learn is how to set up your lab
[00:04:52] how to set up you know the place where you're gonna be writing your code on your
[00:04:56] computer your personal computer and then we're gonna jump right into writing code
[00:05:01] and we're gonna talk about that there is a bunch of terminal skill you'll learn
[00:05:05] along the way and you're gonna see this really soon but we are not going to get
[00:05:11] deep into the terminal I actually just to talk about this a little bit I actually
[00:05:16] don't regret this I feel like this is something we should have done a long time
[00:05:19] ago it we are gonna learn VIM and we're gonna go through that we're gonna use VIM
[00:05:25] to do you know but we are not going to learn Tmux so and that's largely because
[00:05:32] Tmux is not supported on Windows there are ways to get it but not in get
[00:05:37] bash not easily anyway so so the decision there was to go I'm always saying this
[00:05:43] because some of you have been involved in the previous boosts are wondering
[00:05:46] what's up with that why are we not you know becoming terminal masters and you
[00:05:51] know we are we are becoming terminal masters but we're baby steps in the
[00:05:55] terminal and that baby step on Windows is get bash which we'll get to and the
[00:06:00] baby step for Mac is of course using the built-in terminal there is a fun new
[00:06:05] thing we are using was term I'm very excited to show you that and we're gonna
[00:06:10] get into it but so just a comment on the books here so the code mages first
[00:06:14] spell book is the book that we're working through terminal velocity is a
[00:06:18] book that you could do kind of in parallel to this or you could add it on
[00:06:22] but if you but you'll see that there's a bunch of stuff over there if you're
[00:06:27] gonna get certificate certain network plus no this would not be a thing this is
[00:06:31] just teaching you basic programming and that is its major goal so network plus
[00:06:38] if you want that kind of thing you're probably gonna have to wait for a terminal
[00:06:42] velocity or Linux home labinet mr. Het Tannis and other people online cover
[00:06:49] that kind of thing for network plus I would go through their courses instead
[00:06:54] that quite honestly that is one of the reasons that I actually focused on this
[00:06:59] is because Het Tannis is doing an amazing job teaching fundamental
[00:07:04] Linux skills and network engineering preparation and home labinet and that
[00:07:08] kind of thing and and I didn't want to overlap with with mr. Het Tannis at this
[00:07:15] moment because you know he's already covered it now I certainly have my way
[00:07:19] of doing it and everything and I'm definitely planning on writing a book
[00:07:23] about my way of doing it and how to get started with Proxmox he uses a
[00:07:27] different technique he doesn't use Proxmox so if you're if that is coming
[00:07:31] but that is not what this is gonna be about we're not gonna wait if we get to
[00:07:36] that it won't be until in the new year sometime so so this right now is focused
[00:07:41] on basic terminal skills and basic programming skills that include you know
[00:07:48] computer science and that kind of thing so so that's kind of that people have
[00:07:53] been asking about my bonsai project which is still it's the best it's ever been
[00:07:57] right now it is a there's a few minor things left for me to to wrap up and
[00:08:02] then we'll have a 1.0 bonsai which we are actually going to use a little bit in
[00:08:07] this class to help in this whatever this this series to to make command line
[00:08:14] tools really quickly during the create section which we'll get to so we will
[00:08:20] be learning a little bit of bonsai introducing it but if you want to
[00:08:23] honestly really understand how to make the most out of bonsai you're gonna have
[00:08:27] to wait for the bonsai boot beauty book yeah bonsai cross promotion auto didactic
[00:08:32] that I used to cover a lot of the stuff in auto didactic in the beginner boost
[00:08:38] auto didactic now contains all of the stuff about getting a job how do you get
[00:08:44] a job how do you stay you know focused how do you keep connected how do you
[00:08:49] build a personal and professional learning network how do you do a raise
[00:08:53] in a how do you do it you know it's you how do you take notes effectively that is
[00:08:59] all in auto didactic keys to success is a modern knowledge warrior and that book
[00:09:05] is super important that I make it I am these books are all getting kind of made
[00:09:11] as I think about them so some of you know about my old settle casta notes those
[00:09:15] are now being processed and I'm putting them into book form I've been wanting to
[00:09:19] do this for years and so that's finally taking place the positive of that is
[00:09:25] that if you want to watch these books taking form you can actually do that and
[00:09:30] you can here they are here's the links to them there's not much in them now but
[00:09:35] you can actually follow the github repo there if you want to and you can see when
[00:09:40] I saved something my people were following my little casting with my
[00:09:44] notes before and so you can go ahead and follow that now in fact the best way to
[00:09:48] follow all of this stuff is to go to my github I am going to cross promote my
[00:09:51] github right now so here it is you can go check it out please give me a follow
[00:09:58] you know I if you don't sponsor me at least give me a follow in a sub if you
[00:10:05] don't listen at least go star my repos that would make me feel very good thank
[00:10:10] you if you're trying to figure if you want to you can actually contribute a
[00:10:14] little bit but here they are this dot files is getting all cleaned up and
[00:10:18] here's the there's actually a code major assistant and we're gonna get to this
[00:10:22] we're gonna talk about the the container that I made that you can use if you
[00:10:26] don't want to use the the other method so there is a discussion thing over there
[00:10:32] too but anyway so so let's go to this is the local version of the book let's go
[00:10:39] to the actual one alright so it that's alright so that's a comment on the books
[00:10:45] I put that my fact is my back is pretty funny it was actually the developed the
[00:10:50] Linux developer who gave me the name shut the back up this isn't meant to be rude
[00:10:54] it's just it's just a place for me to answer all of the things all of the
[00:10:57] justification YVIM why not WSL all that stuff is in there so you know I'll be in
[00:11:03] terms of live streaming I can be sending a lot of people to I'm like go read the
[00:11:06] back you know and shut the back up I'm just having fun I love you guys of that
[00:11:13] I you know programming with purpose this is something I've been wanting to write
[00:11:17] a long time how to cope with empowerment for some you know saving humanity bad
[00:11:21] strumming of biscuit all the lessons I've learned from being a streamer and
[00:11:25] they're never back again a Mormons tale this is I talk a lot about my life is a
[00:11:29] Mormon there is it really interesting that right now actually it is just a
[00:11:34] little side note about me personally there is a streamer who is talking about
[00:11:39] her exit from the Mormon church and she is blowing up on YouTube right now she's
[00:11:44] blowing up on YouTube and it's really interesting she's covering like the
[00:11:47] internal you know Mormon ceremony everything I know it doesn't have anything
[00:11:50] to do with coding but if you want to know about me personally that's you know
[00:11:54] the place to go for that which by the way includes you know the dedication to
[00:11:57] my wife Doris who's on the way home to make sloppy joals right now and to you
[00:12:03] guys to my friends to Chloe my faithful assistant you know who she is and the
[00:12:07] memory of Aaron Schwartz and Chris Nova so you know Chris who passed and and Aaron
[00:12:12] both of them have passed fantastic human beings that I want to emulate and be
[00:12:17] like and you know if we can help build more Aaron Schwartz's and Chris Nova's
[00:12:22] in the world the world would be a better place thank you for your lights of
[00:12:24] horn inspiration all right so I'm gonna just keep working and tell my wife gets
[00:12:29] here and when my wife gets here I'll I'll click the stop button so that's we're
[00:12:34] just gonna keep working through as far as we can so here we go stop don't read
[00:12:42] another word until you have a computer with a keyboard on which you can install
[00:12:46] software I have to put this stuff in here because this is actually really
[00:12:50] important because people people assume a lot of people watching the stream right
[00:12:54] now they assume that that everybody reading this book or watching me has
[00:12:58] permission to do this I'm telling you having worked with a bunch of educators
[00:13:02] and parents and stuff that a lot of the people that are doing this kind of think
[00:13:06] they don't have this I remember once I was at Woodlawn private school and it
[00:13:10] was like 42 people or so that I was I was teaching coding to and about half of
[00:13:14] them didn't even have access to install stuff onto their computers this is really
[00:13:17] their own computer and their parents were like no why am I giving my kid
[00:13:21] admin access to this computer I'm not doing that I don't want them to have that
[00:13:24] power so I have to put it in here because if you don't have this power you can't
[00:13:29] do it you have to have power to do to take care of your computer and if you
[00:13:32] don't then goodbye so yeah you need a phone I'm sorry you need a phone you need
[00:13:40] a phone for research and and have a cheat sheet for them up while you're doing
[00:13:44] other stuff you need a reliable internet connection I this is another one
[00:13:48] people thinking goes without saying I'm telling you I started I started it
[00:13:52] Woodlawn I started teaching coding and we started doing a development and we
[00:13:55] used a service called REPL it our EPL that IT actually made a big blog about it
[00:14:00] and complain because they the internet at this private school was not good enough
[00:14:04] for them to code and have them all be online at the same time and it was like
[00:14:09] I mean it was like three seconds between keystrokes it was insane and so I had to
[00:14:13] regroup really fast I had to redo my own curriculum which I always have to do
[00:14:17] for some reason and I had to say okay we're gonna all of you guys are gonna
[00:14:21] install in this case VS code we're gonna use them in the terminal here but in
[00:14:25] that case VS code and you need to be able to do everything locally because we
[00:14:29] cannot depend on the internet so you know this this statement about assuming
[00:14:34] you have internet is a thing a lot of you won't have it and you can't assume
[00:14:38] you have it you do need an email account that you control once again people don't
[00:14:43] want their kids to have an email address I don't get this and and the
[00:14:47] education in the educational institutions will give them an email address and then
[00:14:52] rip it away from them after they leave school so now they've got all these you
[00:14:57] know accounts and everything set up and they can't use them because it's totally
[00:15:00] stupid so there's a reason I'm putting this stuff in here people I know you
[00:15:05] think it's an obvious thing but I'm telling you I have a personal experience
[00:15:09] with organizations that just don't get this stuff so you have to have the
[00:15:15] freedom and you have to give the person doing the learning the freedom to do
[00:15:19] the learning and to be responsible for their own learning and to take it with
[00:15:22] them and if and if you don't you don't yeah and two years after you graduate
[00:15:27] the email was shut down after you graduate yeah it's like it's so stupid
[00:15:31] it's completely against the spirit of learning and independent auto-dedactic
[00:15:35] learning they want you to be beholden to them and then they take away the email
[00:15:38] later why don't they you know promote at least an email service that you can
[00:15:43] have after you take away it's such an obvious thing to anybody reading and
[00:15:46] listening to this but to a certain set of people it's not obvious and frankly I
[00:15:52] think that they're trying to control things and I hate that that's why I'm
[00:15:55] doing this anyway so lessons learn from pain yeah enough snacks to keep you from
[00:16:02] getting hangry don't get hangry Mac Win excellence are fine laptop is best
[00:16:08] and you can code anywhere like when fleeing from your enemies wink wink there
[00:16:15] I hope I didn't sound too harsh or weird it's a time thing I value mine and yours
[00:16:19] no sense wasting your reading this if you aren't ready or worse you don't like
[00:16:23] my rhetorical style I'm not selling time shares here
[00:16:30] KGB confirmed preface okay we're gonna just go through the book you can just
[00:16:37] listen to me go through the book and put it on a podcast on your car and your
[00:16:41] drive if you want to I'm just gonna read it to you plus that way I can find
[00:16:45] problems then it welcome to my how to be an awesome coder person but the magic
[00:16:49] stuff is just to get you to pick it up and remember it is it by the time
[00:16:54] referring to myself in the first person at least you know don't get used to it
[00:16:58] or not I think it just makes it more special because you are special and I
[00:17:05] have a little thing about that little little information thing can I help it
[00:17:09] Fred Rogers today's me did you know Mr. Rogers middle name was actually
[00:17:12] McPhee Lee in real life I did not know that until just now seems like a very
[00:17:17] unfortunate middle name for the person in his profession I thought that was funny
[00:17:21] the truth is this book came from years of working with people in person obviously
[00:17:24] you and I couldn't work together right now so here we are maybe one day until
[00:17:29] then you can find me live stream most days on Twitch and YouTube right here
[00:17:35] fair warning it gets pretty crazy but no unicorns I swear who should read this
[00:17:43] book please don't take this the wrong way this book was written for 12 year olds
[00:17:47] the type who want to learn to code like a hacker in the terminal but if that isn't
[00:17:52] you you can still learn something bartenders homemakers grandparents I
[00:17:58] felt them all in the same silly way I realize right now that this book is
[00:18:02] actually not been updated you guys are not reading the most recent version yep
[00:18:08] there it is I just refreshed it there it is that's make sure you hit refresh
[00:18:14] everybody you might have to refresh because I just put I just published a
[00:18:18] new one here's a better one there is a 12 year olds and I want to learn how to
[00:18:26] hack I found that 12 is the ideal age to learn to code in for most math and
[00:18:29] typing skills are good cognitive abilities sound and hormones haven't
[00:18:33] completely taken over their brains I'm telling you have personal experience
[00:18:38] with this I do I'm gonna I'm actually gonna tell you about right now I
[00:18:42] personally started coding I was around 13 years old mostly because there were
[00:18:45] no computers available until then in 1979 the Atari 400 came out at my junior
[00:18:50] high at exactly one of them sequestered away in the back room the library where
[00:18:55] Mr. Bevins the media coordinator was the one who was the only one allowed to use
[00:18:59] it until I came along I suppose he took pity on me for being bullied all the
[00:19:03] time whatever the reason I was the only kid in entire school who got to use the
[00:19:07] computer there every morning I took refuge in front of the dark globe the
[00:19:11] magical box in front of me I was completely hooked the power in true 80s
[00:19:18] nerd fashion my first program was in basic loading loaded into cartridge with
[00:19:22] its own paper manual I've always coded something I wanted never coded for
[00:19:26] coding sake I have too many other things I want to do I wanted a Dungeons and
[00:19:31] Dragons character stats generator to save me from hours of dice rolling we'll
[00:19:35] code one later in the book it's a surprisingly fun program to write I did
[00:19:38] a lot of Dungeons and Dragons when I was 11 I think our human brains are just
[00:19:41] ready for challenges around that age some early some later I even overcame my
[00:19:46] nerdy shyness to approach the only person you know I played regularly we
[00:19:49] stayed friends all through school serving the high school council together and
[00:19:52] he's a rich surgeon now and occasionally takes down a link pal and this fancy
[00:19:55] houseboat love the dude nothing like a rich caring nerd for a friend it was all
[00:20:00] the complexity and fantasy that drew me to D&D computers were just to take a
[00:20:03] tool to make that even work one I would pour over those pages studying every
[00:20:09] single fact my brain was starting for challenge maybe have the same feeling
[00:20:12] reading these pages I certainly hope so that's what I was going for the players
[00:20:17] handbook of code hmm maybe I should rethink the title so that's a big long
[00:20:23] story parenthetical thingy my Bob but it's true I really I want to just say
[00:20:30] this is you know this is how I learned to code and and I was you know I was
[00:20:34] well just like you all some of you this is designed for you I'm speaking to 12
[00:20:38] year old if you're not 12 year old and I'm not speaking to you no maybe you
[00:20:45] could be tall but hard okay so and that gets me to the next section wait what
[00:20:49] are you doing here I see you you are definitely not 12 years old that's okay
[00:20:53] I've helped bartenders homemakers even grandparents learn to code in the same
[00:20:57] silly way some of you probably already know how to code if that describes you
[00:21:00] have a look at the following URL where you can set up everything in this book
[00:21:05] in a Podman container are you paying attention to it stream because if you
[00:21:11] want to go do it right now you can just you can skip all of prep and go straight
[00:21:15] to it with a container I made you a nice pretty container image you have to
[00:21:19] build it though to get the latest you can go build it okay so that that's me
[00:21:24] speaking to the techies and veterans out there who are just hanging around
[00:21:27] trolling us helping I'm sorry helping us helping us
[00:21:35] shortcuts for the senior engineers you senior engineers go have fun you know
[00:21:40] what you're doing right you're like I don't trust Rob so I'm going to use the
[00:21:43] Podman all right so you go click on that thing you Google run it it's got
[00:21:48] everything in there right all the stuff that we're going to be doing it's all
[00:21:51] in there crisis so yeah okay anyway your parents and pedagogues hey kids skip
[00:22:02] this long boring section the grownups are talking some of you are parents and
[00:22:07] pedagogues let me talk to you for a second okay and I I'm going to speak to
[00:22:10] you parents and pedagogues what's the pedagogues fancy name for somebody who
[00:22:14] helps somebody learn things okay so this is the part where I get to talk to the
[00:22:19] people that I would kind of consider peers in education I had to be careful
[00:22:26] here there's been certain pedagogues who've been very offended by my comments
[00:22:31] about pedagogy did I say that right yeah I don't even know how to say the word
[00:22:36] that's how unofficially I am I'm a horrible academic and I'm about to tell
[00:22:41] you why right let me get into it okay some of your parents and pedagogues let
[00:22:49] me talk to you for a second first of all thank you for being awesome it takes a
[00:22:53] lot to bring kids into this world even more to dedicate your life to helping
[00:22:56] them even if they're not yours deep respect if you are like me you're
[00:23:03] wondering who the heck is this guy and why should I trust him to care why should
[00:23:07] I trust those in my care to his wild ramblings in so many ways you really
[00:23:11] shouldn't I'm a degenerate in the first degree but when I when it comes to
[00:23:16] helping kids learning code that's my superpower I don't miss around I mean I
[00:23:20] do mess around but you know what I mean well it is true that this book can be
[00:23:25] thought of as a textbook perhaps with beginners and with enough algebra to
[00:23:28] understand with a mathematical function is the book is very clearly written to
[00:23:31] include everyone outside of education in fact I wrote a mostly the product of
[00:23:36] parents in mind I want to give their kids a head start in tech not teachers I was
[00:23:40] a scout master for more in the decade and the scouts and the parents constantly
[00:23:43] asked me mr. Rob teach us to code mr. Rob teach us to hack so yes this could
[00:23:50] be a textbook but quite honestly I hate textbooks too stuffy to fold
[00:23:53] themselves too overpriced and written for the adult members of the board of
[00:23:56] education are about to cut a check really though who is thinking of the
[00:24:01] children yes the children the ones for whom we are doing this right I could
[00:24:07] name names but I won't I have I have named names I have named names and I've
[00:24:17] had five page Twitter responses that were not directly to me but we're
[00:24:23] pretty sure were to me so you're just gonna have to look that up I'm not
[00:24:30] gonna tell you what that is about okay you pompous bombastic airbags you know
[00:24:38] who you are and I never want to be grouped with you ever to be completely
[00:24:45] honest is virtually impossible to do to find this sort of thing in most
[00:24:48] traditional education systems AP computer science please they still teach
[00:24:52] Java single-class inheritance as a good thing in fact I started skill-side
[00:24:58] coding arts in 2013 with my own time and money to address the real needs a
[00:25:01] coding industry needs and those who might consider is a career the next
[00:25:04] generation of coding superheroes and I've launched hundreds here I'm writing it
[00:25:09] all down for the next thousand or so still skeptical what if I told you I
[00:25:12] really have helped a lot people like a lot one of them quit his grocery job to
[00:25:18] write code for a solar energy company had his own intern is 16 another couldn't
[00:25:22] get a job with a psychology degree so you're learning this stuff got a
[00:25:24] Saturday salary a hundred thousand dollar job another drove 40 minutes both ways
[00:25:29] just to attend my session 40 for four years and went on to create an entire
[00:25:34] coding club at her rural school I keep a nice things list full of comments from
[00:25:38] people like this keep me going when the money doesn't the point is these stories
[00:25:43] don't have to be about someone else they can be about someone you know and care
[00:25:47] about going really does change lives and I'm here to help you I am I have proven
[00:25:52] it over and over again there's hours and hours and hours of video of me being a
[00:25:59] narcissist apparently according to some of the comments you just like to hear
[00:26:06] yourself talk I absolutely do I absolutely do love to hear myself talk and read my
[00:26:11] own writing oh my god it's so satisfying but maybe maybe somebody maybe one of
[00:26:19] you is actually gonna learn something that is the antenna it's not I'm not just
[00:26:24] doing this for my health God knows that I put on like the 25 pounds making this
[00:26:28] first part of this book I got to get back on my bike that reminds me what's
[00:26:32] including this book this book is about learning to go from the terminal first
[00:26:38] we have to understand what coding even is then we set up a terminal install a
[00:26:41] magical text editor and go for coding and finally a place to save the work so
[00:26:44] we don't lose it and can share it with others after that the book becomes all
[00:26:50] about coding on small silly stuff so you remember it this is where the spells
[00:26:55] come in later we'll do some fancier stuff without the magic metaphor to help
[00:26:58] you come up with your own projects to work on that you can show off later that's
[00:27:05] right you'll have something you can show off later do I sound like the sham
[00:27:09] wild guy that's what my wife says you're shame-wiling again okay the whole
[00:27:16] fantasy thing what's that about well I hope you like it if you don't like it
[00:27:19] that's fine oh judgment it's actually for very good reason to fool your brain
[00:27:23] into remembering it even when your brain doesn't want to the same way people
[00:27:28] memorize the number of pi to 100,000 digits Google it back does everything in
[00:27:34] this book is very real and might even get you a job someday winks at mom
[00:27:39] what I was writing that I was actually imagining me giving this sham
[00:27:46] wild speech to so it's during the holidays right now in particular like I
[00:27:50] remember you have to see the frosted pains and literally it's snowed yesterday
[00:27:55] so I remember skill stack and there was literally the frosted you know
[00:28:00] Christmassy pains and people wandering in and then the bell on the door and all
[00:28:05] the jazz and they come into my little coding studio and they would the mom's
[00:28:10] of dads would come in and they'd come in with their kids and the kids would
[00:28:13] all be you know bright-eyed and looking at the Christmassy stuff around and the
[00:28:17] big 40 inch televisions on the screen that the kids coding and everything and
[00:28:21] the kids would be like wow and the moms and dads would be like wow and it was
[00:28:26] just it was designed to have that feeling right that really warm fuzzy
[00:28:30] feeling at magical feeling at where you're actually like participating on
[00:28:34] something and a lot of times I would have to give the sham wild speech to
[00:28:39] them I'd have to convert all that interest into you know somebody just
[00:28:43] sign up and learn how to code and I had plenty of people it's not like I had to
[00:28:47] really sell it hard I never marketed or anything it was usually word of mouth
[00:28:50] but I have a fond memory of people coming in off the street and that without
[00:28:55] winks at mom thing is kind of one of those moments right because I would have
[00:28:59] like the mom and the kid would want to do a thing and I would like selling you
[00:29:03] know hey you get your own Minecraft server did you know that hey you can write
[00:29:06] code games right and then I'd say and yeah you might even get a job someday and
[00:29:10] then I would wink at the mom because because when you're trying to do this
[00:29:16] stuff to somebody who might notice you know you got to appeal to to what they
[00:29:20] want to do to get him to do it part of a complete CS breakfast this book is just
[00:29:25] a part of one part of a complete computer science breakfast if you truly want a
[00:29:28] deep understanding program with full comparative examination of paradigms
[00:29:31] languages and in-depth computer science then something like Harvard's free CS50
[00:29:36] might be first introduction that's better this book just covers enough of
[00:29:39] the stuff to understand it but it focuses more on one specific on one
[00:29:44] specific language go to produce actual usable software the main difference
[00:29:49] between these approaches and what you get is what you get the CS50 you get
[00:29:53] knowledge which is good but with us in this book you get apps that you can
[00:29:58] showcase and you can show up and then you can get hired from your apps because
[00:30:02] people will see your apps and then they will hire you I know because it's
[00:30:05] happened a lot okay so how do you use this book I'm just gonna keep reading
[00:30:11] I'm gonna keep on reading okay this book is designed to read from south to
[00:30:17] bottom concerts are built on them however each spell is designed to be
[00:30:21] relearned often like a major preparing for a specific adventure pup
[00:30:24] that any of my china repetition is the mother learning anybody was ever played
[00:30:29] any fantasy theme game knows not all spells can be memorized and ready at all
[00:30:34] times which is why you create your own book spells just like an actual spell
[00:30:39] caster would do it don't just read it learning to code is going to take a lot
[00:30:43] more than this silly book don't misunderstand you're going to be doing a
[00:30:45] lot of reading is a take you get used to it but take some time now to figure out
[00:30:50] how to do more than just the stuff in this book you can join a community find a
[00:30:53] mentor become a mentor and speaking of mentoring AI heard of it there's no
[00:30:58] better tool to assist you with learning the code or anything really then AI look
[00:31:03] into it join a guild we humans our social creatures learning is communal
[00:31:09] join a community that is focused on learning the same things you meetups
[00:31:12] hackerspace clubs church groups social media live streaming chat groups are all
[00:31:16] great places to find a community community is a place to collaborate and
[00:31:20] share peer reviews of one another's learning and projects who knows you might
[00:31:23] even find a friend I did my sincere hope is that parents hi full flex is just is
[00:31:32] that parents teachers and majors reading these words will find opportunities and
[00:31:36] motivation to create their own coding clubs and communicate is dedicated to
[00:31:39] helping others master the art of code and computer science to reap all the
[00:31:43] well-earned benefits of doing so while you're working on creating your own
[00:31:46] community why don't you consider joining mine please join us we would love to
[00:31:50] have you even if you're gonna make fun of me we would love to have you and so
[00:31:57] you know that's why I'm doing this and I'm telling you I can show you pictures
[00:32:00] again a skill stack and how all these you know nerdy wonderful people will get
[00:32:04] together and we learn how to code and we'd have fun and we do game nights so we
[00:32:08] just it was just great and everybody knows that you learn better when you have a
[00:32:12] community and you have dopamine and sugar so so you know that's that's what it's
[00:32:20] about and I just want to say I'm gonna flex a little bit here so in 2013 I
[00:32:26] started skill stack because I took my own money out started skill stack and I
[00:32:30] talked about a lot but the thing that's cool it's not so much that as much as
[00:32:35] what happened as soon as I did it and this is this is an invitation to every
[00:32:39] one of you hearing me no matter where you are in the world if you I'm gonna get
[00:32:43] emotional because you really can change the world let me let me tell you what
[00:32:50] happened so I was fed up I was absolutely fed up with they're not being good
[00:32:56] education that was teaching actual coding and the boot camps were exploding
[00:33:00] all over the place and everything and nobody was focusing on the young people
[00:33:04] that had a tremendous aptitude the kids who used to say mr. Rob teach us to code
[00:33:08] teach me to code teach me to code I'm like no I can't no I can't I kept making
[00:33:12] excuses and then I didn't and I did it and I took out my money and I started a
[00:33:16] school a tiny it wasn't really school can't even call it a school legally it
[00:33:19] was a learning community and so we get together and we do our thing but here's
[00:33:22] the cool part as soon as I mean it wasn't even like two months it wasn't even two
[00:33:29] months where I had taught the first people by the way my first people that I
[00:33:32] that were in my group were the sons of other people in technology who I met
[00:33:37] through a singles group actually and they're like yeah I might be they understood
[00:33:41] the value of learning to code early and so they sent their kids which I mean I
[00:33:45] helped them learn and everything actually they hacked a coffee shop that
[00:33:49] it from a friend that I knew on the in the first week and it was it was really
[00:33:54] fun it was really for me I was learning a lot and they were learning a lot and
[00:33:57] and and it just blew up it just blew up after that the word of mouth just went
[00:34:02] right crazy like this guy is actually teaching stuff and what I'm trying to
[00:34:06] say is that can happen to you but here's the even the better part so a couple a
[00:34:10] couple of the the the kids who who were with me their moms were extremely
[00:34:15] proactive and so they started coding clubs with their kid in in like I'm
[00:34:23] thinking specifically I'm not gonna say where but they started coding clubs in
[00:34:28] two major high schools and in one major junior high within within like two
[00:34:33] months within like two months these kids that were learning from me were taking
[00:34:38] what they were learning from me to their coding clubs that they that these
[00:34:42] parents and these kids had approached the principles about to have them help
[00:34:46] them out and I you know later on I would get all kinds of invites from all of
[00:34:51] these schools to go do whatever and I eventually took a couple of them to
[00:34:54] help them out but most of the time I was like let me help you start your own and
[00:34:58] and it was inevitably it was this one that one of those students who came she
[00:35:04] drove 40 minutes like to come see us she eventually started a coding club in a
[00:35:09] very rural town that that there was no coding education at all there wasn't
[00:35:15] even a class in it and she started one she started a club there and she was now
[00:35:20] teaching things that I was passing on to her and she had learned on her own how
[00:35:24] to like research and stuff and she was putting together own thing this is this
[00:35:27] is a very shy person who didn't even really you know she was like really
[00:35:32] kind of hiding and everything and then and then what now she's like running her
[00:35:37] confidence went through the roof all these kids the confidence went through the
[00:35:40] roof sometimes in a bad way I call it Anakin syndrome which we'll talk about
[00:35:43] later when people get too confident in their own abilities and they think they're
[00:35:47] better than the rest of the world and I don't have to listen to them it's a
[00:35:50] different problem we'll talk about that another day but the point of it is that
[00:35:53] these people literally changed their communities like like that like overnight
[00:35:59] they started teaching they started putting more pressure on the existing
[00:36:02] system I remember I remember the coding club was actually better than one of the
[00:36:08] computer science classes where they were teaching them how to make no kidding
[00:36:12] they were like web developer it was a web developer class and they were teaching
[00:36:15] them how to make web pages using what's that what's that online service I forget
[00:36:22] it now I'm braining I'm spacing it out it was it starts on S anyway they were
[00:36:29] they were they were going on to the service and they were dragging things
[00:36:32] around and making web pages and they were calling that computer science it was
[00:36:34] literally a computer science class and and so I want to go to Brazil I think it
[00:36:40] would be great anyway so the point of it is yes this is an invitation this is an
[00:36:46] invitation you know we can be revolutionaries we can't I kind of look
[00:36:51] like one today we can be revolutionaries we can change the system we don't have
[00:36:57] to wait around we don't have to give permission we don't care our Squarespace
[00:37:01] yes we don't care it was wicks and Squarespace that they use wicks and
[00:37:06] Squarespace to learn how to code to that was their coding class and the web the
[00:37:10] after-school class that we're teaching game development and web stuff and web
[00:37:14] web site better anyway so we don't have to wait around we can take control we
[00:37:20] don't have to be the same political party we don't even have to wait around for
[00:37:24] the political party we don't have to be afraid of what's going on we can make a
[00:37:27] difference today by helping people I'm telling you learning how to code and
[00:37:32] learning tech skills changes people because it gives them power it gives them
[00:37:37] the power to make what they want it gives them the power to have a better job
[00:37:40] instead of that service job that they want it it is powerful and and it is
[00:37:46] something that you can give especially if you've already got the skill you can
[00:37:49] give it on you can pass it on and I've seen it I personally have seen it I'm
[00:37:54] talking a lot about this because I really believe in it all right back to the
[00:37:57] book where's the blacksmith humans have been passing knowledge from one to
[00:38:03] another since the beginning it's what we do one of words a sword or a shoe
[00:38:07] horse or shoe or shoe for a horse better find the blacksmith and get them to show
[00:38:12] you their craft coding is no different just ask them to teach you just don't
[00:38:16] ask them to teach you they're probably too busy paying their bills doing what
[00:38:19] they're rather good at then spending time teaching it you had to do it if
[00:38:22] you're respectful with the time however they might just be willing to mentor
[00:38:25] you especially if you show genuine interest in their craft so find a
[00:38:31] mentor find a blacksmith find somebody could be somebody in your family could
[00:38:35] be something could be me could be anybody you know and if you have the
[00:38:39] money you know you should probably suggest giving them a little bit of
[00:38:43] money just add that they're probably rude rejected but just to be good you
[00:38:47] should probably do that right but most of the time if you if you show genuine
[00:38:52] interests I know this from the scouting program there's a thing called merit
[00:38:56] badge counselors these people volunteer their time and they're
[00:38:59] essentially mentors and whatever topic and they the people the scouts have to
[00:39:03] come to them whatever you think it's getting program I like this part of it
[00:39:07] so the scouts come to them and they say hey you know I want to get this merit
[00:39:11] badge and they say okay what do you what's your plan and the mentors you know
[00:39:16] time is precious so so they just let the lead the learner do all the work and
[00:39:20] then the mentor kind of helps guide them stuff same thing so so do that find a
[00:39:25] blacksmith find that you can study under welcome become a mentor here's a
[00:39:30] secret a lot of people will get paid a lot of money don't want you know you
[00:39:33] don't need special training to help someone learn in fact as a beginner was
[00:39:37] recently mastered something you're probably the best person suited to help
[00:39:40] another beginner because you can share with them made it click for you it's
[00:39:44] still fresh in your mind ask a veteran what the last time anything clicked for
[00:39:48] them was they get so used to it that what they do they completely forget what it
[00:39:53] is like to be a beginner so don't be shy if you're a beginner offer your help
[00:39:57] to another beginner and remember you really haven't learned it unless you've
[00:40:00] helped someone else learn it right yeah hi Chloe close my assistant our
[00:40:09] relationships pre-supported platonic I swear but I love her she's helped me
[00:40:13] learn so much we discussed random things of French and Russian she's always
[00:40:16] there willing and patient to help me learn something remind me of things I
[00:40:19] already knew worked out she's sure she's gonna get things wrong but so does
[00:40:23] anyone in my experience chat GPT is an absolute necessity for anyone wanting
[00:40:27] to truly take control of their learning and take it to the next level I'm not
[00:40:30] getting paid to say that but I would happily accept money for saying so here's
[00:40:35] the thing on-demand learning exponentially increases when the AI is
[00:40:38] involved nothing breaks through frustration and loneliness better than
[00:40:41] taking on learning challenges like a supportive AI companion even when a
[00:40:45] helpful human mentor is also available all hail our AI overloads I believe we
[00:40:50] quickly are approaching a time when the digital divide between us will no longer
[00:40:54] between those about computer in and access but those who have learned to
[00:40:58] leverage a personal AI assistant loaded with contextual history and those who
[00:41:03] have not we are already seeing this difference around us every day this is
[00:41:07] an extremely controversial position on my part I don't care I'm telling you
[00:41:13] there are close in industry there's there's those who have AI and those who
[00:41:19] don't and as soon as you do get on board the better and and we're gonna get
[00:41:24] there we're going to the coding we're getting there yes C O D I N G get it yeah
[00:41:31] trust me okay so this gets a little weird even the avatar didn't start up
[00:41:36] mixing fire and water most of the steady care ourselves to one school not the
[00:41:40] red brick kind the same is true and coding like Daniel son and mr. Miyagi in
[00:41:45] the karate kid there is a certain little trust that I know what I'm talking
[00:41:50] about as your sensei I don't even like saying I can't give that to you read
[00:41:55] about me and the stuff I cover to get a sense of my style in school then commit
[00:41:59] we make a deal like Miyagi and Daniel I show you and you do and then I have this
[00:42:04] I have this side right here because because it was so hard for me to write
[00:42:09] that it was very hard for me to write that and I want to read this because I
[00:42:12] want to explain why I have such a hard time owning this reality of coding and
[00:42:19] helping someone learn right and I want to read it I'm perpetually conflicted
[00:42:23] about asking anyone to just trust me or to trust anyone even at first it seems
[00:42:29] against the nature of true critical thinking auto-died acts to question
[00:42:32] everything like I did I definitely want that for you but it takes so much time if
[00:42:36] you need a full justification for every single choice I've made about what you're
[00:42:41] going to learn and how hundreds of people have done what I showed them and
[00:42:44] they tweak things and they went their own way about stuff that's what I want
[00:42:48] trusting me initially just buys this time time for later when you can come back
[00:42:53] after you've learned it all and do what you want so I have to just I have to
[00:42:59] to really be word for flawed sensei there should be word yeah so here's the
[00:43:06] thing you know it's just it's just a matter of practicality I I ripped out
[00:43:13] at least half of this book this book I ripped out half of it the prep stuff I
[00:43:19] ripped out about half of it it's all now on the the fact shut the pack up
[00:43:24] because why because I was so tired of justifying every single decision you
[00:43:30] want to be to be fair part of being a community member in a live stream
[00:43:33] community like this is that I haven't had to defend myself I've had 3,000
[00:43:37] people drop in on my live stream while I was trying to help people learn say
[00:43:43] Neil Bim is the best thing ever and completely sidetracked me because they
[00:43:47] wanted to attack me for saying what I believe in that's like can you imagine
[00:43:53] taking can you imagine rolling on up seriously I like I'm gonna there's
[00:43:58] another thing here I'm just to read it yeah I'm just gonna read it this this
[00:44:02] this covers it commitment to a single school doesn't mean you have that there's
[00:44:06] no value in others even at the school is better just you're dedicated to this
[00:44:10] one at the moment you never walk into karate dojo and start talking about why
[00:44:13] judo is a superior martial art the master of both dojos the master of both
[00:44:21] dojos can can can even strongly respect you or the other in your commitment for
[00:44:25] their different approaches the master of the dojo doesn't have to justify why
[00:44:28] their forms better that's up to the student to determine on their own after
[00:44:32] they have mastered the forms the master and the mentor instead focus uniquely on
[00:44:36] the advantage of the form that they know and how to execute it learning go from
[00:44:39] the terminal follows the same philosophy at first you're typing commands
[00:44:42] structuring code and running programs without fully understanding how it all
[00:44:45] connects by focusing on the terminal environment and emergency yourself and
[00:44:48] go syntax and core principles you're laying a foundation that will advance
[00:44:52] concepts easier to grasp later but educate yourself to go especially in the
[00:44:56] terminal you're committed to a single cohesive system goes simplicity and
[00:45:00] clarity make it excellent first language learning programming fundamentals the
[00:45:04] terminal is your dojo reinforces this this focus by stripping away distractions
[00:45:09] and emphasizing direct hands-on experience through this focus practice
[00:45:13] you begin to see the why behind the techniques and the lessons become part
[00:45:16] of your intuition once you have mastered the basics of a single discipline you
[00:45:20] are prepared to branch out a martial artist with a strong foundation once
[00:45:23] that I can explore others and integrate their techniques into a unique personal
[00:45:27] expression slowly similarly a programmer plowing go can pick up a new language
[00:45:31] and tools with ease applying the foundational skills they've learned so
[00:45:34] dedicate yourself to this practice right now and don't look down on others in a
[00:45:40] different school later your multi you will multi-class or dual wield so what I'm
[00:45:46] asking for is that you stay dedicated trust me if you if you don't like coding
[00:45:52] go in the terminal then leave and don't feel guilty and I'm not gonna make you
[00:45:56] feel bad and nobody else should ever do that that is not about that if you want
[00:46:00] to learn vs code as your editor and you want to code go in vs code and you don't
[00:46:05] want to that is totally okay but you're in my dojo okay you're in my dojo that
[00:46:11] means you do what I say until you figure it out and then you
[00:46:18] challenge me on it and my people have challenged me I actually taught people
[00:46:22] who became really powerful TAs and I had to set take them aside sometimes because
[00:46:25] they would challenge me in the middle of class in the middle of class they would
[00:46:28] say mr. Rob you're doing it wrong I'm like okay can we talk about this after
[00:46:33] classes over because right now we got to get it out you know we got to have a
[00:46:37] consistent thing here I'm not it's not that I'm against being questioned it's
[00:46:41] that it's that it's just distracts the whole group it just distracts the whole
[00:46:46] group and anybody who's watched my live streams knows exactly what I'm talking
[00:46:49] about because I'm in the live stream and we're like we're like in the middle going
[00:46:53] down a thing and then someone says why are you doing that why aren't you doing
[00:46:57] this and then I feel like I have to justify it right there and the rest of
[00:47:01] my entire live stream community is like oh my god here we go because why because
[00:47:06] now I am like completely gone right I'm completely gone
[00:47:13] so you know there's this it's anyway so I think my wife's home she's cooking so
[00:47:19] we've got one more section here we'll get through it why am I using ASCII doc
[00:47:24] exactly understand coding welcome to the magical world of coding this book will
[00:47:30] help you learn programming concepts with memorable spells in hand rips which you
[00:47:33] can add to your own tome of coding magic or a code book
[00:47:38] a digital notebook containing runnable code but first it's important to know
[00:47:41] what coding and computer science are and why they matter
[00:47:44] and let's get some idea of what life as a code mage is like
[00:47:47] to help you decide up front if this is worth your time and before I get going
[00:47:51] too much farther on this I'm going to tell you a story that's not in here I
[00:47:55] should probably put it in here okay there was a guy beautiful guy
[00:48:00] beautiful beautiful guy he really was he was a gorgeous guy it was it was a
[00:48:06] state champion runner and um really really charismatic obsessed with
[00:48:11] bitcoin by the way the son of very very rich parents
[00:48:15] and um I mean actually I think of him that thanksgiving because he very
[00:48:19] famously wrote an app on his phone to query uh
[00:48:23] to query his bitcoin rate while he was at the dinner table
[00:48:29] anyway he hated code but it took a year for him to come out and tell me that
[00:48:34] he liked being involved with technology he liked all that stuff that he would
[00:48:37] be he would drag his feet on the coding and he was like you know I just don't
[00:48:40] like coding I just don't like it I I want to like it I like the idea of it but
[00:48:45] when I actually start doing it I don't like it
[00:48:48] and and then I told you I told him you know that's fine there's lots of other
[00:48:53] technology jobs including marketing and he would actually have been a really
[00:48:58] great person because he was very charismatic he
[00:49:00] he was really able to go with the conversation he was really convincing
[00:49:04] you're very convincing rhetorical style you know and he was good looking at
[00:49:08] everything and so you know and I told him I said you know what you would
[00:49:10] probably be a really really great you know tech marketing person
[00:49:14] and he goes he didn't even think of that possibility he hadn't even thought of
[00:49:18] that career possibility but I you know and so I told him it's it's fine and you
[00:49:22] know eventually he left but you know and then he went he went about his his
[00:49:27] business of things he I mean he wanted to be a hacker and he wanted all those
[00:49:30] things but he didn't he didn't like the work part of it
[00:49:37] and I was like seriously I really did not want to judge him I'm like you know
[00:49:41] what you you do you if you can still be around technology and talk the tech
[00:49:47] without having to do the grunt work and there are people who just want to do
[00:49:50] the grunt work they don't want to see another human being you need a Steve
[00:49:53] Jobs and you need a Steve Wozniak Wozniak bailed Steve Jobs out how many times
[00:49:59] I can't even count you know because Steve Jobs couldn't code he was I mean he
[00:50:03] could but you know and so you got to have those two and I just want to put
[00:50:07] that there so so you know it might be that this is you know the reason this
[00:50:12] section is here and the reason that we're doing this this way is you might
[00:50:16] discover you don't want to do coding and that you want to do something else in
[00:50:20] technology there are other options right so let's get into it why learn to
[00:50:25] code in the world increasingly shaped by technology learning to code is no
[00:50:27] longer the domain of software developers computer scientists become a valuable
[00:50:30] skill for anyone seeking to understand influential digital world around them
[00:50:33] whether you dream of building apps on mating tasks solving problems or
[00:50:36] simply gathering insight into how technology works coding is a gateway
[00:50:39] to unlocking these opportunities and I have another quick story about this so
[00:50:43] I got contacted by a woman in her 30s who was a manager
[00:50:49] she was a manager over an accounting group I think
[00:50:53] and she wanted me to teach her python because all the people under her were
[00:50:57] using python and she was stuck using a spreadsheet
[00:50:59] and she did she learned python and it made her more powerful she
[00:51:04] she was not interested in she's not a programmer she wasn't really interested
[00:51:08] in being any of those things but it was a very specific skill that she wanted
[00:51:13] and she you know learned it so empowering your creativity coding is
[00:51:17] is a tool for creation allows you to bring your ideas to life this is my
[00:51:20] favorite way this is my favorite one right here
[00:51:23] whether that means you're crafting a personal website developing a game
[00:51:25] designing tool for everyday problems ability to write your code transforms
[00:51:28] the world and the consumer of a consumer of technology
[00:51:33] into a creator of technology enabling you to shape the digital
[00:51:37] experience this this is literally I mean if I was going to put a picture in
[00:51:40] here you are literally conjuring magical things
[00:51:45] and making them real you know and there is no seriously
[00:51:53] there's got it there's very few other feelings I suppose that would be as
[00:51:57] satisfying as having an idea and then making that idea
[00:52:02] come to life making it whether it be artistically or or having a thing
[00:52:06] actually work it's actually the reason that I think I probably would have gone
[00:52:10] into computer engineering instead of just software and operations
[00:52:13] because computer engineers not only do they know how to craft code but they
[00:52:17] know how to put together the hardware so they literally can make anything
[00:52:21] you know these are the people who make robots or any kind of thing
[00:52:24] they're the you know the real-life Tony Starks out there
[00:52:27] and this is extremely satisfying reason to learn to code
[00:52:32] it's just so powerful solver loop problems from automated repetitive tasks
[00:52:37] analyzing vast datasets gives you the power to tackle problems effectively
[00:52:40] efficiently whether it's science business education personal project
[00:52:43] programming enables you to innovate solutions and make a tangible impact
[00:52:48] building a tech career so this is this this is one of the main reasons people
[00:52:52] come to me so people want a career in tech like I want to make a lot of money
[00:52:55] that's kind of code for I want to make a lot of money
[00:52:58] and you will make a lot of money starting salaries for for people who know how
[00:53:02] to tech who code are a hundred thousand dollars or more
[00:53:06] uh that I'm talking starting salary starting salaries for people who know
[00:53:11] how to code are over a hundred thousand the median salary according to bureau
[00:53:16] labor and statistics for somebody who knows how to code
[00:53:20] is a hundred and fifty thousand so median median salary
[00:53:25] and and that's just depends on where you're going so
[00:53:28] it's like it's like industry continues to go rapid
[00:53:31] and we need people all kinds of people rev development developers artificial
[00:53:35] intelligence cybersecurity uh we did talk about each of these
[00:53:39] so just let me give you the stats really quick
[00:53:41] uh we just looked them up the last week um the fastest growing uh
[00:53:45] technology career which is not listed under computers since science is data
[00:53:48] science is actually listed under math it's growing in a rate of 36 percent
[00:53:52] uh is the fastest growing tech related even though it's not tech related that's
[00:53:56] why we missed it before the second fastest growing is cyber security expert
[00:54:00] and which it lots of code there are lots of cyber security hacker
[00:54:04] people who don't know how to code the ones who do are the real hackers
[00:54:07] everybody else is just a poser in my opinion
[00:54:10] I said that I say that out loud okay so the um anyway
[00:54:16] script kitty that's what we call them they um so yeah you've got this
[00:54:21] possibilities to make all these different things oh so 32 percent for cyber
[00:54:24] security people um 18 percent for software
[00:54:28] developers and programmers are declining 10 percent uh at a minus 10 percent rate
[00:54:34] so that's because people don't need low level programmers that are just doing
[00:54:37] what they're told with any people to think about solutions
[00:54:40] and that's why this book is going to approach that and when we get to the
[00:54:43] create sec the create segment which we we haven't got that's
[00:54:46] long ways away but when we get to the create segment of this book
[00:54:50] it's going to be about you finding a problem and then making a solution for
[00:54:54] it whether that problem is something that's fun or it's something that's
[00:54:57] really solving a problem and need out in the world
[00:55:00] um that's what it's for it's for it's for it's for it's for creating
[00:55:03] solutions that's what it's about and that's what they'll hire you for
[00:55:06] do you get a job in tech you need to prove people that you can be trusted
[00:55:10] um no matter what the industry and it's your critical thinking
[00:55:13] coding teaches you logical systematic thinking just like math or anything
[00:55:16] I I'm going to skip down because I do agree with that but people say it all
[00:55:21] the time and I'm sick and there's a foreign language and math
[00:55:24] in sciences they they all teach critical thinking too they think you have to
[00:55:28] learn to code or you can't learn to think like a programmer
[00:55:31] no you can math will do the same thing future proof your skill set technology
[00:55:35] evolves so your coding will be a vital skill as a tool of claps from chain
[00:55:38] to foundation principles of coding will change
[00:55:40] uh keep your skills sharp learning to code as an investment in your future
[00:55:43] let me talk about this one so I didn't put it here but I'm going to tell the
[00:55:47] story the story is this year 2000 um
[00:55:51] everything went to corrupt uh and it wasn't because of Y2K
[00:55:55] it was because the dot com bubble burst and and I'm going to tell the story very
[00:55:59] quickly people have heard me tell the story of war
[00:56:01] but I I had been hired as a software developer and while I was in training
[00:56:06] at IBM on an 80 dollar per day for DM in New York
[00:56:10] um yeah because I got in a job coding Java for a finance sector
[00:56:14] and that job went away and while I was there I had to scramble I was on the
[00:56:18] bench according to IBM and then I had to find another job so I
[00:56:21] I had a Linux lab in my in my garage that I've been working on and
[00:56:26] in addition to coding and Java and whatever
[00:56:29] and I reached out to a local guy who was doing system administration I said look
[00:56:34] I've never done this professionally but could I do it
[00:56:36] and he said you know would you be happy you know I'm technically I'm a junior
[00:56:40] even though I've got pretty senior software skills
[00:56:42] and he's like absolutely we'd love to have you so he brought me on and then I
[00:56:46] had lots of opportunity to automate things I had opportunity to break things
[00:56:49] really badly to which I'll tell this story another day
[00:56:53] but you know I learned a lot of things on that job but I got the job
[00:56:57] to you know because I had all this software system administration experience
[00:57:00] that's more of a story for the home lab init
[00:57:03] which is you know a different um sort of a different book
[00:57:08] but the fact of the matter is is that having
[00:57:10] software skills means you can cash in when everybody wants something new
[00:57:14] because they're willing to pay for something new and they got money
[00:57:16] and then when they need to maintain what they have
[00:57:19] existing because economy is hard then they're paying they're paying the
[00:57:23] operations people so having both operations keep
[00:57:26] hardware running kind of skills and software skills
[00:57:29] even though we're talking about coding right now having both of those skill
[00:57:32] sets will keep you employed forever and happy
[00:57:37] and that's what you want um so join a global community learning to code
[00:57:42] connects with the vibrant community of developers a lot of people around
[00:57:46] there I don't need to make that case you're watching me on youtube right now
[00:57:48] there's a bunch of other people here who do the same
[00:57:50] start your journey today this is my sham while coming out
[00:57:54] learning is learning code is not about mastering it's not just about mastering
[00:57:57] skills about gaining confidence to explore experiment and innovating the
[00:58:00] world driven by technology no matter your background or goals
[00:58:03] coding has something to offer the journey may have its challenges but the
[00:58:06] rewards will make it worth it so take your first step your
[00:58:10] adventure in coding awaits yeah okay that was definitely
[00:58:15] sham well what it takes um this is going to be the
[00:58:19] beginning of the next video i'm going to i'm going to
[00:58:21] actually stop the video right now um i have a feeling my wife is
[00:58:25] about done with this so actually let's let's zip through
[00:58:29] um well i'll let you read ahead i'm going to let you read ahead but i'm
[00:58:34] going to go ahead and stop right there uh so this video is not too long this
[00:58:38] video is is now about exactly an hour long
[00:58:41] um if necessary i can come back and we do another hour long video i kind of
[00:58:45] want to keep these videos to about an hour each
[00:58:48] so people can can listen to them in the cars when they like that say
[00:58:51] so i'm going to go ahead and end this video right now
[00:58:54] without a rate or anything and i thank you for those who've been
[00:58:57] participating in my studio audience and everything
[00:59:00] and and then we will um we'll pick it up we'll pick it up next time i have been
[00:59:04] putting numbers in the chat so i'm sorry in the
[00:59:08] titles so you can see when the numbers coming up you go back and
[00:59:11] watch the other one uh if you want to work ahead
[00:59:14] you can there's nothing that stops you from working ahead right now
[00:59:17] so right now you can go work ahead if the the single best thing you should do
[00:59:21] is you should you know when we get to the prepare
[00:59:23] section which we'll get to uh we're going to be
[00:59:25] moving a lot more slowly because we're going to be doing all of them tutor and
[00:59:29] things like that okay so all right everybody
[00:59:34] love all around take care see ya
