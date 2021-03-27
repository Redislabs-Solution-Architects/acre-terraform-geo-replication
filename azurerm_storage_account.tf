resource "azurerm_storage_account" "storage_account" {
  name                     = format("redisgeek%s", random_string.storage_account_name.result)
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = merge(var.tags, { owner = data.azuread_service_principal.redisgeek.display_name })
}
