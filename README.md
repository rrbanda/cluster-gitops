
# Cluster-GitOps Repository

## Structure Overview
- **Key Directories**:
  - `clusters`: Defines configurations for managing OpenShift clusters in a GitOps model.
  - `components`: Contains reusable manifests for shared infrastructure or application components.
  - `tenants`: Isolates configurations for multi-tenant setups, ensuring segregation for different teams or projects.
- **Files**:
  - `bootstrap.sh`: Script for automating the initial setup, such as linking OpenShift with ArgoCD.
  - `README.md`: Documentation for understanding and using the repository.
  - Config files:
    - `.yamllint`: Ensures YAML configurations adhere to best practices.
    - `.spellcheck.yaml`: Configures spell checking for consistency in documentation.

## Usage in ArgoCD and OpenShift
- **Cluster-Level Management**:
  - Provides a declarative way to manage OpenShift clusters using GitOps principles.
  - Ensures consistency and repeatability across different environments.
- **Multi-Tenant Support**:
  - Enables isolated configurations for different tenants, enhancing flexibility for teams.
- **Benefits**:
  - Simplifies cluster setup and maintenance.
  - Streamlines infrastructure and application component reuse.


# Welcome to the Red Hat Composer AI Infrastructure GitOps project\! This project is a fork of the upstream [AI Accelerator project](https://github.com/redhat-ai-services/ai-accelerator) and is designed to deploy all of the required cluster components for Composer AI to an OpenShift cluster.

![AI Accelerator Overview](documentation/diagrams/AI_Accelerator.drawio.png)

## Installation

### Prerequisites

- Openshift 4.16+ cluster

> [!IMPORTANT]  
> There is a known issue with using Kubernetes version 4.17 in relation to the Node Feature Discovery Operator, which causes issues allocating nodes that use GPUs. It is recommended to avoid this version for now.

### Quick Start

Installation can be done using `./bootstrap.sh` script.

> [!TIP]  
> First time installs it is recommended to allow the script to walk through options, but future runs can be automated using cli flags, run `./bootstrap --help` for more information.

## Additional Documentation and Info

* [Overview](documentation/overview.md) - what's inside this repository?
* [Installation Guide](documentation/installation.md) - containing step by step instructions for executing this installation sequence on your cluster

### Operators

* [Authorino Operator](components/operators/authorino-operator/)
* [NVIDIA GPU Operator](components/operators/gpu-operator-certified/)
* [Node Feature Discovery Operator](components/operators/nfd/)
* [OpenShift AI](components/operators/openshift-ai/)
* [OpenShift Pipelines](components/operators/openshift-pipelines/)
* [OpenShift Serverless](components/operators/openshift-serverless/)
* [OpenShift ServiceMesh](components/operators/openshift-servicemesh/)

### Applications

* OpenShift GitOps: [ArgoCD](components/argocd/)
* S3 compatible storage: [MinIO](components/apps/minio)

### Configuration

* [Bootstrap Overlays](bootstrap/overlays/)
* [Cluster Configuration Sets](clusters/overlays/)

### Tenants

* [Tenant Examples](tenants/)
