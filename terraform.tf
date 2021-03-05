terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.0.1"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.47.0"
    }
  }
}
