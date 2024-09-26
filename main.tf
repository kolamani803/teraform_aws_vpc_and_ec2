terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.14"
}

# Create VPC and EC2 resources
module "vpc" {
  source       = "./vpc"
  vpc_name     = var.vpc_name
  vpc_cidr     = var.vpc_cidr
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
}

module "ec2" {
  source = "./ec2"
  instance_type  = var.instance_type
  public_subnet_id = module.vpc.public_subnet_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

# output "instance_ip" {
#   value = module.ec2.instance_ip
# }

output "instance_ip_1" {
  value = module.ec2.instance_ip_1
}
output "instance_ip_2" {
  value = module.ec2.instance_ip_2
}
