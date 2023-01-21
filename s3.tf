resource "aws_s3_bucket" "b" {
  bucket = "my-tf-2101"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}

# resource "aws_s3_bucket_acl" "pri" {
#   bucket = aws_s3_bucket.b.id
#   acl    = "private"
# }

// s3 life cycle rule 

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.b.bucket

  rule {
    id = "log"

    expiration {
      days = 90
    }

    filter {
      and {
        prefix = "log/"

        tags = {
          rule      = "log"
          autoclean = "true"
        }
      }
    }

    status = "Enabled"

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }

  rule {
    id = "tmp"

    filter {
      prefix = "tmp/"
    }

    expiration {
      date = "2023-01-13T00:00:00Z"
    }

    status = "Enabled"
  }
}
