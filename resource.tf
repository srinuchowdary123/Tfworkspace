resource "aws_vpc" "myvpc" {
  
      cidr_block = var.target_cidr

      tags = {

        name = "my_vpc"
        ENV = "PROD"
      }
}

resource "aws_subnet" "my_subnet1" {

  vpc_id = aws_vpc.myvpc

  cidr_block = "10.0.1.0/24"
  
  tags = {
    "name" = "firstsubnet"
  }
}
resource "aws_subnet" "my_subnet2" {
  vpc_id = aws_vpc.myvpc
  cidr_block = "10.0.2.0/24"
  tags = {
    "name" = "secondsubnet"
  }
  
}
resource "aws_subnet" "my_subnet3" {
  vpc_id = aws_vpc.myvpc
  cidr_block = "10.0.3.0/24"
  tags = {
    "name" = "thirdsubnet"
  }
  
}
resource "aws_subnet" "my_subnet4" {
  vpc_id = aws_vpc.myvpc
  cidr_block = "10.0.4.0/24"
  tags = {
    "name" = "fourthsubnet"
  }
  
}