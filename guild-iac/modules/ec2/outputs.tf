output "public_ip" {
  value       = aws_instance.ec2.public_ip
  description = "IP Público da instância"
}

output "instance_id" {
  value       = aws_instance.ec2.id
  description = "ID da instância"
}