output "state_bucket_name" {
  description = "Name of the S3 bucket for Terraform state"
  value       = aws_s3_bucket.terraform_state.id
}

output "state_bucket_arn" {
  description = "ARN of the S3 bucket for Terraform state"
  value       = aws_s3_bucket.terraform_state.arn
}

output "state_bucket_region" {
  description = "Region of the S3 bucket"
  value       = aws_s3_bucket.terraform_state.region
}

output "environment" {
  description = "Environment this bucket serves"
  value       = var.environment
}

output "backend_config" {
  description = "Backend configuration for use in infrastructure module"
  value = {
    bucket      = aws_s3_bucket.terraform_state.id
    region      = aws_s3_bucket.terraform_state.region
    key         = "goml/terraform/${var.environment}/terraform.tfstate"
    environment = var.environment
  }
}