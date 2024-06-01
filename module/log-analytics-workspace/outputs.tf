output "law_name" {
  value = azurerm_log_analytics_workspace.new_law.name
  description = "value of the Log Analytics Workspace name"
}

output "law_id" {
  value = azurerm_log_analytics_workspace.new_law.id
  description = "value of the Log Analytics Workspace id"
}

output "law_location" {
  value = azurerm_log_analytics_workspace.new_law.location
  description = "value of the Log Analytics Workspace location"
}
