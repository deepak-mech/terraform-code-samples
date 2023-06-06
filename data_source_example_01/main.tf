provider "aws" {
	region = "ap-south-1"
	version = "~> 3.0"
}

data "aws_s3_bucket" "bucket" {
	bucket = "deepak-shah-already-exists"
}

resource "aws_iam_policy" "my_bucket_policy" {
	name = "my-bucket-policy"
	policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
     {
        "Action": [
          "s3:ListBucket"
        ],
        "Effect": "Allow",
        "Resource": [
          "${data.aws_s3_bucket.bucket.arn}"
        ]
      }
  ]
}
POLICY
}
