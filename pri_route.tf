# resource "aws_route_table" "pri_rt" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.ngw.id
#   }

#   tags = {
#     Name = "pri-rt"
#   }
# }