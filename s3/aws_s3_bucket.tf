resource "aws_s3_bucket" "bucket" {
  bucket = "info-app.com"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}
