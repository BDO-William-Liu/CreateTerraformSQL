terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_sql_server" "AzureSQLServer" {
  name = var.name
  resource_group_name = var.resource_group
  location = var.location
  version = "12.0"  // changing this value will force a new resource to be created
  administrator_login = var.admin_username
  administrator_login_password =  var.admin_password
}