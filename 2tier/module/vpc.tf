
# Create a VPC
resource "aws_vpc" "custom-vpc" {
  cidr_block = "10.0.0.0/16"
}