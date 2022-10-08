terraform {
  backend "local" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.26.0"
    }
    github = {
      source  = "integrations/github"
      version = "5.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "github" {
}