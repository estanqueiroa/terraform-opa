resource "aws_s3_bucket" "localstack_s3_opa_example" {
  bucket = "localstack-s3-opa-example-estanqua-2025"
  tags = {
    Name        = "Localstack Opa bucket"
    Environment = "Dev"
    Tag1        = "Test22"
  }
}

resource "aws_s3_object" "data_json" {
  bucket = aws_s3_bucket.localstack_s3_opa_example.id
  key    = "data_json"
  source = "files/data.json"
  tags = {
    Name        = "Object in Locastack bucket"
    Environment = "Dev"
  }
}
