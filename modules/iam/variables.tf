variable "aws_region" {
    description = "AWS Region for the project"
    type = string
    validation {
        condition = contains(["us-east-1"], var.aws_region)
        error_message = "Invalid region"
    }
}

variable "stock_gen_bucket_arn" {
    description = "ARN of the bucket used to store generated stock files"
    type        = string
}