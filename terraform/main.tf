resource "aws_key_pair" "deployer" {
  key_name   = "devops-key"
  public_key = file("devops-key.pub")
}


resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "web" {

  ami           = "ami-0ec7f9846da6b0f61"
  instance_type = var.instance_type

  key_name = aws_key_pair.deployer.key_name

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name = var.instance_name
  }
}