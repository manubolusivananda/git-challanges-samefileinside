
resource "aws_instance" "nanda" {


  ami                         = "ami-0b016c703b95ecbe4" # ✅ Amazon Linux 2 in us-east-1
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.multi_port.id]
  associate_public_ip_address = false

  tags = {
    Name = "ec2"
  }
} 
