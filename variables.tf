variable "acre_deployment_mode" {
  type = string
  default = "Incremental"
}

variable "client_id" {
  description = "Service Principal to use (az ad sp create-for-rbac ...)"
}

variable "client_secret" {
  description = "Client Secret for Service Principal"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "location" {
  type = string
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}