variable "aws_region" {
  description = "AWS region where resources will be created"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro" 
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"  
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  
}

variable "availability_zones" {
  description = "List of availability zones in the AWS region"
  type        = list(string)
  default     = ["us-west-2a" , "us-west-2b" ]
}

variable "ami_id" {
    description = "ami id for the ec2-instance"
    default = "ami-04e35eeae7a7c5883"
  
}

variable "instance_ids" {
  description = "List of instance IDs"
  type        = list(string)
  default     = []
}

variable "instance_type_small" {
  description = "EC2 instance type for small instances"
  default     = "t2.small"
}


