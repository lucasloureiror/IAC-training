resource "aws_s3_bucket" "learning-bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Bucket do Lucas pra estudo do Terraform"
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.learning-bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "public-access-block-example" {
  bucket = aws_s3_bucket.learning-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}