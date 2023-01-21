resource "aws_route_table_association" "all_pub_sub_asso" {
  subnet_id      = aws_subnet.pub_sub.*.id[3]
  route_table_id = aws_route_table.pub_rt.id
}

