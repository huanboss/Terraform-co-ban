
# resource "aws_instance" "web" {
#   for_each = local.ami_ids
#   ami           = each.value
#   instance_type = "t3.micro"

#   tags = {
#     Name = "server ${each.key}"
#   }
# }

# locals {
#   ami_ids ={
#     "aws-linux" : "ami-0ac9397cab55f5044"
#     "ubuntu" : "ami-0be48b687295f8bd6"
#   }
# }