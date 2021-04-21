terraform {
  required_version = ">= 0.15.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "1.4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.53.0"
    }
  }
}
