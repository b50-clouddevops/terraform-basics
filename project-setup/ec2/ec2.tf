resource "aws_spot_instance_request" "spot_worker" {
  ami           = data.aws_ami.my_ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "var.COMPONENT"
  }
}