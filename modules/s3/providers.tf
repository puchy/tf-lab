terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Adjust the version based on your needs
    }
  }
}

provider "aws" {
  region = var.region
}
