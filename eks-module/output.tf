output "vpc_id" {
  value = aws_vpc.eks-terraform-vpc.id
}

output "nat_gateway"{

  value = aws_nat_gateway.vpc-aws_nat_gateway[*].id
}
