############# FLAG variables ##############
create_acr = true

############# Common Vars #################

rg_name     = "Azure-terraform-AEM"
location    = "Canada Central"
environment = "dev"

############# Azure ACR ###################

container_registry = "dev01aemregistry"
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

# App Service
app_service_plan_name = "dev01aemappserviceplan"
app_services      = ["dev01aemappservice", "dev02aemappservice"]
app_servicetags = {
  environment = "dev"
  name        = "devaemappservice"
}

