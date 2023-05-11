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

resource "azurerm_resource_group" "AzureRG" {
    name = "${var.name}-ResourceGroup"
    location = var.location
}

resource "azurerm_sql_server" "AzureSQLServer" {
  name = "${var.name}-sql"
  resource_group_name = azurerm_resource_group.AzureRG.name
  location = azurerm_resource_group.AzureRG.location
  version = "12.0"  // changing this value will force a new resource to be created
  administrator_login = var.admin_username
  administrator_login_password =  var.admin_password
}