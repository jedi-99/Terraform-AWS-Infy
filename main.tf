resource "aws_s3_bucket" "b" {
  
  bucket = "kfc-bucket-404"
  force_destroy = false
    
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  
  tags {
    env = "prd"
  }
  
}

resource "aws_s3_bucket_versioning" "versioning_config" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Disabled"
  }
}
