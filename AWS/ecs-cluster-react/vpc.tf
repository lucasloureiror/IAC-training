resource "aws_vpc" "vpc" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "VPC do Lucas"
    }
  
}

resource "aws_subnet" "subnet" {
    cidr_block = "10.10.0.0/24"
    vpc_id = aws_vpc.vpc.id
    map_public_ip_on_launch = true

    tags = {
      Name = "Subnet Lucas"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "IGW do Lucas"
    }
}

resource "aws_route_table" "route" {

    vpc_id = aws_vpc.vpc.id

    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
    
    }
}

resource "aws_route_table_association" "association" {
    subnet_id = aws_subnet.subnet.id
    gateway_id = aws_internet_gateway.igw.id
    route_table_id = aws_route_table.route.id
  
}