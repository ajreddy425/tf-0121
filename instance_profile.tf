resource "aws_iam_instance_profile" "test_profile" {
  name = "ec2_profile"
  role = aws_iam_role.test_role.name
}


