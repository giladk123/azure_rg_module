resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group
  tags = var.tags
}

resource "azurerm_subnet" "subnets" {
  for_each = { for subnets in var.subnets : subnets.name => subnets}
  name                    = each.key
  resource_group_name     = var.resource_group
  virtual_network_name    = var.vnet_name
  address_prefixes        = [each.value.address_prefix]

  depends_on = [azurerm_virtual_network.vnet]
}