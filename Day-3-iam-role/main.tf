
# 1. IAM Role
resource "aws_iam_role" "ec2_role" {
  name = "ec2-dev-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Effect = "Allow",
      Sid    = ""
    }]
  })
}

# 2. (Optional) IAM Policy Attachment
resource "aws_iam_role_policy_attachment" "ec2_attach" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess" # example policy
}

# 3. Instance Profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2-dev-profile"
  role = aws_iam_role.ec2_role.name
}

# 4. EC2 Instance with IAM Role
resource "aws_instance" "name" {
  ami           = "ami-0d1891272a8f97fb4"
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "dev"
  }
}
