variable "aws_region" {
  type = string
  description = "The AWS region to deploy in"
  default     = "ap-northeast-2"
}

variable "vpc_cidr" {
  type = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type = string
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  type = string
  description = "Availability Zone for the subnet"
  default = "ap-northeast-2a"
}