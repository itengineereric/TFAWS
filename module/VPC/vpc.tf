resource "aws_vpc" "vpc" {
  cidr_block       = var.vpccidr
  instance_tenancy = "default"

  tags = {
    Name = format("%s-%s-vpc", var.env, var.region)
  }
}
