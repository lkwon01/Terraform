#Create EC2 instance and boostrap the installation of Jenkins to the EC2 server.
resource "aws_instance" "Mywebsite" {
  ami           = var.ami_id
  instance_type = var.instance
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2.security_group.id]
  ke_name       = var.key_name.pem
  user_data              = file("jenkins_install.sh")
  

  tags = {
    Name = "my_website"
  }
}

#Create s3 bucket


resource "aws_s3_bucket" "Jenkins_Artifacts" {
  bucket = var.mybucketname

  tags = {
    Name        = "My Jenkins bucket"
    Environment = "Dev"
  }
  }
  
  
resource "aws_s3_bucket_acl" "my-jenkins-bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}
    
# Create security group

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins"
  description = "Allow jenkins inbound traffic on ports 8080 and 22"
  vpc_id      = var.myvpc

  ingress {
    description      = "allow Jenkins traffic from the internet"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  
   ingress {
    description      = "allow http traffic from the internet"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  
  ingress {
    description      = "allow ssh traffic from the internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }

  tags = {
    Name = "jenkins security group"
  }
  }