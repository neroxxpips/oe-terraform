resource "aws_instance" "nginx_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.name}-${var.environment}"
    Environment = var.environment
  }

  user_data = file("${path.module}/userdata.sh")

  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  key_name = "nero-keypair"
}

