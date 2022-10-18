resource "aws_instance" "demo1" {
  ami                       = data.aws_ami.my_ami.id
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  provisioner "local-exec" {
    command = <<EOF 
    cd /home/centos/ansible,
    ansible-playbook  -i public_ip ??? roboshop.yml -e COMPONENT=mongodb -e ENV=dev -e ansible_user=centos -e ansible_password=DevOps321

EOF 
  }

  tags     = {
    Name   = "EC2-Terraform"
  }
}

variable "sg" {}

output "public_ip" {
    value =  aws_instance.demo1.public_ip
}