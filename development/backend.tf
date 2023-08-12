terraform {
  backend "s3" {
    bucket         = "oe-devops-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "oe-tf-locking"
    encrypt        = true
  }
}