# provider "aws" {
#   alias  = "singapore"
#   region = "ap-southeast-1"
# }

# provider "aws" {
#   alias  = "Virginia"
#   region = "us-east-1"
# }

# resource "aws_instance" "web" {
#   provider      = aws.Virginia
#   ami           = "ami-0bb84b8ffd87024d8"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "HelloWorld"

#   }
# }