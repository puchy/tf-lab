terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.77"
    }
  }
}

variable "a" {
  type    = string
  default = null

  validation {
    condition     = (var.a == null && var.b != null) || (var.a != null && var.b == null)
    error_message = "Either variable a or b muset be set"
  }
}

variable "b" {
  type    = string
  default = null
}

provider "azurerm" {
}
