resource "azurerm_resource_group_template_deployment" "acre_1" {
  name = format("redisgeek%s", random_string.acre_name_1.result)
  resource_group_name = azurerm_resource_group.resource_group.name
  deployment_mode = var.acre_deployment_mode
  template_content = templatefile(var.acre_template_path,
  {
    acre_name = format("redisgeek%s", random_string.acre_name_1.result),
    location = var.location_1,
    acre_sku = var.acre_sku,
    acre_capacity = var.acre_capacity,
    acre_client_protocol = var.acre_client_protocol,
    acre_eviction_policy = var.acre_eviction_policy,
    acre_cluster_policy = var.acre_cluster_policy
  })

  depends_on = [azurerm_resource_group.resource_group]
}

resource "azurerm_resource_group_template_deployment" "acre_2" {
  name = format("redisgeek%s", random_string.acre_name_2.result)
  resource_group_name = azurerm_resource_group.resource_group.name
  deployment_mode = var.acre_deployment_mode
  template_content = templatefile(var.acre_template_path,
  {
    acre_name = format("redisgeek%s", random_string.acre_name_2.result),
    location = var.location_2,
    acre_sku = var.acre_sku,
    acre_capacity = var.acre_capacity,
    acre_client_protocol = var.acre_client_protocol,
    acre_eviction_policy = var.acre_eviction_policy,
    acre_cluster_policy = var.acre_cluster_policy
  })

  depends_on = [azurerm_resource_group.resource_group]
}
