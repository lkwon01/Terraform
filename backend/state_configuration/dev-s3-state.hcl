 backend "s3" {
    bucket = "my-terraform-state-ghm-hyejung"
    key    = "dev/aws_infra"
    region = "us-east-1"
  }