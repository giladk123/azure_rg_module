output "rg_name" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.name })
}

output "rg_location" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.location })
}

output "rg_tags" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.tags })
}

output "rg_id" {
  value = values({ for k, v in azurerm_resource_group.rg : k => v.id })
}

output "all" {
  value = azurerm_resource_group.rg
}