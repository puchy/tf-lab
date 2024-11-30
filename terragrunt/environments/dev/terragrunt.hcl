include {
  path = find_in_parent_folders()
}

inputs = {
  bucket_name   = "my-tg-dev-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Dev"
    Project     = "TerraformModuleExample"
  }
}
