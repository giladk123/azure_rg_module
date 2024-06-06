variable "resource_group_name" {
  description = "The name of the resource group in which to create the managed identities"
  type        = string
}

variable "location" {
  description = "The location/region in which to create the managed identities"
  type        = string
}

variable "user_identities" {
  description = "Map of user managed identities to create"
  type        = map(string)
  default     = {}
}

variable "system_identities" {
  description = "Map of system managed identities to create"
  type        = map(string)
  default     = {}
}