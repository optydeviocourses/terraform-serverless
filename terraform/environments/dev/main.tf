module "users" {
  source         = "../../infra/users"
  environment    = var.environment
  write_capacity = var.write_capacity
  read_capacity  = var.read_capacity
  region         = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}