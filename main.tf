module "eks" {
    
  source = "./eks-module/"

   cidr_block = var.cidr_block
   eks         = local.eks
   vpc         = local.vpc
   env         = local.env
   region      = local.region
   eks_version = local.eks_version
   az = data.aws_availability_zones.available.names
   tags        = local.tags

  
  
}