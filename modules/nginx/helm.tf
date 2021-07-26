data "template_file" "this" {
  template = file("${path.module}/chart/template.tpl")
  vars = {
    deployment-name = var.deployment-name
    replicas = var.replicas
    app-version = var.app-version
  }
}

resource "helm_release" "deploy_helm" {
  name       = var.chart-name
  chart      = "${path.module}/chart"
  namespace  = var.namespace
  values     = [data.template_file.this.rendered]
}