variable vpcname {
  type        = string
  default     = "APAC-SG-VPC"
  description = "description"
}

variable prj {
  type        = number
  default     = "10"
  description = "description"
}

variable env {
  default     = true
  description = "description"
}

variable mylist {
  type        = list(string)
  default     = ["value1","value2","value3"]
  description = "description"
}
variable mymap {
  type        = map
  default     = {
    Key1 = "value1"
    Key2 = "value2"
  }
  description = "description"
}
