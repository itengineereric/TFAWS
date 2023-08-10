provider "aws" {
    region = "ap-southeast-1"
}

module "ec2module" {
  source = "./EC2"
  ec2name  = "ubuntuVM01"
}

module "vpcmodule" {
  source = "./VPC"
  vpcname  = "APAC-SG-VPC"
}

output "module_output" {
  value       = module.ec2module.instance_id
}
