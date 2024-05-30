output "subscription_info" {
  value       = local.data.subscription.id
  description = "The ID and name of the subscription"
}

output "all_resource_groups" {
  value       = module.resource_group
  description = "All resource groups created by the resource_group module"
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