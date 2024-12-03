
module "s3_bucket" {
  #source = "../../../modules/s3/"
  source = "github.com/puchy/tf-lab-module//?ref=v1.0.0"

  bucket_name   = "my-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}

# END
