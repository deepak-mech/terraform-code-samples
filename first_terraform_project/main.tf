provider "aws" {
	region = "ap-south-1"
}


resource "aws_s3_bucket" "first_bucket" {
	bucket = "deepak-shah-first-bucket"
}
