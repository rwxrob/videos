# ssh-keygen -C comment #linux #ssh #tips #terminal

Shows how to add a comment to a generated SSH key pair with the capital -C option of ssh-keygen and how to choose the output file location with -f. Explains that the public key shares the private key's name with a .pub extension, and that either key file can be used later with ssh -i. Cautions against putting sensitive data such as a social security number in the comment.

`#ssh #sshkeygen #linux #terminal #tips #commandline #security`

## Category

Education

## Transcription

[00:00:00] This is how you do it.
[00:00:01] You just add a capital C and you put your comment there
[00:00:04] and you can put the file anywhere with dash F.
[00:00:07] This is the path to the private key.
[00:00:10] The public key will be that thing dot pub.
[00:00:14] This is the output as it's generating it.
[00:00:18] And you can see here, I'd say it into attempts
[00:00:19] with pub and pub key.
[00:00:21] You can then use those files any time you want
[00:00:23] using just SSH space dash I and point it
[00:00:27] to the private key file, the private file,
[00:00:30] which everybody probably already knows how to do,
[00:00:32] but that's really useful information.
[00:00:35] The main takeaway to this little video is that
[00:00:40] don't add your SSO security number to the comment,
[00:00:42] that'd be a bad idea.
[00:00:43] But yeah, you can add whatever you want
[00:00:44] to the comment over here, that's it.
[00:00:47] That's all there is to this video.
[00:00:48] Maybe you didn't know this, maybe you did.
[00:00:50] I didn't know you do.
