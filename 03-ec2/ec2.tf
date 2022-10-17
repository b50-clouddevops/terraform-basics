provider "aws" {
    region      = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-05317b7d9de33d0b8"
  instance_type = "t2.micro"

  tags     = {
    Name = "EC2-Terraform-Instance"
  }
}

output "public_ip" {
    value = aws_instance.demo.public_ip
}