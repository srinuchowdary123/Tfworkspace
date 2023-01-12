resource "aws_vpc" "myvpc" {
  
      cidr_block = var.target_cidr

      tags = {

        name = "my_vpc"
        ENV = "PROD"
      }
}