variable "name" {
  description = "Name tag for the VPC"
}

variable "cidr" {
  description = "CIDR block for the VPC"
}

variable "azs" {
  description = "Availability zones"
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
}

variable "enable_dns_support" {
  description = "Enable DNS support for the VPC"
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
}
