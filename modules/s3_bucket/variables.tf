

variable "bucket_name" {
    description = "Target S3 where the generated stock files will be stored"
    type = string
}


variable "bucket_output_name" {
    description = "Output S3 where the generated stock files will be stored"
    type = string
}