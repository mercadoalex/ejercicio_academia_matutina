resource "aws_secretsmanager_secret" "lambda_secretAcademia" {
  name = "lambda-secret-academia"
}

resource "aws_secretsmanager_secret_version" "lambda_secret_version" {
  secret_id     = aws_secretsmanager_secret.lambda_secretAcademia.id
  secret_string = jsonencode({ api_key = "your-api-key" })
}