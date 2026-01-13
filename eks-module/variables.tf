
  variable eks {}
  variable vpc{}
  variable env{}
  variable region{}
  variable eks_version{}
#   variable "az" {
#    type        = list(string)
#    default = length(local.azs)
#  }
  variable tags {
    type        = map(string)
  }
variable "cidr_block" {}
variable "instance_type" {
  type    = list(string)
  default = ["t3.small"]
}
 



