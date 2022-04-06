module "users" {
  source         = "../../infra/users"
  environment    = var.environment
  write_capacity = var.write_capacity
  read_capacity  = var.read_capacity
}