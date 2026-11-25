# 🤷🏻‍♂️ what is up with bitnami/harbor chart?

Examines an apparent mismatch in the Bitnami Harbor Helm chart, which depends on a 15.x.x PostgreSQL subchart while its values file pins the PostgreSQL image to version 13. Also considers whether the Harbor values file leaves out PostgreSQL chart options, such as built-in cron job backups, and invites corrections in the comments.

Chapters:
0:00 Postgres 13 pinned in Harbor values
0:53 PostgreSQL subchart dependency and chart versions
2:07 Built-in backups missing from Harbor values
3:44 Why the version mismatch seems broken

`#helm #harbor #bitnami #postgresql #kubernetes #devops #fail`

## Category

Science & Technology

## Transcription

[00:00:00] All right, we found a bigger problem and I'm just going to show it because it's going
[00:00:07] to be very small.
[00:00:08] I think this is one of the main reasons that I don't like home is that this can exist.
[00:00:15] So Postgres version 13, there's a dependency not only here, but also in the default value
[00:00:22] spot, which I've talked about in another video on Postgres version 13.
[00:00:27] It's app version 13, the Postgres version 13.16, okay.
[00:00:34] And yeah, it says here image 13, right?
[00:00:44] So and then again, the values file is hard coded to the tag version of Postgres version
[00:00:48] of Postgres.
[00:00:50] And maybe I missed something.
[00:00:51] So I'm making a video about this.
[00:00:53] But down here, we see that the repository dependency, this is this is this is how helm
[00:00:58] those sub charts, which I'm not very strong in, but this right here says that there is
[00:01:04] a sub chart dependency on version 15 dot X dot X of the chart of the Postgres chart,
[00:01:13] the bitnommy chart for Postgres, right?
[00:01:17] And if we go to, we use the tool I just wrote to list all of the charts for a given version
[00:01:24] of an app version, we can see that the charts, the chart versions for version 16.4 of the
[00:01:33] Postgres app start at 15.5.
[00:01:37] So 15.5 is the first chart.
[00:01:39] So what we can derive from that I think is that there is a hard coded sub chart dependency
[00:01:49] on the chart of 15, which is a dependency on Postgres version app version 16.4 or higher.
[00:01:59] And yet the image here is 13.16.
[00:02:07] I don't know, I don't know what's going on there, but if indeed it is using, so the
[00:02:13] good news here is if indeed this is pulling in one of the charts from 15 point, whatever,
[00:02:19] we might actually end up getting automated backups through a regular cron job, which can
[00:02:25] be configured through the values.yaml file that I found in the most recent version of
[00:02:30] Postgres's chart, Benami Postgres, but that was not in the harbor yamels file, values
[00:02:38] out file, which we already know is totally screwed up because it's pegged, it's pegged
[00:02:41] at 13 because of an old super old dependency.
[00:02:46] So what I'm trying to say is the harbor values file is totally screwed up, is totally screwed
[00:02:54] up, and there's a fairly strong possibility that it's missing several key areas that
[00:03:02] would have come in from the dependencies chart, including the activation of backups by changing
[00:03:09] one value from false to true, instead of writing your entire Postgres backup solution and attacking
[00:03:17] on your own cron job and your own customized, you know, it's customization as I am, which
[00:03:22] we have done in the past, we've spent a lot of time, it's already written, it's all there,
[00:03:25] it's all already in the Postgres chart, but you just can't see it because you're just
[00:03:29] looking at the yamels file, the values file for harbor, which doesn't include all the
[00:03:34] values that are potentially there for Postgres.
[00:03:35] I could very well be getting something wrong here, but I'm just going to put this out there
[00:03:41] because if you know the answer to this, you want to put a comment in there, please do.
[00:03:44] This is making me absolutely despise home even more because the fact I did this even
[00:03:48] exists right now, if I'm right about this, then this is a, this, this values file, this
[00:03:55] harm, this harm, the same harm, it literally allows people, it's, it's completely broken,
[00:04:06] it's completely broken because it says you have to use the chart 15 point X, you know,
[00:04:14] but then it also forces the dependency on Postgres 13, but 15 point X of the chart is,
[00:04:22] is version 16.4, it's totally broken, that's all, bye.
