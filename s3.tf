resource "aws_s3_bucket" "b" {
  bucket = "S3B_181355"
  acl    = "public-read"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
