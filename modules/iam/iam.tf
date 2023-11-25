resource "aws_iam_user_policy" "lb_ro" {
  name = "test"
  user = aws_iam_user.lb.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = "arn:aws:s3:::s3-bucket-version36"
      },
    ]
  })
}
resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}