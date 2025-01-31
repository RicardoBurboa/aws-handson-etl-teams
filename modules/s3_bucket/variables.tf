variable "aws_region" {
    description = "AWS Region for the project"
    type = string
    validation {
        condition = contains(["us-east-1"], var.aws_region)
        error_message = "Invalid region"
    }
}

variable "bucket_name_stock_files" {
    description = "Target S3 where the generated stock files will be stored"
    type = string
    # validation {
    #     condition = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    #     error_message = "The bucket name must be between 3 and 63 characters."
    # }
}