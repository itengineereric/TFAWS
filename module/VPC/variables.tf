variable "vpccidr" {
  type        = string
  description = "cidr values"
}

variable "pubsubcidr" {
  type        = list(string)
  default     = []
  description = "cidr values"
}
variable "privsubcidr" {
  type        = list(string)
  default     = []
  description = "cidr values"
}
variable "env" {
  type        = string
  description = "environment name"
}

variable "region" {
  type        = string
  description = "region name"
}

variable "create_untrustedsg" {
  type        = bool
  default     = false
  description = "description"
}
variable "create_trustedsg" {
  type        = bool
  default     = false
  description = "description"
}

variable "create_natgw" {
  type        = bool
  default     = false
  description = "description"
}