
resource "aws_instance" "web" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "tf-demo-2101"
  iam_instance_profile        = aws_iam_instance_profile.test_profile.name
  vpc_security_group_ids      = [aws_security_group.all_sg.id]
  subnet_id                   = aws_subnet.pub_sub.*.id[3] // ref [0] - us-east-1a
                                                              // ref [1] - us-eas-1b     and so on          

  tags = {
    Name = "WebServer-01"
  }
}