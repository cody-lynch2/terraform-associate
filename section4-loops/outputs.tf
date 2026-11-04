output "bucket_names" {
  value = [for b in aws_s3_bucket.by_env : b.bucket]
}

output "arns_by_env" {
  value = { for k, b in aws_s3_bucket.by_env : k => b.arn }
}

output "prod_only" {
  value = [for k, b in aws_s3_bucket.by_env : b.bucket if k == "prod"]
}