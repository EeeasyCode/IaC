resource "aws_s3_bucket" "test" {
    bucket = "terrform-test"
}

resource "aws_s3_bucket" "hedwig" {
    bucket = "hedwig-domain-image-dev"
}