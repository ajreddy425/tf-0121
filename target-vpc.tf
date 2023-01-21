# resource "aws_vpc" "demo" {
#   cidr_block       = "192.168.0.0/16"
#   instance_tenancy = "default"
#   tags = {
#     Name = "target-vpc"
#   }
# }