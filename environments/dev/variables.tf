# Common vars
variable "environment" {
  type = string
}
variable "location" {
  type = string
}
variable "rg_name" {
  description = "The name of the resource group in which ACR is deployed"
  type        = string
}

# Container - registry
variable "create_acr" {
  type = bool
}

variable "acr_sku" {
  description = "ACR sku"
  type        = string
}

variable "container_registry" {
  description = "Container registry name"
  type        = string
}

variable "admin_enabled" {
  description = "Container registry admin enabled i.e admin user enablement."
  type        = bool
  default     = false
}
variable "acr_tags" {
  type = map(string)
  default = {

  }
}


# Key Vault 

variable "vault_name" {
  type        = string
  description = "The name of the key vaults to be created."
}

variable "key_name" {
  type        = string
  description = "The name of the key to be created. The value will be randomly generated if blank."
  default     = ""
}

variable "keyvault_sku" {
  type        = string
  description = "The SKU of the vault to be created."
  default     = "standard"
  validation {
    condition     = contains(["standard", "premium"], var.keyvault_sku)
    error_message = "The sku_name must be one of the following: standard, premium."
  }
}

variable "key_permissions" {
  type        = list(string)
  description = "List of key permissions."
  default     = ["List", "Create", "Delete", "Get", "Purge", "Recover", "Update", "GetRotationPolicy", "SetRotationPolicy"]
}

variable "secret_permissions" {
  type        = list(string)
  description = "List of secret permissions."
  default     = ["Set"]
}

variable "key_type" {
  description = "The JsonWebKeyType of the key to be created."
  default     = "RSA"
  type        = string
  validation {
    condition     = contains(["EC", "EC-HSM", "RSA", "RSA-HSM"], var.key_type)
    error_message = "The key_type must be one of the following: EC, EC-HSM, RSA, RSA-HSM."
  }
}

variable "key_ops" {
  type        = list(string)
  description = "The permitted JSON web key operations of the key to be created."
  default     = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
}

variable "key_size" {
  type        = number
  description = "The size in bits of the key to be created."
  default     = 2048
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. If this value isn't null (the default), 'data.azurerm_client_config.current.object_id' will be set to this value."
  default     = null
}
variable "kv_tags"{
    type = map(string)
}

# App service
variable "app_service_plan_name" {
  type        = string
  description = "The name of the app service plan."

}

variable "app_servicetags" {
    type        = map(string)
    description = "The tags for the resource."
}
variable "app_services" {
  type = list(string)
}



