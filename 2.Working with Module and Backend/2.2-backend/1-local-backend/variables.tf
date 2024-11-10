variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "Main-VPC"
}

variable "public_subnet1_cidr_block" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "192.168.1.0/24"
}

variable "public_subnet1_az" {
  description = "Availability Zone for the first public subnet"
  type        = string
  default     = "ap-southeast-1a"
}

variable "public_subnet1_name" {
  description = "Name of the first public subnet"
  type        = string
  default     = "Public-Subnet-1"
}

variable "public_subnet2_cidr_block" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "192.168.2.0/24"
}

variable "public_subnet2_az" {
  description = "Availability Zone for the second public subnet"
  type        = string
  default     = "ap-southeast-1b"
}

variable "public_subnet2_name" {
  description = "Name of the second public subnet"
  type        = string
  default     = "Public-Subnet-2"
}

variable "private_subnet1_cidr_block" {
  description = "CIDR block for the first private subnet"
  type        = string
  default     = "192.168.101.0/24"
}

variable "private_subnet1_az" {
  description = "Availability Zone for the first private subnet"
  type        = string
  default     = "ap-southeast-1b"
}

variable "private_subnet1_name" {
  description = "Name of the first private subnet"
  type        = string
  default     = "Private-Subnet-1"
}

variable "private_subnet2_cidr_block" {
  description = "CIDR block for the second private subnet"
  type        = string
  default     = "192.168.102.0/24"
}

variable "private_subnet2_az" {
  description = "Availability Zone for the second private subnet"
  type        = string
  default     = "ap-southeast-1c"
}

variable "private_subnet2_name" {
  description = "Name of the second private subnet"
  type        = string
  default     = "Private-Subnet-2"
}
