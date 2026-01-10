resource "aws_eip" "nat-IP" {
  domain = "vpc"
}

resource "aws_nat_gateway" "vpc-aws_nat_gateway" {
  allocation_id = aws_eip.nat-IP.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    "Name" = "${var.env}-NAT-GW"
  }

  depends_on = [aws_internet_gateway.Igw]
}