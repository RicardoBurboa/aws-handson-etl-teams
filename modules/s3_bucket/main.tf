resource "aws_s3_bucket" "main_bucket"{
	bucket = "${var.bucket_name}"
	tags = {
		Name = "Stock JSON bucket"
	}
}