

resource "aws_instance" "VM03" {
    ami = var.ami
    instance_type = var.type
    tags = var.tags
  
}