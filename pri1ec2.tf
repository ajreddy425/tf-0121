# resource "aws_instance" "pri" {
#   ami                         = "ami-0b5eea76982371e91"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = false
#   key_name                    = "8am_batch"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = aws_subnet.subnet2.id
#   # user_data                   = <<-EOF
#   # #!/bin/bash
#   # echo "*** Installing apache2"
#   # sudo yum update -y
#   # sudo yum install httpd -y
#   # echo "<h1> This is Public Subnet 01</h1>" >/var/www/html/index.html
#   # sudo chkconfig httpd on
#   # sudo service httpd start
#   # EOF
#   // not working for me.. due to versions of the terraform

#   tags = {
#     Name = "Priavte-ec2-01"
#   }
# }