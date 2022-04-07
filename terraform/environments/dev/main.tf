terraform {
  cloud {
    organization = "carlosrobertodevops"

    workspaces {
      name = "terraform-serverless"
    }
  }
}

/* credentials "app.terraform.io" {
  token = "Jru1gNOBUhh2cQ.atlasv1.VVzuBIXw7MZdsWJWhTIqYl5G1M3ZqZvpiz27BQHWm3noY6LAm5XBGc4KqzkccqBdzb4"
} */

module "users" {
  source         = "../../infra/users"
  environment    = var.environment
  write_capacity = var.write_capacity
  read_capacity  = var.read_capacity
  admin_id       = "${var.admin_id}"
  admin_email    = "${var.admin_email}"
  admin_password = "${var.admin_password}"
  admin_name     = "${var.admin_name}"
}
