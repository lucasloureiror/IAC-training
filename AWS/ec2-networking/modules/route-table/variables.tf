variable "module_vpc_id" {
    type = string
    description = "ID for the VPC"
}

variable "module_route_cidr" {
    type = list(string)
    description = "CIDR list for the table"
}

variable "module_gateway_id" {
    type = string
    description = "Gateway ID"
}

variable "module_route_table_name" {
    type = string 
    description = "Route Table Name"
}

variable "module_subnet_id" {
    type = string
    description = "ID for the subnet that this config file will change" 
}