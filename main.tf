provider “aws” {
  region = “eu-west-1”
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "path/to/my/key"
    region         = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "path/to/my/key"
    region         = "eu-west-1"
    dynamodb_table = "my-terraform-lock-table"
    encrypt        = true
}

