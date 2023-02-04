resource "aws_route_table" "route_table" {
  vpc_id = var.module_vpc_id

  route {
    cidr_block = var.module_route_cidr[0]
    gateway_id = var.module_gateway_id
  }

  tags = {
    Name = var.module_route_table_name
  }
}

resource "aws_route_table_association" "association" {
    subnet_id = var.module_subnet_id
    route_table_id = aws_route_table.route_table.id
  
}