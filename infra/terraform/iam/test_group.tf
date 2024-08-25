  resource "aws_iam_group" "test_group" {
    name = "test"
  }

  resource "aws_iam_group_membership" "test" {
    name = aws_iam_group.test_group.name

    users = var.iam_user_list

    group = aws_iam_group.test_group.name
  }