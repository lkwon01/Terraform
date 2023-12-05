terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Create EC2 resource
resource "aws_instance" "Mywebsite" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins"
  }
}
