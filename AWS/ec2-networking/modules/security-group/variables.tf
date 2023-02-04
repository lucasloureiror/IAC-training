variable "module_vpc_id" {
    type = string
    description = "VPC id"
}

variable "module_ingress_cidr_block" {
    type = list(string)
    description = "List for ingress cidr block"
}

variable "module_egress_cidr_block" {
    type = list(string)
    description = "List for egress cidr block"
}

variable "module_ingress_port" {
    type = number
    description = "Ingress port number"
}

variable "module_egress_port" {
    type = number
    description = "Egress port number"
}

variable "module_security_group_name" {
    type = string
    description = "Name for security group" 
}

variable "module_security_group_description" {
    type = string
    description = "Description for this security groups"
  
}

variable "module_ingress_protocol" {
    type = string
    description = "Ingress protocol type"
}

variable "module_egress_protocol" {
    type = string
    description = "Egress protocol type"
}

