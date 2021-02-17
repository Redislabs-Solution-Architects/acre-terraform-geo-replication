data "azurerm_resources" "caches" {
  resource_group_name = azurerm_resource_group.resource_group.name
  name                = format("redisgeek-%s", random_string.acre_name.result)
}

resource "azurerm_private_endpoint" "acre" {
  name                = format("redisgeek-%s", random_string.private_link_name.result)
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  subnet_id           = azurerm_subnet.subnet.id

  private_service_connection {
    name                           = format("redisgeek-sc-%s", random_string.private_link_name.result)
    private_connection_resource_id = var.acre_resource_id
    is_manual_connection           = false
    subresource_names              = ["redisEnterprise"]
  }

  depends_on = [azurerm_resource_group_template_deployment.acre]
}