output "kube_prometheus_stack_release_status" {
  description = "The status of the kube-prometheus-stack Helm release."
  value       = helm_release.kube_prometheus_stack.status
}
