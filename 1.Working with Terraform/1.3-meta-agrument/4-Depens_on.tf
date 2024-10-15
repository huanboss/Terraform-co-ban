# locals {
#   ami_ids ={
#     "aws-linux" : "ami-0ac9397cab55f5044"
#     "ubuntu" : "ami-0be48b687295f8bd6"
#   }
# }

# resource "aws_instance" "web" {
#   for_each = local.ami_ids
#   ami           = each.value
#   instance_type = "t3.micro"

#   tags = {
#     Name = "server ${each.key}"
#   }
# }

# resource "aws_security_group" "web_security_group" {
#   name        = "web_security_group"
#   description = "Web server security group"

#   # The web_security_group resource depends on the web_server resource
#   depends_on = [aws_instance.web]

# }

