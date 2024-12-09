output "cluster_iam_role_arn" {
  description = "ARN of the IAM Role for the EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_iam_role_arn" {
  description = "ARN of the IAM Role for the EKS node group"
  value       = aws_iam_role.eks_node_role.arn
}

output "cluster_iam_role_attachment_id" {
  description = "ID of the IAM policy attachment for the EKS cluster role"
  value       = aws_iam_role_policy_attachment.eks_cluster_policy_attachment.id
}

output "node_iam_role_attachment_ids" {
  description = "IDs of IAM policy attachments for the EKS node role"
  value       = [
    aws_iam_role_policy_attachment.eks_node_worker_policy_attachment.id,
    aws_iam_role_policy_attachment.eks_node_cni_policy_attachment.id,
    aws_iam_role_policy_attachment.eks_node_registry_policy_attachment.id,
  ]
}
