# VPC
module "vpc" {
  source = "../../module/vpc"
  env = var.env
  region = var.region

  # vpc.tf
  vpccidr = var.vpccidr

  # subnet.tf
  pubsubcidr = var.pubsubcidr
  privsubcidr = var.privsubcidr

  untrusted = untrusted
}
