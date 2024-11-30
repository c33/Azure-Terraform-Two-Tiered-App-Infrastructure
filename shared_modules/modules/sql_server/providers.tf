terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "f66cb55e-30a4-46c1-b081-46fd3240fec4"
  features {

  }
}
