---
title: Deploying the RAG pattern.
---

## Assumptions

### GPUs

The current demostration relies on [`flash-attention`](https://github.com/Dao-AILab/flash-attention) to decrease memory consumption for the LLM models. Today support to this limited to specific Nvidia GPUs which this system can work with. GPUs which are known to be good include:

- Nvidia L40S
- Nvidia A100
- Nvidia H100/H200

Note: The V100 GPUs are not supported.

### GPU pool management (WIP)

The pattern today allows GPU pools to be managed for scale-out computing via [MCAD](github.com/project-codeflare/multi-cluster-app-dispatcher/) and [Instascale](github.com/project-codeflare/instascale). It is important to note that this is designed primarily to manage scaling for batch workloads.

This works where:

1. The cluster auto-scaler is enabled (e.g. using the assisted installer into your own tenancy on AWS / GCP)
1. Clusters managed via OpenShift Cluster Manager (e.g. ROSA, ARO and OSD)

### Manual setup steps on OSD.
