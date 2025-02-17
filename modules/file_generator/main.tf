terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# V1
# resource "local_file" "this" {
#   filename = var.file_name
#   content  = var.file_content
# }

resource "local_file" "this" {
  for_each = var.files

  filename = "${lower(each.key)}${lower(each.value.extension)}"
  content  = "${each.value.content} Timestamp: ${timestamp()}"

  lifecycle {
    precondition {
      condition     = length(each.key) <= 15
      error_message = "The file name must be 15 chars or less"
    }
    precondition {
      condition     = length(each.value.content) > 0
      error_message = "The file content must not be empty"
    }
    # postcondition {
    #   condition = fileexists("./${lower(each.key)}${lower(each.value.extension)}")
    #   error_message = "The file was not created"
    # }
    ignore_changes = [content]
  }
}
