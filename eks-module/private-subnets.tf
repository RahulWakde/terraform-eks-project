resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.eks-terraform-vpc.id
  cidr_block        = var.cidr_block_private_1
  availability_zone = var.az1

  tags = {
    "Name"                                            = "${var.env}-private1"
    "kubernetes.io/role/internal-elb"                 = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks}" = "owned"
  }
}
resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.eks-terraform-vpc.id
  cidr_block        = var.cidr_block_private_2
  availability_zone = var.az2

  tags = {
    "Name"                                            = "${var.env}-private2"
    "kubernetes.io/role/internal-elb"                 = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks}" = "owned"
  }
}
