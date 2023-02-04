resource "aws_subnet" "main" {
    vpc_id = var.module_vpc_id
    cidr_block = var.module_subnet_cidr_block

    map_public_ip_on_launch = var.module_boolean_public_subnet

    tags = {
      Name = var.module_subnet_name
    }
}
