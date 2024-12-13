terraform {
  required_providers {
    azurerem = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

provider "azurerem" {
  features {}

}