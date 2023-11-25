data "aws_ami" "ubuntu" {
  most_recent = true


  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["679593333241"]
}

resource "aws_instance" "web" {

  count         = var.create_ec2 ? 1:0
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = { Name = "Hello ubuntu" }
}