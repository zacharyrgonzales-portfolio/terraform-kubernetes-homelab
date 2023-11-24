terraform {
  backend "kubernetes" {
    config_path    = "~/.kube/config" # Path to your kubeconfig file
    config_context = "kind-hlb-dev"   # The context of the Kind cluster in your kubeconfig
    secret_suffix  = "state"          # Suffix used when creating secrets
  }
}