resource "aws_vpc" "academia" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.academia.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}