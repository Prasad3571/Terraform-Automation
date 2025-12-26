terraform {
  backend "s3" {
    bucket = "my-bucket-770980"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
