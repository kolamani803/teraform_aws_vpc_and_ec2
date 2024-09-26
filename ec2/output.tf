# Output the instance public IP
output "instance_ip_1" {
  value = aws_instance.example[0].public_ip
}
output "instance_ip_2" {
  value = aws_instance.example[1].public_ip
}