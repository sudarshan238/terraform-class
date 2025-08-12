resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr
  
}
resource "aws_subnet" "dev_subnet1" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-subnet-1-public"
  }
}

resource "aws_subnet" "dev_subnet2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "dev-subnet-2-private"
  }
}






resource "aws_instance" "dev_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  
}
