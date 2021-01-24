resource "aws_iam_policy" "register_policy" {
  name = "${var.environment}-register-policy"

  policy = templatefile("${path.module}/templates/dynamodb-policy.tpl", {
    action   = "dynamodb:PutItem",
    resource = aws_dynamodb_table.users.arn
  })
}

# resource "aws_iam_policy" "register_policy" {

#   name = "${var.environment}-register-policy"
  
#   policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": [
#         "dynamodb:PutItem"
#       ],
#       "Effect": "Allow",
#       "Resource": "${aws_dynamodb_table.users.arn}"
#     },
#     {
#       "Action": [
#           "logs:CreateLogGroup",
#           "logs:CreateLogStream",
#           "logs:PutLogEvents"
#       ],
#       "Effect": "Allow",
#       "Resource": "*"
#     }
#   ]
# }
# EOF
# }