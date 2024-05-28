terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.104.0"
    }
  }
}

// Define the default Azure provider
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

// Define an alias provider for subscription
provider "azurerm" {
  features {}
  alias           = "subscription"
  subscription_id = local.subscription_id
}