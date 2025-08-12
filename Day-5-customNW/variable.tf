# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# Availability Zone
variable "availability_zone" {
  description = "Availability zone to launch resources in"
  type        = string
  default     = "us-east-1a"
}

# VPC CIDR Block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Public Subnet CIDR
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.0.0/24"
}

# Private Subnet CIDR
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# EC2 Instance AMI ID
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-06e11c4cc68c362dd" # Make sure this is valid for your region
}

# EC2 Instance Type
variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}
