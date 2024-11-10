resource "azurerm_container_registry" "acr" {
  name                = var.container_registry
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = var.admin-enabled
  tags = {
    name = var.container_registry
    environment = "${var.environment}"
  }
}