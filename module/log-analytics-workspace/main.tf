resource "azurerm_log_analytics_workspace" "new_law" {
  name                       = var.law_name
  location                   = var.rg_location
  resource_group_name        = var.rg_name
  sku                        = var.sku
  retention_in_days          = var.retention_in_days
  internet_ingestion_enabled = var.internet_ingestion_enabled
  internet_query_enabled     = var.internet_query_enabled

  tags = var.tags
}
