variable "vpc_name" {
    type = string
    description = "Name for the default VPC of the EC2 cluster"
}

variable "vpc_cidr_block" {

    type = string
    description = "CIDR block for VPN"
  
}