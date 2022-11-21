variable "a" {
  default = 50
}

output "xyz" {
  value = var.a
}

// their are 3 variable type. default variable, list variable and map variable.
// Their are 3 types of variables. string type, boolean type and number

output "abc" {
  value = ${var.b}
