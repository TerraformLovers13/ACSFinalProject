output "vpc_id" {
  value = module.dev_module.vpc_id
}

output "subnet_id" {
  value = module.dev_module.subnet_id
}
output "aws_launch_configuration" {
  value = module.dev_module.aws_launch_configuration
}

output "aws_autoscaling_group" {
  value = module.dev_module.aws_autoscaling_group
}

output "aws_eip" {
  value = module.dev_module.aws_eip
}