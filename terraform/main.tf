terraform {
  backend "s3" {
    bucket         = "meu-terraform-state-bucket"
    key            = "path/to/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "us-west-2"
}