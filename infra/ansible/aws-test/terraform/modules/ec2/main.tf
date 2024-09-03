resource "aws_key_pair" "terraform-key-pair" {
  key_name   = "tf-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = {
    description = "terraform key pair import"
  }
}

resource "aws_instance" "web" {
  ami                    = "ami-02e05347a68e9c76f" 
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = var.security_group_ids  
  key_name               = aws_key_pair.terraform-key-pair.key_name  
  availability_zone      = var.availability_zone

  tags = {
    Name = "web_instance"
  }
}