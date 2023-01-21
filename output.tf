output "reg_name" {
  value = data.aws_region.current.id
}

# output "vpc_id" {
#     value = aws_vpc.main.id

# }


output "list_of_azs" {
  value = local.x
}


output "vpc_id" {
  value = aws_vpc.main.id // res_type.log
}

output "no_of_azs" {
  value = local.len_of_az
}

# output "sub2_id" {
#   value = aws_subnet.subnet2.id
# }
