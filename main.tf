locals {
  data = jsondecode(file("./cac/rg.json"))
}
module "resource_group" {

  source = "./module/rg"

  resource_groups = local.data.resource_groups
  subscription_id = local.data.subscription.id
}