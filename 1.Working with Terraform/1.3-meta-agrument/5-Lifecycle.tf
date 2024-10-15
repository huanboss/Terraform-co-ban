# create_before_destroy

# resource "aws_instance" "web" {
#   count         = 1
#   ami           = "ami-0ac9397cab55f5044"
#   instance_type = "t3.micro"
# #  availability_zone = "ap-southeast-1a"
#   availability_zone = "ap-southeast-1c"

#   tags = {
#     Name = "Server ${count.index + 1}"
#   }
#   lifecycle {
#     create_before_destroy = true
#   }
# }

# prevent_destroy

# resource "aws_instance" "web1" {
#   count         = 1
#   ami           = "ami-0ac9397cab55f5044"
#   instance_type = "t3.micro"
# #  availability_zone = "ap-southeast-1a"
#   availability_zone = "ap-southeast-1c"

#   tags = {
#     Name = "Server1 ${count.index + 1}"
#   }
# #   lifecycle {
# #     prevent_destroy = true
# #   }
# }

# ignore_changes


# resource "aws_instance" "web" {
#   count         = 1
#   ami           = "ami-0ac9397cab55f5044"
#   instance_type = "t3.micro"
# #  availability_zone = "ap-southeast-1a"
#   availability_zone = "ap-southeast-1c"

#   tags = {
#     Name = "Server ${count.index + 1} ${timestamp()}"
#   }
#   lifecycle {
#     ignore_changes = [ 
#         tags
#      ]
#   }
# }

# replace_triggered_by

resource "aws_security_group" "example_sg" {
  name_prefix = "example-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "ssh"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SG-01"
  }
}

resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-0ac9397cab55f5044"
  instance_type = "t3.micro"
#  availability_zone = "ap-southeast-1a"
  availability_zone = "ap-southeast-1c"
  security_groups = [aws_security_group.example_sg.name]

  tags = {
    Name = "Server ${count.index + 1}"
  }
  lifecycle {
    replace_triggered_by = [ aws_security_group.example_sg ]
  }
}