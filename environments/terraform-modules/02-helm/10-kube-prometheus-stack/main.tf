resource "helm_release" "kube_prometheus_stack" {
  name       = var.kps_release_name
  repository = var.kps_helm_repo_url
  chart      = var.kps_chart_name
  version    = var.kps_chart_version
  namespace  = var.kps_namespace

  dynamic "set" {
    for_each = var.kps_additional_values

    content {
      name  = set.key
      value = set.value
    }
  }
}