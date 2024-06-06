resource "azurerm_user_assigned_identity" "user_identity" {
  for_each = var.user_identities

  name                = each.key
  resource_group_name = var.resource_group_name
  location            = var.location
}