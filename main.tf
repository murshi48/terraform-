provider "aws" {
  region = "ap-south-1"  # Change this to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-aws-bucket-murshid"  # Replace with a unique name
  acl    = "private"  # Bucket access control list (default is private)
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

