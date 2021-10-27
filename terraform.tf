terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "remote" {}
}

provider "azurerm" {
  environment = var.cloud_name
  features {
    template_deployment {
      delete_nested_items_during_deletion = false
    }
  }
}
