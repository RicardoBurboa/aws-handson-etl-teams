output "bucket_arn" {
    description = "Created Bucket ARN"
    value = aws_s3_bucket.main_bucket.arn
}

output "bucket_name" {
    description = "Created Bucket NAME"
    value = aws_s3_bucket.main_bucket.bucket
}