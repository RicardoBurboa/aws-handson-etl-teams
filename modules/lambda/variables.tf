variable "lambda_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_zip_path" {
  description = "Path for the lambda zip file"
  type        = string
}

variable "bucket_arn" {
  description = "Path for the lambda zip file"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket used to store the stock JSON files"
  type        = string
}
