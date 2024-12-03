output "file_names" {
  description = "file names"
  value       = [for file in local_file.this : file.filename]
}
