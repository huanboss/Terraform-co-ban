terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region     = "ap-southeast-1"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "web" {
  ami           = "ami-0ac9397cab55f5044"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}