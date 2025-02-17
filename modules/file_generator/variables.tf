# # V1
# variable "file_name" {
#   description = "The name of the file to create"
#   type        = string
# }

# variable "file_content" {
#   description = "The content to write into the file"
#   type        = string
# }

variable "files" {
  description = "A map of file names to their content"
  type = map(object({
    content   = string
    extension = string
  }))
  validation {
    condition = alltrue([
      for file in var.files : can(regex("^(.txt|.log)$", file.extension))
      #for file in var.files : can(regex("^(.txt|.log)$", lower(file.extension)))
    ])
    error_message = "The extension must be either .txt or .log"
  }
}
