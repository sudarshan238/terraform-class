resource "aws_instance" "name" {
    ami = "ami-01102c5e8ab69fb75"
    instance_type = "t2.micro"
    for_each = toset(var.ec2)            # foreach method we are using "toset" command 
    #count = length(var.ec2)              #  count method we can use length command
    tags = {
      Name = each.value                    # each.value = every server give different value
    }
  
}



variable "ec2" {
    type = list(string)
    default = [ "dev", "test"]
  
}