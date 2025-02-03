variable "bucket_name" {
    description = "Target S3 where the generated stock files will be stored"
    type = string
}

variable "output_bucket_name" {
    description = "Output S3 where the processed stock will be stored"
    type = string
}