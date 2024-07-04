terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

 backend "s3" {
    bucket         = "demo-github-action-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"  # Optional
    encrypt        = true
  }
