variable "lambda_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_zip_path" {
  description = "Path for the lambda zip file"
  type        = string
}

variable "aws_region" {
    description = "AWS Region for the project"
    type = string
    validation {
        condition = contains(["us-east-1"], var.aws_region)
        error_message = "Invalid region"
    }
}

variable "target_bucket_arn" {
  description = "The ARN of the bucket used to store the stock JSON files"
  type        = string
}


variable "target_bucket_name" {
  description = "The name of the bucket used to store the stock JSON files"
  type        = string
}
