resource "azurerm_app_service_plan" "aem_service_plan" {
 name                = var.app_service_plan_name
 location            = var.location
 resource_group_name = var.rg_name
 kind                = "Linux"
 reserved            = true
 sku {
   tier = "Standard"
   size = "B1"
 }
}



resource "azurerm_app_service" "app" {
  count               = length(var.app_services)
  name                = "${var.app_services[count.index]}-${var.environment}"
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = azurerm_app_service_plan.aem_service_plan.id

  site_config {
    linux_fx_version = "DOCKER|${var.acr_url}/${var.acr_username}/${var.app_services[count.index]}"
  }

  app_settings = {
    DOCKER_REGISTRY_SERVER_URL      = var.acr_url
    DOCKER_REGISTRY_SERVER_USERNAME = var.acr_username
    DOCKER_REGISTRY_SERVER_PASSWORD = var.acr_password
    # add any other env variables needed
  }

  tags = var.app_servicetags
}

