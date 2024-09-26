variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "MyVPC"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the public subnet"
  type        = string
  default     = "PublicSubnet"
}

variable "subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
