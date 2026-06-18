terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "= 2.9.0"
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

moved {
  from = module.file_generator["file1"].local_file.this
  to   = module.file_generator.local_file.this
}
