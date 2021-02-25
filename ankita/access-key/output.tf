output "secret" {
  value = aws_iam_access_key.test_user.encrypted_secret
}

