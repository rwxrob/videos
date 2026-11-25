# ⚠️ Golang func docs in per-OS files: the first file alphabetically wins

Explains a Go documentation pitfall when the same function is defined in separate files for different target operating systems or architectures. Shows that go doc uses the documentation from the alphabetically first file, so if that file has none, comments in a later file do not appear. The documentation should either be identical in each file or be placed in the alphabetically first one. Because it applies to all platforms, it should not be specific to just one.

`#golang #go #godoc #programming #documentation #crossplatform #codingtips #warning #protips #coding #education`

## Category

Science & Technology

## Transcription

[00:00:00] This is a quick video to talk about something I found out.
[00:00:05] It's very esoteric, and as far as I know, it's not documented in Go.
[00:00:08] This should be short, but pay attention.
[00:00:10] Here we have, a lot of people may not know this, but you can actually have two different
[00:00:16] files that get one gets compiled for a particular target operating system type or architecture.
[00:00:21] This is a Go thing.
[00:00:22] I'm not going to get into the details of that deeply, but there's something very special
[00:00:26] that I found out.
[00:00:27] That is, the first one, the first file alphabetically wins.
[00:00:32] That's the takeaway.
[00:00:34] What I mean by that is this.
[00:00:35] If you go into this other, you can put this thing at the top here.
[00:00:39] It says, "Any other operating system that's not Windows," right?
[00:00:43] Here is the function.
[00:00:44] There is no documentation for that function, and then we open another one that has the
[00:00:48] same function down here at the bottom that has documentation, but when I do the docs,
[00:00:53] you can see, "Go doc all," you see there's no documentation.
[00:00:56] The reason for that is because the order that is what matters, and we've confirmed this
[00:01:02] with Go doc online as well, so it doesn't find it no matter what, but if I take that
[00:01:07] same documentation and I put it, so there's four lines of documentation, right, four,
[00:01:14] and I put that documentation in the alphabetically first one, it will be documented properly,
[00:01:20] so the same Go doc dash dash all command will actually show it up.
[00:01:24] The moral of the story is make sure your documentation for the functions is either the
[00:01:29] same in both places, which is super hard to keep synchronized, or that it is in the first
[00:01:35] one that wins alphabetically, so if you change the names, make sure you move the documentation.
[00:01:39] Sort of annoying, but make sure you do it, otherwise you will stuff will not be documented.
[00:01:43] If you document both separately, like this one just does this because it's this, that
[00:01:48] will be the final documentation for that function for both and all operating systems and architecture,
[00:01:55] so make sure that you don't do that, which is probably a really easy mistake to make.
