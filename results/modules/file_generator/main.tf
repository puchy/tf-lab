terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "this" {
  for_each = var.files

  filename = "${lower(each.key)}${lower(each.value.extension)}"
  content  = "${each.value.content} Created at: ${timestamp()}"

  lifecycle {
    ignore_changes = [content]
    precondition {
      condition     = length(each.value.content) > 0
      error_message = "The file content must not be empty."
    }

    precondition {
      condition     = length(each.key) + length(each.value.extension) <= 15
      error_message = "The file name (including extension) must be 15 characters or less."
    }
  }
}
