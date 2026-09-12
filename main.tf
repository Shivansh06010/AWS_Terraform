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
resource "ec2_instance" "test instance" {
  ami           = "ami-08188a5a4dfdbd573"
  instance_type = "t2.micro"
  key_name = "test key"
  vpc_id = "vpc-04601c00877beba1b"
  subnet_id = "subnet-022001eec6e4fbe4b"
  security_groups = ["sg-05e63dc54f3efed5e"]

  tags = {
    Name = "Managed by terraform"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = "Managed by terraform"
    Environment = "Dev"
  }
}