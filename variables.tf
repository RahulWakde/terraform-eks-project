locals {
  eks         = "eks-terraform"
  vpc         = "eks-vpc"
  env         = "dev"
  region      = "us-west-2"
  eks_version = "1.30"

  tags = {
    Name = "eks-terraform"
  }
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "instance_type" {
  default = ["t3.small"]
}

