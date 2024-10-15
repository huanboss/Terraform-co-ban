terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "Dev"
    }
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