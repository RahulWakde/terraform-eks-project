resource "aws_subnet" "public" {
 
  count                   = length(var.az)
  vpc_id                  = aws_vpc.eks-terraform-vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 4, count.index)
  availability_zone       = var.az[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public"
  }
}