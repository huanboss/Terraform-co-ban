resource "aws_instance" "VM-override" {
  ami                    = "ami-0ac9397cab55f5044"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-1a"
  key_name = "storware"
  tags = {
    Name = "VM-override"
  }
}
