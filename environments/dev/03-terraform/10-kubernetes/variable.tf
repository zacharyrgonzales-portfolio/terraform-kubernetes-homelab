##########################################################################################
# GLOBAL
##########################################################################################

# [Place any global settings or variables here]

##########################################################################################
# NAMESPACES
##########################################################################################

# variable "namespace_name" {
#   description = "The name of the namespace"
#   type        = string
# }

# variable "namespace_labels" {
#   description = "A map of labels to add to the namespace"
#   type        = map(string)
#   default     = {}
# }

# Monitoring Namespace
variable "monitoring_namespace_name" {
  description = "The name of the monitoring namespace"
  type        = string
}

variable "monitoring_namespace_labels" {
  description = "A map of labels to add to the monitoring namespace"
  type        = map(string)
  default     = {}
}

##########################################################################################
# HELM RELEASES
##########################################################################################

# Kube Prometheus Stack Helm Release
variable "kps_release_name" {
  description = "Name of the Helm release."
  type        = string
}

variable "kps_helm_repo_url" {
  description = "Helm repository URL for kube-prometheus-stack."
  type        = string
}

variable "kps_chart_name" {
  description = "Name of the Helm chart for kube-prometheus-stack."
  type        = string
}

variable "kps_chart_version" {
  description = "Version of the Helm chart for kube-prometheus-stack."
  type        = string
}

variable "kps_namespace" {
  description = "Kubernetes namespace where kube-prometheus-stack will be installed."
  type        = string
}

variable "kps_additional_values" {
  description = "Additional values to be passed to the Helm chart."
  type        = map(string)
}

# Cilium Helm Release
# variable "cilium_release_name" {
#   description = "Name of the Helm release for Cilium."
#   type        = string
#   default     = "cilium"
# }

# variable "cilium_helm_repo_url" {
#   description = "Helm repository URL for Cilium."
#   type        = string
#   default     = "https://helm.cilium.io/"
# }

# variable "cilium_chart_name" {
#   description = "Name of the Helm chart for Cilium."
#   type        = string
#   default     = "cilium"
# }

# variable "cilium_chart_version" {
#   description = "Version of the Helm chart for Cilium."
#   type        = string
#   default     = "1.9.1" # Replace with the desired version
# }

# variable "cilium_namespace" {
#   description = "Kubernetes namespace where Cilium will be installed."
#   type        = string
#   default     = "kube-system"
# }

# variable "cilium_node_init_enabled" {
#   description = "Enable or disable node initialization in Cilium."
#   type        = string
#   default     = "true"
# }

# variable "cilium_kube_proxy_replacement" {
#   description = "KubeProxy replacement strategy in Cilium."
#   type        = string
#   default     = "strict"
# }

# variable "cilium_host_services_enabled" {
#   description = "Enable or disable host services in Cilium."
#   type        = string
#   default     = "true"
# }

# variable "cilium_additional_values" {
#   description = "Additional values to be passed to the Cilium Helm chart."
#   type        = map(string)
#   default     = {}
# }
