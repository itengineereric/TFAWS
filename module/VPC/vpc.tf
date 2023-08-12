variable "prj" {
  type        = number
  default     = "10"
  description = "description"
}

variable "env" {
  default     = true
  description = "description"
}

variable "mylist" {
  type        = list(string)
  default     = ["ubuntuVM01","Eric-Automation","Production"]
  description = "description"
}
variable "mymap" {
  type        = map
  default     = {
    Key1 = "value1"
    Key2 = "value2"
  }
  description = "description"
}



output "vpcid" {
  value       = aws_vpc.APAC-SG-VPC.id
  sensitive   = true
  description = "description"
  depends_on  = []
}

variable name {
  type        = tuple([string, number, string])
  default     = ["APAC-SG-VPC", 1 ,"Production"]
  description = "description"
}

variable "vpcname" {
  type = string
}

resource "aws_vpc" "APAC-SG-VPC" {
  cidr_block       = "10.100.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.vpcname
  }
}
