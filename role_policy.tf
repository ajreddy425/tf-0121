resource "aws_iam_role_policy" "test_policy" {
  name = "tf_2023_policy"
  role = aws_iam_role.test_role.id

  policy = file("./policies/role_policy.json")
}

// . local folder
// .. local folder ( FAQ 2 /5)