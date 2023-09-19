# Define output values to retrieve information about your infrastructure

output "instance_public_ip" {
  description = "Public IP address of the created EC2 instance."
  value       = aws_instance.example.public_ip
}

output "instance_private_ip" {
  description = "Private IP address of the created EC2 instance."
  value       = aws_instance.example.private_ip
}

output "vpc_id" {
  description = "ID of the VPC where resources were created."
  value       = aws_vpc.example.id
}

output "subnet_ids" {
  description = "List of subnet IDs where instances were launched."
  value       = aws_subnet.example[*].id
}

output "security_group_ids" {
  description = "List of security group IDs associated with instances."
  value       = aws_security_group.example[*].id
}

# Define additional outputs as needed for your specific use case
