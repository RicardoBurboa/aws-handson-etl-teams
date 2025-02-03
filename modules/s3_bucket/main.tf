resource "aws_s3_bucket" "main_bucket"{
	bucket = var.bucket_name
	tags = {
		Name = "Stock JSON bucket"
	}
}

resource "aws_s3_bucket" "output_bucket"{
	bucket = var.output_bucket_name
	tags = {
		Name = "Output bucket where the processed stock will be stored"
	}
}