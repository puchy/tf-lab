terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.3.0"
    }
  }
}

resource "null_resource" "dev" {}
