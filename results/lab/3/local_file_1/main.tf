terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

module "file_generator" {
  source = "../../../modules/file_generator"
  files = {
    "Example1" = {
      content   = "Hello from file 1"
      extension = ".txt"
    }
    "EXAMPLE2" = {
      content   = "Hello from file 2"
      extension = ".txt"
    }
    "example3" = {
      content   = "Hello from file 3"
      extension = ".txt"
    }
  }
}
