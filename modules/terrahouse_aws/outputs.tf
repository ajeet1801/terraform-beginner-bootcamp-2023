output "bucket_name" {
  description = "Bucket name for our static website hosting"
  # value = aws_s3_bucket.example
  value = aws_s3_bucket.website_bucket
}

output "website_endpoint" {
  description = "website_endpoint" 
  value =  aws_s3_bucket_website_configuration.website_configuration.website_endpoint
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}