# output "root_management_group_id" {
#   value       = azurerm_management_group.root.id
#   description = "The ID of the root management group."
# }

# output "child_management_group_ids" {
#   value       = { for mg in azurerm_management_group.child : mg.name => mg.id }
#   description = "The IDs of the child management groups."
# }

output "root_management_group_ids" {
  value = { for k, v in azurerm_management_group.root : k => v.id }
  description = "The IDs of the root management groups."
}

output "child_management_group_ids" {
  value = { for k, v in azurerm_management_group.child : k => v.id }
  description = "The IDs of the child management groups."
}

output "grandchild_management_group_ids" {
  description = "The IDs of the grandchild management groups."
  value       = { for mg in azurerm_management_group.grandchild : mg.name => mg.id }
}

output "root_management_group_names" {
  description = "The names of the root management groups."
  value       = { for mg in azurerm_management_group.root : mg.name => mg.name }
}

output "child_management_group_names" {
  description = "The names of the child management groups."
  value       = { for mg in azurerm_management_group.child : mg.name => mg.name }
}

output "grandchild_management_group_names" {
  description = "The names of the grandchild management groups."
  value       = { for mg in azurerm_management_group.grandchild : mg.name => mg.name }
}