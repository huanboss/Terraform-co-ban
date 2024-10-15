# locals {
#   ami_ids ={
#     "aws-linux" : "ami-0ac9397cab55f5044"
#     "ubuntu" : "ami-0be48b687295f8bd6"
#   }
#   instance_type = "t2.micro"

#   tags = {
#     Name = "VM_ubuntu"
#     BU = "Cloud"
#   }
# }

# resource "aws_instance" "web" {
#   ami           = local.ami_ids.ubuntu
#   instance_type = local.instance_type

#   tags = local.tags
# }

# resource "aws_instance" "vm02" {
#   ami = local.ami_ids.aws-linux
#   instance_type = "t3.micro"
# }