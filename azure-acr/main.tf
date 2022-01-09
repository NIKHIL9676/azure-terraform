terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
    name = "var.resource_group_name"
    location = "var.location"
}

resource "azurerm_container_registry" "acr"{
    name = "naveen1357"
    resource_group_name = "var.resource_group_name"
    location = "var.location"
    sku = "Basic"
    admin_enabled = "true"
}

output "admin_password"{
    value = azurerm_container_registry.acr.admin_enabled
    description = "The Object ID of the user"
}
