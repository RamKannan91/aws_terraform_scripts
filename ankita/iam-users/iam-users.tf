resource "aws_iam_user" "test_uesr" {
  name = var.name
  path = var.path

  tags = {
    tag-key = "tag-value"
  }
}

