terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.49.0"
    }
  }
}

module "VPC-demo" {
  source = "./VPC"
}

module "vpc-01" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
}

module "VPC-02" {
  source = "git::https://github.com/huanboss/terraform-aws-vpc.git"
}