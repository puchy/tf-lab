terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# V1
resource "local_file" "this" {
  filename = var.file_name
  content  = var.file_content
}
