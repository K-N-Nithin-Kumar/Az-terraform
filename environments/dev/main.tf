
module "dev_acr" {
  source             = "../../tf_modules/acr"
  count              = var.create_acr ? length(var.container_registry) : 0
  rg_name            = var.rg_name
  container_registry = element(var.container_registry, count.index)
  acr_sku                = var.acr_sku
  environment        = var.environment
  tags               = var.acr_tags
  admin-enabled      = var.admin_enabled
  location           = var.location
}


# Consuming Vault module
module "dev_vault" {
  source             = "../../tf_modules/key_vault"
  # count              = length(var.vault_name)
  rg_name            = var.rg_name
  location           = var.location
  vault_name         = var.vault_name  # Fixed index reference
  environment        = var.environment
  keyvault_sku       = var.keyvault_sku
  key_permissions    = var.key_permissions
  secret_permissions = var.secret_permissions
}
