locals {
  ami  = "ami-08a52ddb321b32a8c"
  name = "github"
}

module "github" {
  source = "../module"

  ami           = local.ami
  instance_type = "t2.micro"
  name          = local.name
  environment   = "development"
}