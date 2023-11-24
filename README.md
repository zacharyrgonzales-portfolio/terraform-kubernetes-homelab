# Project Repository Overview

Welcome to our comprehensive Infrastructure-as-Code (IaC) project repository. This repository is a central hub for managing and deploying a robust cloud-native environment, leveraging the power of Terraform, Kubernetes, and Helm. The project is designed to facilitate a streamlined workflow for infrastructure management, application deployment, and continuous integration/testing.

## Documentation

The `docs` directory is your go-to resource for understanding the project. It includes:

- `architecture.md`: A detailed overview of the project's architecture, providing insights into the design decisions and the interaction between different components.
- `setup.md`: Step-by-step instructions to set up the project in your environment. This guide ensures a smooth onboarding process for new team members or when setting up the project afresh.
- `usage.md`: Practical guidelines on how to use the deployed infrastructure and applications, including common use-cases and troubleshooting tips.

## Environments

Under the `environments` directory, each sub-directory represents a distinct deployment environment, such as development (`dev`). This separation allows for tailored configurations and scripts for each environment, ensuring that differences in deployment scenarios are adequately addressed.

### Development Environment

The `dev` environment, specifically, comes equipped with:

- Scripts (`01-scripts`) for various operational tasks, including tool installation, cluster initialization, application deployment, and updates.
- Configuration files (`02-config`), central to defining the specifics of the development environment.
- A dedicated Terraform setup (`03-terraform`) for managing Kubernetes resources, with specific Terraform files (`main.tf`, `outputs.tf`, `variable.tf`, etc.) tailored for development purposes.
- Testing scripts (`05-tests`) to ensure the reliability and stability of the infrastructure and the applications running on it.

## Terraform Modules

The `terraform-modules` directory houses modular Terraform code for creating and managing various Kubernetes and Helm resources. This modular approach enhances reusability and simplifies the management of complex cloud resources.

### Kubernetes and Helm Modules

- Kubernetes modules (`01-kubernetes`) like `10-namespaces`, providing Terraform configurations for creating Kubernetes namespaces and other resources.
- Helm modules (`02-helm`), facilitating the deployment of applications and services using Helm charts. This includes setups for `kube-prometheus-stack`, `cilium`, and other critical cloud-native tools and applications.

## Secrets Management

The `secrets` directory (not included in the tree for security reasons) is designated for managing sensitive information. This directory is crucial for storing credentials, keys, and other confidential data, ensuring they are kept secure and separate from the main codebase.
