variable "vpccidr" {
  type        = string
  description = "cidr values"
}
variable "pubsubcidr" {
  type        = list(string)
  default = []
  description = "cidr subnet values"
}
variable "privsubcidr" {
  type        = list(string)
  default = []
  description = "cidr subnet values"
}
variable "env" {
  type        = string
  description = "environment name"
}
variable "region" {
  type        = string
  description = "region name"
}

variable untrusted {
  type        = string
  default     = []
  description = "description"
}

