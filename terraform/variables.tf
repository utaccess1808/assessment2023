variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instances"
}

variable "ec2_instance_type" {
  description = "Instance type for EC2 instances"
}

variable "ec2_key_name" {
  description = "Key pair name for EC2 instances"
}
