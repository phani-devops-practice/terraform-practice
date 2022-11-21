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

resource "aws_instance" "instance" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = aws_security_group.allow_ssh.id


  tags = {
    Name = "terraform"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-learner"
    key    = "ex2/terraform.tfstate"
    region = "us-east-1"
  }
}
