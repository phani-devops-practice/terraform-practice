resource "aws_instance" "instance" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = aws_security_group.allow_ssh.id


  tags = {
    Name = "terraform"
  }
}
