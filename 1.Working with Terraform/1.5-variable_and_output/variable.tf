variable "ami" {
  type = string
  description = "AMI id cua VM 03"
}

variable "type" {
  type = string
  description = "Instance type cua VM"
}

variable "tags" {
  type = object({
    Name = string
    BU = string
  })
}