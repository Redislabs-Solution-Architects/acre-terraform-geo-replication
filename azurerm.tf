provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  environment     = var.cloud_name
  features {
    template_deployment {
      delete_nested_items_during_deletion = false
    }
  }
}
