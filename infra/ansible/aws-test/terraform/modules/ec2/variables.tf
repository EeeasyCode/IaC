variable "public_subnet_id" {
  type = string
  description = "ID of the public subnet"
}

variable "security_group_id" {
  type = string
  description = "ID of the security group"
}

variable "availability_zone" {
  type = string
  description = "Availability Zone for the subnet"
}