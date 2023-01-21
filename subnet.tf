# // crete the subnet

resource "aws_subnet" "pub_sub" {
  vpc_id            = aws_vpc.main.id                          // res_type.log_name.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index) // cidrsubnet(var.vpc_cidr, 6, count.index)
  availability_zone = local.x[count.index]
  count             = local.len_of_az // length of azs 
  tags = {
    Name = "Public-subnet-${count.index + 1}-${local.ws}"
  }
}

# # resource "aws_subnet" "subnet2" {
# #   vpc_id     = aws_vpc.main.id // res_type.log_name.id
# #   cidr_block = "10.0.2.0/24"

# #   tags = {
# #     Name = "Private-subnet-01-${terraform.workspace}"
# #   }
# # }


# resource "aws_subnet" "pri_sub" {
#   vpc_id            = aws_vpc.main.id // phone number of vpc // resoirce_type.logical_name.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 6, count.index + local.len_of_az)
#   count             = local.len_of_az
#   availability_zone = local.x[count.index]

#   tags = {
#     Name = "Private-Subnet-${count.index + 1}-${local.ws}"
#   }
# }

