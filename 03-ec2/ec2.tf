provider "aws" {
    region      = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-05317b7d9de33d0b8"
  instance_type = "t2.micro"

  tags     = {
    Name   = "EC2-Terraform-Instance"
  }
}

output "public_ip" {
    value  = aws_instance.demo.public_ip
}


# Creates security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}