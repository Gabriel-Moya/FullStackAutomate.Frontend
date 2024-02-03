data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "this" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions   = ["s3:GetObject"]
    resources = [
      aws_s3_bucket.bucket_frontend.arn,
      "${aws_s3_bucket.bucket_frontend.arn}/*"
    ]
  }
}
