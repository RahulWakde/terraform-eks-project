resource "aws_eks_cluster" "eks-terraform" {
  name = var.eks
  role_arn = aws_iam_role.eks-role.arn
  version  = var.eks_version

  access_config {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = true
  }

  vpc_config {
    subnet_ids = flatten([
      aws_subnet.private[*].id,
      aws_subnet.public[*].id
    ])
    endpoint_public_access  = true
    endpoint_private_access = false
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.eks-role-attachment
  ]
}
