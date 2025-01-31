
output "bucket_arn" {
    description = "Created Bucket ARN"
    value = aws_s3_bucket.main_bucket.arn
}