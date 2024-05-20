---
title: Deploying the RAG pattern
---

## Overview

This project uses the [validated patterns operator](https://validatedpatterns.io), an opinionated gitops system, to deploy onto an OpenShift cluster.

## Assumptions

### GPUs

The current demonstration relies on [`flash-attention`](https://github.com/Dao-AILab/flash-attention) to decrease memory consumption for the LLM models. Today support to this limited to specific Nvidia GPUs which this system can work with. GPUs which are known to be good include:

- Nvidia L40S
- Nvidia A100
- Nvidia H100/H200

Note: The V100 GPUs are not supported.

### GPU pool management (WIP)

The pattern today allows GPU pools to be managed for scale-out computing via [MCAD](https://github.com/project-codeflare/multi-cluster-app-dispatcher/) and [Instascale](https://github.com/project-codeflare/instascale). It is important to note that this is designed primarily to manage scaling for batch workloads.

This works where:

1. The cluster auto-scaler is enabled (e.g. using the assisted installer into your own tenancy on AWS / GCP)
1. Clusters managed via OpenShift Cluster Manager (e.g. ROSA, ARO and OSD)

### Bootstrap machine

`git` and `podman` are required on the bootstrap machine.
A valid `KUBECONFIG` is required making `oc` (recommended) or `kubectl` strongly recommended.

## Setup workflow

1. Start `podman`

1. **Fork** the [git repository](https://github.com/opendatahub-io-contrib/genai-llm-rag-pattern)

   1. Forking is required in order to customise the configuration.
   1. It is significantly easier to start with a public repository.

1. Clone the forked git repository.

1. Customise the `values-global.yaml` (see below)

1. `cp ./values-secret.yaml.template ~/values-secret-gen-llm-rag-pattern.yaml` and fill in required secrets

1. `cd` into the repository and `./pattern.sh make install`

## REQUIRED configuration in order to function

### Multicloud Object Gateway
