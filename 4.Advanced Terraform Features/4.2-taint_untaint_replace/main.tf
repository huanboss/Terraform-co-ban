
resource "aws_instance" "VM01" {
  ami                    = "ami-0ac9397cab55f5044"
  instance_type          = "t3.micro"
  availability_zone      = "ap-southeast-1a"
  key_name = "storware"
  tags = {
    Name = "VM-01"
  }
}

resource "aws_instance" "VM02" {
  ami                    = "ami-0ac9397cab55f5044"
  instance_type          = "t3.micro"
  availability_zone      = "ap-southeast-1b"
  key_name = "storware"
  tags = {
    Name = "VM-02"
  }
}
