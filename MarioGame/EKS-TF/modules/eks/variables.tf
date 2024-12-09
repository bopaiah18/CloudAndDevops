variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_iam_role_arn" {
  description = "IAM Role ARN for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
}

variable "node_iam_role_arn" {
  description = "IAM Role ARN for the EKS node group"
  type        = string
}

variable "desired_size" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of nodes in the node group"
  type        = number
  default     = 2
}

variable "instance_types" {
  description = "Instance types for the node group"
  type        = list(string)
  default     = ["t2.medium"]
}

variable "cluster_iam_role_attachment_id" {
  description = "ID of the policy attachment for the EKS cluster IAM role"
  type        = string
}

variable "node_iam_role_attachment_ids" {
  description = "IDs of the policy attachments for the EKS node IAM role"
  type        = list(string)
}
