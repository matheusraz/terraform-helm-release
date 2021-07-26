module "deploy-to-cluster" {
  source = "./modules/nginx"

  chart-name        = var.chart-name
  namespace         = var.namespace
  replicas          = var.replicas
  deployment-name   = var.deployment-name
  app-version       = var.app-version
}