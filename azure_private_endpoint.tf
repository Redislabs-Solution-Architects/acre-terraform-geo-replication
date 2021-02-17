data "azurerm_resources" "caches" {
  resource_group_name = azurerm_resource_group.resource_group.name
  type                = "Microsoft.Cache/redisEnterprise/databases"
}

resource "azurerm_private_endpoint" "acre" {
  for_each                       = data.azurerm_resources.caches

  name                = format("redisgeek-%s", random_string.private_link_name.result)
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  subnet_id           = azurerm_subnet.subnet.id

  private_service_connection {
    name                           = format("redisgeek-sc-%s", random_string.private_link_name.result)
    private_connection_resource_id = each.value["id"]
    is_manual_connection           = false
    subresource_names              = ["redisEnterprise"]
  }

  depends_on = [azurerm_resource_group_template_deployment.acre]
}