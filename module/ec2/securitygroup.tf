resource "aws_security_group" "ec2_security_group" {
  name        = "ec2-security-group"
  description = "Allow inbound SSH traffic from anywhere"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${chomp(data.http.my_ip.response_body)}/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

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

data "http" "my_ip" {
  url = "http://checkip.amazonaws.com/"
}

