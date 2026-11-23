# Use explicit ALE linters and fixers

Explains what linters and fixers are in Vim and Neovim and how the ALE plugin runs them, including fix on save. Covers why the author is dropping the old fallback Go formatting code from their vimrc, and shows how to use ALEInfo to see which linters are being picked up automatically. Recommends explicitly listing linters and fixers such as shellcheck and shfmt in your vimrc.

These days ALE linters and fixers are the way to keep your code clean and readable and free of bugs when and if you actually have to edit it by hand (and not by agent).

Chapters:
0:00 Intro to linters and fixers
0:34 How editing has changed with agents
1:29 Why a portable vimrc mattered
2:50 What linters and fixers do
4:18 Removing the old Go formatting fallback
6:06 Finding linter sources with ALEInfo
7:30 Why to list linters explicitly

`#vim #ale #linters #neovim #shellcheck #bash #vimrc #terminal #tips #editors`

## Category

Education

## Transcription

[00:00:00] Okay. Linters and fixtures. These are things that I did not really understand for a long time
[00:00:06] and definitely did not use until relatively recently. And if I did use them, I didn't really
[00:00:12] understand what they were about. And I want to talk about them really quickly about how to enable
[00:00:16] them about some ways you might want to use them explicitly rather than use the implicit ones and
[00:00:22] understand why they work sometimes, sometimes they don't, because a lot of it's built in.
[00:00:26] And then also what you can get rid of from the old school VIMM usage. So before we can get into
[00:00:34] Linters and stuff like that, I need to talk about editing in general and how and why editing files
[00:00:41] has changed over the years really quickly. So first of all, in 2027, most people are not editing
[00:00:46] at all. They're just watching their agents write 81,000 lines of code like mine has for Nomad IRL.
[00:00:55] They're not, they're just letting the agent do the typing and they're not doing a lot of editing.
[00:01:00] So the first thing that does is it completely deflates the editor wars. Who cares? You're going
[00:01:06] to be using an agent and promotes of it. And if you're not, then if you're using who cares how
[00:01:12] the other editor ends up coming around doing it. If you're being based on how fast you type and
[00:01:18] what your efficiencies are, your keyboard mappings and all that, and whether you use a split keyboard
[00:01:22] and all that, then it's kind of silly in 2027 to do that. It just means you don't know what's relevant.
[00:01:29] What's relevant is how fast you're generating the code and you're generating the code fastest
[00:01:33] by using an agent the end. So in that time frame, the guy like me in the 90s who's maintaining 200
[00:01:41] machines or so at a time needed to have a VIMRC that was really portable, that I could put some
[00:01:46] place. And more than that, I needed to be able to be good using V.I. instead of VIM, let me don't
[00:01:51] know what that is, but it predates it, which still exists by the way. So you know, AIX systems,
[00:01:57] some microsystems, busy box, you know, containers, a lot of things use a V.I. that don't use VIM at
[00:02:04] all. And it's pronounced V.I. by the way. And that stuff was what ruled the day. So we had to be
[00:02:13] able to be quick. And we copy our bachelor C over, we copy our VIMRC over to a system. And we didn't
[00:02:18] always have shared drives on which all of our hundreds of machines were loaded so that we could
[00:02:23] just maintain that one VIMRC and have it work everywhere. We did have that. We did have that,
[00:02:28] but not always, right? So sometimes in order to be efficient, you need to move your VIMRC over
[00:02:32] there really quickly. And that's why I'm still prone to having a single VIMRC file as opposed to
[00:02:37] an 80,000-line init.luaf file and a dependency on Neo VIM. I use Neo VIM all the time. I really
[00:02:44] love it. It does really great things such as show me inline mistakes that I'm making
[00:02:53] by running the linter with these pretty commands. That's actually an ale thing, but the fact that
[00:02:58] it's so pretty is a Neo VIM thing. So if you look at my dot files and my VIMRC, you can go look at
[00:03:04] that artybixrob/dot, drop a star on my thing if you want to follow that repo. And take a look
[00:03:12] at the linters. So what do the linters do? The linters actually spot problems. They don't fix
[00:03:17] the problems. They spot the problems and they tell you about it. So Shell Check is a really
[00:03:21] popular one these days. You pass some back script through it and it will give you all the problems,
[00:03:24] right? But you can do that live by adding a linter with ale. And Neo VIM has the equivalent,
[00:03:32] there are Neo VIM people that are anti-ail because ale is a VIM specific thing. They'll complain
[00:03:37] that it's a plug-in, it's heavy and all that. The reason I like that is because it works in VIM
[00:03:40] and Neo VIM. And if I choose to not use the Neo VIM, I don't have Neo VIM, I could still use it.
[00:03:44] So that's why I am still a big ale fan. In fact, so much so, I'm going to write my own linters
[00:03:50] and distribute them for YouTube descriptions, for example, which are sort of a Frankenstein
[00:03:56] version of Markdown. So, and then you have fixers. So what do fixers do? Fixers will
[00:04:01] automatically reformat live on Save, depending on how you have configured. So L, disable OSP,
[00:04:09] L, fix on Save, and stuff like this. So this actually fixes the code. And go users have been
[00:04:15] enjoying fixers and linters for a very long time with VIMGO. So VIMGO does this by default. And it's
[00:04:22] probably, I would say it's probably one of the main reasons that the terminal editor for Go has
[00:04:27] become kind of standard in the Go community since 2026, 2016. And so to that end, I created
[00:04:38] something that would work, even if plugins were not available to VIM. So even if I didn't have ale,
[00:04:44] and I also did not have VIMGO, which was very rare, but if I didn't have that, I had this little
[00:04:50] backup that would run this function, it would run on VIMP really, which is right before VIM
[00:04:56] exits out. And it would run Go FMT against the entire file and reformat it. So it was all pretty,
[00:05:01] you know, it was linted up pretty and formatted so that it would be submitted without any errors.
[00:05:07] And, you know, CI/CD would not have to do any work on it. And now the reason this video is
[00:05:13] being made is because I'm going to delete these lines out of here because I don't need to do it.
[00:05:21] No color scheme loaded, so apply directly. I don't need these lines anymore, right? Because I can
[00:05:27] use, I'm going to allow myself to have a dependency on an ale, on ale, because ale is a plugin. And
[00:05:33] if you don't have plugins in 2027, you know, you're probably not editing your files properly
[00:05:40] given the fact that we're not editing with agent agent.ai that we are, we have jump hosts that have
[00:05:46] shared drives that have those files on there. And we have containers that don't have any
[00:05:50] editor in there at all. So we are figuring out a way to edit things that are going to go into the
[00:05:56] container on our laptops and other places like that. So I just wanted to point to you the direction
[00:06:02] of linters and talk to you about it. Before I leave, though, I want to give you a little quick tip
[00:06:06] that I recently discovered. If you don't know what linter, so up until very recently,
[00:06:15] I had them and I did not have them in here, right? So let's go ahead and remove it for a second.
[00:06:19] And I'll reopen this. And you're like, you can see that I've got a linter working in here, right?
[00:06:23] Well, where's the when where's the linter coming from? Like, who's producing that error?
[00:06:28] And it's really hard when you first start enabling linters and stuff like this to determine what
[00:06:34] that is. But the the answer is pretty simple l info. If you do l info, it'll tell you what
[00:06:39] linters are automatically being used if those binaries are found. And I have there's there's one
[00:06:45] for bash called bash eight. It's horrible. It's absolutely horrible. And it was it was doing some
[00:06:52] stupid stuff. And I was like, I do not want to use this. But it was picking it up. And I did this
[00:06:58] very thing and I was like, I don't have any bash linters turns out shell check is good for both of
[00:07:02] them. Shelf FMT shell check are the best linters and fixers for any shell bash or bash or regular
[00:07:08] positive shell. But so yeah, so you can see here that it was using Vince. Well, the reason it's
[00:07:13] doing it is because I installed vent on here. And for a very long time, longer than I'm I like
[00:07:19] to admit, I did not know how to know where the linters were coming from. And that's where it is.
[00:07:25] It's ale info. And if you want to be more explicit about it, you can actually add them here so that
[00:07:30] someone coming to your VMRC can see which linters and fixers you're using. And they don't have to
[00:07:36] depend on that. And that that will also bypass the the the built in things. So if you go on a system,
[00:07:47] you're not going to be on a shared system in general. But if you were on a show, so you got
[00:07:51] a jump post, right? And you got VIM over there. And you don't have a lot of plugins installed,
[00:07:55] but but somebody has decided to install vent on there, right? You would automatically get
[00:07:59] VIMlanting and you would wonder why you didn't have it at home on your laptop. It's like, what's
[00:08:03] going on? Well, now you can find out, just do ale info. You can go see what programs were installed
[00:08:08] there and why your linters and stuff are all of a sudden working and fixers when when you may not
[00:08:12] have actually explicitly added them. My my preference from now on as of today is to always explicitly
[00:08:20] list my linters. Because if they're not there, you know, I can know about that plus when I'm doing
[00:08:27] my installer, I just recently cleaned up my dog files. And you know, my agent was really was
[00:08:32] really good about finding the linters that I need and putting them in my installer subsection
[00:08:37] of my dot files so I can go in there and auto install those when I from my my my global install
[00:08:42] or whatever. If I'm on my own machine or my own Linux Mac machine, whatever. So hopefully that
[00:08:48] helps you get going with linters and fixers.
