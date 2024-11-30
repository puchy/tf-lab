terraform {
  source = "../../../modules/s3"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "tf-lab-pucherna-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "tf-lab-pucherna-tfstate-locking"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
