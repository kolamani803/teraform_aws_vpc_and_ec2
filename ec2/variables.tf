variable "instance_type" {
  description = "The type of EC2 instance"
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}
