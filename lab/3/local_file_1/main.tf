terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# V1
# module "file_generator" {
#   source       = "../../../modules/file_generator"
#   file_name    = "example.txt"
#   file_content = "Hello, Terraform!"
# }

module "file_generator" {
  source = "../../../modules/file_generator"

  # files = {
  #   "example1.txt" = "Hello, Terraform 1!"
  #   "Example2.txt" = "Hello, Terraform 2!"
  #   "EXAMPLE3.txt" = "Hello, Terraform 3!"
  # }

  files = {
    "example1" = {
      content   = "Hello, Terraform 1!"
      extension = ".txt"
    }
    "Example2" = {
      content   = "Hello, Terraform 2!"
      extension = ".txt"
    }
    "EXAMPLE3" = {
      content   = "Hello, Terraform 3!"
      extension = ".txt"
    }
  }
}
