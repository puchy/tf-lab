terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.51"
    }
  }

  backend "s3" {
    bucket  = "tf-lab-pucherna-bucket"
    key     = "moddev/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
    #dynamodb_table = "tf-lab-pucherna-tfstate-locking"
  }
}

provider "aws" {
  region = "eu-central-1"
}
