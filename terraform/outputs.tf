output "frontend_bucket" {
  value = aws_s3_bucket.bucket_frontend.bucket
}

output "frontend_bucket_arn" {
  value = aws_s3_bucket.bucket_frontend.arn
}
