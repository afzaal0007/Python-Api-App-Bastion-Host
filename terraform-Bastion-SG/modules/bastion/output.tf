#  Output Values
output "instance_id" {
  value = aws_instance.bastion_host.id
}

output "public_ip" {
  value = aws_instance.bastion_host.public_ip
}

output "security_group_id" {
  value = aws_security_group.bastion_sg.id
}
