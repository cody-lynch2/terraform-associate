output "env" {
  value = var.env
}

output "db_password" {
  value     = var.db_password
  sensitive = true
}