output "public_sg" {
  value = aws_security_group.public_ec2_sg.id
}

output "pirvate_sg" {
    value = aws_security_group.private_ec2_sg.id
}