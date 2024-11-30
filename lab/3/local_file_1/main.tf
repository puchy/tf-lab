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
module "file_generator" {
  source       = "../../../modules/file_generator"
  file_name    = "example.txt"
  file_content = "Hello, Terraform!"
}
