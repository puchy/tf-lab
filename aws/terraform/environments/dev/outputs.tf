output "bucket_arn" {
  description = "value of the bucket_arn"
  value       = module.s3_bucket.bucket_arn
}

# output "bucket_arns" {
#   description = "value of the bucket_arns"
#   value = { for k, m in module.s3_bucket_for_each : k => m.bucket_arn }
# }
