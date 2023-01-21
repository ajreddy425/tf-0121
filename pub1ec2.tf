# resource "aws_instance" "web" {
#   ami                         = "ami-0b5eea76982371e91"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "8am_batch"
#   count                       = 3
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = aws_subnet.subnet1.id
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
#     Name = "WebServer-${count.index + 1}"
#   }
# }

# // security groups

resource "aws_security_group" "all_sg" {
  name        = "all_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}