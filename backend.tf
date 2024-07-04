terraform {
  backend "s3" {
    bucket         = "demo-github-action-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
