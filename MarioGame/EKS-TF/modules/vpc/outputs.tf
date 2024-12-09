output "vpc_id" {
  description = "ID of the default VPC"
  value       = data.aws_vpc.default.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets in the default VPC"
  value       = data.aws_subnets.public.ids
}
