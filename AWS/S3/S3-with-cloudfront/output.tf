output "cloudfront-dns" {
  description = "Domain Name for the CloudFront Distribution"
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}