terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "myec2" {
    ami = "ami-0ecf75a98fe8519d7"
    instance_type = "t2.micro"
    count = 2
    tags = {
    Name = "HelloWorld"
  }
}
