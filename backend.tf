terraform {
  backend "s3" {
    bucket = "my-bucket-7709803571"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
