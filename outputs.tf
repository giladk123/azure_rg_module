output "all_resource_groups" {
  value       = module.resource_group
  description = "All resource groups created by the resource_group module"
}

output "vnet_ids" {
  value       = [for vnet in values(module.vnet) : vnet.vnet_id]
  description = "The IDs of the Virtual Networks created by the vnet module."
}

output "vnet_names" {
  value       = [for vnet in values(module.vnet) : vnet.vnet_name]
  description = "The names of the Virtual Networks created by the vnet module."
}

output "subnet_ids" {
  value       = [for vnet in values(module.vnet) : vnet.subnet_ids]
  description = "The IDs of the subnets within the Virtual Networks created by the vnet module."
}
output "specific_subnet_id" {
  value = lookup(module.vnet["vnet1"].subnet_ids, "blob", "")
}

output "law_ids" {
  value       = module.log_analytics_workspace.law_ids
  description = "Map of the Log Analytics Workspace ids"
}

output "law_names" {
  value       = module.log_analytics_workspace.law_names
  description = "Map of the Log Analytics Workspace names"
}

output "law_locations" {
  value       = module.log_analytics_workspace.law_locations
  description = "Map of the Log Analytics Workspace locations"
}

# Example of using the lookup function to get a specific resource group name and location
# output "specific_resource_group_name" {
#   description = "The name of a specific resource group"
#   value       = lookup(module.resource_group.rg_name, "we-ydev-azus-opdx-marketing-rg", "")
# }

# output "specific_rg_location" {
#   description = "The location of a specific resource group"
#   value       = lookup(module.resource_group.rg_location, "rg1", "")
# }