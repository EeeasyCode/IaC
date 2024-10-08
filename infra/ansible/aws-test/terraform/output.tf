output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.network.public_subnet_id
}

output "ssh_security_group_id" {
  value = module.security.ssh_security_group_id
}

output "http_security_group_id" {
  value = module.security.ssh_security_group_id
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}
