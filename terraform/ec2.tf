resource "aws_instance" "nginx" {
  ami           = "ami-0c55b159cbfafe1f0"  # Substitua pelo AMI adequado
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets[0]
  security_groups = [aws_security_group.nginx_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y docker.io
              docker run -d -p 80:80 ${var.nginx_image}
              EOF
}

resource "aws_instance" "app" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0"  # Substitua pelo AMI adequado
  instance_type = "t2.micro"
  subnet_id     = module.vpc.private_subnets[0]
  security_groups = [aws_security_group.app_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y docker.io
              docker run -d -p 3000:3000 ${var.app_image}
              EOF
}