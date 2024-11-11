variable "app_service_plan_name" {
  type        = string
  description = "The name of the app service plan."

}
variable "location" {
  type        = string
  description = "The Azure region."
}
variable "rg_name" {
  type        = string
  description = "The name of the resource group."
}
# variable "asp_sku" {
#   type        = map(string)
#   description = "The SKU of the app service plan."
# }

variable "environment" {
    type        = string
    description = "The environment for the resource."
}
variable "app_servicetags" {
    type        = map(string)
    description = "The tags for the resource."
}
variable "app_services" {
  type = list(string)
}
variable "acr_url" {
  type      = string
  sensitive = true
}

variable "acr_username" {
  type      = string
  sensitive = true
}

variable "acr_password" {
  type      = string
  sensitive = true
}
