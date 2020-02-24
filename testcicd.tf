provider "aws" {
  region = "eu-west-1"
  access_key = "AKIAWRA2CTWR7WMXMN5K"
  secret_key = "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"
}

resource "aws_instance" "web" {
   ami           = "ami-099a8245f5daa82bf"
  instance_type              = "t2.micro"
  key_name                   = "Bastion-test"
 associate_public_ip_address = "true"
  count                      = 2
  tags = {
    Name = "Terraform EC2"
  }
}