resource "aws_instance" "public_web" {
  ami                    = data.aws_ami.amazon_ami.id
  key_name               = "MyEC2KeyPair"
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet
  vpc_security_group_ids = [var.public_security_group]

  tags = {
    Name        = "DemoPublicWebInstance"
    Environment = var.instance_env
    Role        = "web_proxy"
  }
}

resource "aws_instance" "private_app" {
  ami                    = data.aws_ami.amazon_ami.id
  key_name               = "MyEC2KeyPair"
  instance_type          = "t3.micro"
  subnet_id              = var.private_subnet
  vpc_security_group_ids = [var.private_security_group]

  tags = {
    Name        = "DemoPrivateWebInstance"
    Environment = var.instance_env
    Role        = "app_server"
  }
}

data "aws_ami" "amazon_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}