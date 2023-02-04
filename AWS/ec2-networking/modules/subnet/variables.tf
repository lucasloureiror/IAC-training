variable "module_subnet_cidr_block" {
    type = string
    description = "Subnet CIDR Block"
}

variable "module_boolean_public_subnet" {
    type = number
    description = "Boolean to check if the subnet is public" 
}

variable "module_subnet_name" {
    type = string
    description = "Name for the subnet"
  
}

variable "module_vpc_id" {
    type = string

    description = "ID for VPC"
  
}