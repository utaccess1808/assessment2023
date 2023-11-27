provider "aws" {
  region = "us-central-1"  # Change this to your desired region I have taken Europe Frankfurt
}

module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "ec2" {
  source             = "./modules/ec2"
  private_subnet_ids = module.vpc.private_subnet_ids
  ec2_ami            = var.ec2_ami
  ec2_instance_type  = var.ec2_instance_type
  ec2_key_name       = var.ec2_key_name
}

module "alb" {
  source = "./modules/alb"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}
