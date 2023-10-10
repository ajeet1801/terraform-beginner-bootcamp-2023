# output "bucket_name" {
#   description = "Bucket name for our static website hosting"
#   value = module.terrahouse_aws.random_bucket_name
# }

output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value = module.terrahouse_aws.bucket_name
}