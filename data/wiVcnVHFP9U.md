# 🎵 Upgrading from Grafana 12.3 to 13.0 using rendered manifest pattern in Helm charts.

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

`#Grafana #Kubernetes #Helm #DevOps #Infrastructure #Monitoring`

## Transcription

