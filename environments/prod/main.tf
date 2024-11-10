
module "dev_acr" {
  source             = "../../tf_modules/acr"
  count              = var.create_acr ? length(var.container_registry) : 0
  rg_name            = var.rg_name
  container_registry = element(var.container_registry, count.index)
  sku                = var.sku
  environment        = var.environment
  tags               = var.acr_tags
  admin-enabled      = var.admin_enabled
  location           = var.location
}