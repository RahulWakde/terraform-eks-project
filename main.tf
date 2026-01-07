module "vpc" {
    
  source = "./eks-module/"

   cidr_block_public_1 = var.cidr_block_public_1
   cidr_block_public_2 = var.cidr_block_public_2
   cidr_block_private_1 = var.cidr_block_private_1
   cidr_block_private_2 = var.cidr_block_private_2
   
   eks         = local.eks
   vpc         = local.vpc
   env         = local.env
   region      = local.region
   eks_version = local.eks_version
   az1         = local.az1
   az2         = local.az2
   tags        = local.tags

  
  
}