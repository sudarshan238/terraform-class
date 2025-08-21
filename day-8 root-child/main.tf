module "vpc" {
  source       = "./module/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_cidr  = "10.0.1.0/24"
  az           = "us-west-1a"
}

module "ec2" {
  source        = "./module/ec2"
  ami_id        = var.ami  # Replace with valid AMI
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  
}


module "s3" {
    source = "./module/s3"
    s3 = "awssdevv"
  
}