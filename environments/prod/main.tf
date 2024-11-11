
module "dev_acr" {
  source             = "../../tf_modules/acr"
  rg_name            = var.rg_name
  # container_registry = element(var.container_registry, count.index)
  container_registry = var.container_registry
  acr_sku                = var.acr_sku
  environment        = var.environment
  tags               = var.acr_tags
  admin-enabled      = var.admin_enabled
  location           = var.location
}