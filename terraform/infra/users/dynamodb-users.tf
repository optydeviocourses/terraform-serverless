resource "aws_dynamodb_table" "users" {
  
  table_name = "${var.environment}-users"
  hash_key = "id"
 
  write_capacity = var.write_capacity
  read_capacity = var.read_capacity

  global_secondary_index {
    name            = "${var.environment}-email-gsi"
    projection_type = "ALL"
    hash_key        = "email"
    write_capacity  = "${var.write_capacity}"
    read_capacity   = "${var.read_capacity}"
  }

  attribute {
      name = "id"
      type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

}


resource "aws_ssm_parameter" "dynamodb_users_table" {
	
  name = "${var.environment}-dynamodb-users-table"
	type = "String"
	value = aws_dynamodb_table.users.name

}