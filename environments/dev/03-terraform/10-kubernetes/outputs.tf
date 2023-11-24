##########################################################################################
# GLOBAL
##########################################################################################

# [Place any global settings or variables here]

##########################################################################################
# NAMESPACES
##########################################################################################

# Monitoring Namespace
output "monitoring_namespace_name" {
  description = "The name of the created namespace"
  value       = module.monitoring_namespace.namespace_name
}

##########################################################################################
# HELM RELEASES
##########################################################################################

# Kube Prometheus Stack Helm Release
# output "kube_prometheus_stack_status" {
#   description = "The status of the Kube Prometheus Stack Helm release."
#   value       = module.kube_prometheus_stack.kube_prometheus_stack_release_status
# }

# output "cilium_helm_release_status" {
#   description = "The status of the Cilium Helm release."
#   value       = module.cilium.cilium_helm_release_status
# }

