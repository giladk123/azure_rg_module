locals {
  json_data = jsondecode(file("./cac/resource_groups.json"))
  resource_groups = local.json_data.resource_groups
  subscription_id = lookup({ for s in data.azurerm_subscriptions.available.subscriptions : s.display_name => s.subscription_id }, local.subscription_name, "")
  subscription_name = "sandbox-${local.json_data.subscription_info.subscription_cmdb}"
  region = local.json_data.naming_convention.region
  tenant_name = local.json_data.naming_convention.tenant_name
  environment = local.json_data.naming_convention.environment
}