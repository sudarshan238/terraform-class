variable "vpc_cidr"           { default = "10.0.0.0/16" }
variable "public_subnet_1"    { default = "10.0.1.0/24" }
variable "private_subnet_1"   { default = "10.0.2.0/24" }
variable "private_subnet_2"   { default = "10.0.3.0/24" }
variable "az1"                { default = "us-west-1a" }
variable "az2"                { default = "us-west-1c" }
variable "db_user"            {}
variable "db_pass"            { sensitive = true }
