/**
 * # Terraform Azure Module: Available IPs
 *
 * Module responsible for getting available IPs inside a subnet.
 */

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.7"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "null_resource" "keepers" {
  triggers = {
    keepers = local.keepers
  }
}
