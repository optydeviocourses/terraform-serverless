module "hello" {
  
  source = "../../infra/hello"
  environment = "${var.environment}"
  
}