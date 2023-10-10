output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value = random_string.bucket_name.result
}