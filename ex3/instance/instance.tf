resource "aws_instance" "web" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.SGID]


  tags = {
    Name = "terraform"
  }
}

variable "SGID" {}
