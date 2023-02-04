resource "aws_subnet" "main" {
    count = var.module_boolean_public_subnet == 1 ? 1 : 0
    vpc_id = var.module_vpc_id
    cidr_block = var.module_subnet_cidr_block

    map_public_ip_on_launch = true

    tags = {
      Name = var.module_subnet_name
    }
}

resource "aws_subnet" "secondary" {
    count = var.module_boolean_public_subnet == 0 ? 1 : 0
    vpc_id = var.module_vpc_id
    cidr_block = var.module_subnet_cidr_block
    tags = {
      Name = var.module_subnet_name
    }
}

