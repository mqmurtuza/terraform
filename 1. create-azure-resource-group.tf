provider "azurerm" {
  version = "~> 1.44"
}

terraform {
  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate54321"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}
