variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "MySecurityGroup"
}

variable "cidr_block" {
  description = "CIDR block for SSH access: This Cidr Block to allow SSH from, Replace it with your public IP, Or Public Subnet or 0.0.0.0/0 for allow SSH from internet"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the bastion host"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 KeyPair"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "BastionHost"
}
