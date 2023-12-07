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
    

