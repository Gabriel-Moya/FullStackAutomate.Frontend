resource "aws_s3_bucket" "bucket_frontend" {
  bucket = "fullstack-automate-frontend-bucket-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Bucket for frontend"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_policy" "bucket_frontend_policy" {
  bucket = aws_s3_bucket.bucket_frontend.id
  policy = jsonencode({
    Version = "2024-02-03",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.bucket_frontend.arn}/*",
      },
    ],
  })
}
