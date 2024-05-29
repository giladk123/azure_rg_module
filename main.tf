module "resource_group" {

  source = "./module/rg"

  resource_groups = local.resource_groups
  subscription_id = local.subscription_id

}