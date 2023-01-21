resource "aws_iam_role" "test_role" {
  name = "tf_role_2101"

  assume_role_policy = file("./policies/assume_role.json")
   // give the double quotes 
  tags = {
    tag-key = "iam-role-21-01"
  }
}

