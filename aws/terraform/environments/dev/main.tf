module "s3_bucket" {
  source = "../../../../modules/s3/"

  bucket_name   = "my-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}

# END2
