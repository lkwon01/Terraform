
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "myregion" {
    description = "this is where my infra will be deployed"
    type = string
    default = "us-east-1"
}

variable "ami_id" {
    description = "this is my ami id"
    type = string
    default = "ami-0230bd60aa48260c6"
}

variable "vpc_id" {
    description = "this is my vpc id"
    type = string
    default = "vpc-0d7c3d48634090867"
}

variable "instance" {
    description = "this is my instance type"
    type = string
    default = "t2.micro"
}

variable "mybucketname" {
    description = "this is my instance type"
    type = string
    default = "my-tf-jenkins-bucket"
    }
    

