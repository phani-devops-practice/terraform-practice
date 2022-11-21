resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow_ssh"
  vpc_id      = "vpc-0ea60a247fdfddb3a"


  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

output "SGID" {
  value = aws_security_group.allow_ssh.id
}