resource "azurerm_resource_group" "resource_group" {
  name     = format("redisgeek%s", random_string.resource_group_name.result)
  location = random_shuffle.redisgeek.result[0]
  tags     = merge(var.tags, { owner = data.azuread_service_principal.redisgeek.display_name })
}
