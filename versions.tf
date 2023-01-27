terraform {

  # cloud {
  #   organization = "acme-cloud-demo"

  #   workspaces {
  #     name = "azure-cli"
  #   }
  # }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.40.0"
    }
  }

  required_version = ">= 1.3.7"
}