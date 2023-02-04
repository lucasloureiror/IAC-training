variable "vpc_name" {
    type = string
    description = "Name for the default VPC of the EC2 cluster"
}

variable "vpc_cidr_block" {

    type = string
    description = "CIDR block for VPN"
  
}

variable "subnet_name1" {
    type = string
    description = "Name for subnet number one"
}

variable "subnet1_cidr_block" {
    type = string
    description = "CIDR block for subnet 1"
  
}