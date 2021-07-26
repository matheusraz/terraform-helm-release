data "template_file" "this" {
  template = file("./raz/template.tpl")
  vars = {
    deployment-name = var.deployment-name
    replicas = var.replicas
    app-version = var.app-version
  }
}

resource "helm_release" "example" {
  name       = var.chart-name
  chart      = "./raz"
  namespace  = var.namespace
  values     = [data.template_file.this.rendered]
}