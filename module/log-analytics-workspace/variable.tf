variable "law_name" {
  type = string
}

variable "rg_location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "tags" {
  type = map(any)
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