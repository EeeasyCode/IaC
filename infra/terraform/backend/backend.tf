terraform {
  backend "s3" {
    bucket = "tfstate-easycode-example"
    key    = "infra/terraform/terraform.tfstate"
    region = "ap-northeast-2"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }
}