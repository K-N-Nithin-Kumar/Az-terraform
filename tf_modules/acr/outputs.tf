
output "acr_url" {
  value     = azurerm_container_registry.acr.login_server
  sensitive = true
}

output "acr_username" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = true
}

output "acr_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}


