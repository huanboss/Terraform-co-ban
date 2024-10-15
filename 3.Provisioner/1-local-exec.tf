

# resource "aws_instance" "VM05" {
#   ami                    = "ami-0ac9397cab55f5044"
#   instance_type          = "t3.micro"
#   availability_zone      = "ap-southeast-1a"
# #   key_name               = aws_key_pair.ssh-key.key_name
# #   vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
#   tags = {
#     Name = "VM-05"
#   }

#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} >> private_ip.txt"
#   }

# }

# resource "null_resource" "sshkey" {
#   provisioner "local-exec" {
#     command = "ssh-keygen -f sshkey -N ''"
#   }
# }