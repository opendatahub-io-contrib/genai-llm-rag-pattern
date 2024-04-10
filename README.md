<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/Logo_LLM_RAG_Pattern.png" alt="Logo" width="160" height="160">
  </a>

  <h3 align="center">Validated Pattern for Retrieval-Augmented Generation (RAG) with LLM</h3>
  
  <p align="center">
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

This project is a reference pattern for deploying an Enterprise Search Assistant based on Retrieval-Augmented Generation (RAG) with Large Language Models (LLMs), built on top of Red Hat OpenShift AI. By integrating a dynamic retrieval mechanism, it enables the chosen LLM to pull relevant information from extensive data sources stored in a vector databse, enhancing response accuracy and relevance. This approach not only broadens the model's knowledge base beyond its initial training but also ensures that its outputs are informed by the most current data available as the vector database contains a specialised index of enterprise documents which provide 'context' to the LLM allowing more accurate results but also allowing users to refer to source documents.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

This project uses [validated patterns](https://validatedpatterns.io/) to allow consistent deployment across multiple platforms. The project itself was initially forked off of the core [mutlicloud-gitops pattern](github.com/validatedpatterns/multicloud-gitops/).

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* An OpenShift Cluster with
  * Cluster admin rights logged in with `oc` where the repository is cloned out
  * Connectivity through to GitHub (or an equivalent git platform)
  * GPUs on at least one node within the cluster.

* The current demonstration relies on [`flash-attention`](https://github.com/Dao-AILab/flash-attention) to decrease memory consumption for the LLM models. In order to run end-to-end demonstrations on this pattern, it is therefore recommended to have access to specific Nvidia GPUs which provide this capability, including:
  * Nvidia L40S
  * Nvidia A100
  * Nvidia H100/H200

### Installation

The deployment method for validated pattenrs is [described here](https://validatedpatterns.io/patterns/multicloud-gitops/mcg-getting-started/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the Apache-2.0 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screenshot.png
