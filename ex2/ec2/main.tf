resource "aws_instance" "demo1" {
  ami                       = "ami-05317b7d9de33d0b8"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags     = {
    Name   = "EC2-Terraform"
  }
}

variable "sg" {}

output "public_ip" {
    value =  aws_instance.demo1.public_ip
}