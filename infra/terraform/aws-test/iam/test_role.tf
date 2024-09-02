resource "aws_iam_role" "test" {
  name = "test-iam-role"
  path = "/"
  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "",
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  }
  EOF
}

resource "aws_iam_role_policy" "test_s3" {
    name = "test-s3-download"
    role = aws_iam_role.test.id
    policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "s3:GetObject",
                "Resource": "*"
            }
        ]
    }
    EOF
}

// EC2에 IAM role을 할당하기 위한 instance profile 생성
resource "aws_iam_instance_profile" "test" {
  name = "test-profile"
  role = aws_iam_role.test.name
}
