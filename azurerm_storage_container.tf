resource "azurerm_storage_container" "storage_container" {
  name                  = format("%s%s", random_string.storage_account_name.id, random_string.storage_container_name.id)
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}
