# LIST
output "list_output" {
  description = "value of example_list"
  value       = var.example_list
}

output "list_first_value" {
  description = "value of first element in example_list"
  value       = var.example_list[0] # "apple"
}

# TUPLE
output "tuple_output" {
  description = "value of example_tuple"
  value       = var.example_tuple
}

output "tuple_values" {
  description = "values of example_tuple"
  value = {
    first_value  = var.example_tuple[0] # "apple"
    second_value = var.example_tuple[1] # 42
    third_value  = var.example_tuple[2] # true
  }
}

# SET
output "set_output" {
  description = "value of example_set"
  value       = var.example_set
}

output "set_filtered_item" {
  description = "filtered item from example_set"
  value       = [for item in var.example_set : item if item == "banana"]
}

# LIST
output "map_output" {
  description = "value of example_map"
  value       = var.example_map
}

output "map_values" {
  description = "values of example_map"
  value = {
    user_name = var.example_map["name"]  # "John"
    user_age  = var.example_map["age"]   # "30"
    is_admin  = var.example_map["admin"] # "true"
  }
}

# OBJECT
output "object_output" {
  description = "value of example_object"
  value       = var.example_object
}

output "object_values" {
  description = "values of example_object"
  value = {
    user_name = var.example_object.name  # "John"
    user_age  = var.example_object.age   # 30
    is_admin  = var.example_object.admin # true
  }
}

# TRANSFORMATIONS
output "list_to_set" {
  description = "list to set"
  value       = toset(var.example_list) # Převod ["apple", "banana", "cherry"] na set
}

output "set_to_list" {
  description = "set to list"
  value       = tolist(var.example_set) # Převod setu na seznam
}

output "map_to_object" {
  description = "map to object"
  value = {
    name  = var.example_map["name"]
    age   = tonumber(var.example_map["age"])   # Převod věku na číslo
    admin = var.example_map["admin"] == "true" # Převod na boolean
  }
}

output "object_to_map" {
  description = "object to map"
  value = {
    name  = var.example_object.name
    age   = tostring(var.example_object.age)   # Převod čísla na řetězec
    admin = tostring(var.example_object.admin) # Převod boolean na řetězec
  }
}

output "tuple_to_list" {
  description = "tuple to list"
  value       = tolist(var.example_tuple) # Převod ["apple", 42, true] na list
}
