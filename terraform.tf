terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.104.0"
    }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "3.3.2"
    # }
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

// Define an alias provider for the first subscription
provider "azurerm" {
  features {}
  alias           = "subscription"
  subscription_id = local.subscription_id
}

# // Define an alias provider for the sandbox subscription
# provider "azurerm" {
#   features {}
#   alias           = "sandbox-sb"
#   subscription_id = "305f81c7-dc9e-4f49-97f7-edea3620656d"
# }

# provider "random" {}

# resource "random_string" "myrandom" {
#   length  = 6
#   upper   = false
#   special = false
#   numeric = true
# }