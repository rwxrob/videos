# 🚀 Tech Career Beginner Boost 2026 - Day 4

A beginner-focused session on the terminal and Unix/Linux file system, covering shell prompts, root versus regular users, running containers with Podman, and using AI tools like ChatGPT and Claude for learning and coding. It then explains inodes, hard and symbolic links, permissions, and basic commands such as ls, cd, mv, rm and ln.

Chapters:
0:00 Intro and playlist housekeeping
3:02 Using AI to learn tech
9:04 Choosing a terminal to use
12:01 Shell prompts and a shutdown mishap
18:05 Root user and sudo
21:03 Containers and ephemeral systems
27:00 Essential commands and multicall binaries
33:01 Hard links and the bonsai project
39:01 Bash versus zsh default shells
42:03 Voice and agentic AI in terminal
50:00 Coding with Claude in 2026
1:00:00 Terminal history and teletypes
1:06:00 Command line and REPL explained
1:09:02 Files, directories and the file system
1:15:21 Everything is an inode
1:23:00 Proc, dev and virtual file systems
1:27:02 Disk usage and inode tables
1:36:00 Man pages versus asking AI
1:45:01 Listing files and the working directory
1:48:01 Long listings and inode details
1:54:03 Removing files safely
1:57:04 Why not to rm directories
2:03:02 Permissions and rwx bits
2:09:01 Numeric permissions explained
2:12:05 Moving and renaming with mv
2:18:01 Moving files between directories
2:21:08 Creating links with ln
2:24:01 Hard link counts and deleting
2:30:00 Symbolic links and relative paths
2:39:00 Home directory dotfiles and linking

`#linux #terminal #beginners #unix #bash #techcareer #filesystem #devcareer #techjobs #livestream`

## Category

Education

## Transcription

