resource "aws_subnet" "private" {
 
  count                   = length(var.az)
  vpc_id                  = aws_vpc.eks-terraform-vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 4, "${count.index + length(var.az)}")
  availability_zone       = var.az[count.index]
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.env}-private"
    "kubernetes.io/role/internal-elb"                 = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks}" = "owned"

  }
}