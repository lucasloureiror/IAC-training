resource "aws_internet_gateway" "igw" {
  vpc_id = var.module_vpc_id

  tags = {
    Name = var.module_igw_name
  }
}