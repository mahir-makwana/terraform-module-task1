resource "aws_instance" "mahir_nginx" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  user_data              = <<-EOF
  #!/bin/bash
  sudo yum install nginx -y
  sudo systemctl start nginx
  EOF

  tags = {
    Name = "mahir-nginx-server"
  }
}

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.public_key
}








