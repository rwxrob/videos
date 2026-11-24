# 📜 Which license should I use?

Compares common software licenses from the standpoint of using personal projects at work, being protected from liability, and sharing code widely. Covers Apache, MIT, GPLv2, BSD, Mozilla, Unlicense and public domain, and explains why GPLv3 and AGPLv3 are avoided, including the Tivoization issue, the Facebook BSD plus patents React episode, and GPL enforcement trolls.

# 📜 Which license should I use?

Criteria for me:

1. Can I use my own code for projects at work
2. I want to be protected with my projects fail others
3. I want to be able to share my code with everyone
4. I don't want you making money on my code with mentioning me (at least)

Favorites:

1. Apache
2. MIT
3. GPLv2
4. BSD
5. Mozilla
6. Unlicense
7. Public Domain

Never

1. GPLv3
2. AGPLv3

Beware of GPL trolls.

Chapters:
0:00 Intro and licensing background
0:45 Criteria: using personal code at work
6:20 Why corporations dislike viral licenses
8:40 Liability protection and sharing criteria
9:37 Apache and MIT compared
11:00 GPLv2, GPLv3 and Tivoization
17:01 BSD and the React patents controversy
20:50 Mozilla, Unlicense and public domain
23:45 Why avoid GPLv3 and AGPLv3
26:25 Beware of GPL trolls

`#opensource #licenses #apache #mit #gpl #softwarelicensing #linux #react #developers #license #thoughts`

## Category

Education

## Transcription

