output "subscription_info" {
  value = {
    id   = local.subscription_id,
    name = local.subscription_name
  }
  description = "The ID and name of the subscription"
}

output "all_resource_groups" {
  value = module.resource_group
}