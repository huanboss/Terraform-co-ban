
locals {
  instance_name = "${terraform.workspace}-instance"
 # instance_type = terraform.workspace == "prod" ? "t2.large" : terraform.workspace == "dev" ? "t2.small" : "t2.micro"
}

# resource "aws_instance" "ec2_example" {

#   ami = "ami-0ac9397cab55f5044"

#   instance_type = local.instance_type

#   tags = {
#     Name = local.instance_name
#   }
# }



resource "aws_instance" "ec2_example" {

  ami = "ami-0ac9397cab55f5044"
  instance_type = var.type

  tags = {
    Name = local.instance_name
  }
}
