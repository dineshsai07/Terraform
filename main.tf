terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.13.1"
      }
    }
}

provider "aws" {
    region = var.aws_region
    access_key = "AKIA542D27KVIA3O7YZH"
    secret_key = "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"
}


resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "subnets" {
  count             = length(var.subnet_cidrs)
  cidr_block        = var.subnet_cidrs[count.index]
  vpc_id            = aws_vpc.main.id
  availability_zone = var.availability_zones[count.index]
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnets[0].id
}
