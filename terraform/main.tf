resource "aws_dynamodb_table" "hello_wold" {
  
  name = "${var.environment}_hello_wold"
  hash_key = "id"
  write_capacity = 1
  read_capacity = 1

  attribute {
    name = "id"
    type = "S"
  }
  
}