output "frontend_bucket_url" {
  description = "URL of the S3 bucket for the frontend"
  value       = "https://${aws_s3_bucket.frontend.bucket}.s3.amazonaws.com/index.html"
}

output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.api_handler.function_name
}

output "api_gateway_invoke_url" {
  description = "Invoke URL for the API Gateway"
  value       = aws_api_gateway_rest_api.api.execution_arn
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.app_data.name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private.id
}

output "waf_acl_arn" {
  description = "ARN of the WAF Web ACL"
  value       = aws_wafv2_web_acl.api_waf.arn
}

output "secretsmanager_secret_arn" {
  description = "ARN of the Lambda secret in Secrets Manager"
  value       = aws_secretsmanager_secret.lambda_secret.arn
}