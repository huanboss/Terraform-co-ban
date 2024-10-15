1. comment 
 - sử dụng # 1 dòng
# Tôi là kỹ sư cloud
 - sử dụng // thay thế # , sử dụng ctrl + /
//  Tôi vẫn là kỹ sư cloud

 - sử dụng /* code */ cm nhiều dòng , sử dụng tổ hợp ctrl + /

// resource "aws_instance" "web" {
//   ami           = "ami-0ac9397cab55f5044"
//   instance_type = "t3.micro"

//   tags = {
//     Name = "HelloWorld"
//   }
// }

2. Block 

data_type "data_lable" {
    attribute1 = value
    attribute2 = value
}


resource "aws_instance" "web" {
  ami           = "ami-0ac9397cab55f5044"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

3 Attribute 
 ami = "abs"
 count = 3
 sg = ["sg1", "sg02"]

4. data_type

string 
     ami ="abc"
number
    count =3
    pi =3.14
bool
sensitive = true

map
    
  tags = {
    Name = "HelloWorld"
    BU = "cloud"
    owner = "huan"
  }
list
     sg = ["sg1", "sg02"]

set : tượng tự như list nhưng giá trị là duy nhất

5. Conditionals : 
    Conditionals ? true : false

    instance_type = var.Environment == "dev" ? "t2.micro" : "t2.small"
    instance_type = "${terraform.workspace == "prod" ? "t2.large" : terraform.workspace == "dev" ? "t2.small" : "t2.micro"}"

6. Functions : sử dụng hàm có sẵn
- string : format , join
- Numeric : min , max,
- Date and time : timestamp
- Type conversion : tostring, toset 
... 

7, Resource Dependencies : thiết lập mối quan hệ giữa các Resource

resource "aws_key_pair" "ssh-key" {
  key_name   = "sshkey"
  public_key = file("sshkey.pub")
}

resource "aws_instance" "ssh-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.ssh-key.key_name
  vpc_security_group_ids = ["sg-060d0e0169c9e5310"]
  tags = {
    Name    = "ssh-Instance"
    Project = "ssh"
 }