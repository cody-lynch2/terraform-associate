output "dev_bucket" {
  value = module.dev_bucket.bucket_name
}

output "prod_bucket" {
  value = module.prod_bucket.bucket_name
}

output "broken" {
  value = module.dev_bucket.bucket_arn
}