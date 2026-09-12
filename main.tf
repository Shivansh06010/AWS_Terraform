terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.63.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "shivansh-s3-bucket-06010"

  tags = {
    Name        = "Managed by terraform"
    Environment = "Dev"
  }
}