terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "5.49.0"
    }
  }
    backend "s3" {
    bucket = "demo-backend-s3-20240607-044346"
    key = "state1/terraform.tfstate"
    region = "ap-southeast-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  
}

resource "aws_instance" "web" {
  ami           = "ami-0ac9397cab55f5044"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}