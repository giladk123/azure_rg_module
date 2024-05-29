output "subscription_info" {
  value = {
    id   = local.subscription_id,
    name = local.subscription_name
  }
  description = "The ID and name of the subscription"
}

output "Resource_Groups_Names" {
  value       = { for k, v in module.resource_group : k => v.rg_name }
  description = "The names of the resource groups"
}

output "Resource_Groups_locations" {
  value       = { for k, v in module.resource_group : k => v.rg_location }
  description = "The locations of the resource groups"
}