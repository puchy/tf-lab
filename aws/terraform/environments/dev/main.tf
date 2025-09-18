module "s3_bucket" {
  source = "../../../../modules/s3/"

  bucket_name   = "my-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}

# module "s3_bucket_2" {
#   source = "../../../../modules/s3/"

#   bucket_name   = "my-pucherna-bucket-2"
#   force_destroy = true
#   tags = {
#     Environment = "Dev"
#     Project     = "TerraformModuleExample"
#   }
# }

# module "s3_bucket_for_each" {
#   #source = "../../../../modules/s3/"
#   source = "github.com/puchy/tf-lab-module//?ref=v1.1.0"
#   for_each = toset(["my-pucherna-bucket","my-pucherna-bucket-2","my-pucherna-bucket-3","my-pucherna-bucket-4"])

#   bucket_name   = each.value
#   force_destroy = true
#   tags = {
#     Environment = "Dev"
#     Project     = "TerraformModuleExample"
#   }
# }

# END2

# moved {
#   from = module.s3_bucket.aws_s3_bucket.this
#   to   = module.s3_bucket_for_each["my-pucherna-bucket"].aws_s3_bucket.this
# }

# moved {
#   from = module.s3_bucket.aws_s3_bucket_versioning.this
#   to = module.s3_bucket_for_each["my-pucherna-bucket"].aws_s3_bucket_versioning.this
# }

# moved {
#   from = module.s3_bucket_2.aws_s3_bucket.this
#   to   = module.s3_bucket_for_each["my-pucherna-bucket-2"].aws_s3_bucket.this
# }

# moved {
#   from = module.s3_bucket_2.aws_s3_bucket_versioning.this
#   to = module.s3_bucket_for_each["my-pucherna-bucket-2"].aws_s3_bucket_versioning.this
# }
