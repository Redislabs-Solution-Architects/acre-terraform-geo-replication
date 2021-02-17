resource "azurerm_resource_group_template_deployment" "acre" {
  name = format("redisgeek-%s", random_string.acre_name.result)
  resource_group_name = azurerm_resource_group.resource_group.name
  deployment_mode = var.acre_deployment_mode
  template_content = templatefile(var.acre_template_path,
  {
    acre_name = format("redisgeek-%s", random_string.acre_name.result),
    location = azurerm_resource_group.resource_group.location,

  })

  depends_on = [azurerm_resource_group.resource_group]
}