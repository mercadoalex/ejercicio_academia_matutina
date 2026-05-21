resource "aws_security_group" "lambda_sg" {
  name        = "lambda-sg"
  description = "Allow Lambda access to VPC resources"
  vpc_id      = aws_vpc.academia.id

  # Add rules as needed
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}