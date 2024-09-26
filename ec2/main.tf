data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# variable "instance_type" {
#   description = "The type of EC2 instance"
#   default     = "t2.micro"
# }

# variable "public_subnet_id" {
#   description = "The ID of the public subnet"
#   type        = string
# }

# Create an EC2 instance
resource "aws_instance" "example" {
  count = "2"
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "MyExampleInstance"
  }

  provisioner "local-exec" {
    command = "echo Instance created with ID: ${self.id}"
  }
}

# # Output the instance public IP
# output "instance_ip" {
#   value = aws_instance.example.public_ip
# }
