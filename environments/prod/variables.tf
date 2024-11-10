variable "create_acr" {
  type = bool
}

variable "rg_name" {
  description = "The name of the resource group in which ACR is deployed"
  type        = string
}
variable "container_registry" {
  description = "Container registry name"
  type        = list(string)
}
variable "sku" {
  description = "Container registry sku"
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
variable "environment" {
  type = string
}
variable "location" {
  type = string
}