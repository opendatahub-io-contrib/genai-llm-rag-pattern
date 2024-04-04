---
title: Development scripts
---

# Development scripts

These scripts are useful for development and automation where the gap has not been completely closed.

## `argo-env.sh`

Two argoCD deployments are created by the validated patterns operator. The depending on your identity and RBAC setup you may not get access with `cluster-admin` or similar.

Running (pre-authenticated with `oc`) `sh argo-env.sh` will provide the default admin passwords for each argo instance.
