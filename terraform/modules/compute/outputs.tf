output "public_ip_ec2" {
  value = aws_instance.public_web.public_ip
}

output "private_ip_ec2" {
  value = aws_instance.private_app.private_ip
}