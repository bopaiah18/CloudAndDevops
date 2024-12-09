resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_iam_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [
    var.cluster_iam_role_attachment_id,
  ]
}

resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_iam_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = var.instance_types

  depends_on = [
    var.node_iam_role_attachment_ids,
  ]
}
