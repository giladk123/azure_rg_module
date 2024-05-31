locals {
  data          = jsondecode(file("./foundation/rg.json"))
  vnet_settings = jsondecode(file("./network/network.json"))
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