## Specifies the S3 Bucket and DynamoDB table used for the durable backend and state locking

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-state-estanqua"
    #dynamodb_table = "my_dynamo_table_name"
    use_lockfile = true
    key          = "aodsrc2025pipeline/terraform.tfstate"
    region       = "us-east-1"
  }
}
