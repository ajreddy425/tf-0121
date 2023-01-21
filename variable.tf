// represent VPC CIDR block as a varible

variable "vpc_cidr" {
  description = "enter the cidr block of vpc"
  type        = string
  default     = "172.16.0.0/16"
}

// varaiable "variable_name"{}
// everything inside the variable block is optional.
// variable names can be anything

# variable "subnet_cidr" {
#   description = "enter the subnet cidr block here"
#   default     = "10.0.1.0/24"
#   type        = string

# }


