terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.51"
    }
  }
}

provider "aws" {
  region = var.region
}
