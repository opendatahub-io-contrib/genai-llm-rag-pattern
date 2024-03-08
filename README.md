# rhoai-RAG-pattern.

Today a dominant usecase for deploying Large Language Models (LLMs) within the enteprise is as a enterprise search assistant. LLMs without any underlying context a prone to halucination. Retrieval Augmented Generation (RAG) is an architecture where the LLM is pared with a vector database. The vector database contains a specialised index of enterprise documents which provide 'context' to the LLM allowing more accurate results AND allowing employees to follow up with source documents. This project is a reference pattern for deploying a RAG search assistant built on top of Red Hat OpenShift AI.

## Validated patterns deployment.
This project uses [validated patterns](https://validatedpatterns.io/) to allow this project to be consistently deployed across multiple platforms. The project itself has been forked off of the core [mutlicloud-gitops pattern](github.com/validatedpatterns/multicloud-gitops/).


The current pattern for Red Hat OpenShift AI makes the following assumptions:
1. Single cluster deployment
2. 

Validated patterns currently includes significant boilerplate which will be stripped out over time.


## Deploying and assumption
The deployment method for validated pattenrs is [described here](https://validatedpatterns.io/patterns/multicloud-gitops/mcg-getting-started/).

1. An OpenShift Cluster with
   1. Cluster admin rights logged in with `oc` where the repo is cloned out
   2. Connectivity through to github (or an equivalent git platform)
   3. GPUs on at least one node within the cluster.
