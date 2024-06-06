
output "user_identity_ids" {
  description = "Map of user managed identity ids"
  value       = { for k, v in azurerm_user_assigned_identity.user_identity : k => v.id }
}

output "user_identity_principal_ids" {
  description = "Map of user managed identity principal ids"
  value       = { for k, v in azurerm_user_assigned_identity.user_identity : k => v.principal_id }
}

# output "system_identity_ids" {
#   description = "Map of system managed identity ids"
#   value       = { for k, v in azurerm_system_assigned_identity.system_identity : k => v.id }
# }

# output "system_identity_principal_ids" {
#   description = "Map of system managed identity principal ids"
#   value       = { for k, v in azurerm_system_assigned_identity.system_identity : k => v.principal_id }
# }