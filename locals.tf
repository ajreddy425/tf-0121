locals {
  x         = data.aws_availability_zones.available.names
  ws        = terraform.workspace
  len_of_az = length(data.aws_availability_zones.available.names)

}