# Dynamic block for outputs
output "server_details" {
  description = "server details"
  value = { for server in local.servers : server.name => {
    ip   = server.ip
    role = lower(server.role)
  } }
}

# Example of using try function - error handling
output "safe_lookup" {
  description = "safely lookup a server by index"
  value       = try(local.servers[3].name, "No server found at index 3")
}

output "frontend_servers" {
  description = "Only frontend servers"
  value       = local.frontend_servers
}

output "flattened_servers" {
  description = "Flattened servers"
  value       = local.flattened_servers
}

output "yaml_manifest" {
  description = "YAML manifest"
  value       = local_file.output_manifest.content
}
