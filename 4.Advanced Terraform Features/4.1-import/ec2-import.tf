resource "aws_instance" "ec2-import" {
  ami = "ami-008c09a18ce321b3c"
  instance_type = "t2.micro"
}