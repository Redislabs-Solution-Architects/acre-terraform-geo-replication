terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "remote" {
    workspaces { name = "acre-terraform-geo-replication-simple" }
  }
}

provider "azurerm" {
  environment = var.cloud_name
  features {
    template_deployment {
      delete_nested_items_during_deletion = false
    }
  }
}
