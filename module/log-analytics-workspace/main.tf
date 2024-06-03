resource "azurerm_log_analytics_workspace" "new_law" {
  for_each = var.workspaces

  name                       = each.value.law_name
  location                   = each.value.rg_location
  resource_group_name        = each.value.rg_name
  sku                        = each.value.sku
  retention_in_days          = each.value.retention_in_days
  internet_ingestion_enabled = each.value.internet_ingestion_enabled
  internet_query_enabled     = each.value.internet_query_enabled

  tags = each.value.tags
}
