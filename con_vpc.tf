# resource "aws_vpc" "con_vpc" {
#   cidr_block       = "192.168.0.0/16"
#   instance_tenancy = "default"
#   count            = terraform.workspace == "default" ? 1 : 0

#   tags = {
#     Name = "con-vpc"
#   }

# }