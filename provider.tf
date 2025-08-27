terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg1_sumant"
    storage_account_name = "sumant1storaccount"
    container_name       = "sumant1container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2e333137-3307-4678-a744-a2d37508c632"
}