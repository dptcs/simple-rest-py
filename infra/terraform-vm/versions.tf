terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "=3.4.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.3"
    }
    github = {
      source  = "integrations/github"
      version = "5.3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

provider "github" {
}
