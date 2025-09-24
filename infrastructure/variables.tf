variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "innovatemart-eks"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS nodes"
  type        = string
  default     = "t3.small"
}