
  variable eks {}
  variable vpc{}
  variable env{}
  variable region{}
  variable eks_version{}
  variable az1{}
  variable az2{}
  variable tags {
    type        = map(string)
  }


variable "cidr_block_public_1" {}
variable "cidr_block_public_2" {}
variable "cidr_block_private_1" {}
variable "cidr_block_private_2" {}
