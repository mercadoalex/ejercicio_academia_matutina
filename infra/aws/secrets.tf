resource "aws_secretsmanager_secret" "lambda_secret_academia" {
  name = "lambda-secret"
}

resource "aws_secretsmanager_secret_version" "lambda_secret_version" {
  secret_id     = aws_secretsmanager_secret.lambda_secretAcademia.id
  secret_string = jsonencode({ api_key = "your-api-key" })
}