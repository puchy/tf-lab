variable "users" {
  type = map(object({
    role = string
  }))
  default = {
    "john" = {
      role   = "admin"
      active = true
    }
    "jack" = {
      role   = "developer"
      active = true
    }
    "jim" = {
      role   = "developer"
      active = false
    }
  }
}


locals {
  users_by_role = {
    for name, user in var.users : user.role => name...
  }
}

output "users_grouped_by_role" {
  description = "A map of user names grouped by their role."
  value       = local.users_by_role
}
