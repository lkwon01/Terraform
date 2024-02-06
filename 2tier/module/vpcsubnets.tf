resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.public_subnet2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.private_subnet1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.private_subnet2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    Name = "private-subnet-2"
  }
}

