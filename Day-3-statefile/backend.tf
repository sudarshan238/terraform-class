terraform {
  backend "s3" {
    bucket = "awssdevv"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}