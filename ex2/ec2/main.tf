resource "aws_instance" "demo1" {
  ami                       = data.aws_ami.my_ami.id
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags     = {
    Name   = "EC2-Terraform"
  }

  provisioner "remote-exec" {
  
  # Connection Provisioner
  connection {
    type     = "ssh"
    user     = "centos"
    password = var.root_password
    host     = self.public_ip
  }

    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }

}

variable "sg" {}

output "public_ip" {
    value =  aws_instance.demo1.public_ip
}