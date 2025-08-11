
provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-06e11c4cc68c362dd"
    instance_type = "t2.micro"
    availability_zone = "us-west-1a"
    user_data = file("test.sh")
    tags = {
        Name = "dev"
    }

}