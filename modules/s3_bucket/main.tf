resource "aws_s3_bucket" "main_bucket"{
	bucket = "${var.bucket_name_stock_files}"
	tags = {
		Name = "Stock JSON bucket"
	}
}