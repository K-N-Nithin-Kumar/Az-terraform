# =var.container_registry
#   resource_group_name = var.rg_name
#   location            = var.rg_name.location
#   sku                 = var.sku
#   admin_enabled       = var.admin-enabled

# variable "container_registry"{
#     type = object({
#         container_registry_name = string
#         resource_group_name = string
#         location = string
#         sku = string
#         admin_enabled = bool
#         })
# }


variable "rg_name"{
    type = string
}
variable "container_registry"{
    type = string
}
variable "acr_sku"{
    type = string
}
variable "admin-enabled"{
    type = bool
}
variable "tags"{
    type = map(string)
}
variable "environment" {
    type = string
}
variable "location" {
  type = string
}