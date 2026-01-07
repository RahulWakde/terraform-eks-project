resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.eks-terraform-vpc.id
  cidr_block              = var.cidr_block_public_1
  availability_zone       = var.az1
  map_public_ip_on_launch = true

  tags = {
    "Name"                                            = "${var.env}-public1"
    "kubernetes.io/cluster/${var.env}-${var.eks}" = "owned"
    "kubernets.io/role/elb"                           = "1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.eks-terraform-vpc.id
  cidr_block              = var.cidr_block_public_2
  availability_zone       = var.az2
  map_public_ip_on_launch = true

  tags = {
    "Name"                                            = "${var.env}-public2"
    "kubernetes.io/cluster/${var.env}-${var.eks}" = "owned"
    "kubernets.io/role/elb"                           = "1"
  }
}
