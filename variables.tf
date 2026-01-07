locals {
  eks         = "eks-terraform"
  vpc         = "eks-vpc"
  env         = "dev"
  region      = "us-west-2"
  eks_version = "1.30"
  az1         = "us-west-2a"
  az2         = "us-west-2b"
  tags = {
    Name = "eks-terraform"
  }
}

variable "cidr_block_public_1" {
  default = "10.0.0.0/18"
}
variable "cidr_block_public_2" {
  default = "10.0.64.0/18"
}
variable "cidr_block_private_1" {
  default = "10.0.128.0/18"
}
variable "cidr_block_private_2" {
  default = "10.0.192.0/18"
}
