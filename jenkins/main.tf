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
  region = var.myregion
}

variable "myregion" {
    description = "this is where my infra will be deployed"
    type = string
    default = "us-east-1"
}

#Create EC2 resource
resource "aws_instance" "Mywebsite" {
  ami           = var.ami_id
  instance_type = var.instance
  user_data              = file("jenkins_install.sh")

  tags = {
    Name = "Jenkins"
  }
}

variable "ami_id" {
    description = "this is my ami id"
    type = string
    default = "ami-0230bd60aa48260c6"
}

variable "instance" {
    description = "this is my instance type"
    type = string
    default = "t2.micro"
}
#Create s3 bucket


resource "aws_s3_bucket" "Jenkins_Artifacts" {
  bucket = var.mybucketname

  tags = {
    Name        = "My Jenkins bucket"
    Environment = "Dev"
  }
  }
  
variable "mybucketname" {
    description = "this is my instance type"
    type = string
    default = "my-tf-bucket-hyejung"
    }
    
# Create security group

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins"
  description = "Allow jenkins inbound traffic"
  vpc_id      = var.myvpc

  ingress {
    description      = "Jenkins port from my IP"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }

  }


variable "myvpc" {
    description = "this is my vpc id"
    type = string
    default = "vpc-0d7c3d48634090867"
    }