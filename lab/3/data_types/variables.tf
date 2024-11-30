# LIST
variable "example_list" {
  description = "example list"
  type        = list(string)
  default     = ["apple", "banana", "cherry"]
}

# TUPLE
variable "example_tuple" {
  description = "example tuple"
  type        = tuple([string, number, bool])
  default     = ["apple", 42, true]
}

# SET
variable "example_set" {
  description = "example set"
  type        = set(string)
  default     = ["apple", "banana", "cherry"]
}

# LIST
variable "example_map" {
  description = "example map"
  type        = map(string)
  default = {
    name  = "John"
    age   = "30"
    admin = "true"
  }
}

# OBJECT
variable "example_object" {
  description = "example object"
  type = object({
    name  = string
    age   = number
    admin = bool
  })
  default = {
    name  = "John"
    age   = 30
    admin = true
  }
}
