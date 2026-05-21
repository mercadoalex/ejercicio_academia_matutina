resource "aws_secretsmanager_secret" "lambda_secret" {
  name = "lambda-secret"
}

resource "aws_secretsmanager_secret_version" "lambda_secret_version" {
  secret_id     = aws_secretsmanager_secret.lambda_secret.id
  secret_string = jsonencode({ api_key = "your-api-key" })
}