## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.104.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_log-analytics-workspace"></a> [log-analytics-workspace](#module\_log-analytics-workspace) | ./module/log-analytics-workspace | n/a |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | ./module/rg | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ./module/vnet | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_resource_groups"></a> [all\_resource\_groups](#output\_all\_resource\_groups) | All resource groups created by the resource\_group module |
| <a name="output_law_id"></a> [law\_id](#output\_law\_id) | n/a |
| <a name="output_law_name"></a> [law\_name](#output\_law\_name) | n/a |
| <a name="output_specific_subnet_id"></a> [specific\_subnet\_id](#output\_specific\_subnet\_id) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | n/a |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | n/a |
