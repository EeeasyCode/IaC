resource "aws_iam_group" "test_group" {
    name = "test" 
}

resource "aws_iam_group_membership" "test" {
    name = aws_iam_group.test_group.name

    users = [
        aws_iam_user.test_iam_user.name
    ]

    group = aws_iam_group.test_group.name
}