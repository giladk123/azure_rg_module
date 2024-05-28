variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "rg_location" {
  description = "The location/region where the resource group will be created"
  type        = string
}

variable "rg_tags" {
  description = "A mapping of tags to assign to the resource group"
  type        = map(string)
}