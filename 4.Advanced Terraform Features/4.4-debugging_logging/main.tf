
resource "aws_instanceS" "VM01" {
  ami               = "ami-0ac9397cab55f5044"
  instance_type     = "t3.micro"
  availability_zone = "ap-southeast-1a"
  key_name          = "nonexistent-key"
  tags = {
    Name = "VM-01"
  }
}