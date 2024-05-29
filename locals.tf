locals {
  data    = jsondecode(file("./cac/rg.json"))
  resource_groups   = local.data.resource_groups
  subscription_id   = lookup({ for s in data.azurerm_subscriptions.available.subscriptions : s.display_name => s.subscription_id... }, local.subscription_name, [""])[0]
  subscription_name = local.data.subscription_info.name
}