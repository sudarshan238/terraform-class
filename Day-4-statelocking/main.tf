resource "aws_instance" "name" {
    ami = "ami-06e11c4cc68c362dd"
    instance_type = "t2.micro"
    tags = {
      Name = "test"
    }
  
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "devnew"
    }
  
}