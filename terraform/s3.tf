resource "aws_s3_bucket" "bucket_frontend" {
  bucket = "fullstack-automate-frontend-bucket-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Bucket for frontend"
    ManagedBy   = "Terraform"
  }
}
