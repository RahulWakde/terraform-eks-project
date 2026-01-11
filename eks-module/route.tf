resource "aws_route_table" "private" {
  vpc_id = aws_vpc.eks-terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id  = aws_nat_gateway.vpc-aws_nat_gateway.id
  }


  tags = {
    Name = "${var.env}-private-route"
  }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.eks-terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Igw.id
  }


  tags = {
    Name = "${var.env}-public-route"
  }
}

 
resource "aws_route_table_association" "public" {
  count          = length(local.az)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}
 

resource "aws_route_table_association" "private" {
  count          = length(local.az)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}