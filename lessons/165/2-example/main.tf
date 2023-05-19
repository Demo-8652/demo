provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    key = "global/s3/terraform.tfstate"
  }
}

# terraform init -backend-config=../1-example/backend.hcl
resource "aws_instance" "example" {
  ami           = "ami-0a695f0d95cefc163"
  instance_type = "t3.micro"
}
