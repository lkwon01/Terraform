resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.custom-vpc.id

  tags = {
    Name = "IGW"
  }
}

resource "aws_nat_gateway" "gw-nat" {
  allocation_id = aws_eip.elastic-for-ngw.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_eip" "elastic-for-ngw" {
  domain = "vpc"

}