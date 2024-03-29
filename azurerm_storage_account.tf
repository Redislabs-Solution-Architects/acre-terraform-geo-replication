resource "azurerm_storage_account" "storage_account" {
  name                     = format("redisgeek%s", random_string.storage_account_name.id)
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })
}
