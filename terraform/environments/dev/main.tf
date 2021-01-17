module "users" {
  
  sources = "../../infra/users"
  environment = "${var.environment}"
  write_capacity = "${var.write_capacity}"
  read_capacity = "${var.read_capacity}"
  #write_capacity = 1
  #read_capacity = 
  
}