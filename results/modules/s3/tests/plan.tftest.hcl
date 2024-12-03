mock_provider "aws" {}

run "validate_s3_bucket" {
  command = plan

  variables {
    region            = "eu-central-1"
    bucket_name       = "my-pucherna-bucket"
    environment       = "dev"
    force_destroy     = true
    versioning_enabled = true
    tags = {
      "Project" = "TerraformTest"
    }
  }

  assert {
    condition = aws_s3_bucket.this.bucket == "my-pucherna-bucket"
    error_message = "The bucket name is incorrect"
  }
}
