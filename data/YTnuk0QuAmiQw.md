# 🐍 Python prompt to load venv in 13 lines of .bashrc

Demonstrates a custom bash prompt that detects a .venv directory, asks whether to load it, and shows a Python indicator once the virtual environment is active. Walks through the function behind it, which runs through PROMPT_COMMAND and remembers the answer for each directory in a bash associative array for the current shell.

The simplest way to remember to load a python virtual environment without all the bloat.

Chapters:
0:00 Demo of the virtual environment prompt
0:55 Setting PS1 and using PROMPT_COMMAND
1:21 Detecting .venv and caching directory answers
2:29 Asking, activating, and updating the prompt

`#bash #python #bashrc #venv #terminal #shellscripting #programming`

## Category

Science & Technology

## Transcription

[00:00:00] hey there we have been having fun with making our own prompts that's right you
[00:00:06] don't need almost the shell to make your own pretty prompts and one of the things
[00:00:10] I hate the most about Python is Python virtual environments and so we made it
[00:00:14] do this so right now I'm just in my normal prompt and I want to go into a
[00:00:19] directory that has oh look at that it's a directory that has a dot vnv you know
[00:00:26] sub whatever you want to call it a sub directory there and so then we're
[00:00:33] gonna accept it we say yeah I want to use that and so we say enter and then
[00:00:37] never now on it tells us we have a thing and even if we go back to wherever we
[00:00:41] were when we come back there we get a cool little Python that tells us we're
[00:00:46] in a Python virtual environment and that it has been loaded and you can do
[00:00:50] which Python and you can see which Python is there and and all that so how do we
[00:00:55] make that it's actually pretty easy once you have your own function or making
[00:01:01] your own prompt and why don't you it's not that hard you can do ps1 like this
[00:01:07] and you can control it and then you can use you can use the the very powerful
[00:01:12] bash prompt command which runs any that runs this every single time your prompt
[00:01:16] runs and so we can put the LUNV function inside of that which will now go over
[00:01:21] a little bit so the first thing we do is we look to see if there is a
[00:01:25] virtual Python virtual environment then we check to see if it's on it's already
[00:01:29] been turned on which means that we are you know that Python is in a dot vnv
[00:01:35] been Python that's what this is doing this is a regular expression check to
[00:01:38] sell to check to see if this is at the end of the string that which Python
[00:01:42] shows us where we're at we declare a vnv hash this is only in bash I think 3.5
[00:01:49] and big above which are key-value pairs kind of like Redis if you know what it
[00:01:53] is and LLE this is found this says do to be
[00:01:57] find it if we found one then go ahead and return we already know what we're
[00:02:01] doing if we have a virtual environment I go ahead and return or I'm sorry if we
[00:02:05] found one we either found a virtual environment or return that means we're
[00:02:10] in a directory that doesn't even have dot vnv in it okay and when we get down
[00:02:13] here we say okay did I already ask the question about whether it should be used
[00:02:17] or not okay so that's what it's saying it's saying okay if I never even asked
[00:02:21] the question before or if I have already asked the question and I cashed the
[00:02:24] answer in this shell then I'm gonna go keep it right so then then we say okay
[00:02:29] if we get this far it's like I don't I haven't asked the question so I'm gonna
[00:02:32] go ahead and ask put the answer and answer this drops the case this is a
[00:02:36] lower pray lower case so you guys see a bug what bugs you see and then we check
[00:02:41] to see if the answer is empty and if I mean if the answer if the answer is
[00:02:48] empty then the default answer becomes yes so that you can just push and run it
[00:02:51] gets accepted as yeah and so here we go so then we go we add for our current
[00:02:58] directory a current working directory we'll go ahead and add the answer in this
[00:03:01] case why and then we check to see if the beginning of the answer is why and if
[00:03:04] it is then we run the activate script and as soon as it's activated every time
[00:03:10] the prompt runs we added a line to the prompt that says we check the cache
[00:03:16] every time the prompt runs and say hey do I have an entry and was the entry yes
[00:03:21] for this directory and if so we change our dollar dollar you know our dollar
[00:03:26] prompt into a python and so that gives us the opportunity to go to see that
[00:03:33] we're in a python virtual environment that's already been loaded and it helps
[00:03:36] you annoy just one of the many things are annoying about python but hopefully
[00:03:41] that helps bye
