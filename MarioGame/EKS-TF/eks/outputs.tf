output "cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.this.id
}

output "cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "node_group_id" {
  description = "EKS Node Group ID"
  value       = aws_eks_node_group.this.id
}
