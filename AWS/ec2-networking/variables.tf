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

variable "allow_all_cidr_block" {
    type = list(string)
    description = "List for ingress cidr block"
}

variable "ssh_ingress_port" {
    type = number
    description = "Ingress port number"
}

variable "allow_all_egress_port" {
    type = number
    description = "Egress port number"
}

variable "security1_group_name" {
    type = string
    description = "Name for security group" 
}

variable "ssh_ingress_protocol" {
    type = string
    description = "Ingress protocol for SSH"
}

variable "allow_all_egress_protocol" {
    type = string
    description = "Egress protocol for allow all types of connections"
}

variable "ssh_security_group_description" {
    type = string
    description = "Description for SSH Security Group" 
}

