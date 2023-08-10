provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_vpc" "APAC-SG-VPC" {
  cidr_block       = "10.100.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "APAC-SG-VPC"
    Project = "Eric-Automation"
    Env = "Production"
  }
}