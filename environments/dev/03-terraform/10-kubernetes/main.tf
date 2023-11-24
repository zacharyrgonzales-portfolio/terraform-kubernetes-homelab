##########################################################################################
# GLOBAL
##########################################################################################

# [Place any global settings or variables here]

##########################################################################################
# NAMESPACES
##########################################################################################

# Monitoring Namespace
module "monitoring_namespace" {
  source           = "../../../terraform-modules/01-kubernetes/10-namespaces"
  namespace_name   = var.monitoring_namespace_name
  namespace_labels = var.monitoring_namespace_labels
}

##########################################################################################
# HELM RELEASES
##########################################################################################

# Kube Prometheus Stack Helm Release
module "kube_prometheus_stack" {
  source                = "../../../terraform-modules/02-helm/10-kube-prometheus-stack"
  kps_release_name      = var.kps_release_name
  kps_helm_repo_url     = var.kps_helm_repo_url
  kps_chart_name        = var.kps_chart_name
  kps_chart_version     = var.kps_chart_version
  kps_namespace         = var.kps_namespace
  kps_additional_values = var.kps_additional_values

  depends_on = [module.monitoring_namespace]
}

# Cilium Helm Release (currently commented out)
# module "cilium" {
#   source = "../../../terraform-modules/02-helm/20-cilium"
#   cilium_release_name           = var.cilium_release_name
#   cilium_helm_repo_url          = var.cilium_helm_repo_url
#   cilium_chart_name             = var.cilium_chart_name
#   cilium_chart_version          = var.cilium_chart_version
#   cilium_namespace              = var.cilium_namespace
#   cilium_node_init_enabled      = var.cilium_node_init_enabled
#   cilium_kube_proxy_replacement = var.cilium_kube_proxy_replacement
#   cilium_host_services_enabled  = var.cilium_host_services_enabled
#   cilium_additional_values      = var.cilium_additional_values
# }
