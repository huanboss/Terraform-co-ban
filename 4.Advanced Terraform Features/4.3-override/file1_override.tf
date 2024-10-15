resource "aws_instance" "VM-override" {

  instance_type          = "t3.micro"
  availability_zone      = "ap-southeast-1b"

  tags = {
    Name = "VM-override"
    BU = "Cloud"
  }
}