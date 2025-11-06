module "s3_bucket" {
  source = "../../../modules/s3/"

  bucket_name   = "my-pucherna-bucket3"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}

# END

# resource "aws_s3_bucket_acl" "example" {
#   bucket = module.s3_bucket.bucket_id
#   acl    = "private"
# }
