variable "function_name" {
  type        = string
  description = "The name of the Lambda function"
}

variable "handler" {
  type        = string
  description = "The function entrypoint in your code"
}

variable "runtime" {
  type        = string
  description = "Lambda runtime environment"
}

variable "lambda_zip_path" {
  type        = string
  description = "Path to the zipped Lambda deployment package"
}

variable "lambda_exec_role_arn" {
  type        = string
  description = "ARN of the IAM role for Lambda execution"
}
