# 🎵 Upgrading from Grafana 12.3 to 13.0 using rendered manifest pattern in Helm charts.

A short overview of the Grafana 13.0 release and what it means for upgrades from 12.x, including the move of Helm charts to the grafana-community organization. It explains why to stop using Bitnami Grafana charts and describes using the rendered manifest pattern with helm template and kubectl apply to compare changes between versions.

Upgrading Grafana 12.3 → 13.0.1 and ditching Bitnami charts

Grafana 13.0.1 is now stable—and it's time to migrate off Bitnami Helm charts to the officially maintained grafana-community charts.

Why this matters:

Bitnami charts are no longer the recommended path for new deployments. The grafana-community org now maintains official, actively developed charts with proper version tracking and security updates.

Key changes in v13:

• Safer database migrations — idempotent operations that won't corrupt data if applied multiple times
• Dashboard improvements — timezone preferences preserved during V1→V2 conversion
• RBAC enhancements — stricter permission model, service account security
• Plugin isolation — host environment variables no longer passed by default (security improvement)
• GitOps-friendly — provisioning now includes validation errors in PR comments

What you need to do:

1. Migrate Helm values from Bitnami → grafana-community format
2. Dry-run the upgrade in staging
3. Backup your database before production upgrade
4. Verify datasources and plugins work in v13
5. Test RBAC permissions in new security model

Migration is straightforward but requires planning. I've documented the full upgrade path, breaking changes, and rollback procedures in the boost repo.

`#grafana #helm #kubernetes #devops #bitnami #gitops #observability #infrastructure #monitoring`

## Category

Science & Technology

## Transcription

[00:00:00] All right, I just want to make a really quick video about this in case you haven't heard
[00:00:04] Grafana 13.0 is out, which means there's been a lot of significant changes to this.
[00:00:10] I'm actually creating in the beginner boost under advanced.
[00:00:13] I have a whole document that I use the AI to do the research.
[00:00:16] If you want to save tokens, you can go read my results of the analysis.
[00:00:21] But it boils down to we're migrating from 12.3 to 12.4 and 13.0.
[00:00:27] And there's been a lot of significant changes, probably the biggest change is that they've
[00:00:31] changed from Grafana as an organization to the Grafana Dash community organizations.
[00:00:36] You might not be able to find your home charts, your path to the home charts might have broken.
[00:00:41] And if you are still using, hear me here.
[00:00:44] If you're still using the Bitnami Grafana charts, stop.
[00:00:48] If you haven't already got the memo and where have you been?
[00:00:50] Have you been under Iraq?
[00:00:52] Bitnami is dead.
[00:00:53] Bitnami, anything on Bitnami is totally dead.
[00:00:56] Bitnami, stop supporting everything, put up a huge pay wall.
[00:00:59] They said that they would support their archive versions, but all new versions would be this
[00:01:02] new pay model and everything.
[00:01:04] Get off Bitnami.
[00:01:06] In our case, that means that we had to rewrite Grafana.
[00:01:09] We use the render manifest pattern, which is basically flattening home charts so we can
[00:01:13] compare template to template between versions to see exactly what's changed.
[00:01:16] If you're not doing that, why are you not doing that?
[00:01:19] So think about that and in that process we've had to re-implement the entire thing as of
[00:01:26] what we call a Kate's app, which means it's been this flatten thing with a deploy script
[00:01:31] that covers all of that kind of thing using QPCTL apply against a flat template using
[00:01:38] the Helm template command.
[00:01:40] So have a look at that.
[00:01:41] I just wanted to let you know about that, that that's a thing and that there's probably
[00:01:46] reason for you to upgrade.
