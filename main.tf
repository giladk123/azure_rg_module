module "resource_group" {
  for_each = local.resource_groups

  source = "./module/rg"

  rg_name     = "${local.region}-${local.tenant_name}${local.environment}-${each.value.cmdb_inf}-${each.value.cmdb_prj}-${each.value.name}-rg"
  rg_location = each.value.location
  rg_tags     = each.value.tags

  providers = {
    azurerm = azurerm.subscription
  }
}