# Azure provider credentials

variable "azure_subscription_id" {
  type = "string"
}

variable "azure_client_id" {
  type = "string"
}

variable "azure_client_secret" {
  type = "string"
}

variable "azure_tenant_id" {
  type = "string"
}

#-----------------------------

variable "filename" {
  type = "string"
}

variable "str" {
  type = "string"
}

variable "cn"{
  type = "string"
}

variable "rg_exists" {
  type        = "string"
  description = "Creating RG on not depends on this parameter"
}
variable "rg" {
  type        = "string"
  description = "Unique resource group name for cluster"
}

variable "rg_location" {
  type        = "string"
  description = "Resource group location for cluster"
}

variable "vnet_name" {
  type        = "string"
}