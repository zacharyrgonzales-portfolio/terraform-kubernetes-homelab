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
