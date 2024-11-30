include {
  path = find_in_parent_folders()
}

inputs = {
  bucket_name   = "my-tg-prod-pucherna-bucket"
  force_destroy = true
  tags = {
    Environment = "Prod"
    Project     = "TerraformModuleExample"
  }
}