[00:00:00] all right I'm making a quick little video about licenses in 2026 the question
[00:00:07] come up about which license you should use and someone who said maybe I should
[00:00:09] use a pharaoh GPL which is down here he spelled it wrong I see so I'm gonna
[00:00:16] summarize the licenses really quick I am not a lawyer obviously you need to make
[00:00:19] your own decision I'm also kind of on a chill Friday night so my my voice is a
[00:00:24] little chill and I'm gonna go through this I've actually had a lot of history
[00:00:28] with licenses I was I was instrumental in taking down Facebook's licensing bullshit
[00:00:33] that they did for react which was causing react and not be used for many
[00:00:37] many years it was spawning the creation of pre-act and a bunch of other things
[00:00:41] that had an actual license and I will tell that story in a bit when I get to it
[00:00:45] but the easiest the easiest license you let me let me just put the criteria out
[00:00:51] there for you right so for me the criteria are criteria for me are like
[00:01:01] favors so the criteria for me are number one can I use my own code or projects
[00:01:14] at work and I know that doesn't seem like the intuitive obvious reason to use
[00:01:20] it but it really for me it is because I want to I want to write projects on my
[00:01:26] own time which I've been doing tonight that can be used by work and there's a
[00:01:33] thing called fossa which is you know open source association to figure out
[00:01:39] whether you can use code or not and a lot of a lot of big corporations will
[00:01:43] subscribe to Spassa service to decide whether code can be used now big
[00:01:49] court in order to understand why corporations have to do this have to
[00:01:52] explain a little bit so the first thing is the corporations are deathly
[00:02:00] terrified of litigation and therefore they won't even if something is under a
[00:02:08] good license if it's a big piece of something a product offering that they
[00:02:12] want to do they will do their own research and their own legal team to do
[00:02:17] their own research about the heredity of a project who's been involved with it
[00:02:23] sometimes like it's so down to earth they'll actually go through and look at
[00:02:27] all the individual contributors to the project and make sure every one of them
[00:02:30] had a DCO you know and all the proper things this is why any decent project
[00:02:35] will have verified contributors because if you're not a verified
[00:02:41] contributor then they can't prove it was you who signed the DCO and therefore
[00:02:44] they can't prove it's you know you could claim it wasn't you because they can't
[00:02:48] prove it but if you are a verified contributor to get a project which
[00:02:52] requires you know set up a certificates for yourself and everything they can do
[00:02:56] that so one of the ways to spot a good project on the line a good open source
[00:03:01] project is number one it'll have a a license that everybody is okay with for
[00:03:08] the most part including corporations so that everybody can use it despite what
[00:03:13] Richard Stallman might say about me saying that I don't give a shit and the
[00:03:17] second piece of it would be how well have they organized their projects so
[00:03:23] they're they're insured that they're not going to get contributions from people
[00:03:26] that are you know and if you want to actually a really fun rabbit hole to go
[00:03:33] down go study all of the you know hoopla about the the Minecraft purchase by
[00:03:41] Microsoft and how unhinged the entire Minecraft mod community came even though
[00:03:48] they were modifying the software illegally it's a really fun rabbit hole
[00:03:55] they were actually suing them for using their contributions to code they were
[00:04:01] never supposed to be modified in the first place it's really funny so let me
[00:04:06] just come back to this so my criteria is if I make a project can I turn around and
[00:04:11] use it at work with a high degree of confidence that it's going to be usable
[00:04:16] at work and a lot of times I will write libraries on my own time that I want to
[00:04:21] use it work and it's a you know it's a kind of a great area you got to be
[00:04:23] careful there's a very famous Silicon Valley episode about this where you know
[00:04:30] he uses his work computer just to log in to make one commit to his code base
[00:04:34] and that caused the entire code base to be owned by the company because he's a
[00:04:39] company computer to do that that is that is real that actually happens that kind
[00:04:43] of stuff does happen so you know it's up to you to assess how big and how
[00:04:48] important the project is how much money it's worth I actually had a lawyer from
[00:04:53] a company that shall not be named call me because I was so paranoid about this
[00:04:56] very sort of thing and they said yeah I don't worry about it this is and you
[00:05:00] you're fine because I had written some pearl code that I wanted to use at work
[00:05:04] but I had written it as an open source project separate and at the time the
[00:05:09] company that I worked for claimed to own everything including your dreams it
[00:05:14] was all theirs and they would litigate against you to get it and I don't work
[00:05:17] there anymore thank God but that you know you got to be careful as a
[00:05:22] developer out there I mean there's a bunch of legal issues as a developer
[00:05:25] any that doesn't get us a software to I'm talking about anybody who writes any
[00:05:29] kind of code at all because you you know you got to be you got to be careful
[00:05:33] about that and I walk a pretty fine line between there because I do work on I do
[00:05:39] like like change up ideas and explore different architectural approaches in
[00:05:44] the public space mostly to get consensus and buy-in from my peer group
[00:05:49] professionally which I would do if I went to a meetup same sort of thing I would
[00:05:52] do I just do it publicly I'm talking about things that concern me at work
[00:05:55] even though I'm not talking about specific work projects necessarily and so
[00:05:59] you know that that's important fine line to walk and it's probably a separate
[00:06:03] video but when it comes to licensing that whole thing gets really really
[00:06:07] easy if you pick a license that you know your company is gonna love and that is
[00:06:13] the ask-backward different approach from what the people who created open source
[00:06:17] wants you to do they want you to pick licenses that force corporations to tow
[00:06:23] the line and to release everything they want that software as as others have
[00:06:29] called it to be viral so that it forces not only that software to be released
[00:06:34] to the public but everything that uses it and everything that uses it is
[00:06:39] there for pulled along for the ride and the intention of these rather radical
[00:06:44] free software foundation people is to force all corporate software to be given
[00:06:50] for free and if you don't believe me go watch Richard Stallman directly
[00:06:55] suggest that any kid who makes cookies and brings a cookie to school must give
[00:07:01] everybody else the cookies otherwise he's being selfish and he uses that as a
[00:07:06] comment as it's to say that if you write code and you want to bring that code to
[00:07:11] the world then you have to give that code to everybody and it's a very horrible
[00:07:15] idea it's a horrible idea is not moral in any level in my opinion and so you see
[00:07:23] these other licenses which have written like walked the very very narrow path
[00:07:31] in between these two things and yes they have been abused by corporations like
[00:07:35] Apple for example who basically stole BSD Unix repackaged it as next as it's
[00:07:42] now running on this computer right now there are corporations who are going to
[00:07:47] take it this is the same reason that Apple didn't release the most recent
[00:07:50] version of bash because bash B2 was the last version that released under GPL V2
[00:07:56] and therefore the last version that could be used without pulling along all
[00:08:01] of the other issue all of the other things which we'll get to when we talk
[00:08:05] about GPL V3 and there could be ton of hate in the comments here I'm ready for
[00:08:09] I don't care probably turn comments off I'm sick and tired of defending myself
[00:08:12] against free software foundation households who think that everybody's
[00:08:16] who writes anything it should be given it should be given it for free including
[00:08:20] you know some of the some of the famous ones by the way and a lot of the people
[00:08:24] that are pushing for these things are dirt poor and they have nothing to show
[00:08:27] for it so you know the idea that you should give all your stuff away for free
[00:08:32] is wrong it's wrong there I'm done okay so so I want to be able to use my
[00:08:38] projects for work that means the most famous and then the other thing too is
[00:08:42] I want to see I want to be protected when my projects fail others this is my
[00:08:58] number two thing like if my stuff breaks your shit I don't want you coming out
[00:09:02] for me right so that's it and I and I I guess I want to be able to share my code
[00:09:12] with everyone and I mean everyone right and the other one I put you should say
[00:09:18] is like I don't want you making money on my code without mentioning me at
[00:09:28] least there's a lot of people that will do this all right so that's what these
[00:09:37] code these are these things do so the the number one license by far the most
[00:09:41] happily adopted lost license by everybody's Apache the real reason Apache is so
[00:09:48] popular is because it's really really long and it's really legal legal
[00:09:53] teams and corporations lawyers they love it because it's very very explicit and
[00:09:56] it very explicitly grads patent rights which is something some of the other
[00:10:01] MIT does not do not do so patent rights are a huge thing to the corporate world
[00:10:07] and all the other licenses pretty much missed the boat now some of them might
[00:10:10] have caught up and have new versions of it I don't know but that last I checked
[00:10:13] Apache has always been really good at doing that and they have you know been in
[00:10:18] the business for a very long time so they're the most trusted license in my
[00:10:22] opinion it kind of goes without saying to do that I should probably put creative
[00:10:27] comments to that's a kind of a different license we'll talk about software
[00:10:32] licenses for today MIT is a really good license this is a very short license it
[00:10:36] gives everything away for free but it doesn't grant patent rights and therefore
[00:10:39] it's not as popular with corporations in fact it's very unlikely that you'll get
[00:10:46] an MIT project approved by a big corporation as much as it would be for
[00:10:50] Apache when so you know they're both the same except for the patent rights
[00:10:53] thing so why not just do Apache I mean if you can think of a good reason for
[00:10:57] that please put that in the comments instead of some hate
[00:11:00] GPOB 2 is the current license that's been released for for for all Linux
[00:11:09] software and Linus Torvalds has a very good video speaking to the question is a
[00:11:16] pre-software foundation person asked in the question point blank why do you hate
[00:11:20] free software so much or something like that there's a great great video I'm
[00:11:23] gonna let you go find it of him defending GPOB 2 and him considering he
[00:11:29] actually says that it was immoral of the FSF to release the GPOB 3 the way they
[00:11:35] did they they it's a totally different license which he's totally okay with
[00:11:39] people having but they try to make you think it's an extension of GPOB 2 or the
[00:11:44] GPL and it is not and so let me talk about that this is super important GPOB 3
[00:11:50] forces forces anybody who's producing firmware for any hardware to make that
[00:11:57] firmware completely open to be changed by the user and you're asking yourself
[00:12:03] what does it have to do with free software it has nothing to do with free
[00:12:06] software nothing it has nothing to do with it it's called the Tivoization is
[00:12:11] supposedly fighting the Tivoization of the world where people take Linux
[00:12:15] operating systems they put him on closed hardware and essentially it becomes
[00:12:19] proprietary because nobody can get in there to change it when the intention of
[00:12:23] the open source movement was supposed to be that the user of the product can
[00:12:27] always go in there and change their stuff I tend to agree with that but that's
[00:12:31] not up to the license to decide and if it it was never in any other license so
[00:12:37] the GPL V2 is still the preferred license and the only license that Linux
[00:12:41] revolves will use because he refuses to force people putting Linux on things
[00:12:46] just to to create extra work for themselves to so that the users of the
[00:12:52] product can get here not only is that more work and more expensive for a
[00:12:55] company but it's also insecure because that means you're now opening some of
[00:13:00] this closed-source hardware to change now for the better or worse right now
[00:13:05] you can make a huge debate here because because you know the Tivo and a lot of
[00:13:09] set top boxes and routers have been vulnerable have to buy a new device in
[00:13:14] order to get the update of firmware because they lock down the operating
[00:13:18] system on it you can't even flash it and so they you know they force it to be
[00:13:23] done but but towards point and I completely agree is that that is not up
[00:13:29] to the developer of the software that is up to the hardware vendor to make that
[00:13:34] decision and forcing a hardware vendor to make a decision about their hardware
[00:13:38] just because of the software they want to run on is is immoral and I agree and
[00:13:43] let me give you a very specific case where this this is really bad so Linux
[00:13:47] is really good at making smaller and smaller devices accessible you can put
[00:13:52] Linux on you know a lapel pin or a tiny little speaker that you use on your ear
[00:13:57] or something and that's fantastic but the smaller the thing gets Linux is
[00:14:02] already pretty big right so it becomes to force somebody to put a device to
[00:14:07] to create accessibility points like how the hell are you supposed to flash the
[00:14:12] software and change it and look at it in on a little device unless you're doing
[00:14:15] it over Bluetooth or something which is what most of them do the point of it is
[00:14:18] that you're kind of forcing extra interfaces into the device you're forcing
[00:14:24] hardware architecture to be to have extra things like Bluetooth
[00:14:30] accessibility for the firmware or or all this and that goes for anything that
[00:14:34] could be something running inside of the Mars rover right and that that thing now
[00:14:39] has to be open you know for the users to go in and make a change to it or
[00:14:42] something there there comes a point at which that's the which is kind of
[00:14:46] interesting given Torvald's hate of the NVIDIA team and never giving over it got
[00:14:53] better but never giving over a resource to their drivers you know it's just
[00:14:59] interesting to hear him argue for hey I don't want to fake force hardware people
[00:15:02] to do things based on the license and then have him also flip off NVIDIA for
[00:15:07] not allowing their drivers to their hardware to be open source so you know
[00:15:12] that's the thing so GPOB2 is the pick for me this is this this all this does
[00:15:17] very simply it says and it has no patent rights granted it it says look if you
[00:15:23] make any changes to software just make sure you give them back to us because
[00:15:27] we you know we don't want you to make changes and then you know throw them out
[00:15:30] Apache and MIT don't don't force that that's why corporations love them because
[00:15:35] if you make a change to an Apache MIT project you can expand on it you can
[00:15:39] sell it you have to make you have to make this stuff that's in there disclose
[00:15:45] that has to be attributed that you're using it which Apple doesn't do but you
[00:15:50] know you have to say that you're using the software and who who helped write it
[00:15:53] and all that but you don't have to do anything else so you can totally you know
[00:15:57] wrap it up put your own thing on there and just move on it's really great for
[00:16:01] business that's why they like them GPOB2 however is different than that that
[00:16:04] means that if you make any change to the software at all so you adapt it for
[00:16:10] your hardware or something like that that change has to be released to the
[00:16:14] public because if you don't have to sell it it doesn't you know you can still sell
[00:16:18] the software you can sell your change to it but you still have to have that
[00:16:21] change visible so that everyone else can benefit from your change to that
[00:16:25] software so if you customize the kernel in the case of Linux you have got to
[00:16:31] give those customizations to everybody else and there's lgpl which is a
[00:16:35] different one that's related to libraries and the interface between them
[00:16:40] which gets really complicated the project that's most prominent using that is a
[00:16:44] QT project which is now gone entirely proprietary except for the X project
[00:16:49] they've given a perpetual license to forever because it's become that's
[00:16:53] that particular software has become the number one tool for dashboards and
[00:16:56] cars and stuff and and this is wildly successful profitable company now
[00:17:01] because they closed it all down BSD is a great license this Berkeley license is
[00:17:07] it's kind of like MIT the problem with BSD is how many variations of them there
[00:17:13] are there are like four or five variations of the BSD licenses like which
[00:17:17] were you talking about and it's because of that flexibility in the variations in
[00:17:21] the license that Facebook tried to get around the general protection of BSD and
[00:17:26] put a clause in the their version of the BSD is called BSD plus patents and you
[00:17:31] can go do another rabbit hole you can go research this on Facebook one of my blog
[00:17:36] posts about this was one of the React is not free software you can go do the
[00:17:39] search for that and React is not free software you can go read that whole
[00:17:42] blog that blew the lid off this and the Apache Foundation came out and said you
[00:17:46] cannot participate any any Apache project whatsoever and that includes
[00:17:50] lots of this not Apache or Eclipse cannot release anything under this
[00:17:55] license not only that but the developers who use that license were also suspect
[00:17:59] because they were like they wanted to shut it down why would they be so angry
[00:18:04] about a Facebook license because it was called BSD plus patents what it was it
[00:18:08] looked like a BSD license but what it really had was if it it wasn't patent
[00:18:13] was something like if you ever sued Facebook in any capacity for anything
[00:18:19] for patent infringement or for any other reason if you ever sued Facebook then
[00:18:23] they pulled your license automatically that means the BSD license that they
[00:18:28] released an under no longer was valid so that it added a condition if you see our
[00:18:33] company this license no longer stands that mean it was such a big deal that the
[00:18:38] VMware Corporation back when it was a corporation and I have the video I have
[00:18:42] the screenshots of the emails from the guy who was talking to the lawyer team
[00:18:45] that they they submitted their stuff and to the lawyer legal team and the
[00:18:51] legal team was no this is like two sketch we don't want this at all and so
[00:18:55] they banished anything with BSD plus patents and they reached out to
[00:19:00] Facebook saying hey we want to use react but we can't because your stupid
[00:19:03] license our legal team won't accept it and they said oh well and so then you had
[00:19:07] pre-act and a bunch of other tools that were kind of clones of react come up
[00:19:11] you got really popular read about that time because everybody was like I'm not
[00:19:14] using react and for corporate because I can't I can't be sure it's not gonna
[00:19:18] they're gonna come back at us my legal no legal team on the planet's gonna accept
[00:19:21] it because you could have sued him over any other thing and they're gonna pull
[00:19:25] the license to your core software why would you ever risk writing a software
[00:19:28] with that patent like with that license in it and it was so bad that the Apache
[00:19:33] project itself finally did it and then Facebook relented and they said oh we're
[00:19:38] so sorry yeah we meant to put this as MIT the whole time and they tried to
[00:19:44] save base and they re-released react under MIT and that pleased everyone but
[00:19:51] they would not put it under Apache was just kind of ironic because it was a
[00:19:55] better license but I know what am I done or did I enter MIT that the idea that
[00:20:00] that a company would think that they could release open software that had a
[00:20:05] contingency that the license was invalid if you sued them just blows my mind how
[00:20:10] stupid that company is in fact if there's one reason that I cannot recommend
[00:20:16] anybody work for Facebook not only are they one of the most amoral companies on
[00:20:20] the planet immoral not even a moral they're just like so bad and they're so
[00:20:26] stupid the people in the company are across the board stupid or are making
[00:20:31] these decisions some of the engineers are amazing you know the engineer the
[00:20:36] engineers do amazing things but that is that is not you know that they're doing
[00:20:42] it irrespective of how stupid that company is I mean the whole meta project
[00:20:46] oh my god I just can't even deal without dumb that company is and yet people still
[00:20:51] want to work there I have no idea why anyway there's also another license
[00:20:56] call the unlicensed there's the unlicensed is kind of cool there's there's also the
[00:21:05] public domain license which I have used and okay so the Mozilla license is really
[00:21:13] weird a lot of projects are released on the Mozilla license including what was
[00:21:19] the one I recently that I cared about was it obsidian I don't remember I don't
[00:21:24] think so but what the Mozilla license does is it allows it allows different
[00:21:29] pieces of the software to be released with different licenses and that does
[00:21:33] provide some flexibility because if your project has lots of like little
[00:21:37] different types of things and you want this to be released with this license
[00:21:40] and this not to be and you can like mix and match in but the downside of Mozilla
[00:21:45] I actually try to use Mozilla for a long time is it Mozilla requires you to have
[00:21:51] that particular part of the software really well documented and know what the
[00:21:55] scope of that part of the software is and I'm probably misstating this you know
[00:22:00] but all I remember it was such an hassle to make you know everything work
[00:22:06] the reason I came across this because I was trying to release my my documentation
[00:22:11] under Creative Commons and my source code under a different license which is a
[00:22:15] common problem like how do you if you're an educator in particular how do you
[00:22:19] license the examples from the book under one thing so they can be used in public
[00:22:23] domain no problem that people can use those examples that work without fear but
[00:22:26] yet keep a hold of your copyright on on the copy and the pros and everything
[00:22:31] else you can either sell the book or make sure it doesn't get sold for money if
[00:22:34] that depending on what you want to do so mixing those licenses is is hard and
[00:22:38] Mozilla kind of provide a little bit of help there the unlicensed is the sort of
[00:22:44] do what you want with it license it's it's it's it tries to say you know do
[00:22:49] whatever and don't bother us it it's a stupid license I used to think it was
[00:22:53] really cool it has no legal weight at all so there's there's no way in hell
[00:22:59] you're ever gonna get anybody at work to ever accept an unlicensed they might
[00:23:04] accept a license in the public domain but again public domain licenses don't
[00:23:10] grant patent rights neither does the unlicensed so a company if a company wants
[00:23:15] to adopt a thing they don't just want to be able to use it for free like MIT they
[00:23:18] want to be able to be sure that you're giving them patent rights as well so
[00:23:21] that only the only license in this group that does that is Apache to my
[00:23:25] knowledge so so public domain is fun and and great and everything everybody can
[00:23:31] use it forever but you know it's like I don't know I think if I were going to
[00:23:38] release it even even the snippets in a in a book I would I was still really
[00:23:42] someone or Apache didn't even though I have licenses today that's a public
[00:23:44] domain there are a couple licenses I would never ever want anybody to touch
[00:23:50] GPLV 3 I've already talked about because of the TVization of everything it
[00:23:55] it basically rips away your ownership of a hardware that you made and I do not
[00:24:01] think it's a good idea then there's AGPL which is the Baro GPL which is even
[00:24:07] more viral than the GPL AGPLV 3 is probably one of the worst licenses in
[00:24:13] history because not only does it cover the software that's where it's running but
[00:24:19] it covers any service that means if it sends up a web page anything that uses
[00:24:26] the web page is also affected by the license that's right so you know I I
[00:24:34] know a Baro is it seems to be the most you know viral and awesome and and forces
[00:24:40] open source everywhere I don't I don't agree I think they made it because they
[00:24:45] wanted to release so let's say you're running a web server and all the the
[00:24:49] back-end software is running is using a Baro so it it you know it's all if
[00:24:55] somebody wanted to get to that software right but but that's what they want to
[00:24:59] put the license on is is the is the progressive web app that's that's going
[00:25:04] into the web browser right so the AGPL stuff actually the licensing of the
[00:25:09] software so let's say you make a server with a Baro GPL as I understand it as I
[00:25:13] understand it I'm not a lawyer but as I understand it the GPL applies to all the
[00:25:17] server software but it also applies to any software that is served from that
[00:25:22] software so like if you serve up a a web page or progressive web app then that
[00:25:29] web app that's being served by that server also has to be released under the
[00:25:33] GPL which means that the source code for your website has to be released under
[00:25:38] a GPL and I I could be getting that wrong with the the license is at least
[00:25:43] ambiguous enough that somebody could come at you and say ooh we love your web app
[00:25:49] are you serving this from a server that's a GPL and if so why are you not giving
[00:25:53] us the source code of your website which is that's kind of what they're
[00:25:57] talking about and that that's like completely out of bounds I mean that's
[00:26:01] like absolutely crazy I just don't like that idea at all all right so I'm gonna
[00:26:06] take yeah you have 24 hours to send the source
[00:26:12] code to you and all software you are using right so oh and actually I'm
[00:26:17] really glad you talked about that so be aware of GPL trolls okay so this is
[00:26:25] another really really fun rabbit hole to go down so one of the core contributors
[00:26:30] to the Linux project I don't remember where decided to sue everybody that
[00:26:37] used GPL and he went out and aggressively sued them because and he told you have
[00:26:45] you have this much time to turn around and give me the money because you're in
[00:26:49] your in violation and he was operating completely outside the band of the
[00:26:55] Linux Foundation you're gonna have to go read your own conclusions on this
[00:26:58] whole thing but it actually happened in fact it was such a big deal that they
[00:27:03] changed part of the gplv 2 I think I can't remember all the story I'm getting it
[00:27:08] wrong but they're they changed the license the gplv 3 actually changes to
[00:27:15] give some time for remediation and I think that actually made it into gplv 2
[00:27:20] as well I don't remember but that's one of the things they added to v3 that was
[00:27:24] kind of nice they gave a a grace period for remediation so that these GPL trolls
[00:27:30] couldn't come attack companies and say oh you didn't make it in time now you
[00:27:35] owe me ten thousand dollars and this person actually got as I remember right
[00:27:39] he actually got paid out it got paid settlements and shit he was like because
[00:27:43] a lot of lawyers from these big corporations they don't care which just
[00:27:46] you know I just I can't put words into like how shitty that is I mean it's like
[00:27:51] there these people these free software people like that person not all but that
[00:27:55] specific free software person who's pushing open source for the world is then
[00:27:59] now suing people over the license so he could get money on this side I mean what
[00:28:03] the hell I just the level of hypocrisy in the free software foundation which
[00:28:10] Linus Torvalds like totally specifically calls out to their face in that video
[00:28:16] he's like I can't believe I won't give him my money go give your money to the
[00:28:20] E of up you know as opposed to the episode and I completely agree with that
[00:28:25] and this is one reason I don't use Debian either because the people in the
[00:28:29] Debian team are just not the kind of people that I would ever want to be
[00:28:34] around or aspire to be or help other people I'm gonna get total hate on this
[00:28:38] video I don't care you've watched it you've got my opinion and now you what you
[00:28:42] know what what software license to pick if you want your project to be used at
[00:28:47] work, which is my criteria. That's all.
