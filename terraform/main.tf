terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    region = "eu-west-3"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-03216a20ecc5d72ee"
  instance_type = "t2.nano"
  tags = {
    Name = "test_instance"
  }
}