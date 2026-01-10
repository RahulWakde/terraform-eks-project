resource "aws_eks_node_group" "eks-terraform-node-Group-private" {
  cluster_name    = aws_eks_cluster.eks-terraform.name
  version         = var.eks_version
  node_group_name = "eks-terraform-node-Group-general"
  node_role_arn   = aws_iam_role.node-roles.arn

  subnet_ids = [aws_subnet.private[0].id,
                aws_subnet.private[1].id]

  scaling_config {
    desired_size = 2
    max_size     = 4
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
  capacity_type  = "ON_DEMAND"
  instance_types = var.instance_type

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.AmazonEC2readonly,
    aws_iam_role_policy_attachment.CloudwatchReadonlyaccess,
    
  ]
  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }
  labels = {
    role = "general"
  }
}
