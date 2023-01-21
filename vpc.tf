// cretion of vpc(FAQ 5/5) 
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr //"10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name     = "vpc-terraform-${local.ws}"
    Location = "Bangalore"
  }
}






// resource "resource_type" "logical_name"{}
// resource type should not be changed for any resource
// logical names can be anything but give some meaningful names
// logical names bust be unique

# resource "aws_vpc" "console" {
#   cidr_block       = "172.16.0.0/16"  //"10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "vpc-import"
#     Time = "8:07am"
#   }
# }