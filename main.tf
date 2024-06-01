locals {
  data                    = jsondecode(file("./ccoe/rg.json"))
  vnet_settings           = jsondecode(file("./network/network.json"))
  log_analytics_workspace = jsondecode(file("./ccoe/log_analytics_workspace.json"))
  subscription            = jsondecode(file("./ccoe/subscription.json"))
}

module "subscription" {
  source = "./module/subscription"

  subscription_name    = local.subscription.subscription_name
  billing_account_name = local.subscription.billing_account_name
  billing_profile_name = local.subscription.billing_profile_name
  invoice_section_name = local.subscription.invoice_section_name
}

module "resource_group" {

  source = "./module/rg"

  resource_groups = local.data.resource_groups


}

module "vnet" {
  source   = "./module/vnet"
  for_each = { for k, v in local.vnet_settings : k => v }

  vnet_name      = each.value.vnet_name
  address_space  = each.value.address_space
  location       = each.value.location
  resource_group = lookup(module.resource_group.rg_name, "${each.value.resource_group_name}", "")
  tags           = each.value.tags
  subnets        = each.value.subnets

  depends_on = [module.resource_group]

}

module "log-analytics-workspace" {
  source = "./module/log-analytics-workspace"

  law_name                   = local.log_analytics_workspace.law_name
  rg_location                = lookup(module.resource_group.rg_location, "${local.log_analytics_workspace.location}", "")
  rg_name                    = lookup(module.resource_group.rg_name, "${local.log_analytics_workspace.resource_group_name}", "")
  sku                        = local.log_analytics_workspace.sku
  retention_in_days          = local.log_analytics_workspace.retention_in_days
  internet_ingestion_enabled = local.log_analytics_workspace.internet_ingestion_enabled
  internet_query_enabled     = local.log_analytics_workspace.internet_query_enabled
  tags                       = local.log_analytics_workspace.tags

  depends_on = [module.resource_group]

}

