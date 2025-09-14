####################################################
# Azure Provider Configuration
# Used by all modules in this workspace
####################################################

terraform {
  required_version = ">=1.8.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  cloud {
    organization = "solexb"

    workspaces {
      name = "automation"
    }
  }
}

provider "azurerm" {
  use_cli = false
  features {}
}
