module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = "main"
  cidr = var.vpc_cidr_block

  azs             = ["us-central-1a", "us-central-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_dns_support   = true
  enable_dns_hostnames = true
}