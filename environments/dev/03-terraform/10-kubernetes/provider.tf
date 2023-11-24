terraform {
  required_version = "~>1.6.3"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2.0" 
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~>2.0" 
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "kind-hlb-dev"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}