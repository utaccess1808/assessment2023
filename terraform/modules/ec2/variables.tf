variable "name" {
  description = "Name tag for the EC2 instances"
}

variable "ami" {
  description = "AMI ID for the EC2 instances"
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
}

variable "subnet_ids" {
  description = "IDs of the subnets where EC2 instances will be launched"
}

variable "key_name" {
  description = "Key pair name for the EC2 instances"
}

variable "enable_monitoring" {
  description = "Enable detailed monitoring for the EC2 instances"
}

variable "tags" {
  description = "Additional tags for the EC2 instances"
}