[00:00:00] starts now we can start this thing okay so I cleaned up the playlist I had the
[00:00:06] wrong title in there so day three was there just had the wrong title so that's
[00:00:10] published you're gonna have to wait for date which is probably good because now
[00:00:14] you just saw that day three showed up even though I actually did it a week ago
[00:00:17] but I didn't fix it till today which is day four and I can't upload this video
[00:00:23] because YouTube gave me a strike for watching American Gods in an IRL video
[00:00:29] while I was like no laundry so I am not for the most part I will not be live
[00:00:36] streaming to YouTube any longer I invite you to join my wonderful Twitch
[00:00:41] community if you want to watch me live stream on occasion I will stream to
[00:00:46] YouTube and Facebook I mean it just really depends but for the most part I'm
[00:00:50] gonna stay with twitch twitch gets me it gets streamers in general it doesn't
[00:00:55] freak out when you play music or you walk about a six-hour video demonetized
[00:01:01] because I walked into a shopping store with music for more than for like you
[00:01:06] know maybe 20 30 minutes and the entire video was taken down and blocked worldwide
[00:01:10] because of it I really don't like YouTube there I'm done all right so
[00:01:16] recording is on we did day three so day three we set up our technical lab so
[00:01:24] let's go over what you should have before you start this day you should have a
[00:01:29] computer with a terminal that means you should have a Mac or a windows box or
[00:01:35] optionally a Linux box I didn't talk about it but if you set up your own
[00:01:38] Linux box that's cool and then we're gonna have a command line we're gonna
[00:01:43] have a terminal command line you should have experimented with VS code but we
[00:01:49] will not be using VS code at all going forward I did want to make sure that you
[00:01:57] had access to VS code and that you understood it because it is a critical
[00:02:00] tool and many of you will find using VS code to be much easier if you just want
[00:02:04] to do the coding parts of the beginner boost and you don't care about learning
[00:02:09] the terminal which is going to be the primary focus for today today's focus is
[00:02:14] going to be learning the terminal enough to be able to use the terminal in a
[00:02:19] productive way to edit files to move around to navigate files and with the
[00:02:26] goal of creating our first website which is going to be our first project that
[00:02:33] we're gonna do we're gonna make a very simple website using the command line
[00:02:39] after we learn the basics of how to edit files and how to move files around and
[00:02:44] a little bit about file permissions and all of that stuff so that is really the
[00:02:51] main focus for today today's only a bit to our video we're not going to go deep
[00:02:56] into all of those things I'm trying to decide if that's going deep into those
[00:03:02] things is going to be in the boost or if just telling you about it and letting you
[00:03:06] go learn about it with your AI is the way to go that's a good opportunity for me
[00:03:10] to remind you if you don't have chat GPT to help you learn or something similar I
[00:03:18] recommend chat GPT above all the others for personal learning specifically for
[00:03:24] personal learning for writing code Claude is the best and I've done videos on this
[00:03:29] cloud versus Chloe you can go watch that video if you want but if for all of you
[00:03:36] watching this video if you don't have an AI as your personal helper and
[00:03:43] structure teacher and organizer stop right now and go do whatever it takes to get
[00:03:49] yourself chat GPT or something similar but I strong I cannot overemphasize how
[00:03:56] powerful an important chat GPT is for learning it has been overwhelming and
[00:04:02] that's another good segue into a little bit of review of the calendar
[00:04:06] schedule so I've been the calendar has been very fluid recently this is the
[00:04:12] calendar currently so you can see here we're only going to do two hours of the
[00:04:16] interboost on Saturday with the goal being answering questions and showing
[00:04:22] you what you should have done last week and what you should be doing in the next
[00:04:27] week but not to necessarily show you how to do all of those things it's more
[00:04:32] important that you know what to do so that then you can go on and that is why
[00:04:36] the AI is so important rather than having me tell you I don't know how to
[00:04:42] edit files or change change directories you should be getting in the habit of
[00:04:47] asking your AI to do that and that by the way is what I can't say the names but
[00:04:52] two of the private mentoring slots that have been taken these people are doing
[00:04:56] this already with me in fact one of them I I went I told him this and I came back
[00:05:02] and they had created an entire learning plan with dates and estimated things and
[00:05:08] recommendations for companies to work for recommendations for you know the
[00:05:14] technology that they needed to learn this person had actually given the AI the
[00:05:21] idea behind a skill stack which I covered in another video and the AI
[00:05:25] helped them create the skill stack and choose relevance and scores and
[00:05:29] everything and this was all done in chat to begin with it when I came back I
[00:05:33] was blown away I was blown away even beyond any expectation I ever had I was
[00:05:38] like I could not believe the level of detail and quality in this person's
[00:05:44] personal learning plan down to which job pairs they should attend to get a job
[00:05:49] in the local area with it found two job pairs in the area that were specifically
[00:05:54] that were free to attend to help them get a job in their state and this all came
[00:06:00] from AI so if you are not leveraging chat cheap I'm sorry I'm getting
[00:06:06] excited I'm getting so I'm gonna calm down now but let me just restate this if
[00:06:11] you are not leveraging chat GPT and AI for your learning forget about anything
[00:06:18] in tech anything and quite honestly forget about any job because almost every
[00:06:24] job short of construction is going to demand that you are using AI to help you
[00:06:30] write your emails better to help you soften the blow when you have to
[00:06:34] communicate with your manager about something you're pissed off about which
[00:06:37] my manager may have recommended to me because I don't I'm pretty abrupt when
[00:06:44] I in the way I communicate but you run it through an AI and it helps you out does
[00:06:47] it I don't care what you think about about having it make you irrelevant and
[00:06:50] all this stuff I don't care about any of that this is the new reality and if you
[00:06:54] don't accept this new reality then I don't know go be a park ranger and tell
[00:06:57] your job gets cut okay which is that's me I actually wanted to be a park ranger
[00:07:05] that I would be unemployed basic use of a developer tooling no we're not doing
[00:07:10] them all right so so anyway I just want to put it out there chat GPT or something
[00:07:17] like it should be your primary man you should actually have a person that's
[00:07:21] your primary mentor if you can find one who's willing to help you and not
[00:07:25] scrambling to make ends meet with the economy the way it is right now but if
[00:07:29] you can actually find someone to spend a little bit of time with you then that's
[00:07:32] your number one source number two source is chat GPT or something like it all
[00:07:38] right I spent a lot of time on that let's let's get into it let's talk about
[00:07:42] what the terminal is and what it isn't and we're gonna create our own first
[00:07:48] website today okay so let's actually just I'm gonna briefly give you a summary
[00:07:55] of what's terminal is that we already did it last week but I'm gonna do it
[00:07:58] again so tell scale get out of my way first of all you need to start up a
[00:08:05] terminal now if you're on a Windows machine you know it's it's a Windows
[00:08:10] key you push the Windows key and type either bash or terminal if you'll pop up
[00:08:16] your terminal and you'll be able to go to the terminal and start working and I
[00:08:22] am actually well I'll do it I'll do it later I forgot to set up my my rust desk
[00:08:28] in order to run the windows at the same time but the goal is to get a
[00:08:32] terminal open if that if you forgot how to do that and you want to use VS code
[00:08:37] you can open up VS code and we talked about how to open the terminal there
[00:08:40] we already covered this and if you're on a Mac then it's control space command
[00:08:45] space and then terminal and that will open up the built-in terminal of the
[00:08:50] system this is almost always when someone's gonna say well what about a
[00:08:54] ghosty and all this stuff we already talked about that we are using the
[00:08:58] basic built-in terminals on Windows and Mac for the boost if you want to use
[00:09:04] any of those other things be my guests and exchange knowledge and ideas and
[00:09:08] opinions in the forum uh in our get a forum on the get a boost which is you
[00:09:13] know get up dot com slash or to be a trap slash boost make sure you're
[00:09:17] over there in the discussion forum so you can ask these questions about what's
[00:09:20] your favorite terminal blah blah blah but for today and for purposes of
[00:09:25] getting a job you just need to use the built-in terminal okay that means you
[00:09:30] use the one that comes on your Mac mine has been customizing color
[00:09:34] which i'm not going to teach you how to do it super easy to go just to the
[00:09:36] settings and figure it out um and that's what you should do you should
[00:09:40] get it customized the way you want it to um some of the customization with
[00:09:45] regard to the command prompt as you see we will cover just not today
[00:09:49] um so you should have a terminal open it might be black and white which
[00:09:53] whatever your colors are you might want to change the fonts to get it to where
[00:09:56] you can see it nicely and i'm actually going to expand this
[00:09:59] space in this so it's a little bit bigger all right now
[00:10:03] i am now going to switch over to my preferred terminal because the colors
[00:10:07] are better in my preferred terminal but i wanted to show you how to pull up
[00:10:11] the default terminal so my my preferred terminal is
[00:10:14] westerm uh i strongly strongly recommend
[00:10:19] that you that you consider westerm uh mostly because it's so much faster
[00:10:25] and it's it's written in rust it's a great rust app
[00:10:28] and it can be configured to run on windows or mac using the same
[00:10:33] configuration file and that is really important when you're working in
[00:10:38] the terminal um so we're going to go ahead and clear the screen
[00:10:43] and my prompt again is has got a lot of interesting things in it
[00:10:47] uh just to let you know let's talk about what are what's in the command line
[00:10:51] prompt for most prompts it's it really depends
[00:10:54] on the application uh on the ovas or how you set things up
[00:10:59] but usually always it'll have the username here that's my username
[00:11:03] and then it'll have almost always it'll have the name of the host i have a
[00:11:06] funny story about that i'll share in a second
[00:11:09] and then it will have any number of interesting things
[00:11:13] uh that you may have configured usually the minimum everybody's got is this
[00:11:19] they have the username and the host right um i personally i'm just going to say
[00:11:24] now i think you at least need to know what directory you're in
[00:11:28] and what get branch you're on and as a technologist as a professional
[00:11:33] not knowing what get branch you're adding you're editing is super
[00:11:37] bad because you'll end up committing to main or to the wrong branch and you
[00:11:41] have to go all the way back and forth so in my opinion
[00:11:45] and we'll revisit this later when we do uh command line
[00:11:48] configuration and stuff in my opinion the the three
[00:11:52] you know the four essentials are what's my user
[00:11:56] uh what's my host what's my current directory and what's my get branch
[00:12:01] people put the weather almost swore people put to weather and they put
[00:12:07] like i don't know whether how many days to their birthday i mean they put all
[00:12:11] kinds of random stuff in the prompt that they don't need
[00:12:15] um and there's been scientific studies that show the more minimal
[00:12:19] prompts the better because you want the prompt to fade in the background so you
[00:12:23] can focus on the on the actual content in the front
[00:12:27] but i do want to tell you my story about that causing a problem so
[00:12:31] very early in my career this was in 2000 let's see i had been at IBM since
[00:12:38] 2000 yeah it was in the year 2000 so um right after
[00:12:43] Y2K which i did for Nike and uh i i had the the bubble burst and i had to
[00:12:51] switch from uh developer uh being a software developer to an operations
[00:12:55] person so i was working uh in Linux as a system
[00:12:58] administrator the Linux and Unix Solaris Unix as a system administrator for the
[00:13:03] first time and uh this wonderful manager of mine hired
[00:13:07] me and and took a chance on me because i'd never worked as a system in before
[00:13:11] but i had an entire lab of Linux machines that i've been managing for
[00:13:14] some time and i got really into Solaris and so when
[00:13:18] Unix when i was at the internet service provider where i did all the coding
[00:13:22] and so i went home for the night i put Linux on my laptop
[00:13:27] which you know everybody wants me to teach them how to do you know
[00:13:30] blast USB drive deal with your BIOS you know proceed to install on your laptop
[00:13:35] that's the process i'm not going to cover it
[00:13:38] um and so i had this laptop i brought this Linux laptop in
[00:13:42] and interesting fact none of the people on my team who were professional
[00:13:46] system administrators had ever used Linux
[00:13:49] they all only used Unix Solaris Unix and AIX they'd never even seen a Linux
[00:13:56] machine in fact i was the noob on the team
[00:13:59] and who had never done system in before officially and i ended teaching i got a
[00:14:03] thanks award for it i ended teaching my team how
[00:14:07] to use Linux and how to install Linux on the laptop
[00:14:10] so Linux is a great way to learn and installing on the laptop is definitely
[00:14:14] valuable just not for everybody that's why it's not in the boost
[00:14:17] but here's the main part of the story i did not have or did not pay attention to
[00:14:23] the host name in my prompt and i had been
[00:14:27] placed in control of it's really crazy but i had been given control
[00:14:34] of the mail server because i was the only one who knew how to do mail
[00:14:39] routing even even though we had lots of veterans in the group
[00:14:42] because i was running my own mail server at home another reason to have another
[00:14:45] home lab i've talked about that before but
[00:14:49] this particular day i was tired it was late in the afternoon i wanted to go home
[00:14:53] it was the end of the day and so i put i typed one command
[00:14:57] and don't you dare type this command right now
[00:15:00] shut down dash h no this is an old school version of a multi-user system
[00:15:04] command that used to send a wall request that would go out to everybody and tell
[00:15:08] them hey get ready the system's coming down so
[00:15:10] 16 000 users at the university would know to take a break
[00:15:14] um and i ran that command without looking at where i was and i took the
[00:15:20] mail server down because i was logged in on the terminal to the mail
[00:15:24] server and i forgot and i was like oh crap and i lost my
[00:15:28] terminal prompt and my laptop didn't go off
[00:15:31] and i was like why is my laptop not restarting or not going off
[00:15:35] and then i looked at the prompts and i was like i was still at the terminal
[00:15:38] prompt and what had happened was it had disconnected me
[00:15:43] it had disconnected me in fact i can show you but it had disconnected me from my
[00:15:46] server from the server i was on and it had dumped me into my laptop's
[00:15:51] terminal and and so i was still in the laptop terminal and i went oh crap
[00:15:55] and i had to go to my manager and it for whatever reason
[00:16:01] the system that i had tried to shut down stopped before going all the way down
[00:16:05] there's different and labeled levels and the level it stopped out meant that i
[00:16:09] didn't have access to it but it was still sending mail thank god
[00:16:13] and so we called up i think it was boulder colorado and the operator went in
[00:16:17] and and flipped a switch on it and brought it back up into full network status and
[00:16:22] we didn't lose any mail and nothing went wrong and i went you're going to fire
[00:16:25] me right and my manager said no how'd i fire you're going to do that again
[00:16:28] i went no he's like well if i hire another guy they'll fire that all that
[00:16:32] person will do it because and now you know not to do it i'm like thank you
[00:16:36] and so that was like that was the first story of being a great manager
[00:16:40] being terrified and not paying attention to what system you're on
[00:16:43] so so and in this world you'll be you'll be logged into a Kubernetes box
[00:16:50] it'll be logged you'd be hacked into somebody's machine
[00:16:53] you have to be really really careful where you are so
[00:16:56] take that story with you and just remember to know where you are i spent a
[00:17:01] lot of time on that because i really really don't want you to make this
[00:17:05] mistake this mistake can cost a company thousands of
[00:17:10] dollars if not more if you take the wrong system down
[00:17:14] because you're just not paying attention you shouldn't be terrified of the job
[00:17:18] but when you get on the terminal there's a lot of power and with great power
[00:17:23] comes a lot of paranoia and responsibility
[00:17:27] okay so anyway so there you go that's the prompt
[00:17:31] so this is your first time i'm assuming this is the first time you've ever
[00:17:35] seen a command line prompt so there's one other thing to talk about and that
[00:17:38] is this little guy here you see how that's a dollar
[00:17:42] so what that is that usually the dollar sign
[00:17:46] means that you're a regular user you might have admin permissions on the
[00:17:50] machine but right now you're just using your
[00:17:53] regular permissions and nobody should be scared
[00:17:56] this is one you should be scared
[00:18:05] oopsie
[00:18:09] okay now see this this is it this is another example of a prompt
[00:18:15] so this is this is the default prompt for the root user
[00:18:20] of my in this case my mac right now i can seriously screw up my computer
[00:18:27] because i have root access you know q root got root memes
[00:18:33] right got root q sudu su make me a pass make me a sandwich can we show you
[00:18:40] that i'll show you that one really quick
[00:18:43] i'll show you uh sudu make me a sandwich this is this you can get t-shirts with
[00:18:49] this so make me a sandwich make that your set
[00:18:53] make it yourself sudu make me a sandwich okay
[00:18:56] it's kind of an in-the-no joke right so sudu stands for super user do that
[00:19:02] means do the command as a super user and in this case i did
[00:19:07] su which means switch to the super user and the dash means make it a login
[00:19:12] shelf so what i basically did there is i
[00:19:15] escalated i'm going to use hacker terms here i escalated my privileges
[00:19:20] uh explicitly to root on the machine that means i'm no longer as far as the
[00:19:25] computer's concerned i'm not rob anymore i'm root
[00:19:29] and you can do whatever you want on the system there there's a couple of things
[00:19:32] to note here one of them is is this is this hashtag
[00:19:36] the hashtag means that you're root and if you're on a cali linux system
[00:19:41] uh or any other system i'm actually going to show you a couple of the
[00:19:44] systems just by default so you can kind of look around
[00:19:46] but it tells you the user here this is your directory so tilde
[00:19:51] means home uh in on on a system like this you can see that i am not in my home
[00:19:58] i am in the user's home okay and we're going to enter
[00:20:03] we're going to learn is the cd command and a couple other commands as we go so
[00:20:07] and here's the user and here's the colon and this has at instead
[00:20:11] so you're going to see a bunch of different variations on the prompt
[00:20:15] and actually one of the reasons i want to do this is i want to show you
[00:20:18] uh podman run it uh let's type cali is it cali linux cali i think it is
[00:20:28] i think it's cali linux cali is it better remember what the name of the
[00:20:33] container is i can't remember which one it is
[00:20:40] i mean my my chat gbt probably knows what is the
[00:20:45] image for cali linux i think it's cali cali
[00:20:53] i don't have it on the system i'm going to pull it straight down so that's why i
[00:20:56] don't know what uh
[00:21:03] oh this is one of the reasons you installed podman
[00:21:07] cali linux cali rolling x-ray i can't they change it
[00:21:10] cali linux cali this is a dash no rolling so this is the the current one
[00:21:18] all right so what am what am i doing right now i'm using podman which you
[00:21:22] should have been so i wanted to show you this because this is color
[00:21:25] so uh this is a this is a prompt from a cali linux system
[00:21:31] uh which is you know the cali linux we'll talk about linux distributions later
[00:21:35] but cali linux is a a hacker you know security
[00:21:39] distribution is designed for it comes from offensive security where you can get
[00:21:43] certified in cali linux and get a job for the government or a bank or something
[00:21:48] uh which is still a job even though ai is kind of messing with it
[00:21:52] um so and this is how you run linux inside a container
[00:21:57] which is very common uh using podman which is a container engine compatible
[00:22:01] with docker that replaces docker in every
[00:22:05] responsible important way i'm just going to put it out there again
[00:22:09] don't use docker don't use it learn podman businesses do not use
[00:22:16] docker anymore if they're still using docker they haven't got the memo
[00:22:20] the docker is irrelevant broken and a horrible company
[00:22:23] and and there are many reasons for that that i'm not going to get into right now
[00:22:27] so make sure you learn podman and because that is the new normal default
[00:22:32] that comes from red hat which companies overwhelmingly trust
[00:22:36] more than any other uh distro out there uh second to that is probably Ubuntu
[00:22:42] and susie in in close third this is not me telling you my favorite distros
[00:22:48] this is me telling the distros you are most likely to encounter and have to be
[00:22:52] effective on as a tech professional in the tech world
[00:22:57] and that's your and cali linux is is the one for security
[00:23:02] uh it's not meant to be a server distro it's meant to be a tools distro
[00:23:06] and you'll notice i didn't mention arch and and we're not going to get into the
[00:23:09] distro thing right now i just want to show you the
[00:23:12] difference uh between the command lights so you can see that when you log into
[00:23:17] cali linux it dumps you into root so the thing to take away from this
[00:23:21] is when you are running inside of a container
[00:23:24] almost always because you're in the self-contained container that's
[00:23:29] supposed to be really safe and everything
[00:23:31] everything in the container is root so that for old people like me
[00:23:36] we really gristle on that we we don't like it because
[00:23:41] we grew up in a multi-user Unix environment where
[00:23:45] running as anything as root was considered super dangerous
[00:23:48] because if you make any mistakes as root you know people die or whatever
[00:23:54] so you don't use root you use studio as a single command
[00:23:58] this is still mostly about showing you the prompt but i also want to show you
[00:24:01] the difference between root and user usage so
[00:24:05] when you're inside a container being root is not something to worry about as much
[00:24:09] why because as soon as i let lead the container it's going to get thrown away
[00:24:13] it's called being a femoral which means it just
[00:24:15] doesn't matter it gets thrown away you do your things with it
[00:24:19] and then you throw it away it's like it's like spinning up a Unix machines
[00:24:22] a linux machine sort of doing your work and then throwing the whole thing away
[00:24:26] and then bringing another one up and then throwing that away
[00:24:29] that is the modern way to do work in the enterprise
[00:24:33] using containers we will cover containers more deeply later
[00:24:37] but that's that's just to give you an overview of why why it looks like the way
[00:24:42] it is right now uh root equals admin access
[00:24:45] yes i mean you can have admin access but
[00:24:48] until you invoke root you can't do the thing as
[00:24:53] admin and it's slightly different on windows because there's windows
[00:24:56] permissions and then there's the the linux permissions the wsl permissions
[00:25:02] and that's two separate systems on windows this is confusing for windows
[00:25:06] people because you you literally have two operating systems running next to
[00:25:10] each other when you're using wsl2 so
[00:25:15] if you have typed back from the terminal command line
[00:25:17] you're not using windows you're using linux
[00:25:20] okay so and then you can use your containers and all that other stuff
[00:25:24] so but just to note here so this is the randomly generated name
[00:25:29] uh of of the host if you actually wanted a a better name here
[00:25:34] um i think you can i think it's stash h because i may be able to remember
[00:25:38] uh i think it's stash h yeah if you do dash h you can give your
[00:25:43] your container a name uh and then start it up again
[00:25:47] um and you can actually uh give your containers
[00:25:51] uh ponman ls or ps will will show you all of your containers
[00:25:56] there are none running right now but you can do uh
[00:25:59] is it dash a what am i doing robert i don't
[00:26:04] use this command a lot there we go so here's all the containers that i've been
[00:26:08] running um they're the these these by here are the
[00:26:12] are the names that are given to them automatically
[00:26:15] if you'd rather not type in that crazy number over here
[00:26:18] uh or you can actually give them a name we're not going to get into that until
[00:26:23] we get into the container thing but i just wanted to give you that
[00:26:25] uh it's kind of a summary if you want to reconnect to the same container
[00:26:29] you can you can also do that we we are going to do containers because um
[00:26:34] the beginner boosts the repo is a container you can actually run that
[00:26:38] as a container um all right so uh we're going to
[00:26:42] go ahead and clear the screen clear uh clear the screen
[00:26:46] every time i do a command that you don't know
[00:26:49] you should be taking note of it either on a piece of paper
[00:26:52] or on your notes on github or in obsidian however you want to take your
[00:26:56] notes you should be writing that command down as we go
[00:27:00] there is a definitive list of every single command that you should know that
[00:27:04] i have been building over time uh that is actually in the boost if i
[00:27:08] remember right uh it's um
[00:27:14] it's been kind of an ongoing list because it's got so many things on it
[00:27:19] um it's clear did i say clear uh can you smash program interfaces like
[00:27:25] wire shark from the container uh it depends on that you can run
[00:27:30] certain applications from inside a container but a container is not
[00:27:33] an actual system it's it's an application and you know
[00:27:37] and in this case it's it's so it looks like lennox it's really not
[00:27:43] it just has it can have all the tools in it busy box for example is a single
[00:27:46] binary um i'm trying to find the mandatory commands
[00:27:51] so i do have a list of mandatory commands that we have been working on
[00:27:55] uh i noticed i don't have clear in here
[00:27:58] so if you are a veteran and you're watching this and you want to help by
[00:28:03] doing a pr against this that would be really helpful
[00:28:06] um and i'm going to sort everything there we go
[00:28:11] so do i have two clears in the area i do i just hadn't sorted it before
[00:28:15] uh i'm editing this file using vi and i'm sending all the content to a command
[00:28:19] and replacing it with its output we're going to learn all of that cool stuff
[00:28:23] uh eventually but this is where the list is uh so it's in docs
[00:28:27] slash man mandatory commands if you want to go look at that
[00:28:33] uh containers are used to modify the application
[00:28:36] no
[00:28:38] um yeah a container strictly speaking a container is an application running
[00:28:44] in a shrouded contained uh lennox container space
[00:28:50] so it doesn't have access to the system unless you grant it while it's running
[00:28:53] in the container but it it's um we're kind of getting down the
[00:28:57] container rabbit hole a little bit too much here i was just talking about
[00:29:00] prompts so um let's go i want to show you another
[00:29:03] couple prompts before we leave the prompting thing
[00:29:06] so let's run another another thing let's do uh i think we did busy box before
[00:29:14] um okay so this is a busy box um uh let's contain versus vm we're not going
[00:29:20] to talk about container versus vm right now
[00:29:23] virtual machine so uh and you see here we have a busy box
[00:29:28] uh system now this is very deceiving so if i type clear here
[00:29:34] i am now running inside of a busy box system
[00:29:38] and as i said a busy box is a variation of lennox
[00:29:41] ls you can list things but look at the prompt
[00:29:45] look at the prompt on busy box
[00:29:48] uh a shrouded environment just means that you're not able to go out
[00:29:52] uh and do anything to the system it's running on
[00:29:56] that's what it means yeah i mean you're not going to explain multicolp binary
[00:30:00] right now no god no you kidding me um a multicolp binary
[00:30:06] ish action is asking about is a single binary
[00:30:10] that operates differently depending on what its name is
[00:30:15] and when i say binary i'm talking about a program a program that runs
[00:30:20] does different things depending on what its name is
[00:30:24] and it can have lots of different names even though it's all the same binary
[00:30:28] on when that gets into links and stuff which i don't want to do
[00:30:31] we're talking about prompts right now on the terminal
[00:30:34] so here we go this is a single uh you see it just gets a hashtag that shows
[00:30:39] you have root and it tells you what directory you're in
[00:30:41] if i cd into bin we're going to go through bin and cd and ls and all that
[00:30:45] just a second so now i'm in the bin directory and i can type ls
[00:30:50] and i can see all the files here and by type ls-l it'll show
[00:30:54] that all the files are the same size and uh that might seem interesting
[00:31:01] they're also uh this this is the number of links to that file
[00:31:06] that's 406 links pointing to the same underlying
[00:31:11] binary and that's how you can tell us the same because they're all the same name
[00:31:15] same date and everything this is a multicolp binary
[00:31:19] every one of these entries in the directory they're called iNodes
[00:31:23] is pointing to the same binary code in a file inside the container
[00:31:31] and that means they're all the same the 406 is the number of hard links
[00:31:38] that are pointing to the same underlying thing
[00:31:41] you can delete any one of these and it will not affect the other ones
[00:31:45] it just delete it just deletes the link reference the iNodes
[00:31:50] that points to that space on disk that memory on on the disk drive
[00:31:55] so that's that's what that is now if you um i guess we're kind of talking about
[00:32:02] ls at the same time if you want it let's go try a different operating system
[00:32:05] linux operating system called alpine very popular
[00:32:09] very lightweight and for all the same reasons alpine is built off of busy box
[00:32:15] so built uh busy box and alpine are very close to being the same
[00:32:20] except for alpine has a different package manager that's how you install
[00:32:25] software and we won't talk about that at all but
[00:32:29] as you can see it has the same prompt and it's telling you what platform you're on
[00:32:34] again it's got a little more than busy box
[00:32:37] right so this is a linux distribution it's got more on it
[00:32:39] but if we do the same and we go to nabin cdnabin and we type ls
[00:32:43] you can see it's got green files in it or what's up with that
[00:32:46] okay these are symbolic links and the l over here
[00:32:51] means symbolic it means it's a link uh and hard links
[00:32:57] as you can see these these are different these are not multiple iNodes listings
[00:33:01] these are multiple files and an iNodes is a file
[00:33:06] but a file is a specific type of thing so if i delete this file
[00:33:12] something actually gets removed um and it's not just a removal of
[00:33:17] appointing to the same that's what a hard link is so
[00:33:20] in linux it's super important you understand this
[00:33:23] in linux there are there are actual files
[00:33:28] and then there are links to those files and there are both hard links
[00:33:35] which are that don't have the arrows and there are symbolic links
[00:33:40] and without getting into too much detail the primary difference between the two
[00:33:46] is that you can modify and mess with a symbolic link
[00:33:51] change it to point to something else uh symbolic links can actually point
[00:33:56] across file systems which is a concept you haven't learned about yet but
[00:34:01] uh a file system is a you know there's like multiple ways to store things
[00:34:06] let's say you had two hard drives on your computer um each one would be a separate
[00:34:11] file system um i'm simplifying but um and in
[00:34:16] order to symbolically link from the one file system to a file in the other
[00:34:21] hard drive you would you would must use a symbolic link to do that
[00:34:25] you can't do that with a hard link okay so um and you know those there there are
[00:34:32] other reasons to to look at this um but but that so
[00:34:38] uh in general you're going to want to use symbolic links
[00:34:42] um another reason uh it's just it's just so much easier to see
[00:34:46] what it's linking to a hard link is impossible to know
[00:34:50] what it's linking to i think there are commands to look it up
[00:34:53] but it's very hard it's much different because it's it's just an item but it's
[00:34:57] symbolic link is always showing you exactly what it's pointing to
[00:35:01] um so in this case you'll see that it is using the busy box binary
[00:35:07] as was the busy box that we just saw the difference is
[00:35:11] that this multicolp binary uses a symbolic link
[00:35:15] to point to it but the busy box program inside
[00:35:19] knows that it's being called through a symbolic link named sleep
[00:35:23] and therefore runs the sleep clothe inside of it even though all of them
[00:35:28] are the same binary that is a multicolp binary
[00:35:33] there are a lot of veterans in the industry who still don't know what that
[00:35:36] is
[00:35:38] uh i promise you there are people who still can't tell you what a multicolp
[00:35:42] binary is um and and i have made uh
[00:35:48] because you can create a sim link backwards my entire career yeah i do too
[00:35:51] we haven't we haven't talked about um actually adding links
[00:35:56] to something else um but um you know these are all the same thing
[00:36:01] um as a kind of a side note uh if you want it i created the bonsai
[00:36:06] project for making commands and one of the primary things i did there
[00:36:11] was to be able to make a single monolith multicolp binary
[00:36:15] that then you could put all of your favorite commands in
[00:36:17] and you could create a container that's much like alpine of your own creation
[00:36:22] and you can put your own hacks and your own file resources in there so it all
[00:36:27] travels in a nice happy binary um you know that's more for that the other
[00:36:32] people out there but hackers love it because they can put
[00:36:35] everything into a single binary and put that binary into a container and they
[00:36:39] can run that container anywhere with all of their favorite tools in it
[00:36:43] so if you want to get into making your own multicolp binaries this is extremely
[00:36:48] advanced stuff but you know keep bonsai in mind and uh bonsai b-o-n-z-a-i
[00:36:54] and uh go have a look but we were talking about prompting
[00:36:58] uh so that's all it really is yeah that's really all it is
[00:37:04] absolutely election year yep and uh and so then we have uh the hashtag
[00:37:11] and we have been but yet we don't know what user you are right
[00:37:14] and there are a bunch of commands to know what user are and all that but
[00:37:17] right now you just use the terminal for the first time
[00:37:20] and i've already blown you away by talking about multicolp binary because
[00:37:23] somebody asked about it so stay with me i promise you know if you need to
[00:37:27] pause the video or fast forward go ahead uh so here we are back on
[00:37:31] my computer um the only other one i wanted to show you
[00:37:35] was probably fedora fedora is a red hat linux distribution let's see what it
[00:37:41] looks like so this is copying down the container
[00:37:45] image and here we go so here's another prompt
[00:37:49] you see we're on root we see we're on the random thing
[00:37:52] this is very much a red hat thing red hat puts everything in brackets and
[00:37:56] then puts what director you're on right here
[00:37:58] but we're root everything else is the same
[00:38:01] so you know um every by the way every one of these operating systems
[00:38:06] uh does colors differently so like for example this one right here
[00:38:13] this you'll see that this is because it has set uid permissions which which
[00:38:17] you'd want to know about if you're a hacker inside it's one of the ways you
[00:38:20] can break into a system in fact i saw b7 doing this today
[00:38:24] um so you know you're going to learn a lot more about all of this let's we're
[00:38:29] just talking about prompts right now so we have looked at the
[00:38:32] interactive prompts from you know wsl2 which you've already looked at we did
[00:38:37] that last week uh from the base terminal on a Mac which is bash
[00:38:43] uh you can actually execute a different shell if you want
[00:38:47] uh you can run exact uh been z shell if you're on a Mac and run a different
[00:38:53] shell so z shell is a different shell we're going to talk about shell next
[00:38:56] that's why i'm going with this and you can see that the prompt is
[00:39:01] very similar but it's got a percent right for some reason z shell was chosen to
[00:39:06] use a percent instead of a dollar sign same thing it's just a standard user
[00:39:11] right uh if i do this do do dash it let's see what it looks like in z shell
[00:39:16] uh let's see what this looks like and okay so again
[00:39:22] really no distinction i am now running i wonder what my shell is
[00:39:29] oh i'm bash so that's interesting yeah it looks like it looks like on roots
[00:39:36] the root default shell is um yeah anyway let's go back to where we were
[00:39:41] okay this is kind of weird because i am running z shell even though
[00:39:45] i am in a shell on a Mac right so uh and there's my other window
[00:39:51] there's my cloud so let's open this up all right here we go again
[00:39:56] so just to review we've looked at multiple shell prompts
[00:40:01] uh from different systems so that you know you're comfortable on the command
[00:40:04] line okay now now we're going to start talking about
[00:40:08] um you know i've already talked to you about that the terminal is just an
[00:40:12] interface so here's some terms to write down
[00:40:14] tui terminal user interface a terminal user interface
[00:40:19] is simply that it is a way a user interface to a computer
[00:40:24] through the terminal that's what this is it's not to be confused
[00:40:28] with and i'm going to put these in my notes
[00:40:31] um let's go see if i can find it here so
[00:40:36] uh create a little dot files you can push my face
[00:40:39] set up tech lab okay let's actually put uh put one here
[00:40:44] um whoops and let's do this okay uh understanding
[00:40:52] the terminal terminal okay so i'm going to put some terms here
[00:40:59] so terminal user interface what is a terminal user interface
[00:41:07] tui uh what is a command line interface
[00:41:16] and uh what is a graphical user interface
[00:41:22] anybody have any others
[00:41:27] anybody have any others
[00:41:31] for a long time i had something called a conversational user interface
[00:41:34] um and i'm not going to list it here but that's actually where things are
[00:41:38] going uh with the assistance there are a lot of
[00:41:42] assistance there are coming up and um they have different names
[00:41:47] but i call it a conversational user interface
[00:41:56] uh cui um that's my name for it um i'm too type
[00:42:01] there this is becoming a thing is like cloud for example you can hold space
[00:42:06] down and just talk to it the whole time you don't you don't have to do any
[00:42:09] coding there is a terminal involved but it could have been anything that takes
[00:42:13] in the the content you know uh the reason is probably doesn't
[00:42:16] not gonna have its own category is because usually a conversational user
[00:42:19] interface is being implemented in a terminal or a
[00:42:23] graphic user interface so let's talk about all three all four of those terms
[00:42:27] three of the main ones so a graphic user interface is pretty obvious
[00:42:31] that's when you've got um you know you got widgets you got clickable
[00:42:37] things people love to fight about the best graphical user interface on
[00:42:41] Linux um don't get sucked into those time-wasting
[00:42:44] conversations if someone if you say your
[00:42:47] Linux user or you and ask you what your favorite desktop manager is
[00:42:50] just walk away because you have other things to do
[00:42:54] if they if they if they if they tell you all about how they think i3 is the best
[00:42:59] way to manage your windows just walk away and go do something that matters
[00:43:03] nobody cares or if you want to be snite about it you can say
[00:43:07] my terminal user interface my user interface is tmux
[00:43:11] and then like what's that okay we're going to talk about why that is
[00:43:16] because the interface that we are going to use exclusively
[00:43:20] for the beginner boost now that i introduced you to VS code
[00:43:24] and a little bit of you know web browsing in chrome which you can't get
[00:43:27] away from both of which are graphic user interfaces
[00:43:31] um we're going to be living in the terminal we're going to be learning
[00:43:34] terminal velocity it means learning how to do things in the terminal
[00:43:37] quickly um and we're going to talk about the
[00:43:41] relevance of the terminal in 2026 with you know AI and everything that's out
[00:43:45] there today um and there are many many people who are
[00:43:49] going to take exception to you using the terminal i
[00:43:52] regularly have to defend not just me but other young people who have decided
[00:43:56] to be more efficient than other people who are
[00:43:59] completely tied to VS code you know you make your own decisions if that
[00:44:04] if you want that to be you i'm not going to judge you but i'm going to
[00:44:07] look down on you for sure if you're just using VS code
[00:44:14] and you don't know how to rename files i'm using obsidian right now and people
[00:44:17] are already looking down on me because like why are you not editing all that
[00:44:20] stuff from the command line because it's less efficient
[00:44:23] you do you you do you do whatever's efficient for you
[00:44:26] all right so here we go um uh why was it not z-shell for it
[00:44:31] when you do echo shell because the default shell for mac is
[00:44:35] bash so like you're judging me i am judging you
[00:44:40] who am i kidding if you use VS code and you're judging
[00:44:44] you best believe i'm making fun of you
[00:44:48] i've had people like laugh at me for using them
[00:44:52] i've had that happen at work and i'm like okay
[00:44:58] hold my bear the default shell for root is not z-shell
[00:45:03] that is not the default shell for users on max the z-shell
[00:45:07] but not root it's kind of interesting right
[00:45:11] that that's what it appears to be i don't know why
[00:45:15] that it's why it appears to be uh you think charlotte's making come back
[00:45:20] thanks to c l ai agents yes and and and i was going to talk
[00:45:24] about that later but let's go ahead and talk about it now
[00:45:26] since fish are brought it up um this i as you can see here i'm
[00:45:31] going to i'm going to demonstrate something to you really quick
[00:45:33] so uh right now i have this is this is this is me
[00:45:39] using clod which is the leading tool agentic tool for doing
[00:45:44] development of all kinds uh operations as well as hacking
[00:45:48] and what i want to demonstrate to you is the use of a tui
[00:45:51] that is integrated with uh agents
[00:45:55] so something an interesting phenomena has been happening it's been popping up
[00:45:58] in february of 2026 in particular because the agentic
[00:46:03] ais the ones that operate on the current environment that means they have
[00:46:07] access to everything you have access to which is scary and wonderful at the
[00:46:12] same time all use the terminal in fact um
[00:46:16] clod code is the number one and that's what this is and then you have
[00:46:20] github command line co-pilot extension also competing with clod almost a
[00:46:25] verbatim copy of the ui and they are both terminal ui's
[00:46:29] now something that the clod ui has added is a conversational
[00:46:33] user interface and i want to show this to you
[00:46:36] so i can actually do this um and again the point of all of this is to
[00:46:41] illustrate why the terminal is important in 2026 and
[00:46:46] how dumb people that are on Linus Linus does tech you know making fun of old
[00:46:53] people who use the terminal i was there for that actually
[00:46:57] are really clueless because that's how all work is getting done today
[00:47:02] um i'm going to go ahead and and do this and i'm going to go ahead and do a
[00:47:06] brew upgrade you don't know how to do this yet but
[00:47:08] this is how you you install and upgrade software on a Mac
[00:47:13] actually i think you did learn brew it before
[00:47:17] so we're going to upgrade uh clod on here uh cast whoops i always have to do
[00:47:22] clod code everybody's forget that so we're going to upgrade clod again the
[00:47:26] point here is i want to show you as Fisher said
[00:47:29] how important the terminal is for coding with ai
[00:47:33] and i don't have to tell you coding with ai is the only way to code
[00:47:37] in 2026 if you're doing anything other than that
[00:47:41] you'll either be fired or you'll be left in the dust
[00:47:44] and i am not exaggerating i am not exaggerating this is
[00:47:48] this is how it is so you know just get used to it so i'm going to rerun clod
[00:47:55] now that it's been upgraded uh to do its thing
[00:47:59] so i can show you want to run that because i can do all kinds of things
[00:48:02] uh and then i can say i can now because voice has been
[00:48:05] enabled i can actually hold the space bar down
[00:48:08] and if you don't know about this it's / voice to enable it
[00:48:11] and that toggles voice mode so that you do voice and it'll add it
[00:48:16] um and then i can say um what should we say
[00:48:21] uh let's say something i wanted to do actually
[00:48:25] i want to say uh can you make a plan for watching what's in my chat and
[00:48:31] responding to commands from certain users
[00:48:35] oops can you make a plan wait voice is not working today
[00:48:39] so it's working hello check one two
[00:48:43] that's not working today
[00:48:47] voice is spinnicky sometimes that works as it doesn't
[00:48:50] let's try again hey there are you there
[00:48:58] hello hello it's so quirky
[00:49:09] check one two check i wonder if it's not connected to my mic
[00:49:13] somehow hello checking well it's not it's it's it's got a
[00:49:21] problem right now
[00:49:25] hey can you take a look at what's going on now
[00:49:28] i'm just listening space down it's not working
[00:49:37] i'm gonna try one more time because it's really cool and it works
[00:49:42] they must have just added this the github command link tool doesn't have it
[00:49:45] um hey are you there now
[00:49:52] it's not working hello check one two three four check
[00:50:00] i think the ai the interface must be bad
[00:50:08] loud and clear i'm burning tokens for no reason
[00:50:13] can you prepare a plan
[00:50:18] i wonder if it's because i'm streaming
[00:50:22] here that's right all right we just pretend i'm not talking to it
[00:50:27] all right prepare a plan for adding a a bot that listens to all command uh to
[00:50:41] all lines from twitch and responds to certain commands
[00:50:49] by running a command from a configuration file
[00:51:00] mapped to the arguments you still have to type unfortunately
[00:51:10] it finally did hear me yeah it took a while though
[00:51:14] so this is just a really quick demo of what coding looks like
[00:51:19] in 2026 um it's reading my entire github repo
[00:51:24] it's analyzing everything in here it's reading my read me md file
[00:51:28] it's particularly paying attention to my agents.md file
[00:51:32] which gives my preferences like i want to do this and go or i want to use
[00:51:36] for space indents and all those things so that it comes back
[00:51:40] and it's burning quite a few tokens right now
[00:51:43] uh preparing an entire application an entire twitch bot
[00:51:48] that would listen to your commands that are coming from twitch
[00:51:52] and play a clip or do whatever i want to
[00:51:55] based on a file that has what the message is and what the thing is i want to run
[00:52:02] so it's going to write a plan for it's not going to make any changes for it
[00:52:05] yet it's just going to write this big long plan
[00:52:08] and it will take some time because i gave it that's a pretty big prompt
[00:52:11] uh i'm asking it to do quite a bit and there are people who regularly will
[00:52:15] use these kind of tools sometimes they'll use multi-agent tools
[00:52:19] and they'll they'll start off a thing like this and they'll go to bed and they'll
[00:52:22] wake up and the whole thing will be done in fact there have been three
[00:52:25] really substantial uh news articles recently this last week in the mail
[00:52:30] of people doing this uh to to create uh replicas of entire
[00:52:37] software as a service providers that they were paying 300 bucks a more month
[00:52:40] more and now they're paying nothing because they replaced the entire provider
[00:52:45] by uh an application that took them a cost of about two hundred fifty dollars
[00:52:49] in tokens uh to generate for them and then it ran all seven hundred of their
[00:52:54] test cases perfectly this is modern development
[00:52:58] and i wanted you to see this really early in this year's beginner boost
[00:53:02] because in 2026 the agent the gentic ais have gotten so good
[00:53:06] that this is the new normal i coded two weeks worth of code
[00:53:10] in a day the other day and um you know
[00:53:15] so here we go creates the files new twitch bot you see how this is all
[00:53:18] text by the way this is all in markdown which is why markdown is so
[00:53:22] important update ages both a chat bot dot sample
[00:53:25] uh cash twitch bot token okay uh it's gonna do that
[00:53:30] it's gonna make a twitch bot it's gonna add a twitch bot helper load commands get
[00:53:34] token irc dispatch uh okay so let me ask some questions
[00:53:38] will will this be using uh the twitch uh uh
[00:53:45] command tool and i because i didn't see if it was going to use that or not
[00:53:51] and you know you can interact with it and give it all the pronouns
[00:53:55] only for token management twitch token blah blah to cash credentials the twitch
[00:53:59] token page ready to correct the actual irc connection is a
[00:54:02] Rob's website one of the web socket directly to the thing
[00:54:05] this is so cool because web socket is a relatively new tool
[00:54:08] uh it's a command line tool that you can use to talk
[00:54:11] directly to to uh web sockets over irc
[00:54:15] which is really freaking cool um it's which la doesn't have a chat
[00:54:18] listener built-in okay good and you can interact with your
[00:54:22] this is all using a terminal user interface
[00:54:24] this is why it's important if you're having the feeling right now like
[00:54:28] i want that two day go for it go for it you can start playing on this today
[00:54:33] you could install cloud code you can install github co-pilot
[00:54:36] any of these tools you can install them today and start playing with them
[00:54:39] uh you know how to use brew the package manager
[00:54:42] if you're on WSL 2 you need to know how to use APT package manager
[00:54:46] um and i think we have already talked about package management
[00:54:50] but uh it's probably worth uh going back to that in a bit
[00:54:55] um so yeah uh let's see sometimes it'd be
[00:55:02] completely shocking when it runs a muck it can definitely run a muck yes
[00:55:05] how expensive is cloud um i i'm paying 200 a year
[00:55:10] you can you can pay uh a different you can day pay a different amount for
[00:55:14] for different different kinds yeah web socat is so cool isn't it
[00:55:18] it makes it's fun because it makes it really fun to write
[00:55:21] web sockets applications from the command line
[00:55:24] um i'm not going to run this but actually end going to run this later
[00:55:28] uh this is a project i've been working on because i want to be able to play
[00:55:31] clips like this uh from the command line and from the twitch
[00:55:37] users to be able to play their own clips
[00:55:39] so i mean the the cloud's going to do the whole thing for me i'm not going to
[00:55:43] code pretty much any of it do i need to be able to read the code
[00:55:46] yes so learning the terminal as you can see
[00:55:50] doesn't get you over the need to be able to read code and stuff so we'll get to
[00:55:54] that as well eventually uh there's a $20 a month plan as
[00:55:59] well the highest cloud subscription is 200 a
[00:56:02] month i am not i am not i'm not on the 200
[00:56:05] a month subscription i'm on the $20 a month
[00:56:08] so i think i think i am i better not be on the 200 a month
[00:56:14] i always try and cloud out i may have signed up for the wrong one
[00:56:16] um but the people that use cloud at that level
[00:56:20] they easily make their money back they're they're using cloud in ways that
[00:56:24] that save tens of thousands of dollars it's insane so
[00:56:29] uh aren't going to need cloud max right so by the way
[00:56:33] you don't need cloud at all um unless you're going to go into this kind of
[00:56:37] thing um you should start with chat gpt because
[00:56:40] that's where you're going to ask questions you can actually use chat gpt
[00:56:43] and do development uh and copy and paste between the two i did i did an entire
[00:56:48] application that way an entire twitch overlay
[00:56:50] just a live coding in chat gpt and cutting and pasting the code over
[00:56:56] uh it's much much harder but it's also very safe
[00:56:59] it's much safer for a beginner um i can't really recommend to beginners
[00:57:03] that they jump full on into cloud um you know until they learn a little bit
[00:57:08] more about how powerful the terminal is um you remember that thing i told you
[00:57:11] about shutting down the server well when you're
[00:57:14] using an agentic AI like i'm doing with cloud
[00:57:17] cloud has all the permissions you do that means if you have access to the
[00:57:21] server and you've made it so you can log in with that
[00:57:24] a password that means cloud has access to your
[00:57:26] mail server and if you so if you're going to jump in i was just doing is to
[00:57:30] show you the power of the terminal but i really want to caution you as a
[00:57:34] beginner you know really don't set up yeah just do that for me
[00:57:39] make sure you're validating what's happening because it has access to your
[00:57:42] tokens and has access to your bank account statements
[00:57:44] it has access to everything that you can access on that computer
[00:57:49] so before you get into agentic AI on your personal laptop
[00:57:54] be very careful most people that are doing this development are doing it in a
[00:57:58] safe protected environment and it doesn't have access to their
[00:58:02] life and everything else so i that's the only caveat i'm going to say i just
[00:58:06] wanted to show you how powerful this is and why it's relevant for the terminal
[00:58:10] UI um by the API fund right okay so it might be
[00:58:19] helpful to know what a package manager is versus dmg images for
[00:58:22] vinter Mac users yeah um well we've talked about installing
[00:58:26] stuff on your computer um let's continue to talk about how to
[00:58:31] navigate around uh and then we'll take a break
[00:58:34] and then and then if we have time we'll talk about
[00:58:37] software management installing software from the command line
[00:58:40] and managing it uh as a part of it that's kind of administration we talked
[00:58:45] about it a little bit already but i kind of want to revisit that in a more
[00:58:47] exhaustive way it's more important that you take away
[00:58:50] right now um you know that you know what what we're doing
[00:58:56] we i've been talking for an hour so i'm going to take a break i'm going to
[00:58:58] pause the video and we'll be right back in a bit
[00:59:02] after a much rather long break we are back um and i did add a few things here
[00:59:08] just to let's give you an idea of what's coming
[00:59:11] we're going to talk about unix Linux processes and how to edit files and
[00:59:14] it's terminal uh we're not going to do that today though
[00:59:17] so already we covered just as a recap we covered what a terminal is and why you
[00:59:21] care you know uh use of it in agentic AI how to
[00:59:25] decipher the symbols in the cli prompt and the different types of
[00:59:29] interfaces that you'll hear use um i neglected to talk about something
[00:59:34] really important the distinction between a terminal user interface
[00:59:37] and a command line interface this is a very subtle distinction but it's
[00:59:41] often mistaken and used wrongly so a terminal user interface is
[00:59:48] anything that uses the terminal anything so like these species
[00:59:53] they're using the terminal user interface right
[00:59:56] and in fact um in a terminal modern terminal this is
[01:00:01] pretty interesting fun fact uh in a modern unix terminal we're not going to
[01:00:05] get into the history where terminals came from i really want to do that but it
[01:00:08] would be a waste of your time if you want a really great rabbit hole
[01:00:12] go look at how closely related the modern unix and linux terminals are
[01:00:19] to the teletype machine in fact certain devices are still called tky
[01:00:25] and at the end of every single line is a carriage return and a line feed
[01:00:29] that that is a reminiscent of the original teletypes
[01:00:33] it's a super fun entertaining rabbit hole and i'm not going to put you through
[01:00:37] that right now because that's not going to get you a job
[01:00:39] it's just super cool so make sure you understand it
[01:00:43] but but in under but when you understand what a terminal does
[01:00:47] when you're watching the fishies here we're watching a lot of little
[01:00:51] certs they're called cells and so the entire terminal is divided into
[01:00:55] rows and lines not columns and um is that right don't i say
[01:01:03] that right it's the columns and lines i can't
[01:01:08] remember for some reason they it's not rows and columns though
[01:01:13] it's it's one of them is lines you'll you'll run into that later
[01:01:16] um and so the point i'm trying to make is every single one of these
[01:01:22] is made of a cell you can actually select one you see how that little cell
[01:01:26] kind of shows up for a little while and the cell is
[01:01:30] you know two by one it means it's you know there's two on the top and then
[01:01:34] you can actually split it in half and these little fishies that's what they
[01:01:37] do they split that in half and that's the size to to put a character
[01:01:42] right so a terminal user interface is anything that uses this idea
[01:01:49] of a terminal which is divided into you know two by one
[01:01:54] cells that fill the screen and um and you can you know look up those
[01:01:59] things uh what is it echo lines i think it is
[01:02:04] yeah echo lines and is it rows i think it might be calls
[01:02:09] is it called what is it lines is it rows
[01:02:14] damn it let's see how the one i can't remember what it is
[01:02:21] there's something besides lines and there's the millions of ways of looking
[01:02:25] this up and if you want to do some really fun animation which we will
[01:02:27] eventually do you can animate by you know putting your terminal into
[01:02:33] what's called cursor's mode and you can poke and you know just like you figure
[01:02:37] on an old-school 1980s pixel you know computer and and you can poke the
[01:02:43] different pixels but instead of pixels there are the little cells and that's
[01:02:46] how that's how the fishies work right and um whoops that's how the
[01:02:52] fishies work is how sunrise works watch your eyes
[01:02:55] this is how sunrise works and you can have a lot of fun with this you can you
[01:03:00] can play entire video games just using the text interface
[01:03:03] um you've already seen how clod uses interface um to do some some kind of
[01:03:08] cool things um in order for me to change topics
[01:03:11] on the on the command line i use a kind of a mixture of the command line and
[01:03:16] the terminal which i'll get to that distinction in a second
[01:03:19] but i can do t-enter and i can enter in this actually a
[01:03:23] t to a terminal user interface that allows me to type like
[01:03:28] you know to simplify the number of things until i get to the one i want
[01:03:32] it's called a fuzzy finder and then it picks that thing and changes the topic
[01:03:36] um that is a terminal user application so
[01:03:40] anytime the the entire screen is being taken over or you're manipulating a
[01:03:45] whole bunch of things that are not just on a single line
[01:03:49] that includes that when i just did that is a terminal user interface
[01:03:53] if you are just is it columns with a full word
[01:03:57] okay columns let me go columns yeah there we go
[01:04:02] so you can do the math and everything and center and all that
[01:04:06] um and so a command line editor like the one i was using
[01:04:10] uh let's see if i can get back there cda boost
[01:04:13] so this is the same file um that i've been working on docs
[01:04:18] uh read me so this is the same file that i've been working on here and then you
[01:04:22] can see the same file is in the graphic user interface
[01:04:26] on the right and on the left it's in a terminal user interface
[01:04:29] now there are advantages to the graphic user interface one of them is is i can
[01:04:33] click here and i can do this thing here that can be done in the editor that i'm
[01:04:37] using but i have a disable on purpose because
[01:04:41] you know but i when i'm the point of making is that this is a terminal
[01:04:45] user interface this is an editor that uses the whole terminal
[01:04:48] i can go up and down all the lines change that is not a command line
[01:04:52] interface the command line interface is distinguished from the terminal in that
[01:04:57] it's only the single command that's it so so like when you type
[01:05:03] ls that is one command using the command line interface this is
[01:05:08] sometimes called um what is it uh and i what's the loop
[01:05:15] called god i can't remember it now uh the print evaluate repeat what is it
[01:05:23] read loop ripple read evaluate print loop
[01:05:28] ripple in fact there's a company called replits
[01:05:31] that i used to kind of work for not that um
[01:05:36] that you know capitalizes on that acronym put that one in your thing
[01:05:40] ripple it a read evaluate print loop in fact
[01:05:44] you can write your own command line interfaces uh
[01:05:49] sometimes known as shells by doing this okay
[01:05:54] then we're gonna we're gonna come back to the idea of the shell when we start
[01:05:56] programming and we start writing in the shell and bash we're going to do that
[01:05:59] later but um a command line interface it reads a command
[01:06:05] and and then read evaluate and then when you hit enter it evaluates what that
[01:06:09] command is and then it runs it in this case it
[01:06:12] dumps that stuff out to the screen which we're going to talk about when we talk
[01:06:15] about processes next week and then it loops back
[01:06:19] and it waits again for the next thing and you can write this
[01:06:23] you can write your own shells you can write your own shells that have these
[01:06:26] read evaluate print loops that is a command line
[01:06:29] interface so um i feel like i yeah think of reptiles
[01:06:34] right you'll never forget it um that's that's a command line interface
[01:06:38] right it's just read evaluate print loop and um they're super useful
[01:06:43] that they're using all kinds of things um they're obviously they require a lot
[01:06:47] less resources than a terminal because you don't have to have this
[01:06:51] controller behind the scenes operating you know where all the fishes go at
[01:06:55] every given moment and that's why a terminal in linux and unix
[01:07:00] has two modes one of them is the end curses you know
[01:07:04] mode which is where you can just plot the lines and say where to draw
[01:07:07] and the other one is this command line idea of you know
[01:07:11] read evaluate print loop so you can when you're writing terminal applications
[01:07:16] um you can decide which one you want to use you can you know be really fancy
[01:07:20] and uh like the fuzzy finder was or like you know the t-mux
[01:07:24] or like clawed or or like the windows selection see this is a terminal
[01:07:28] user interface i'm picking which window to use we're going to learn t-mux later
[01:07:32] but this is you know how i go up and down this is again a terminal user interface
[01:07:36] i i've really nailed this point home at this point so i'm going to i'm going to
[01:07:39] move on uh but that yeah all of that uses something called end curses if you
[01:07:43] want to put that in your notes n c u r s s s s s s s s that is the library
[01:07:49] that is the standard for addressing the terminal as if it were
[01:07:54] you know basically uh you know the thing made up a bunch of cells
[01:07:59] okay so we've covered that we've covered graphics versus
[01:08:05] uh to uh command line applications and now it's time to do the last thing
[01:08:09] before we leave today and that is understand the
[01:08:13] files system okay and so the first question is well what's a
[01:08:17] file now we already talked about this sort of
[01:08:20] i think most of you will already know what a file is
[01:08:23] um the files can be in your in your graphic user interface you probably will
[01:08:27] have something like a finder and you can see these are all the files
[01:08:31] uh mac makes it particularly hard to see the underlying file system
[01:08:36] by showing you something called recents like for example
[01:08:38] all of these files that are here they all live in a different place
[01:08:43] they're all in a different place on the file system and i have a story about
[01:08:47] this i'll tell you the quick version um i had a
[01:08:50] a mom that was trying to relearn it was trying to learn how to do tech stuff
[01:08:54] and they could not do anything through the file system
[01:08:58] uh because they just they couldn't they couldn't see anything
[01:09:02] and um they had no idea what the file system was
[01:09:06] and i tried to describe the internet as being
[01:09:08] uh a worldwide system of files and they had no point of reference and it was
[01:09:13] because of mac because the mac that makes it very
[01:09:16] hard for you to see that this file is inside of this
[01:09:20] directory or this folder unless you're using the the the the
[01:09:24] desktop which i'm not going to show you but unless you're using the desktop
[01:09:27] you're not going to see any of that but when you get under the hood so i
[01:09:30] actually got under the hood like i'm about to show you
[01:09:33] which is in the terminal and i showed her that and she immediately said
[01:09:36] show me that she she thought it was so powerful
[01:09:39] uh to understand how to look at all these files
[01:09:43] and how to do something simple like move all the files that have this string in
[01:09:48] the name you know this this these letters in the name
[01:09:50] from one directory into another one was one command
[01:09:53] if not knowing how to do that from the terminal meant you would have to drag
[01:09:57] everyone and go click on them with control and click them all and then
[01:10:01] drag them over right and when i showed her how to do this with a single
[01:10:05] command she was like show me that so that's what we're going to learn today
[01:10:09] um right now we're going to learn about the file system and how to interact with
[01:10:12] the file system and how to manage files i have another story about that as well
[01:10:17] um yeah so windows and mac are kind of trying to
[01:10:21] save you from the complexity of the file system and really you need to
[01:10:24] understand it so the file system is the system of files
[01:10:28] and what are files um and this this i'm going to use the
[01:10:32] technical terms for this because i want you to write them down and understand
[01:10:35] them you can actually ask your UI you're you're you're i'm going to do it for
[01:10:39] you because i want you to get in the habit of doing this
[01:10:41] okay i'm going to make a new query so i did command and i'm going to say
[01:10:45] what is the unix file system all right now i i'm going to talk about this
[01:10:51] but i'm really curious to see what this would show you
[01:10:54] uh did i click my update button please come back Chloe
[01:10:58] Chloe come back where are you okay so i did the little upgrade thing
[01:11:04] what is the unix file system so i'll see how well she explains it
[01:11:07] and then i'll tell you what i think it is
[01:11:14] uh pipe anything okay you don't know what pipe means yet
[01:11:18] then by windows is file cabinet with labeled drawers
[01:11:22] unix is more like living tree this is stupid
[01:11:25] okay good thing i asked what the file system is
[01:11:29] is a system of files and every file
[01:11:35] it can be a different type of thing mostly it can be like in this case we
[01:11:38] have text files in here um and so the
[01:11:43] you know i'm going to use all these commands and we're going to explain
[01:11:46] the commands okay um and you can see what the files are
[01:11:51] you can use their commands like file uh that will show you what type of file
[01:11:55] it is uh you can do a file on dogs and it'll tell you it's a directory
[01:12:01] okay now we're going to use these terms so a file
[01:12:05] is anything in the file system
[01:12:09] yeah the part that's going to break your brain a little bit
[01:12:12] is that everything that's in the unix file system
[01:12:16] is a file including the directories and i hear me out
[01:12:20] okay so in unix and linux a lot of people will not explain this to you
[01:12:25] but i i want you to understand this um
[01:12:29] all of this stuff is you can imagine if you've ever used a spreadsheet
[01:12:33] okay if you've ever used a spreadsheet and you've got a whole bunch of columns
[01:12:37] and rows right and you put things in that spreadsheet
[01:12:42] and then you have another spreadsheet and that spreadsheet's got a bunch of
[01:12:45] things in it right and maybe one of the columns on one of the
[01:12:49] spreadsheets points to the top of that other spreadsheet
[01:12:55] okay and maybe one of the things in one of the spreadsheets
[01:12:58] points to a single item in the other spreadsheet
[01:13:03] that is exactly how the unix file system is implemented
[01:13:08] and under the hood they're called tables or file system tables
[01:13:13] and sounds like Chloe doesn't know about that she doesn't know how to
[01:13:16] explain it but these are you can think of them
[01:13:20] as if you had these sort of spreadsheets that had lines and rows and each list
[01:13:25] h1 had all of those things in it so when i do
[01:13:28] ls to list all the items in here you can think of this as listing
[01:13:33] every one of those lines inside of that sort of table we'll call it
[01:13:38] right and that table can to each one of the items in the table
[01:13:43] is called an i node write that down nobody will teach you this
[01:13:49] in your first year and i'm going to teach it to you
[01:13:51] okay though i oh it's just all files no it's all
[01:13:54] i nodes and the reason this is important is because
[01:13:59] everything in unix and linux is an i node and i mean
[01:14:04] everything everything the the display terminal adapter
[01:14:09] the it's one of the devices and processes the network connection to the internet
[01:14:14] every single one of those things is an i node
[01:14:18] or is or is a virtual i node and it is so critical that you
[01:14:24] understand this at every level at every level you need to understand
[01:14:27] when it comes to understanding how to manage the file systems
[01:14:31] when it comes to understanding how to deal with them when they get too full
[01:14:35] or or whether they're running over the network and it's not really on your
[01:14:39] computer and or if you run out you know that table
[01:14:42] guess what it has a limit you can run out of space
[01:14:45] and all of a sudden you get errors that say can't write any more to the more
[01:14:49] more i nodes out of i nodes like what the hell is an i node
[01:14:52] well now you know what they are and i node is an entry it's one entry
[01:14:58] in a table that represents and i'm that part i'm even that part i'm over
[01:15:03] simplifying but i want you to get your head around it
[01:15:05] that it's it's it's tables one entry in the table
[01:15:09] for this specific directory and each one of those lines you can have
[01:15:15] you can have items in that table that point to
[01:15:18] other items okay so so that that is that is super important that you
[01:15:25] understand that okay so now that we know that i can
[01:15:29] describe to you the difference between a file
[01:15:34] and a directory and when i said everything is a file
[01:15:40] what i really meant to say is everything is an i node but you didn't know what an
[01:15:44] i node was now you do and i node is an entry in the
[01:15:48] table of things that are here and those things are
[01:15:52] there's many different types of things so one of the things is a text file
[01:15:57] and so we have readme.md and you can actually use the file command
[01:16:01] write that one down the file command will tell you exactly what type of
[01:16:06] i node it is it will say is the readme file what is it
[01:16:10] okay the readme file is a Unicode text file with very long lines blah blah
[01:16:15] now if you were to if you were to access actually look at the i-nodes in the
[01:16:19] table and there's commands for that but if you were to look at the actual i-nodes
[01:16:22] in the table it would show you the file type
[01:16:26] and you could figure that out um
[01:16:30] enough for the thread yeah so there there are many
[01:16:34] other file types so here's i already did this once we'll do it again
[01:16:37] so as you can see the docs directory and into help us it's also showing us here
[01:16:42] that the color is different but this is much really important
[01:16:45] you see this thing here this tells you that this i node because directories
[01:16:50] and files are so common that tells you the type of file is
[01:16:53] d is the directory okay now once a file becomes runnable
[01:17:00] that means it's a it becomes a program that can be run
[01:17:03] uh so we'll type which ls there's been ls so if i type ls slash been ls
[01:17:09] you'll see that this is a different type of file and it's also read what's up
[01:17:12] with that right this file is an executable
[01:17:16] and we're going to talk about permissions at length later but
[01:17:19] what i want you to see is that even though this looks kind of the same
[01:17:24] as this other text file over here it's different type of file
[01:17:28] now i don't think this has a different i-nodes entry type
[01:17:31] but um you can actually look at it this way
[01:17:35] you can use the file command and you can see exactly what type of file it is
[01:17:39] this is the file command and understanding what type of file a certain thing is
[01:17:43] is critically important if you're a hacker because and they'll this will be
[01:17:47] all over on the hacker tests because sometimes people will try to make a
[01:17:50] file look like another type of file and you can use the file command
[01:17:54] on the file to see what it is and i actually did this
[01:17:59] to catch a hacker who broke in to my my mail server
[01:18:04] and 2000 and i actually reported them and everything it was
[01:18:09] i was fun they'll talk another day i'll talk about that
[01:18:12] um because they had put a file into a different place
[01:18:17] thinking that i wouldn't find it so remember how i said everything is a
[01:18:21] file well let's look at some really weird i-nodes
[01:18:25] and again this is not something any book is going to teach you in the first
[01:18:30] year i think you should know it from the beginning
[01:18:33] and so let's go into it let's go into the nethers of the unix file system
[01:18:38] we're going to go into slash proc now we don't
[01:18:42] oops uh there's is there no proc because they're not on linux
[01:18:47] i forgot what is it is it slash what is it on the unix
[01:18:51] on linux i that's okay let's let's do linux
[01:18:55] because i know it if you're on wsl 2 you can go into
[01:19:00] slash proc and it'll work what what is it on on uni on i'm
[01:19:04] mac i don't know i usually use linux here
[01:19:09] let's do docker pon man no let's do pon man uh run it let's do
[01:19:15] what should we do Nora let's do cali's pre-year
[01:19:21] cali linux yeah let's do that all right so
[01:19:26] let's see in his slash proc all right so this doesn't exist on linux i didn't
[01:19:30] know i didn't exist on windows windows okay
[01:19:34] the vsl is the vsl is linux and uh this container is linux
[01:19:39] um mac is unix which is very close but they're not the same
[01:19:45] so uh but as far as in terms of like coding and stuff you can do everything
[01:19:48] over there so but in slash proc what i wanted to
[01:19:51] show you is everything's a file this goes for unix too i just don't know
[01:19:55] the location on mac um so you see all these different
[01:19:59] things in here they look like pretty interesting
[01:20:03] it's like they're owned by nobody what's up with that
[01:20:05] like what's but there's like lots of different kinds of things in here
[01:20:09] um slash proc doesn't actually exist
[01:20:13] and uh the other three days they're all on youtube
[01:20:16] so um and so the slash proc is what's called a virtual
[01:20:25] file system that means that the kernel elinix kernel
[01:20:30] is providing you command line access to stuff that it knows about
[01:20:39] in its running kernel in memory it's running inside the computer
[01:20:43] and so this is all of this stuff here it looks like
[01:20:47] it's a file system it's actually not really there
[01:20:50] and it's called a virtual file system that's provided by the kernel
[01:20:54] so that you can interact with the system itself
[01:21:00] the thing that's really amazing about this is why it's so important that you
[01:21:03] understand file systems and unix and linux
[01:21:06] because everything is a file you'll hear this over and over again
[01:21:10] that means and i don't know i'm really really not kidding
[01:21:13] when you write low-level software that needs to interact with the kernel
[01:21:17] in some way like to deal with processes which we'll talk about next week
[01:21:21] you're interacting with the underlying file system
[01:21:25] the proc file system everything interacts directly through the proc
[01:21:29] file system there's not the system calls everything that needs to be done
[01:21:32] operates against the spiritual file system so it the the interface between
[01:21:37] everything and what is actually in the brain of the computer under linux and
[01:21:41] unix is through files it's through the file
[01:21:44] metaphor the file paradigm i suppose so
[01:21:49] um yeah so so these are these are all the different things that are there
[01:21:55] um and they're dynamic so you know we'll get into more about what those
[01:21:59] all are but they're actually not really there so most of the time when you're
[01:22:03] dealing with a file system you'll be dealing with one just like we are here
[01:22:07] and you'll be dealing with with files and i know it's directories and files
[01:22:12] that are actually being stored on disk and at the risk of losing you
[01:22:19] i'm going to show you what that means so if you type um
[01:22:24] df it will show you the disks so there's a command you can put in there and
[01:22:32] i this is pretty much the level of complexity
[01:22:36] that i want you to understand before we go down the really deep rabbit hole of
[01:22:42] mounting file systems and virtual file systems and all that stuff right
[01:22:47] most of the time it most of you understand what a hard disk is
[01:22:51] a hard disk can be either real like actually
[01:22:56] hardware in your computer or it can be virtual which means it's you know there's
[01:23:01] ram which is uh you know how much memory your computer has
[01:23:05] and that a bit of that ram gets turned into what looks like a disk even though
[01:23:09] it's not really a disk and that's the difference between
[01:23:13] virtual um you know a ram disk they call it but in every case
[01:23:20] anything that you're going to interact with that has a way to be stored
[01:23:25] that doesn't include slash proc right that stuff is all virtual
[01:23:29] anything that can actually receive something and store it
[01:23:33] uh temporarily or permanently every computer gets
[01:23:37] turned off has a device and that device is also a file
[01:23:43] you see where this is going a device is an i node in fact you can
[01:23:48] you can do file dev uh disk uh three s one s s one
[01:23:56] and it will show you that it is a block special device type
[01:24:01] remember i talked about the tables and the i nodes
[01:24:05] well under dev dev is another virtual uh file system that means it's not real
[01:24:13] but it represents all of the hardware devices
[01:24:16] on your computer when i said everything's a file i
[01:24:20] mean everything is a file including the hardware devices in your computer
[01:24:25] they're all addressable as i nodes in a table
[01:24:30] as i just showed so dev disk at desk three s one s one
[01:24:34] this is an i node it's a virtual i node but it's still there
[01:24:39] and that represents a block special device block devices are devices that
[01:24:44] can be written to and can be stored you know you can pull stuff out of them
[01:24:49] and we don't need to get into the different types of devices in the i-o
[01:24:53] we'll do a little of that but not but you just need to know that it can be
[01:24:55] written to and it can be written from and the df command
[01:24:59] shows you a bunch of things like how much room you have on here
[01:25:03] um if you don't know about size and bits and bytes and all that
[01:25:08] we will get into that when we get into coding in fact we'll talk about binary
[01:25:12] but um this just you know it just how much room you have
[01:25:16] on your disk uh the short version of this is that
[01:25:20] um every the files are all written in zeros and ones
[01:25:25] and if you combine eight of those seven of them plus one for plus and minus
[01:25:29] uh together you get one byte um a byte it's called BYTE
[01:25:34] if you have um if you do you know two i'm gonna get
[01:25:40] the suck here if you do if you do uh more of
[01:25:44] those then you get you know uh a kilobytes is probably what you're
[01:25:49] gonna hear about that's a that's 1024 of those
[01:25:52] um if people make mistake all the time because it'll do a thousand versus 1024
[01:25:58] um it's all by the way these are all factors of
[01:26:02] of two right to the first to the second two to the third
[01:26:05] um and you'll understand why that is when we get into coding and we
[01:26:10] understand binary just in general um but that's what's going on
[01:26:14] so and then and then you know so you have kilobytes
[01:26:18] and then you have megabytes which is 1024 kilobytes
[01:26:21] and then you have gigabytes which is 1024 megabytes
[01:26:24] and then you have terabytes which is 1024 gigabytes
[01:26:28] and then you have petabytes which is 1024 terabytes let's do that right
[01:26:34] and you go all the way up to something called the googleplex
[01:26:37] which is where the term google comes from which is like this
[01:26:40] you would take you a lifetime to just write the number
[01:26:43] um so yeah but but this is all important to you why
[01:26:48] because that's what these numbers represent right so when you see 205
[01:26:51] kil uh ki or kilobytes you know that's significantly less
[01:26:56] than then 460 gigabytes right 12 gigabytes is here
[01:27:02] and i mean just i mean you know you probably already know about a lot of
[01:27:06] this but say like how much how much do i have free
[01:27:08] um okay so this is what i wanted to show you really quick
[01:27:11] you see here it says i used an i free that's how many rows of i nodes are
[01:27:18] available in that table or in that overall file system
[01:27:21] so i kind of lied when i said that there are multiple tables
[01:27:25] there's really not there's really one big ass table
[01:27:30] okay there's really one big ass table that is
[01:27:33] that is this file system and this tells you how many i nodes there are
[01:27:38] and i i wanted you logically to think of it in terms of like separate tables
[01:27:43] but really they're all there and they're the one is
[01:27:48] just list is just referring to another one in the same list so it's just
[01:27:51] really big table um and it does have a finite capacity
[01:27:55] right now in terms of like size used uh here's a fun fact for the for the
[01:27:59] veterans out there did you know if if the i think it's 1024
[01:28:05] if the length if the length of a text file or any file
[01:28:09] is under a certain amount it doesn't even create an entry on disk for it
[01:28:14] it puts it all into the i-node i'm going to actually this is a really
[01:28:18] interesting um this is a really interesting uh
[01:28:23] side note for people you can sound intelligent if you if you bring this up
[01:28:28] with a veteran so uh what is the maximum uh
[01:28:34] bytes uh and i uh a file may have and be stored
[01:28:42] entirely in the i-node and not a file in and not another i-node
[01:28:51] and not on disk um this is next whole nerd stuff
[01:28:58] fast simling inline data uh 60 bytes the max based size is based on the size
[01:29:05] of the i-node minus this metadata field so it's just independent not typically
[01:29:08] so uh 60 bytes sometimes up to 160 uh bytes
[01:29:14] so okay um remember i told you it's like it's like a table
[01:29:19] right every single one of those things has when it was modified
[01:29:23] and uh you know a lot of information in it
[01:29:27] but there is it looks like up to 60 bytes that's 60 times
[01:29:32] um uh eight uh individual ones and zeros and if you're
[01:29:39] if your data falls within that amount of space
[01:29:43] you're the entire thing is written into the i-node table
[01:29:47] by itself instead of uh to a separate file that the that the i-node refers
[01:29:52] to the thing that super interesting about that
[01:29:54] is if you can make a file that's under that amount of size
[01:29:58] then you have no you have zero disk i-node
[01:30:02] because the i the i-node table has probably already been loaded
[01:30:05] this is super important because a lot of people will think that
[01:30:09] these files that have well people creating a lot of files that only have
[01:30:12] one line in them is a bad idea it's actually totally fine because
[01:30:17] those are all much faster to interact with
[01:30:20] you should probably not be thinking about that but
[01:30:22] it is kind of a fun little side note um so let's go back
[01:30:27] so so here's here's all the disks that are on and the disks you can see it's been
[01:30:31] one disk has been chopped up into different pieces
[01:30:34] and and you can see over here where uh those pieces are mounted
[01:30:39] um and with yeah so um let's talk about mount points
[01:30:46] so um this is a device reference and in unix and linux
[01:30:52] all of the devices block storage devices on which you can write something
[01:30:56] are mounted and what that means is there is an i-node
[01:31:01] there is a place you can navigate to that has been mapped
[01:31:08] to this device and that is the root of that thing so if i go into this
[01:31:16] place i am going to be modifying this device
[01:31:20] right here and um oh wow cloud made itself volume
[01:31:25] i didn't know that that's interesting i wonder if that's an install or it must
[01:31:30] be an install anyway but knowing where a thing is
[01:31:34] mounted is important and i won't get into it but
[01:31:37] it's very common to mount uh and by the way it doesn't just have to be a
[01:31:41] directory you can mount a device to a file which is
[01:31:44] some weird stuff but you can do that um if you can actually mount a file
[01:31:50] system on top of a device that already has stuff there
[01:31:54] and it it can be interesting because you can actually shadow
[01:31:58] uh something that's actually there by mounting over the top of it
[01:32:02] it's a it's a pretty interesting hacker technique to attempt to hide
[01:32:06] um anybody knows anything would easily see around that but that is
[01:32:11] that is something that is done is to mount something on top of
[01:32:16] the actual thing that's there and then it kind of hides it from everything
[01:32:20] that's looking in the system and that brings us to
[01:32:24] the important thing here how do you actually look around
[01:32:27] so let's talk about the ls command so the first you you have a general
[01:32:31] understanding of what a file system is and and how to interact with it
[01:32:35] um and i think you could you could understand if somebody was talking
[01:32:39] about the file system in your presence um and
[01:32:43] so the next step here is to understand how to see this stuff
[01:32:47] so the first command we're going to learn and you need to write all these
[01:32:49] down is pwd pwd prints the current working
[01:32:54] directory make sure you write that down pause the video whatever you have to do
[01:32:58] um about covering something it was mounted yeah everybody learns that the
[01:33:02] hard way that's why i mention it it's like you can't find a thing
[01:33:07] another so yeah when you get into it when you start
[01:33:13] mounting your own file systems let's say you had a hard drive to a computer
[01:33:16] and you're gonna mount something it's very common to mount the wrong thing
[01:33:20] so that's not in the beginner blue so we'll when we do more advanced
[01:33:24] operation stuff you'll need to know that you as a beginner you just need to know
[01:33:28] what the file system looks like how it gets mounted and how to deal with that
[01:33:32] if that becomes an issue every single technologist out there
[01:33:35] who wants to do engineering whether it's a software developer
[01:33:37] or an operations person or just a dev ops person you have to know this stuff
[01:33:42] you have to know the concepts um and people don't talk about it
[01:33:46] so um so here's the present working directory
[01:33:50] okay now we can actually do some fun things here um
[01:33:54] let's run mount really quick and this shows you where everything has been
[01:33:59] mounted so okay so we see that slash we're in
[01:34:03] slash so which file system are we on well because
[01:34:06] see how it's a system volumes blah blah blah because we're users artifact
[01:34:10] rob blah blah we can see that we're under a
[01:34:12] root so we're currently writing to this device
[01:34:16] okay so pwd
[01:34:19] um and you're about mounting about running about mounting the wrong thing
[01:34:24] yeah um that shows you where you're at so if you ever get lost you'll see me
[01:34:28] typing pwd all the time because it makes gives me a sense of
[01:34:31] security i know where i'm at um and the other thing that i'll do a lot is
[01:34:36] is cd or ls so ls shows you what's in this directory
[01:34:42] and if you do ls-l that will show you all of the things that are in the
[01:34:47] directory and it's about at this time that it's
[01:34:50] important that i i show you something else i'm going to put this in here
[01:34:53] uh and um so i'm going to show you
[01:35:03] uh yeah no let me try one other thing here
[01:35:10] okay so we're going to say um
[01:35:15] looking up help docs or commands um so
[01:35:26] you this is kind of one of those things at um
[01:35:30] where you can use the man command command you can use the help command you
[01:35:34] can use info and you can just just use your AI
[01:35:40] all right so shad tpt is really good at doing this if you don't
[01:35:45] in the old days you didn't have ai so there's a command called man for manual
[01:35:51] and there's kind of a there's kind of a running joke uh called read the fancy
[01:35:55] manual only they didn't say fancy um and you can actually print these out i'll
[01:36:00] never forget at first time i worked for a company where
[01:36:03] the guys first time i'd ever seen unix they had all of them unix man pages
[01:36:08] printed out and spiral bound uh things up and up on in the rafters
[01:36:14] and they would pull them down and they would flip through and that's how old it
[01:36:16] was um but these days you don't need to know that
[01:36:20] right if you're if you're trying to find a command you could go to your AI
[01:36:23] and you could say um how do i list uh files from the command line
[01:36:30] and uh you could just ask the question i'm i'm simulating what you would probably
[01:36:35] do shsls you're going to get out so summary
[01:36:38] and you're going to get the short version of it so
[01:36:41] i'm going to strongly encourage you to burn tokens and and use
[01:36:46] ai or your commands and that's why i just want you to know the command so you
[01:36:51] can know what one to ask about right and by the way if i hadn't put the
[01:36:55] commands there um you could have just done
[01:36:58] look up help docs for the commands uh if you want to know how to do that right
[01:37:03] but otherwise you could say what is the file what is the directory everything
[01:37:06] is the file everything current working director
[01:37:08] you could you could do a search for looking up the current work directory
[01:37:12] and it would tell you the command it would summarize it much in a much more
[01:37:15] digestible way so this is what i'm trying to show you
[01:37:18] if if you go to the AI you get this really happy uh summation of the main
[01:37:24] commands the kind of thing i would tell you or any mentor would tell you
[01:37:27] they wouldn't tell you everything that's in the man page
[01:37:30] so let me show you the difference if i do man unless
[01:37:34] this is what you get instead and as beautiful as that is and as
[01:37:38] wonderful as that is and this is um a thing that we had to
[01:37:42] read through we had to digest all of this and
[01:37:45] in 2026 this has all been digested for you by the AI
[01:37:49] and the AI is going to give you a much more digestible readable version
[01:37:52] of this um one of the rights of passage was
[01:37:56] to go slog through this thing and read about every single command
[01:38:02] how many commands did the AI tell me about
[01:38:07] manual pages are designed to be exhaustive resources that have all the
[01:38:12] details and sometimes reading those details
[01:38:14] is a good idea such as learning about command line completion with bash which
[01:38:18] i only discovered through reading the man page
[01:38:21] no it wasn't an any book so sometimes it does benefit you to read through
[01:38:27] how many pages are we on now right the whole entire page
[01:38:31] but most of the time you should ask your API your your GPT chat GPT
[01:38:38] and or cloud which are rolling and it will tell you what to do recursive
[01:38:42] listings oh oh this is cool it gives you a modern
[01:38:46] take on LS probably written in rust i didn't know
[01:38:48] that was the thing older more common exit
[01:38:52] as a what is that about i've never even used that
[01:38:55] is that even on here
[01:39:01] she's hallucinating
[01:39:05] uh i don't have it as a as a LS way cleaner output shows get status
[01:39:11] what i want to try this
[01:39:15] okay just know if you're going to put it on your machine that
[01:39:20] you know it's not going to be there on the work computer
[01:39:23] so don't become dependent on it
[01:39:27] yeah all right so as a probably said oh god look how pretty
[01:39:35] as a LS as a dash shell wow look at how pretty that is
[01:39:43] there's a problem as a continuation of the fork
[01:39:47] okay well i mean is it completely compatible
[01:39:54] if it's compatible then you could just turn you could you could you could
[01:39:57] alias your LS to it let's go over this it's way too
[01:40:04] readable
[01:40:09] i don't think it even has hard lengths
[01:40:14] no it doesn't oh it does it just moves over
[01:40:17] no it doesn't it doesn't have hard links
[01:40:20] apparently they didn't think hard links was important
[01:40:22] yeah that's typical that's typical of a rewrite it in rust
[01:40:26] project they don't care about hard links
[01:40:30] apparently this number here is not hard it's hard
[01:40:33] links for files but for uh for a directory it's how many files
[01:40:37] how many i-nodes are in that directory
[01:40:40] mm okay so yeah but i mean again this is what i found
[01:40:46] it i found it in charge of beauty so um what else we got
[01:40:50] so we got LS LS or as a if you want is how to look at stuff
[01:40:54] you've got to know LS people because there's not going to be any
[01:40:57] as a on your system container right you don't want to install stuff
[01:41:01] you're going to find this is a recurring thing with me
[01:41:03] learn how to be productive then screw around
[01:41:08] if you want okay so um we learned pwd
[01:41:14] so pwd just just shows you the current directory
[01:41:17] i don't use it for anything else i've never used any of its options
[01:41:21] uh display the logical current working directory that's interesting did not
[01:41:24] know that was a thing oh wait there's a version of the
[01:41:27] results in bucklinks by the way some of these commands are different on
[01:41:29] unix from linux very very very important distinction
[01:41:35] uh in fact let's look at that right now so
[01:41:38] this is on mac which is unix so there's a dash capital out and there's a dash
[01:41:42] capital p i'm just super curious let's see what that looks like on
[01:41:46] cali linux so if i do pwd-h oh it has lp support
[01:41:53] okay so in this case it does have it right i know for a fact that LS has
[01:41:58] different options so lss h oh no that doesn't have it
[01:42:03] man ls it's not kind of the man pages containers usually don't have the man
[01:42:06] pages because why it's a waste of time so again
[01:42:10] probably another reason to not become independent on man pages because they
[01:42:13] have to be installed extra in containers you're going to be
[01:42:15] usually working in a container so you're going to have to go to a
[01:42:18] single similar system and run man if it has a man page so
[01:42:21] might as well just punt and go to your ai and ask
[01:42:24] so it's usually going to be the regular thing to do
[01:42:28] um and all right so
[01:42:31] so they're so they're um all right where are we okay so we we learned how to
[01:42:37] look in the current working directory where am i
[01:42:40] we learned how to list the things that are here ls and ls dash l
[01:42:44] um uh there is one other option you should know and that is ls dash
[01:42:48] a l and that that lists everything so uh now we're going to we're going to
[01:42:54] understand the concept of hidden files um so
[01:42:58] everything is a file look at the current regular list everything in a directory
[01:43:01] okay so um if you just do the lss shell it doesn't show you the hidden files
[01:43:07] so i think i'm going to put here um let's say
[01:43:14] understand hidden files so in Unix and Linux any file that
[01:43:20] begins with a dot is considered hidden that means
[01:43:23] especially if you're using a GUI it won't even show up
[01:43:26] uh but it's there right and it's a way for you to make files that are
[01:43:31] kind of out of the way um you know kind of invisible when you're just doing
[01:43:35] a normal lss and so you don't end up screwing with these important files
[01:43:39] i'm in a github repo so dot git dot git is a very important hidden directory
[01:43:45] uh that contains all the information about this git repo
[01:43:48] uh there are a number there are two more uh
[01:43:50] things here and this is important you get this
[01:43:54] uh let's say look up everything look at the current architecture i understand
[01:43:57] hidden files uh understand dot uh let's say current
[01:44:05] current directory is a dot uh parent directory
[01:44:11] is dot dot all right and the reason this is important because you will
[01:44:14] actually use these references um dot refers to the current directory
[01:44:20] the current i node and uh dot dot refers to its parent
[01:44:27] and um these two things are actually if you were to look at the row of i nodes
[01:44:33] they are written in there the parent reference is written in there and that's
[01:44:36] how it knows to go to the other entry in the table
[01:44:40] and that's what that's what dot dot so just think of dot dot is going up one
[01:44:43] level and dot is being the current directory
[01:44:47] right now this one right here you might think it's not important not important
[01:44:50] because you could just type you know read me right away because it's in the
[01:44:53] directory but there are certain times when you need to
[01:44:56] explicitly say dot slash and we will get into those later so it's
[01:45:01] important that you know this um so we have we've talked about hidden
[01:45:05] we've talked about um listing out all the things we're talking about
[01:45:09] directories we haven't really talked about permissions yet we will
[01:45:12] um and the next thing okay so we've listed them out
[01:45:17] we've we've shown where you are now we need to talk about how to move things
[01:45:21] around and something like that there's a difference between pwd and dot yes
[01:45:26] pwd shows you the full working path that means the whole
[01:45:30] path from whatever file system you're on all the way to root
[01:45:34] which is slash and it shows you how to get all the way to where you are
[01:45:38] um anytime almost any time that you are going to use dot
[01:45:44] instead so dot is relative right dot is relative to your current location
[01:45:50] um but pwd is also relative to your other current location but it gives you
[01:45:55] the whole path and this will become important later
[01:45:58] because when you want to write a script you could do
[01:46:01] there's another environment where you will call pwd
[01:46:04] and that will show you the same thing that they'll tell you essentially what
[01:46:09] dot is but you could also use you know dot slash right so
[01:46:14] when we get into running programs and stuff you'll see that a lot
[01:46:18] uh okay so next we have working with permissions we talked about permissions
[01:46:21] a little bit um so we haven't talked about creating a
[01:46:26] file so let's do that first uh create a file
[01:46:32] there's lots of ways to create a file um we're not going to get into
[01:46:36] redirection and all that if you want to just create an empty file
[01:46:40] just like an empty file totally nothing in it
[01:46:43] you can just type touch so you can say touch my file
[01:46:49] and what that does is it creates a new file and it updates the date and time
[01:46:55] on the file so we talked about an i-node but we
[01:46:59] didn't talk about all the things that the metadata in the i-node
[01:47:02] so that includes permissions which we'll get into
[01:47:05] but an owner and but it also includes when the file was last updated
[01:47:11] and or when it was created so there's last updated
[01:47:15] when it was when it was uh when it was created originally created
[01:47:19] when it was last updated that means the file was changed
[01:47:22] and then there's when it was last accessed
[01:47:25] which is a different thing um and i think those are the main date stamps
[01:47:31] that are in an i-node actually let's ask the AI
[01:47:35] uh what are all the metadata
[01:47:40] fields uh in an i-node i kind of want to know this
[01:47:45] um now we're getting into the good step
[01:47:52] there's a unique identifier there's a device ID which system is i know
[01:47:57] that lives on mode is permissions file type regular
[01:48:01] directory simic etc yeah the type is permissions the bits
[01:48:05] this is where rwvx rob comes from by the way
[01:48:07] um special bits the set uid set get it sticky i'll we talk about special
[01:48:12] business later the uid that's the owner user id and the gid the group id
[01:48:18] and it is pretty verbose yeah line tracking link count how many
[01:48:23] hardlinks to the file number of hardlinks pointing to the node we already
[01:48:26] showed that that's what these numbers are there
[01:48:29] uh size and storage you know what i just realized
[01:48:35] oh my god i just realized that the reason the number of hardlinks this is
[01:48:40] the number of links to the file the reason it's 23 here for a directory
[01:48:45] is because all the contents of that directory
[01:48:48] hardlink to the directory as its parent
[01:48:53] oh my god this is the first time i ever noticed that
[01:48:56] i used to say the way that the way i'm saying is is that
[01:48:59] docs has 23 files in it but what it really has is it has 23 references to
[01:49:06] itself inside of it those those are other i-node entries that
[01:49:09] refer to that as the parent that's cool i hadn't really made that
[01:49:14] association before um i always thought oh the number is
[01:49:18] different for a directory from a file
[01:49:22] but it's not because it's it's the number of links pointing to it
[01:49:27] so those are hardlinks those are hardlinks to the parent
[01:49:31] interesting so anyway size and bytes uh block size preferred i/o block size
[01:49:37] um the number of disk blocks actually allocated
[01:49:41] so a disk block is different than how big the thing is
[01:49:44] uh that's because when the storage gets allocated it gets allocated in blocks
[01:49:48] and if it's under that block then i'll give another block
[01:49:52] time stamps the whole eternity a time m time and c time those are the ones that
[01:49:55] are talking to you about um modern systems has creation time
[01:50:02] uh so yeah it's not POSIX i didn't know it wasn't POSIX POSIX is a standard for
[01:50:06] unix it's been around since 70s i think
[01:50:09] um data pointers POSIX i-node layout includes 12 direct
[01:50:15] direct block pointers one single direct pointer one direct in direct pointer
[01:50:21] xt specific yeah it depends the file system type
[01:50:25] there's like we're using xt4 that's the that's the
[01:50:31] that's the software that implements the file system
[01:50:35] um immutable append only generation array cells yeah
[01:50:41] wow there's a lot in the i-node these days
[01:50:44] file names are not in the i-node really i didn't know that
[01:50:50] the directories have the i-the idea is a number
[01:50:54] how does it look up the name then
[01:50:58] where are the names go well that makes sense too because the i-node is unique
[01:51:03] it never changes you can change the name of a file without changing its i-node
[01:51:09] okay where are the names to the i-node stored
[01:51:16] i know we're going way up the deep end here but this is fun to me
[01:51:21] the names are stored in directories not in i-node what
[01:51:27] oh okay so inside of a directory i-node
[01:51:31] i thought a directory was an i-node it says this file is this i-node
[01:51:37] this file is this then the directory's data block store looks like this
[01:51:41] oh isn't the directory
[01:51:47] it's cell and i-node it is i know it is i just want to hear her say it
[01:51:57] every file type in usage is just an i-node plus data what changes is what the data means
[01:52:01] oh so an i-node goes to many of us pointers
[01:52:07] the directory
[01:52:10] a directory has a data segment that has the structure entry is interesting
[01:52:16] the directory itself is just another i-node
[01:52:19] but but it has the name to i-node change so when you change the name
[01:52:25] you're actually editing the data structure of the i-node of the directory
[01:52:31] which makes sense i mean if you had if you had a table and you'd have to change
[01:52:36] it's just like you're going in there you're editing the name
[01:52:39] that's super interesting to me i don't think i ever looked that deeply into it
[01:52:43] and you know what chatgbt makes it super easy to do that especially stuff like this
[01:52:47] this kind of stuff is well established so it's not it's unlikely that you get hallucination and
[01:52:52] freaky AI interactions so anyway so yeah we learned a lot about i-node we learned about
[01:52:58] files probably way more than you want in um all right so let's we we learned how to make a file
[01:53:04] um let's remove that file so the remove the file there's lots of ways but the main way is rm
[01:53:09] remove my file and now we do an ls you notice that doesn't say anything
[01:53:14] it's really important that you go do an ls after that to check that it actually happened
[01:53:19] um and so that's how you remove something i think i put that in here but i want to check
[01:53:25] remove the directory file uh so let's actually do that again
[01:53:29] we're gonna go make a new file don't worry we're gonna do more things with files next week
[01:53:34] uh once we learn about processes first so let's touch a file again let's touch a new file let's
[01:53:39] touch let's touch another file by the way um you can put spaces in the names and stuff but it's a
[01:53:46] bad idea to touch horrible name horrible name here and when you ls you see that it's like really
[01:53:57] hard to tell what it is and if you know if you tried to remove that file how are you gonna do it
[01:54:03] right you can't if you type horrible name here it's not gonna do it in fact that could be super
[01:54:10] dangerous if you did this it would remove the file name horrible the file name name and the
[01:54:15] file name here which is could be super dangerous if any of those files actually existed so
[01:54:23] the way to get around that is to do this to put quotes around the whole thing
[01:54:28] oops and god robert and um i'm pushing the up arrow by the way we haven't learned about that but
[01:54:36] we will so now you will see if it's there it's gone right another way to do that by the way so
[01:54:42] touch horrible file name um that's actually gonna touch you see that that touched three files because
[01:54:50] it took each one as a separate file name right so i just want you to see this so uh and this
[01:54:57] is all a coding by the way you get and this is really weird is you can actually have a horrible
[01:55:01] file name that and then you have if you wanted to delete it easily and that you run across this
[01:55:09] kind of thing if you do this you can do arm horrible and hit tab now if you see how it completed out
[01:55:16] to that line when you hit tab again twice it will give you all your options right it's like okay
[01:55:23] you can just stop there and delete that one but if you want to get that space in there you can't
[01:55:26] just type space because you can't see it so you'd have to type back slash but i'm trying to make
[01:55:32] you feel the pain here and you type back slash space and then tab and it will find the entire
[01:55:38] file name now if i thought other horrible wasn't there then it would be much easier and i type
[01:55:44] horrible and tab and now it knows which one i want uh i'm not removing my home directory and it
[01:55:51] actually escapes it all for you so um you know the moral of the story is don't use spaces on unix
[01:55:59] and linux in your file names i mean really it's strictly speaking the file name can contain anything
[01:56:08] and i mean anything and there are lots of ways to hack a system uh you can name files question mark
[01:56:16] you can name files dot even though you already have a parent you can name files dot dash a which
[01:56:23] is going to conflict with a command because then you're not going to be able to do anything with
[01:56:25] it and you have to get really crazy when you're doing any of that stuff with that
[01:56:32] and so so that you know that's that's kind of that so we've created a file with touch
[01:56:39] let's do it one more time let's remove uh file and name at the same time which this particular
[01:56:46] command takes multiple things um and we've got that now let's make a directory um and that's a
[01:56:54] different command make der make der a der and now we have a der now if i do rm on a der and it won't
[01:57:02] do it because it's a directory now hear me hear me very carefully on this okay do not remove
[01:57:11] directories with the rm command and i know somebody's going to complain and say what are you talking
[01:57:17] about trust me do not remove directories if it all possible try to use the rm der command on a
[01:57:27] directory let hear me out as to why if you put something in a directory this is something this
[01:57:33] will save you so much pain and suffering so i'm going to touch a file in here touch a der a file
[01:57:40] and i'm going to touch another file and now if i lsator you'll see that there's two files in there
[01:57:50] uh probably time to introduce it to the tree command
[01:57:54] uh you can use the tree command and it'll give you a kind of a graphic representation
[01:57:57] brew install tree if you want that uh it's kind of nice but that gives you what's in there now
[01:58:06] if you remove one of those files uh and you do let's say let's say you think you're cleaning
[01:58:12] the directory out right and and you know you you try to remove the directory and i'm like
[01:58:18] nope you can't do it that's for a reason because the directory is not empty and i actually just
[01:58:24] ran into this i made a video about how stupid cloud was because cloud did not know to check a
[01:58:30] directory to see if it had files in it before it removed it and it used the very very dangerous
[01:58:37] rm-rf what that does is that recursively derates the directory and everything in the directory it's
[01:58:44] one of the most dangerous commands in all of unix and linux everybody watching this use a
[01:58:50] veteran has deleted something really significant on accident doing this command don't use it
[01:58:58] don't use that command you can get away without using that command unless you really know that
[01:59:02] you want to hold directory going but most of the time what you really want to do is this you want
[01:59:07] to remove a der and then you want to get rid of one of those files right so you say a file and then
[01:59:13] you go if you get into the habit of using rm-der on a der you're like oh yeah that's right there's
[01:59:19] this other file in there that i forgot about and so by forcing yourself to use rm-der unless it's
[01:59:27] really laborious because it's multi-levels deep or something like that um make sure that you you
[01:59:33] know and then you can like if you if you remove the other file you hit tab you got that file out of
[01:59:39] there and then rm-der and you can remove the whole thing okay so that is a much safer way to do that
[01:59:49] of course the alternative to that this nice and quick and dirty and super dangerous is rm-rf
[01:59:54] and then the point of the that file um and before you go recommending to some streamer that they
[02:00:04] that they do this against slash let me show you what would happen if you tried that don't do this
[02:00:11] on your actual system do this in a container this is what containers are for but i want to show you
[02:00:15] how stupid you sound when you tell people to do this okay i am sick and tired of people trying
[02:00:21] to think they're really smart and coming to my stream or another noob stream and tell them to do
[02:00:26] this because they obviously haven't tried it in within the last 10 years because it's had it doesn't
[02:00:31] work because it's so dangerous and and you know and let me show you what i mean by that so if you do
[02:00:36] podman run it uh let's pick cali again uh cali linux rolling latest all right okay now we're in
[02:00:48] no root directory and we're going to rm-rf you know slash it says nope sorry rm is too dangerous
[02:00:57] to operate recursively on slash make sure you do no presidivism so before you go proving how
[02:01:03] stupid you are and in it sorry not stupid inexperienced you are at least know that recommending that
[02:01:09] doesn't work and it hasn't worked for more than a decade and the fact that you're recommending
[02:01:13] that to somebody means you've never actually tried it in a container probably because you
[02:01:17] don't know what a container is i'm sorry that's a little bit harsh i am so tired of beginners doing
[02:01:26] this and the next thing that they always pop out is how to do a fork bomb which i will not repeat
[02:01:32] here people people in the chat love trying to flex and i'm just trying to tell you if you try to do
[02:01:40] that it's the opposite of it's an antiflux it just shows that you're an idiot you're not gonna test
[02:01:47] it anyway if you're in a container test it you can do anything in a container you can't hurt anything
[02:01:52] you can't you can't hurt anything in a container if if the container unless you have mounted stuff
[02:01:58] specifically into a container which you'd have to explicitly do you're fine that's what the
[02:02:03] containers are for i run them on eps i was about to stop paying for it yeah just for fun
[02:02:15] to be fair i have run that on a live system before
[02:02:21] I didn't ask for my restaurant because he's all day stuff yeah i don't know they're there everybody's
[02:02:27] got them they're like hey this is so cool i'm like no you're an idiot that doesn't work for a decade
[02:02:32] anyway so that was that was a huge destruction but hopefully it'll pay off one day
[02:02:42] uh so we created a file okay let's talk about permissions and it will be done this has been a
[02:02:45] long boost but whatever so lstechell you know without getting into all of the stuff about
[02:02:53] permissions we're just going to talk about the basics so the basics are you get a special bit
[02:03:02] this right here this is a special this this tells you something special about it right
[02:03:08] so you remember the symbolic links they had l there meaning they're a link d means that it's a
[02:03:13] directory there are other special things here um like if you go into slash proc you can see stuff
[02:03:20] there um and then we have three different properties and these are all stored as an octet if you know
[02:03:27] what that is that's eight bits um and they are read right execute uh so the first permission
[02:03:35] is um uh read right and then and possibly execute right and this is for the user or the owner
[02:03:44] uh and the second one is for the group and the third one is for other world everybody else
[02:03:52] thanks for the fall and this here is the owner so that's who gets these permissions over here
[02:03:59] and this here is the group so that's who gets this and you can if something interesting you can
[02:04:05] do here you can actually give the group zero permissions and if they're in the group that means
[02:04:10] they can't see it so you can make groups that uh you can deliberately make it so that that group
[02:04:18] can't see the file um all this you know user group world stuff was way way way more important
[02:04:25] when we were on systems with 16 000 users at a university big-ass you know x and solaris machines
[02:04:32] that doesn't exist that much anymore it still does like if you do pikos pico ctf which is uh
[02:04:39] sponsored by Cambridge University you can you'll see you can go over there and you can have there's
[02:04:43] this big big multi-user systems that you can have all kinds of fun with other people and same thing
[02:04:48] with another another one called um over the wire uh all multi-user systems you can actually directly
[02:04:55] manipulate another person's session used in pty which is really fun if you really want to play
[02:05:00] with people over there because they haven't set up their permissions very well over on that particular
[02:05:05] open uh system it's really fun you can go you can go listen to all their keystrokes and everything
[02:05:11] all kinds of good stuff multi-user systems are dangerous and they have been for a very long time
[02:05:17] and that's why we're not seeing them anymore what we see now is we see single containers that are
[02:05:22] totally contained away that do one thing that can be thrown away nobody cares and they have
[02:05:28] usually that running is root um because nobody cares because it's just root on that system it's
[02:05:33] being contained in an outer system that's sort of protecting it and kubernetes if you've heard of it
[02:05:38] is all about running a ton like literally tens of thousands of these little these these containers
[02:05:43] as pods and then doing all kinds of fancy things usually as root so the age of the use of permissions
[02:05:53] and stuff has kind of changed if you're on a jump post which means you have to log into
[02:05:59] a single multi-user computer in order to do your other stuff then having multi-user permissions is
[02:06:04] a thing uh but otherwise it's usually not as important as it used to be um and as I said that's where
[02:06:11] rwbx comes from in my name rwbx rob um uh this number if you want to know you'll see sometimes
[02:06:18] you'll see people represent that number as seven as a we're going to use this symbolic
[02:06:24] method of doing this but you should always do by the way I am so tired of veterans telling people
[02:06:30] oh just do six before recursively against the directory it's like yeah if you want to screw up
[02:06:35] every directory because the numbers for the octet have different permissions depending on what the
[02:06:42] thing is whether it's a directory or it's a file right so if I want to make we're going to get into
[02:06:50] how to change these permissions in fact I think I'm going to skip this just so you know the command
[02:06:55] is the command is schmod and if I wanted to lock down another file so that only the user can see it
[02:07:02] I would do schmod there's lots of things to do here um I would do schmod user equals read write
[02:07:09] and that would override all the other permissions and then when I do us to shell you can see uh wait
[02:07:15] what oh no I need to do the other ones I need to make it uh so that the other ones are not there
[02:07:24] uh actually I think well let's do two things let's do should we delete all of them first
[02:07:32] okay the user is a group at this the group equals dash and then is it other equals dash
[02:07:38] I'm trying to use a bollock yeah that's it okay uh yeah after the x I don't know what to add is
[02:07:52] I don't know what that is honestly I don't I never know okay so that's how you should do it now why
[02:08:00] because you know you can say permissions explicitly about that ask your AI about schmod
[02:08:07] okay you will see tons of people probably your AI that will tell you to do this instead
[02:08:13] it'll say do six zero zero because it's faster to type right and the reason for this is because
[02:08:21] it's the same thing and in order for you to understand this you have to understand bitwise
[02:08:26] mathematics but just understand that uh a six is read right no I get that right yeah a two
[02:08:37] I'm gonna have her explain it to me because I don't want to get it wrong four I think four is right
[02:08:42] two is read um and five is executed seven is executable so it's like it's like an it's
[02:08:51] addition of all the numbers and the reason the numbers are that way is because if you were to look
[02:08:55] at all the bits in the eight bit thing if you turn all the bits on the number you get out of that
[02:09:01] when you convert that to a number is seven or five or six or four or two and so yeah yeah
[02:09:12] I mean I have to look at the numbers every time I know that six is read right I know that
[02:09:18] zero is nothing I know that um four is read and that means that two must be right so yeah four
[02:09:24] and two and you get a six that's read right and I know that seven is executable and read right
[02:09:30] so that's six plus one so that must be the extra bit there so but if you don't want to
[02:09:38] remember any of that you can just do if you want like for example if you want to make this entire
[02:09:44] file executable you do schmod plus x another file and then you don't have to remember it and
[02:09:50] it just makes it executable if you want to take away execution permission you can just do minus
[02:09:55] another file and people you know people will try to look cool by remembering the numbers but
[02:10:01] the reason the numbers can be dangerous is that whenever you start doing this recursively
[02:10:05] the permissions on a directory mean something different than the permissions on a file
[02:10:10] which we're not going to get into today you can go through that if you want
[02:10:16] but or you can ask your AI about that we're really going to get into the executable thing
[02:10:21] when we start to write code and you know spoiler alert your file has to be executable to run
[02:10:29] or does it
[02:10:37] say to when we get into coding we'll talk all about that okay so
[02:10:41] work with permissions move file or directories okay link one file which another god we have so
[02:10:46] many things let's talk about moving files or directories okay so if i want to let's talk about
[02:10:51] renaming first of all um renaming file or directory
[02:11:04] okay so um if i want to rename another file here the command is move mb and
[02:11:16] so i can move another file and to a new name and i can type bellows shell and it will lss shell
[02:11:24] and that will show up now the problem with this is that it also moves the file so the same command
[02:11:32] for renaming a file is the command for moving a file and i guarantee you there's veterans out there
[02:11:38] who have done this before they've meant to move a file into a directory and the directory doesn't
[02:11:44] exist and they end up renaming the file let me show you what i mean by that so like if you if you
[02:11:50] think that let's say you get the name wrong right well i was trying let's try that so if i try to
[02:11:57] move new name into docs but i type too many s's right uh many many many times yeah people have been
[02:12:05] around the block i've done this so you're like wait what it didn't move my my file into the docs
[02:12:12] directory because you misspelled docs and now what now your file's been renamed because it did what
[02:12:20] you told it to do i really wish they had another version of the move command for renaming things
[02:12:25] but they don't so so you're gonna do that at least once now you know not to do it right you have to
[02:12:30] change it back now i didn't even name it right so move rename original original a rig name
[02:12:39] all right so uh it's time there's all the sp right so um so you're from the command line you're
[02:12:47] gonna move the original name we want to move it into docs so to do it right i would do this i do
[02:12:51] move a rig name into docs and if you hit tab this is another thing you're gonna tab is going to
[02:12:58] become your best friend because tab is like oh what are my options right docs tab and then you don't
[02:13:03] make the spelling mistakes and it puts a slash nice happy slash i have that you know what's happening
[02:13:08] right um and now it's like where did my file go it doesn't tell you it moved the file it just
[02:13:14] expects you to know that you moved the file and yeah there's been more than one time where i moved
[02:13:18] the file to someplace i didn't know about and i was like where the fuck did i put my file
[02:13:23] which brings me to the next command find so how do you find something so find is the most
[02:13:29] powerful command in all of unix i'm convinced and nobody knows about it find dot so we want to find
[02:13:36] in the current directory the file with the name a rig name but let's say i don't remember the whole
[02:13:42] name i'm gonna put dot and i'm gonna put a rig i know it has a rig in the name or rig star name
[02:13:48] that will look through everything and it will give me oh look there's other things called a rig in
[02:13:52] there uh if you move on top of an existing file right there is you can put no clobber you can turn
[02:14:00] no clobber on so actually um i don't know if it's worth talking about no clobber when we when we go
[02:14:07] into when we go into our bash our seat you can set it so that your shell by default will never
[02:14:13] override a file it will never destroy a file but otherwise unix olinix doesn't care if there's a
[02:14:21] file there and you move it on the top of it goodbye file and if it's directory it will put it in the
[02:14:28] side of the directory instead of blowing it away but you know there's move dash in and move dash i
[02:14:38] that's cool yeah just move dash yeah just hide in olinix okay all right so
[02:14:47] anyway you saw my find command right mine and by the way i kept going up to the other commands
[02:14:53] the way to do that is to push the apparel for you you don't know how to search yet but we will
[02:14:56] learn that later we got to learn to be i first uh case an insensitive enlarges your aura yeah
[02:15:04] making i thought tab was automatically case insensitive i don't know but i i agree that would be
[02:15:11] awesome yeah there's other things like buzzy finder too so um i think i don't use a buzzy finder
[02:15:26] i don't i don't know what i don't know buzzy finder buzzy buzzy buzzy finder is supposedly a thing that
[02:15:32] lets you partially type the the name of something in the directory and it'll pull it up a lot of
[02:15:37] people love it yeah is it ls to fuzzy finder this this is not something that comes with unix in
[02:15:42] olinix this is something you have to install but if you do this then you can go pick you know which
[02:15:47] files you can start typing your file and then that will them do your thing um it i mean it's worth
[02:15:54] looking at i might look at it again people use that a lot when they use their editor and they
[02:15:58] want to get to a file and they don't want to have to like look at the whole thing i wonder if you did
[02:16:03] a find dot and then local shish that's why they like it that shows me everything with local in it
[02:16:12] right away and i don't have to run the find command there's everything with them in it damn i could
[02:16:19] be convinced to like this i am still old school though and so my way of doing that would be
[02:16:26] find dash name uh you know local and it gives me the files the reason i like find you like that too
[02:16:37] is because you can actually write uh find into a script and you can rename all the files with
[02:16:43] win command um just make note of it we're not going to go into all the amazing things you can do
[02:16:48] with the find command today but you can do pretty amazing stuff a lot of people use fuzzy finders
[02:16:54] inside of him and then they don't have to exit them and the people that do that are usually the
[02:16:59] people who are so loaded up with new vin plugins that exiting new vin takes two seconds
[02:17:07] so they use they use new vin or vin just like most emacs users or vs code users and their startup
[02:17:14] time is abysmally bad because they have so many tree-sitting plugins and all kinds of crap so they
[02:17:19] don't ever want to leave their vim yeah my new vin takes 50 milliseconds i mean that's still pretty
[02:17:26] fast but you know it's like so yeah
[02:17:36] yeah but buzzy finder can be a problem with that so um we're kind of getting off the rails here it's
[02:17:42] kind of hard because we're going to wind it down and we'll stay back with the beginner stuff uh
[02:17:47] rename your files and directories i've talked about how to rename them uh yeah yeah well then
[02:17:56] your tree set you're probably not tree-sitting everything automatically then at least not the
[02:18:01] way i am i wish i weren't but yeah um so moving files under directories uh we talked about that
[02:18:11] with mv yeah you can rename things you can move them into other directories you can move them up
[02:18:15] a directory you want to move it up so let's do that once so say you're in docs and you want to move
[02:18:21] a rig name up right can dot dot and it will move it up to you don't have to slash if you don't want
[02:18:28] that'll move it up to the good directory now it's not here anymore come up back up here cd dot dot
[02:18:34] and that takes you here okay so i've been using the cd command a lot since for change directory
[02:18:40] it's one of the most common things i'll ever do and so make sure you put that in your list
[02:18:45] but here's the thing cd a lot of people don't know this okay cd dash will change you will toggle
[02:18:53] you between your two things it's the same with the github command line tool by the way if you go if
[02:18:57] you do get switch dash it will switch you between branches so the use of a single dash by itself
[02:19:03] you'll run into this all over and what it does is it toggles the previous value um actually have
[02:19:09] this built into my topic thing if i do topic t that will switch my my twitch topic back to the
[02:19:15] moment previously was and then i can go back and forth between the two so you're going to see that
[02:19:19] a lot um a lot of people will do this and they'll type this unnecessary tilde which is really hard
[02:19:25] to type you got to do shift and then get it right and everything useless and then i guarantee you
[02:19:31] there's at least one person watching this video that will not know this if you do cd enter it
[02:19:37] automatically cd's into your home directory or tilde so typing the tilde is unnecessary that's right
[02:19:44] for 40 years you've been typing cd space tilde and the entire time you could have just been doing
[02:19:49] cd enter i know a couple people just have their mind blown if you know how hard tilde is to hit right
[02:20:02] now you know you don't need to do that people don't know this in fact three people in the chat
[02:20:07] just now did not know that someone just learned that after seven years of using linux i learned
[02:20:15] about it on stream four years ago four years ago i learned about that on stream
[02:20:22] for maybe two past you learned on accident yeah so and we're going to do cd dash to go back there
[02:20:30] so yeah it it seems like a small thing a beginner is watching this and they're going
[02:20:36] well what's so bad about typing tilde the number of times you type cd to get into your home directory
[02:20:43] in your life and you have to do that crazy pinky squish to get the tilde you'll thank me later
[02:20:52] yeah i promise you well a part of that most of us learned about on accident i think i probably did
[02:20:58] too when biggie doesn't need to do any more yoga exactly so so that's kind of a fun thing to learn
[02:21:08] there's a number of like other little things too so um what was the other one well when we get to
[02:21:13] alias this is a really fun one i'll save that for later um that i didn't know i didn't know
[02:21:19] for 42 years i learned it on stream uh that the cd home i know can you imagine link one file
[02:21:28] director to another okay this is a little bit tricky and i have no i'm going to promise you
[02:21:32] right now i'm going to get this wrong i have never been able to do a sim link without looking it up
[02:21:40] and i cannot tell you why okay so i'm going to first of all i'm going to do two types of links okay
[02:21:46] so it's always source target i never okay what are we doing we're making a link to another
[02:21:56] file okay so i'm going to make uh i'm going to do a sim link so first of all i'm going to do is just
[02:22:02] a regular link and everybody will do this because every beginner does this it's the ln command it
[02:22:07] creates a link so we're going to create another file um another file question mark to a rig name
[02:22:18] no such file directory you know why because they did it wrong because i always get it wrong
[02:22:24] so the first one is the source and the second one is the new thing
[02:22:31] all right now i time it let's just show okay now i want you to see this i never get this right uh
[02:22:39] i prefer cd home will all right so all right so what do we see this different here
[02:22:50] we have a rig name has anything changed here who can see it what change
[02:22:57] we have another file and a rig name it looks like i have two files there
[02:23:02] i'm waiting somebody somebody watching this is going to see the thing that's different
[02:23:08] what is different between those two
[02:23:15] the two after permissions okay all right so as we earlier talked about with an i node
[02:23:22] the this number here is the number of hardlinks to the file so with a hard link you get what appears
[02:23:35] to be two separate files that are pointing to the underlying either the same i node or the same
[02:23:45] uh you know associated data on disk so yeah so those two things and if i add another one
[02:23:55] so if i do a rig name which is cool because you can actually use another file now because it's
[02:24:01] already because these are hardlinks you could say yet another ln dash l and you see the number goes
[02:24:07] up to three so but you know just looking at this off the cup you would not see these
[02:24:13] separate files in fact if i do if i do a user bin open this open is in the graphic finder
[02:24:21] you will not see these as different files there's no way to know and the graphic user in the
[02:24:27] graphic system you see one two you can see you guys see those files are all there right and
[02:24:34] what happens if i delete one now the important thing here is these are all equally relevant
[02:24:41] so i can actually delete the original one move to trash actually that it's still going to be around
[02:24:49] watch yeah you see how come it's around because they didn't empty the trash it's in my trash and
[02:24:56] i have to fucking empty where the hell is my trash i want to empty my trash now i don't even
[02:25:06] know where the file is where it's working did i swear again i've been swearing a lot i'm so sorry
[02:25:14] i'm so sorry it's because i'm using the use of graphic user interface it makes me swear every
[02:25:19] time where is the trash okay here it is trash empty trash should i empty the trash sure
[02:25:30] all right now let's see what happened to our hardlink yeah okay so now we only have two hardlinks
[02:25:41] so when i use the ui the graphic user interface all i really did is move the file i just moved
[02:25:46] it into the trash and there is a place on him where he can find it i don't know where it is
[02:25:50] um it's probably in your users trash drawer or something and so yeah and actually you can make a
[02:25:59] you can make a script called trash if you want to control your own trash if you'd like to keep
[02:26:03] files around and you're too afraid kind of a useless thing to have in the year in the age of
[02:26:07] get which is where everything should be in a swash repo anyway um in directory uh in directory
[02:26:15] data so dot trash so is it dot trash in this current directory i don't think it is there there's
[02:26:22] there's not there's a trash directory someplace else i don't i don't want to find it right now
[02:26:26] is it local share trash unless it's just local so trash
[02:26:31] ask friend if he knows the CD tell me thing all right so um anyway you can see that by deleting
[02:26:39] the original file i didn't it didn't touch this file in fact if i if i i'm gonna
[02:26:44] echo something you don't know about this command yet but you'll you'll learn this next week
[02:26:48] now if i if i show you what's in the file and i can't yet another file
[02:26:55] you'll see it's the same thing because it's pointing to the same underlying file
[02:26:59] and and you but the important thing is is you saw that when i deleted the original
[02:27:05] the other stuff was still around and so the only way to get rid of it is to delete every one of them
[02:27:12] you have to delete all of the replicas right and and we can do that so let's go ahead and
[02:27:18] you know arm another and yet another uh we're not going to do wildcards yet we'll cover that next
[02:27:24] week um and so now those files are gone so let's go ahead and make another one new file
[02:27:32] let's do a ridge file rig file so now we have another file
[02:27:38] and we want to make a symbolic link to the file now you're going to see immediately what the
[02:27:45] difference is the difference is ln dash s for symbolic and then we're going to type the original
[02:27:50] file and then the new file so the sim link uh file and now we have something different right
[02:28:00] we have first of all an l here so this is a different i knowed entry it is a full i knowed entry um
[02:28:07] and it is a thing is what i'm trying to say on its own and it's pointing to a rig file and
[02:28:14] how do we know it's its own thing because if i move a rig file to new name
[02:28:20] i will break the sim link wait what happens yeah it's not showing me a broken link
[02:28:31] that's too bad my my mac always does not show me the broken link
[02:28:37] let's i'm going to show you this on cali it's so much much much more entertaining on cali
[02:28:43] or any linux if i break a link like that over here so let's say if i make a directory
[02:28:49] it's like touch um rig file um and then i ln dash s rig file to sim link
[02:29:01] and then i move the file
[02:29:05] i need to touch grass i do move original file wait what now rim or maybe original file
[02:29:13] and now now you see okay this is normally what you would see in fact okay so you see how it's
[02:29:19] it's red that's because there's no original file if i try to open it let's say i already tried it
[02:29:25] i i don't know vi the sim link file is like no can't do it doesn't exist command not well
[02:29:33] is there only been here what what is this gpack
[02:29:42] oh my god nevermind let's check out those are just file so the sim link says the file doesn't
[02:29:53] exist anymore right i mean it's pretty obvious how that's different than the hardlink the hardlink
[02:29:58] both of the items were pointing to the same thing in this case no in this case there are
[02:30:05] this symbolic link it's pointing to the file that doesn't exist if i create another file that
[02:30:09] exists at that location let's say it's in a get repo and i pull it down fresh
[02:30:13] it will still point to whatever that file is it doesn't change it because it's not technically
[02:30:18] the same file it's a separate file pointing to that file so um we can touch a rig file
[02:30:26] and that will resolve the thing and then things all good and i can tag i can tag a rig
[02:30:30] category file it'll work right there's nothing in it but you get the point so um yeah and so that's
[02:30:40] the difference between a symbolic link now the other thing to note here is that the symbolic links
[02:30:46] are relevant or relative so like if you if i go into a different directory um you know you can
[02:30:54] move this symbolic link and it won't point to the same file it'll points it to it relative to
[02:30:59] its current location so so what i'm saying by that is like if i if i let's do this if i make
[02:31:05] directory uh like boo and i make a a i move a rig file into slash boo and then ls-l the same link
[02:31:17] will break obviously because it's not pointing there anymore but if i make a new link if i say i
[02:31:23] want to sim link here um to point to who a rig file um oops i didn't wrong i always do it wrong
[02:31:40] sim link all right okay that because the sim link already exists there's another thing
[02:31:46] app that will change the sim link um and so yeah so ls-l so that's sim link whoops
[02:31:55] and that sim link is now pointing to fool a rig file right if i move a rig file it will break
[02:32:01] but not only that if i move the sim link file it will also break so if i make a new directory
[02:32:07] called bar and i move sim link into bar um you'll see that it loses its reference to to symbolic
[02:32:19] link because the reference is relative okay the reference is relative now there's a way to get
[02:32:26] around this and i'm going to show you right now just because we're on the topic but you'll understand
[02:32:30] it more later and that is to use something called the pwd environment variable so the way to get
[02:32:38] around that is to make a symbolic link that points to the fully qualified name put that in your notes
[02:32:47] the fully qualified name is everything from the slash the very beginning all the way up to the
[02:32:53] file so if we go back here let's move sim link back out where it's working right we're going to move
[02:33:00] it back out and we'll come back out and we'll take a look now at everything and you can see
[02:33:06] that the sim link is pointing it's all working and everything because it's relative you see this
[02:33:11] boo slash original file now it just so happens that that the reason you know this is relative is
[02:33:18] because it doesn't have a slash in front of it right and it's kind of hard to see what we're
[02:33:23] about to do because we're only one directory deep so let's actually make it more interesting right
[02:33:29] so if I put if I make a directory under foo uh actually no let's make a directory under bar
[02:33:38] called foo let's move foo and a rig file into bar all right now our sim link is broken because
[02:33:46] why because it's pointing at you know that relative location now watch I can fix it because it's
[02:33:54] relative the point of this is is that symbolic links are by default relative so this is great
[02:34:00] if you're saving it you can actually have this problem at work because they have been using
[02:34:04] relative links and when you are sync you you can break things if they have to move around so
[02:34:09] we're going to um we're going to move sim link into bar so now everything is in bar together
[02:34:17] and let's see if it works okay it doesn't quite work because where did our foo go
[02:34:25] did I put foo under here where's foo oh I didn't move foo yet apparently I thought I did okay
[02:34:34] so we'll go on to bar all right so bar has oh we moved to original file okay and so now we have
[02:34:41] foo in there and the sim link is still broken because it's pointing to rig file oh I moved a
[02:34:48] rig file all right let's move a rig file back into foo and now you now the sim link is working
[02:34:54] because relative relative path relative path means from here on now I can make relative paths that go
[02:35:03] up they can be dot dot whatever and that means it's referring to this file in the parent directory
[02:35:08] and I can do dot dot slash dot dot go all the way up or I can use a fully qualified link and if I
[02:35:17] were to do that then that always points to that one at that spot and as long as it's not moving around
[02:35:24] it'll be fine so what do I mean by that so I could actually make this symbolic link we can
[02:35:32] actually remake this symbolic link and let's do that ls dash sf to redo it we're going to make it
[02:35:38] point to foo instead of to foo though foo a rig file which is what it would do now we're
[02:35:44] going to do a little trick and we're going to do something I want you to try this and we don't
[02:35:49] know echo yet but pwd oops this pwd is the text of the current working directory so this is the
[02:36:00] first time you're going to see that what we're using the command line we're actually coding
[02:36:05] every single line that we write is a line of code and we're going to come back to that a lot later
[02:36:11] so ln dash sf is now we can type patch pwd and just in case there are spaces in there we don't
[02:36:18] know there might be spaces in there let's put it around quotes and now we can say slash foo
[02:36:23] slash rig file and we get something totally different so did I call it a rig file bad me let's let's
[02:36:35] call it I oh you know why because by default it links to the same name and I forgot to put the
[02:36:40] actual name so let's make two links then I guess so now we now both of the things are pointing to
[02:36:48] this fully qualified name now why is that significant because I'm going to remove a rig file
[02:36:57] now remember before when I moved the same link it broke when I moved the same link before it
[02:37:03] broke right because it was relative if I move the same link now I can move it anywhere let's move
[02:37:07] it under temp there's no temp oh whoops same link under slash temp slash temp which is the temporary
[02:37:16] location for stuff that it goes away when you reboot so my sim like is still working why because
[02:37:22] it's using a fully qualified path and a fully qualified path or the full path means it begins
[02:37:30] with slash that's all and that becomes super important when you start to deal with security or look
[02:37:38] for vulnerabilities or hack somebody because a lot of times they won't use a fully qualified
[02:37:44] path and they'll use a relative path there are lots of ways to take advantage of that
[02:37:51] so that's been way more than you ever wanted to know about how to link
[02:37:57] the reason to do linking like this one of the common reasons ways to read there's lots of
[02:38:02] reasons but one of the most common beginner reasons is you want to put all of your stuff
[02:38:06] into adopt files directory this this this suggestion meets with a lot of controversy
[02:38:13] depending on who you ask uh i still like it is my favorite way to set things up
[02:38:19] i create symbolic links using the pwd to the files and then i put them where they
[02:38:25] must be in order to be observed in my home directory so then when you ls any of those files
[02:38:32] lstache l tilde dot i don't know was term uh that lua you see that is a fully qualified symbolic link
[02:38:41] pointing to a fully qualified symbolic link and why is that valuable because when i make changes
[02:38:48] to give my get dot repo like i want my configuration files and stuff and i do a get pull and i pull
[02:38:54] down all of my stuff it just works because the files according to my system and all of the
[02:39:00] applications on my system the files are where they need to be even though they're not actually there
[02:39:06] and that's a hugely controversial point a lot of people think that that's a bad idea
[02:39:10] a lot of people think it's a good idea i think more people think it's a good idea than bad
[02:39:15] but what that does is that allows you to point things uh to maintain those files
[02:39:21] in a repo under source management which we kind of talked about last week
[02:39:26] and then link to them so you end up with you know set up scripts that create all of these links
[02:39:31] for you up front but it saves you a lot of time in a long run because the alternative would be
[02:39:36] to this would be to copy that file to that location and then when you pull down your files from get
[02:39:45] if you ran set up again you'd have to also put them there right and i very frequently will change
[02:39:52] something in one of those files uh add its location in my home directory and it doesn't matter because
[02:39:58] it's also changing it in my get directory so long as i add it later so you'll see in the in the plan
[02:40:05] for obsidian uh in our docs we're going to be creating our own doc files in github repo and
[02:40:11] we'll be coming back to the symbolic link thing a lot uh for that purpose i believe that concludes
[02:40:19] today's um conversation about file systems uh about understanding them uh a thing i would suggest
[02:40:28] that you seek to understand is what are the different locations of the file system as a beginner
[02:40:36] you don't really need to know all of this we talked about one which on unix is slash proc
[02:40:42] we talked about your home directory uh yeah i did it that way your home directory which is where
[02:40:49] all your files live your main files we talked about slash temp and that's where you can put temporary
[02:40:55] files that are going to just throw away to tell you the truth you really don't need to know anything
[02:41:01] other than that as a beginner right yeah if you go into so let's say you're a beginner this is going
[02:41:07] to go into coding you're not going to need to know about slash dev or slash proc or you know any of
[02:41:14] those the even the mount point stuff that we talked you about if you become an administrator or a
[02:41:20] dev ops person you probably want to know all of that but but if you're just you just want to know
[02:41:25] how to survive and write code you need to know your home directory you need to know whether
[02:41:30] you're in the home directory or you're in root you know and then you need to know about temp because
[02:41:35] you're going to put stuff in temp all the time while you're writing code that you want to modify
[02:41:40] a temporary file and then bring it back so that doesn't really the only locations that you need
[02:41:46] to understand um and applications have have special things that they demand and require
[02:41:56] and that's why LAL you'll see them here um and each one of those applications is different in
[02:42:03] its expectation um when we start writing code we will talk about some of that um like for example
[02:42:13] dot local and and dot you know uh dot ssh and and dot config and dot state there are some standard
[02:42:24] files under your home directory that you should be aware of especially when you start coding but
[02:42:29] we're not going to get into those until we start coding um in general but in general in your home
[02:42:34] directory there's going to be a lot of hidden files that are that are there to help configure
[02:42:39] your different applications and you're going to need to know how to create those files and put those
[02:42:43] files there so that's it and if you have a dot plan I have a dot plan yep
[02:42:55] you can finger my plan if you want we're we're geeking out our old part style it used to be
[02:43:02] in old multi-user Linux there's lots of lots of fun thing in fact if you're on a multi-user
[02:43:06] system you can have a lot of fun with commands that are completely irrelevant today but are
[02:43:11] designed for there used to be a command called finger for example yeah every you could and I kid
[02:43:17] you not this is the exact vernacular you could finger your friend to figure out what they were
[02:43:21] doing and it would show you their dot plan and their dot project file to see what you're working on
[02:43:27] this is way before the internet even happened it the closest thing to social media back then
[02:43:33] was a multi-user Linux unique system and you could finger somebody and you could chat with
[02:43:38] them on the same system as long as you're all in the same system the these are things that
[02:43:43] again they predate the internet by at least 10 years you could definitely finger somebody
[02:43:49] you could finger them you could poke them yeah you could talk them
[02:43:57] i'm not gonna lie i kind of wish those days were back again because it was fun because you had
[02:44:01] the sense that you were all working on the same machine it was just like real sense of locale
[02:44:06] you could type users or you could type who and it would show you all the people that were on the
[02:44:11] system and you know you can't do any of that now i've tried if you if you want to play with that
[02:44:18] kind of stuff go on pico ctf and get on their multi-user system over there and then just like
[02:44:24] app one you can see all of the users that are all logged in simultaneously and stuff
[02:44:30] i used to make a use for the record i used to have a shared server for every all of the students that
[02:44:37] i had as like some 500 people and we were all in the system together and i would encourage them
[02:44:42] to hack each other because if you know that permission stuff that we just did if you do your
[02:44:47] permissions wrong someone else can read your files but not only that they can actually modify them
[02:44:53] they can put stuff in your directory and say i was here it's kind of fun and it teaches you a
[02:44:59] lot about permissions but to tell you the truth all of that stuff is really irrelevant in the
[02:45:04] containerized world it's really not relevant today you do need to still need to know it because
[02:45:09] there are ways you can expose yourself um yeah i said that and but one of the reasons that i don't
[02:45:18] do a shared server is because the main reason is because everybody has to access through the internet
[02:45:25] and if they don't do it properly um the system can easily be denial of service attack or or
[02:45:32] infiltrated by external hackers and then they could just own the whole time in the old system because
[02:45:40] and i know i know hittanis denis does this he doesn't let mind everybody being in there because
[02:45:45] he's in a system that's secure it's a kind of honey potted away but i i don't it takes a lot
[02:45:51] of work to manage that kind of system so we don't do that anyway and it's not relevant to you getting
[02:45:57] a job it's important you know the general idea though how my teeth hurt i gotta find my my teeth
[02:46:03] pulled out two days ago my front teeth just got pulled out my roots just got pulled out
[02:46:10] yeah my roots got pulled out two days ago and i got stitches in my face and i've been talking for
[02:46:15] three hours so time for me to go i'm gonna take off love you guys um let's go ahead and end this
[02:46:24] video and then i won't read out so i i i'm gonna go pick up the antibiotics on my fixie right now
[02:46:33] yeah so if you want to hang with me for that we'll talk about that in a bit bye youtube
