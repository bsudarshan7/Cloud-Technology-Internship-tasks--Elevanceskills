
output "instance_id" {
  description = "Created EC2 instance ID"
  value       = aws_instance.web_server.id
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_instance.web_server.public_ip
}

output "public_dns" {
  description = "Public DNS address"
  value       = aws_instance.web_server.public_dns
}

output "security_group_id" {
  description = "Created security group ID"
  value       = aws_security_group.web_sg.id
}
