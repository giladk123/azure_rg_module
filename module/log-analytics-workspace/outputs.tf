output "law_names" {
  value = { for k, v in azurerm_log_analytics_workspace.new_law : k => v.name }
  description = "Map of the Log Analytics Workspace names"
}

output "law_ids" {
  value = { for k, v in azurerm_log_analytics_workspace.new_law : k => v.id }
  description = "Map of the Log Analytics Workspace ids"
}

output "law_locations" {
  value = { for k, v in azurerm_log_analytics_workspace.new_law : k => v.location }
  description = "Map of the Log Analytics Workspace locations"
}