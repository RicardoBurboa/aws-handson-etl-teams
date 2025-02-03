variable "lambda_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_zip_path" {
  description = "Path for the lambda zip file"
  type        = string
}

variable "bucket_arn" {
  description = "Bucket ARN where the stock JSON files are stored"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket used to store the stock JSON files"
  type        = string
}

variable "lambda_role_arn" {
  description = "ARN of the role used for the lambda"
  type        = string
}