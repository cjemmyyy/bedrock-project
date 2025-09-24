output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.main.id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.main.name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "developer_access_key" {
  description = "Developer IAM access key"
  value       = aws_iam_access_key.developer.id
  sensitive   = true
}

output "developer_secret_key" {
  description = "Developer IAM secret key"
  value       = aws_iam_access_key.developer.secret
  sensitive   = true
}

output "developer_username" {
  description = "Developer IAM username"
  value       = aws_iam_user.developer.name
}