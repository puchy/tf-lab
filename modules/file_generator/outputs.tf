# V1
# output "file_name" {
#   description = "The name of the file"
#   value       = local_file.this.filename
# }

output "file_names" {
  description = "The names of the files"
  value       = [for file in local_file.this : file.filename]
}
