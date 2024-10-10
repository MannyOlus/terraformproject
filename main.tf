terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

# Launches an EC2 instance using the specified AMI and instance type.
resource "aws_instance" "Ubuntu1" {
  ami           = var.ami_id # Using the AMI ID variable from variables.tf
  instance_type = var.instance_type     # Using instance type variable
  tags = {
    Name        = var.instance_name
    environment = var.environment
  }
}
