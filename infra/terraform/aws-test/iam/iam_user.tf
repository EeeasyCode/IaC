resource "aws_iam_user" "test_iam_user" {
    name = "test_iam.user"
}

resource "aws_iam_user_policy" "test_black" {
    name = "super-admin"
    user = aws_iam_user.test_iam_user.name

    policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
    }
    EOF
}