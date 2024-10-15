 // Define any variables required for your test
variables {
  ami           = "ami-0ac9397cab55f5044"
  instance_type = "t3.micro"
  availability_zone = "ap-southeast-1a"
}

run "valid_instance_ami" {

  command = plan
  
 // Assertions to validate the test outcome
  assert {
    condition     = aws_instance.vm-user1.ami == "ami-0ac9397cab55f5044"
    error_message = "AMI ID did not match expected"
  }
}

run "valid_instance_type" {

  command = plan

  assert {
    condition     = aws_instance.vm-user1.instance_type == "t3.micro"
    error_message = "Instance type did not match expected"
  }
}

run "valid_ebs_volume_size" {

  command = plan

  assert {
    condition     = aws_ebs_volume.ebs-exten.size == 10
    error_message = "EBS volume size did not match expected"
  }
}

run "valid_ebs_volume_attachment" {

  command = plan

  assert {
    condition     = aws_volume_attachment.ebs-attach.device_name == "/dev/sdh"
    error_message = "EBS volume attachment device name did not match expected"
  }
}

run "valid_ebs_availability_zone" {

  command = plan

  assert {
    condition     = aws_ebs_volume.ebs-exten.availability_zone == "ap-southeast-1a"
    error_message = "EBS availability zone did not match expected"
  }
}
