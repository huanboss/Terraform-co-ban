# resource "aws_instance" "web" {
#   count         = 2
#   ami           = "ami-0ac9397cab55f5044"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Server ${count.index + 1}"
#   }
# }