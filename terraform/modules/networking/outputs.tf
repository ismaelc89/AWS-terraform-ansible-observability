output "supported_t3_micro_azs" {
  description = "AZs in this region that support t3.micro"
  value       = data.aws_ec2_instance_type_offerings.t3_micro.locations
}

output "selected_t3_micro_azs" {
  description = "Selected AZs in this region that support t3.micro"
  value       = data.aws_ec2_instance_type_offerings.t3_micro.locations[0]
}

output "public_subnet_id" {
    value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
    value = aws_subnet.private_subnet.id
}

output "public_security_group_id" {
    value = aws_security_group.public_ec2_sg.id
}

output "private_security_group_id" {
    value = aws_security_group.private_ec2_sg.id
}

output "vpc_id" {
    value = aws_vpc.demo_vpc.id
}