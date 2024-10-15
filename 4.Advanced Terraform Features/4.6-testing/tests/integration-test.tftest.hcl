variables {
  ami                 = "ami-0ac9397cab55f5044"
  instance_type       = "t3.micro"
  availability_zone   = "ap-southeast-1a"
  ebs_volume_size     = 10
}

run "create_instance_and_attach_ebs" {

  command = apply

  assert {
    condition     = length(aws_instance.vm-user1.id) > 0
    error_message = "AWS instance was not created"
  }

  assert {
    condition     = length(aws_ebs_volume.ebs-exten.id) > 0
    error_message = "EBS volume was not created"
  }

  assert {
    condition     = aws_volume_attachment.ebs-attach.instance_id == aws_instance.vm-user1.id
    error_message = "EBS volume is not attached to the instance"
  }

  assert {
    condition     = aws_ebs_volume.ebs-exten.size == var.ebs_volume_size
    error_message = "EBS volume size did not match expected"
  }
}

run "validate_instance_state" {

  command = apply

  assert {
    condition     = output.instance_state == "running"
    error_message = "Instance is not in 'running' state"
  }
}
