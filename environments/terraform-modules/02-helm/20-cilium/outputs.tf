output "cilium_helm_release_status" {
  description = "The status of the Cilium Helm release."
  value       = helm_release.cilium.status
}
