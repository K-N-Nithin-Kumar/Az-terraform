provider "azurerm" {
  subscription_id = "ae16249d-e828-4fcd-9b36-7860ad16253a"
  features {

  }
}
terraform {
  backend "azurerm" {
    resource_group_name  = "Azure-terraform-AEM"
    storage_account_name = "aeminfrasa"
    container_name       = "dev"
    key                  = "dev.tfstate"
  }
}
