terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# YAML decoding
data "local_file" "config" {
  filename = "${path.module}/config.yaml"
}

locals {
  # Decoded YAML content
  servers = yamldecode(data.local_file.config.content).servers

  # Nested list of lists
  nested_servers = [
    [
      { name = "NestedWeb", ip = "10.0.0.1", role = "frontend" },
      { name = "NestedApp", ip = "10.0.0.2", role = "backend" }
    ],
    [
      { name = "NestedDB", ip = "10.0.0.3", role = "database" }
    ]
  ]

  # Flatten nested list
  flattened_servers = flatten(local.nested_servers)
  # Output is:
  # [
  #   { name = "NestedWeb", ip = "10.0.0.1", role = "frontend" },
  #   { name = "NestedApp", ip = "10.0.0.2", role = "backend" },
  #   { name = "NestedDB", ip = "10.0.0.3", role = "database" }
  # ]

  # Filter servers by role - frontend only
  frontend_servers = [for s in local.servers : s if lower(s.role) == "frontend"]
}

# Using for_each for iteration over servers
resource "local_file" "server_config" {
  for_each = { for server in local.servers : server.name => server }
  # ouput is map, key is server name, value is map of server details:
  #   {
  #   "server1" = {
  #     name = "server1"
  #     ip   = "192.168.1.1"
  #     role = "web"
  #   }
  #   "server2" = {
  #     name = "server2"
  #     ip   = "192.168.1.2"
  #     role = "db"
  #   }
  # }
  filename = "${path.module}/${lower(each.key)}.txt"
  content = templatefile("${path.module}/template.tmpl", {
    name = each.value.name
    ip   = each.value.ip
    role = lower(each.value.role)
  })
}

# YAML manifest output
resource "local_file" "output_manifest" {
  filename = "${path.module}/output_manifest.yaml"
  content = yamlencode({
    servers           = local.servers
    flattened_servers = local.flattened_servers
    frontend_servers  = local.frontend_servers
  })
}
