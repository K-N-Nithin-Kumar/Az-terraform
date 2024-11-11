
module "dev_acr" {
  source             = "../../tf_modules/acr"
  # count              = var.create_acr ? 1 : 0
  rg_name            = var.rg_name
  # container_registry = element(var.container_registry, count.index)
  container_registry = var.container_registry
  acr_sku                = var.acr_sku
  environment        = var.environment
  tags               = var.acr_tags
  admin-enabled      = var.admin_enabled
  location           = var.location
}

# # Consuming Vault module
# module "dev_vault" {
#   source             = "../../tf_modules/key_vault"
#   # count              = length(var.vault_name)
#   rg_name            = var.rg_name
#   location           = var.location
#   vault_name         = var.vault_name  # Fixed index reference
#   environment        = var.environment
#   keyvault_sku       = var.keyvault_sku
#   key_permissions    = var.key_permissions
#   secret_permissions = var.secret_permissions
#   kv_tags            = var.kv_tags
# }


# Consuming App Service module
module "dev_app_service" {
  source             = "../../tf_modules/app_service"
  rg_name            = var.rg_name
  location           = var.location
  app_service_plan_name = var.app_service_plan_name
  app_services       = var.app_services
  environment        = var.environment
  app_servicetags    = var.app_servicetags
  acr_url      = module.dev_acr.acr_url
  acr_username = module.dev_acr.acr_username
  acr_password = module.dev_acr.acr_password
}

