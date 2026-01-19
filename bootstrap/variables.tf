variable "aws_region" {
  description = "AWS region for resources"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "environment" {
  description = "Environment name (staging or production)"
  type        = string
  validation {
    condition     = contains(["staging", "production"], var.environment)
    error_message = "Environment must be either 'staging' or 'production'."
  }
}

variable "state_bucket_prefix" {
  description = "Prefix for the S3 bucket name (bucket will be {prefix}-{environment})"
  type        = string
}

variable "admin_role_arns" {
  description = "List of IAM role ARNs that should have access to the state bucket"
  type        = list(string)
}