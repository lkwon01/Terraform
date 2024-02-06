
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}


variable "ec2_instance_ami" {
  type    = string
  default = "ami-0277155c3f0ab2930"

}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "az1" {
  type    = string
  default = "us-east-1a"
}

variable "az2" {
  type    = string
  default = "us-east-1b"
}

variable "public_subnet1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "db_user" {
  type      = string
  default   = "admin"
  sensitive = true
}

variable "db_pw" {
  type      = string
  default   = "adminpassword"
  sensitive = true
}
