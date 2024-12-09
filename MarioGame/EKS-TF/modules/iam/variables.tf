variable "cluster_role_name" {
  description = "Name of the IAM Role for EKS cluster"
  type        = string
}

variable "node_role_name" {
  description = "Name of the IAM Role for EKS node group"
  type        = string
}
