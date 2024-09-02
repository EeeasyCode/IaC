variable "public_subnet_id" {
  type        = string
  description = "ID of the public subnet"
}

variable "security_group_ids" {  
  type        = list(string)
  description = "List of security group IDs"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone for the subnet"
}