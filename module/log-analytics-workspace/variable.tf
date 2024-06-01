variable "law_name" {
  type = string
  description = "The name of the Log Analytics Workspace."
}

variable "rg_location" {
  type = string
  description = "The location where the resource group is created."
}

variable "rg_name" {
  type = string
  description = "The name of the resource group in which the Log Analytics Workspace is created."
}

variable "tags" {
  type = map(any)
  description = "A mapping of tags to assign to the resource."
}

variable "sku" {
  type        = string
  description = "log analytics workspace sku"
}

variable "retention_in_days" {
  type        = number
  description = "retention in days"
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "enable internet ingestion"
}

variable "internet_query_enabled" {
  type        = bool
  description = "enable internet query"
}