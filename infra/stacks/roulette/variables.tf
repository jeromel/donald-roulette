variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

variable "lambda_exec_role_arn" {
  description = "ARN du rôle IAM à utiliser pour la fonction Lambda"
  type        = string
}
