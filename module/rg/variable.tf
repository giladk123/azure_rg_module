variable "resource_groups" {
  description = "Map of resource group details"
  type = map(object({
    rg_name     = string
    cmdb_prj    = string
    tnnt_env    = string
    region      = string
    rg_location = string
    rg_tags     = map(string)
  }))
  default = {}
}