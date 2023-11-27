module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.0.0"

  name                 = "web-server"
  ami                  = var.ec2_ami
  instance_type        = var.ec2_instance_type
  subnet_ids           = module.vpc.private_subnet_ids
  key_name             = var.ec2_key_name

  enable_monitoring = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
