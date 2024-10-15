
# Define a data source to fetch the latest Linux AMI for Ubuntu in a specific region
data "aws_ami" "ubuntu_ami" {
  most_recent = true # If more than one result is returned, use the most recent AMI.

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Replace with desired Ubuntu version
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Filter by the owner of the AMI (Amazon)
}

output "ami-ubuntu" {
  value = data.aws_ami.ubuntu_ami.id
}

resource "aws_instance" "Vm01" {
    ami = data.aws_ami.ubuntu_ami.id
    instance_type = "t2.micro"

    tags = {
      Name = "VM01"
    }
  
}

data aws_instance "find-instance" {
    filter {
      name = "tag:Name"
      values = ["VM01"]
    }
}

output "Ubuntu-instance" {
 value = data.aws_instance.find-instance.public_ip
}

resource "aws_instance" "Vm02" {
    ami = data.aws_instance.find-instance.ami
    instance_type = data.aws_instance.find-instance.instance_type

    
    tags = {
      Name = "VM02"
    }
  
}