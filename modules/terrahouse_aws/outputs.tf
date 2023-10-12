output "bucket_name" {
  description = "Bucket name for our static website hosting"
  # value = aws_s3_bucket.example
  value = aws_s3_bucket.website_bucket
}

output "name" {
  description = "value" 
  value =  aws_s3_bucket_website_configuration.website_configuration.website_endpoint
}