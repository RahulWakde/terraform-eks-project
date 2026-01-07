output "vpc_id" {
  value = aws_vpc.eks-terraform-vpc.id
}

output "nat_gateway"{

  value = aws_nat_gateway.vpc-aws_nat_gateway[*].id
}

output "public_subnets" { 
    
  value = aws_subnet.public[*].id 
}

output "private_subnets" { 
    
  value = aws_subnet.private[*].id 
}