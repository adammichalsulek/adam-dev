# Define input variables for your Terraform configuration

variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type for your virtual machines."
  type        = string
  default     = "t2.micro"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where instances will be launched."
  type        = list(string)
  default     = ["subnet-12345678", "subnet-abcdefgh"]
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for instances."
  type        = string
  default     = "ami-0123456789abcdef0"
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with instances."
  type        = list(string)
  default     = ["sg-0123456789abcdef0"]
}

# Define additional variables as needed for your specific use case
