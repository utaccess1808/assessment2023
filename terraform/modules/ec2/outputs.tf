output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = module.ec2.instance_ids
}
