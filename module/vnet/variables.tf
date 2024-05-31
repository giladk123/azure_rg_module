variable "resource_group" {
  type = string
  description = "resource group name"
}

variable "location" {
  type = string
  description = "resource group location"
}

variable "vnet_name" {
  type = string
  description = "name of the vnet"
}

variable "address_space" {
  type = list(string)
  description = "the vnet address space "
}

variable "subnets" {
  type    = list(object({
    name            = string
    address_prefix  = string
  }))
}

variable "tags" {
  type = map(string)
  description = "tags for the vnet"
}
