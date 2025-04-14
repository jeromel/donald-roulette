resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name
  force_destroy = true

  tags = {
    Name = var.project_name
  }
}

resource "aws_s3_bucket_website_configuration" "static_site" {
  bucket = aws_s3_bucket.static_site.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

resource "aws_s3_bucket_acl" "public" {
  bucket = aws_s3_bucket.static_site.id
  acl    = "public-read"
}
