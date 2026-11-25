# 😱 Minikube cheats and dynamically creates HostPath PVs for PVCs

Explains how Minikube dynamically provisions HostPath persistent volumes for persistent volume claims through its own default storage class, called standard. A manifest with a claim but no persistent volume can therefore work on Minikube but fail on a cluster without dynamic provisioning, such as a fresh on-prem kubeadm setup. Suggested fixes include installing a storage class that supports dynamic provisioning, such as one for NFS.

Chapters:
0:00 Minikube's special default storage class
0:44 Why PVCs fail on a kubeadm cluster
1:46 Minikube's HostPath provisioner breaks the rules
2:43 Fixes and the false expectation created

`#kubernetes #minikube #devops #k8s #kubeadm #storageclass #persistentvolumes #protips #education #cloudnative`

## Category

Science & Technology

## Transcription

[00:00:00] I learned something about Minicube.
[00:00:03] As I was setting up a storage class,
[00:00:05] I set up a storage class at home.
[00:00:07] I mean, I set up a Kubernetes cluster at home
[00:00:09] and then realized I did not have a storage class.
[00:00:11] Now, I knew that you needed data storage class
[00:00:14] and you can watch the big long video of me doing that.
[00:00:17] But there's actually a really interesting tidbit
[00:00:20] that I learned about Minicube.
[00:00:24] Minicube, and I'm gonna read it in chat GPT's words.
[00:00:29] Minicube can dynamically provision persistent volumes
[00:00:33] for persistent volume claims using host path.
[00:00:35] But it does so using an internal default storage class
[00:00:38] called standard.
[00:00:39] It's very special, it's very customized
[00:00:42] and it's this thing that's been added to Minicube.
[00:00:44] Why is that important?
[00:00:45] Because if you're like me, you're gonna,
[00:00:48] you're all proud because you finally got your Kubernetes
[00:00:51] cluster on-prem with Kubernetes M running
[00:00:53] and you're like, oh, great.
[00:00:55] And then you go try out your thing
[00:00:56] and all of a sudden there's no,
[00:00:57] you can't create any PVC persistent volume claims.
[00:01:01] So I had a PVC and the reason that this didn't work
[00:01:04] is because any, for those of you who know,
[00:01:07] no Kubernetes for any PVC, you need a PV,
[00:01:09] a physical, a persistent volume.
[00:01:11] But in almost every case, every cluster you ever normally
[00:01:15] work with, including Minicube, when you create a PVC,
[00:01:19] the system Kubernetes itself, whatever, the provision
[00:01:22] or whatever, I don't even know what thing it is,
[00:01:23] it will actually create a PV to go with the PVC
[00:01:28] if there isn't one there and it will use the system
[00:01:32] default storage class, whatever that is.
[00:01:35] And in the case of, hey, hi, in the case of this,
[00:01:39] we're actually seeing that the persistent volume claim
[00:01:43] that's being created is not, was not being created.
[00:01:46] And I was like, what the hell, Minicube did it.
[00:01:48] And now I'm learning that Minicube is special.
[00:01:51] Minicube uses a host path provisioner,
[00:01:54] which is, a host path is one of the default storage class.
[00:01:57] You still have the added, by the way.
[00:01:59] Host path is a storage class that uses the local disk
[00:02:02] that's attached to each node.
[00:02:04] And you don't normally almost never want to use that
[00:02:06] because that means that storage can't be used anywhere else,
[00:02:09] right?
[00:02:10] So like if you wanted to use, you know,
[00:02:12] and that's, you know, we'll get into storage class later.
[00:02:14] The video is about one thing.
[00:02:16] Minicube breaks the rules.
[00:02:19] Minicube creates a persistent volume for a persistent volume
[00:02:24] claim, even though host path storage class does not dynamically,
[00:02:31] it does not dynamically create PV's for each PVC,
[00:02:34] which means that in my case, my manifest,
[00:02:37] I did not have the creation of a PV
[00:02:40] because I thought it would get automatically created.
[00:02:43] Now there's two ways to fix that.
[00:02:44] One of them would be, you know,
[00:02:46] install a storage class that does dynamic provisioning,
[00:02:49] which includes NFS, by the way, which is what I'm going to do,
[00:02:52] or use Minicube, which has this built-in hack to make it work.
[00:02:58] And yeah, I'm going to avoid a rant right here
[00:03:01] because I'm kind of annoyed by this
[00:03:02] because Minicube is actually building a false expectation
[00:03:06] that your PV's are going to be created for you
[00:03:09] when they are not going to be created for you,
[00:03:11] unless you do it.
[00:03:12] So there you go.
[00:03:14] Take care, leave it.
[00:03:15] But maybe that'll explain why Minicube worked for your PVC
[00:03:20] without your PV manifest
[00:03:22] and why an actual Kubernetes cluster doesn't work
[00:03:27] doing the same thing.
