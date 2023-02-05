variable "vpc_name" {
  type        = string
  description = "Name for the default VPC of the EC2 cluster"
}

variable "vpc_cidr_block" {

  type        = string
  description = "CIDR block for VPN"

}

variable "subnet_name1" {
  type        = string
  description = "Name for subnet number one"
}

variable "subnet1_cidr_block" {
  type        = string
  description = "CIDR block for subnet 1"

}

variable "allow_all_cidr_block" {
  type        = list(string)
  description = "List for ingress cidr block"
}

variable "ssh_ingress_port" {
  type        = number
  description = "Ingress port number"
}

variable "allow_all_egress_port" {
  type        = number
  description = "Egress port number"
}

variable "security1_group_name" {
  type        = string
  description = "Name for security group"
}

variable "ssh_ingress_protocol" {
  type        = string
  description = "Ingress protocol for SSH"
}

variable "allow_all_egress_protocol" {
  type        = string
  description = "Egress protocol for allow all types of connections"
}

variable "ssh_security_group_description" {
  type        = string
  description = "Description for SSH Security Group"
}

variable "igw_name" {
  type        = string
  description = "Internet Gateway name"
}

variable "route_table_name" {
  type        = string
  description = "Route table name"
}

variable "ip_public_instance" {
  type        = list(string)
  description = "Private IP for the EC2 instance in the public subnet"
}

variable "ip_private_instance" {
  type        = list(string)
  description = "Private IP for the EC2 instance in the private subnet"
}

variable "subnet2_name" {
  type        = string
  description = "Name for the second subnet"
}

variable "subnet2_cidr_block" {
  type        = string
  description = "Cidr block for the second subnet"
}

variable "security_group2_name" {
  type        = string
  description = "Security group 2 name"
}

variable "icmp_security_group_description" {
  type        = string
  description = "Security group description for ICMP"
}

variable "icmp_ingress_protocol" {
  type        = string
  description = "Protocol for ICMP"

}

variable "instance1_name" {
  type        = string
  description = "Instance one name"

}

variable "instance2_name" {
  type        = string
  description = "Instance one name"

}


