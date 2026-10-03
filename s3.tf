terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "stan-test-bucket-201" {
  bucket = "stan-test-bucket-201"

  tags = {
    Name        = "Stan bucket 201"
    Environment = "Dev"
  }
}
