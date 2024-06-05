data "azurerm_management_group" "existing" {
  name = "lz-root-mg"  # replace with your existing management group name
}

resource "azurerm_management_group" "root" {
  for_each = { for r in var.management_groups : r.root.name => r }

  name     = each.value.root.name
  parent_management_group_id = data.azurerm_management_group.existing.id
}

resource "azurerm_management_group" "child" {
  for_each = { for mg in flatten([for r in var.management_groups : [for c in r.children : { root = r.root.name, child = c.name, grandchildren = c.grandchildren }]]) : "${mg.root}-${mg.child}" => mg }

  name     = each.value.child
  parent_management_group_id = azurerm_management_group.root[each.value.root].id
}

resource "azurerm_management_group" "grandchild" {
  for_each = { for mg in flatten([for r in var.management_groups : [for c in r.children : [for g in c.grandchildren : { root = r.root.name, child = c.name, grandchild = g.name }]]]) : "${mg.root}-${mg.child}-${mg.grandchild}" => mg }

  name     = each.value.grandchild
  parent_management_group_id = azurerm_management_group.child["${each.value.root}-${each.value.child}"].id
}