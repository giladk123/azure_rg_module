locals {
  json_data         = jsondecode(file("./cac/resource_groups.json"))
  resource_groups   = local.json_data.resource_groups
  subscription_id   = lookup({ for s in data.azurerm_subscriptions.available.subscriptions : s.display_name => s.subscription_id... }, local.subscription_name, [""])[0]
  subscription_name = local.json_data.subscription_info.name
  region            = local.json_data.naming_convention.region
  tenant_name       = local.json_data.naming_convention.tenant_name
  environment       = local.json_data.naming_convention.environment
  cmdb_infra        = local.json_data.naming_convention.cmdb_inf
  rg_name           = "${local.region}-${local.tenant_name}${local.environment}-${local.cmdb_infra}"
}