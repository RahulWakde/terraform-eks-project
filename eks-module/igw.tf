resource "aws_internet_gateway" "Igw" {
  vpc_id = aws_vpc.eks-terraform-vpc.id

  tags = {
    Name = "${var.env}-IGW"
  }
}
