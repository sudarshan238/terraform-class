resource "aws_instance" "name" {
    ami = "ami-06e11c4cc68c362dd"
    instance_type = "t2.micro"
    availability_zone = "us-west-1a"
    tags = {
        Name = "dev"
    }

    lifecycle {
      prevent_destroy = true
      #create_before_destroy = true
      ignore_changes = [ tags,]

    }
    
}
