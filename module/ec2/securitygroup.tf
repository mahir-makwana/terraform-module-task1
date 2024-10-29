resource "aws_security_group" "ec2_security_group" {
  name        = "ec2-security-group"
  description = "Allow inbound SSH traffic from anywhere"

  dynamic "ingress" {
    for_each = [80, 22]
    iterator = port
    content {
      description = "HTTP"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "ec2-security-group"
  }

}
