variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "the ami to be used"
  type        = string
  default     = "ami-0d64bb532e0502c46"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "MyTerraformInstance"
}

variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}
