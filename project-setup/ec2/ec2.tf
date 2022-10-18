resource "aws_spot_instance_request" "spot_worker" {
  ami           = data.aws_ami.my_ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "var.COMPONENT"
  }

  provisioner "remote-exec" {
  
  # Connection Provisioner
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

    inline = [
      "ansible-pull -U https://github.com/b50-clouddevops/ansible.git -e COMPONENT=frontend -e ENV=dev -e APP_VERSION=0.0.2 roboshop-pull.yml",
    ]
  }

}