############# FLAG variables ##############
create_acr = true

############# Common Vars #################

rg_name     = "Azure-terraform-AEM"
location    = "EAST US"
environment = "dev"

############# Azure ACR ###################

container_registry = ["dev01aemregistry", "dev02aemregistry"]
acr_sku                = "Standard"
admin_enabled      = true
acr_tags = {
  environment = "dev"
  name        = "devaemregistry"
}

############## Azure Key Vault ################

keyvault_sku = "standard"
vault_name   = "dev01aemvault"

key_permissions = [
  "Get",
  "List",
  "Update",
  "Create",
  "Import",
  "Delete",
  "Recover",
  "Backup",
  "Restore",
]
secret_permissions = [
  "Get",
  "List",
  "Set",
  "Delete",
  "Recover",
  "Backup",
  "Restore",
]
kv_tags = {
  environment = "dev"
  name        = "devaemvault"
}
