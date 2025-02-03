resource "aws_s3_bucket" "main_bucket"{
	bucket = "${var.bucket_name}"
	tags = {
		Name = "Stock JSON bucket"
	}
}


resource "aws_s3_bucket" "output_bucket"{
	bucket = "${var.bucket_output_name}"
	tags = {
		Name = "Output filtered data"
	}
}