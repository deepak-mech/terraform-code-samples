provider "aws" {
	region = "ap-south-1"
}

resource "aws_s3_bucket" "first_bucket" {
	bucket = "deepak-shah-bucket-outputs"
}

output "bucket_name" {
	value = aws_s3_bucket.first_bucket.id
}

output "bucket_arn" {
	value = aws_s3_bucket.first_bucket.arn
}
