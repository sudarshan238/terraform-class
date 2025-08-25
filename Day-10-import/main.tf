resource "aws_instance" "name" {
    ami = "ami-01102c5e8ab69fb75"
    instance_type = "t2.micro"
    tags = {
        Name = "suda"
    }
  
}
resource "aws_s3_bucket" "name" {
    bucket = "awssddev"
  
}
resource "aws_iam_user" "admin_user" {
  name = "yadav"
}

resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

  
