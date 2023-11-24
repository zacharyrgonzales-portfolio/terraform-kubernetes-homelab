resource "helm_release" "cilium" {
  name       = var.cilium_release_name
  repository = var.cilium_helm_repo_url
  chart      = var.cilium_chart_name
  version    = var.cilium_chart_version
  namespace  = var.cilium_namespace

  set {
    name  = "global.nodeinit.enabled"
    value = var.cilium_node_init_enabled
  }

  set {
    name  = "global.kubeProxyReplacement"
    value = var.cilium_kube_proxy_replacement
  }

  set {
    name  = "global.hostServices.enabled"
    value = var.cilium_host_services_enabled
  }

  // Dynamically creating 'set' blocks for additional values
  dynamic "set" {
    for_each = var.cilium_additional_values

    content {
      name  = set.key
      value = set.value
    }
  }
}
