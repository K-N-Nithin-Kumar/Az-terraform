############# FLAG variables ##############
create_acr = true

############# Common Vars #################

rg_name     = "Azure-terraform-AEM"
location    = "EAST US"
environment = "prod"

############# Azure ACR ###################

container_registry = "prod01aemregistry"
acr_sku                = "Standard"
admin_enabled      = true
acr_tags = {
  environment = "prod"
  name        = "devaemregistry"
}