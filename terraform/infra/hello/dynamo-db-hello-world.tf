resource "aws_dynamodb_table" "hello_wold" {
  
  name = "${var.environment}-hello-wold"
  hash_key = "id"
 
  attribute {
    name = "id"
    type = "S"
  }

  write_capacity = "${var.write_capacity}"
  read_capacity = "${var.read_capacity}"

}