module "s3_bucket" {
  #source = "../../../modules/s3/"
  source = "git::https://github.com/puchy/tf-lab-module.git?ref=v1.0.1"

  bucket_name   = "my-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}

# END
