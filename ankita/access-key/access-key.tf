resource "aws_iam_access_key" "test_user" {
  user = var.user
  pgp_key = var.pgp_key
}

resource "aws_iam_user_policy" "test_role" {
  name = var.name
  user = var.user

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = var.user
  policy_arn = aws_iam_policy.test_role.arn
}

