terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.4.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.0.1"
    }
    rediscloud = {
      source = "RedisLabs/rediscloud"
      version = "0.2.1"
    }
    tfe = {
      version = "~> 0.24.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.47.0"
    }
  }
}

provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  environment     = var.cloud_name
  features {}
}
