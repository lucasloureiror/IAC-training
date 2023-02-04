resource "aws_vpc" "main-vpc" {
    cidr_block = var.module_cidr_block

    tags = {
      Name = var.module_vpc_name
    } 
}