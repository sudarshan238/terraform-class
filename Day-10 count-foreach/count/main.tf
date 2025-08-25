resource "aws_instance" "name" {
    ami = "ami-01102c5e8ab69fb75"
    instance_type = "t2.micro"
    count = length(var.ec2)
    tags = {
      Name = var.ec2[count.index]
    }
  
}

variable "ec2" {
    type = list(string)
    default = [ "dev", "prod","test"]
  
}