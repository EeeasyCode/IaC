resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  availability_zone = "ap-northeast-2a"
    
  tags = {
    Name = "terraform-test-public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "ap-northeast-2b"
  
  tags = {
    Name = "terraform-test-private-subnet"
  }
}