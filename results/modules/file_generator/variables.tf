variable "files" {
  description = "A map of file names to their content"
  type = map(object({
    content   = string
    extension = string
  }))
  validation {
    condition = alltrue([
      for file in var.files : can(regex("^\\.(log|txt)$", file.extension)) # can retruns false if the regex does not match, not error
    ])
    error_message = "Extension must be either '.log' or '.txt'."
  }
}
