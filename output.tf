locals {
  redisgeek_config = {
    resource_group_name = azurerm_resource_group.resource_group.name
  }
}

output "redisgeek_config" {
  value     = jsonencode(local.redisgeek_config)
  sensitive = false
}
