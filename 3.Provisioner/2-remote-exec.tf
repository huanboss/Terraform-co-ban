
# resource "aws_key_pair" "ssh-key" {
#   key_name   = "sshkey"
#   public_key = file("sshkey.pub")
# }

# resource "aws_instance" "VM05" {
#   ami                    = "ami-0ac9397cab55f5044"
#   instance_type          = "t3.micro"
#   availability_zone      = "ap-southeast-1b"
#   key_name               = aws_key_pair.ssh-key.key_name
#   vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
#   tags = {
#     Name = "VM-05"
#   }

#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     private_key = file("sshkey")
#     host = self.public_ip
#   }

#   provisioner "remote-exec" {
#     inline = [ "sudo yum update -y", "sudo yum install git -y" ]
#   }


# }

# resource "null_resource" "install-httpd" {

#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     private_key = file("sshkey")
#     host = aws_instance.VM05.public_ip
#   }

#     provisioner "remote-exec" {
#     script = "httpd.sh"
#   }
# }