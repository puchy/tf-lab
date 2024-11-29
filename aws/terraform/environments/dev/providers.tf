terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Adjust the version based on your needs
    }
  }

  backend "s3" {
    bucket         = "tf-lab-pucherna-bucket"
    key            = "moddev/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "tf-lab-pucherna-tfstate-locking"
  }
}

provider "aws" {
  region = "eu-central-1"
}
