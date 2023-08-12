module "vpc" {
  source = "../../module/vpc"
  env = var.env
  region = var.region
  vpccidr = var.vpccidr
}