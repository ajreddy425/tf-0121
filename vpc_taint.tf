resource "aws_vpc" "demo_tai" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "taint-vpc"
  }

}