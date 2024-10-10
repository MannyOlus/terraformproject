terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

# Launches an EC2 instance using the specified AMI and instance type.
resource "aws_instance" "initial_instance_ubuntu" {
  ami           = "ami-0d64bb532e0502c46" # Using the AMI ID variable from variables.tf
  instance_type = "t2.micro"       # Using instance type variable
  tags = {
    Name = "initial_ubuntu_instance"
  }
