variable "a" {
  type        = string
  default     = null
  description = "První proměnná."
}

variable "b" {
  type        = string
  default     = null
  description = "Druhá proměnná."
}

check "exactly_one_variable_is_set" {
  assert {
    condition     = (var.a != null) != (var.b != null)
    error_message = "Musí být zadána právě jedna z proměnných 'a' nebo 'b', ale ne obě."
  }
}
