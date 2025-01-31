variable "aws_region" {
    description = "AWS Region for the project"
    type = string
    validation {
        condition = contains(["us-east-1"], var.aws_region)
        error_message = "Invalid region"
    }
}