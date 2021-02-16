resource "azurerm_virtual_network" "vnet" {
  name                = format("redisgeek-%s", random_string.vnet_name.result)
  depends_on          = [azurerm_resource_group.resource_group]
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
}

resource "azurerm_subnet" "subnet" {
  name                 = format("redisgeek-%s", random_string.subnet_name.result)
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}