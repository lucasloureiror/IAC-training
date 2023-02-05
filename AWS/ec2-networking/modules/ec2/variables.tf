variable "module_subnet_id" {
    type = string
    description = "Subnet ID"
}

variable "module_private_ip_list" {
    type = list(string)
    description = "IP for this network interface"
}

variable "module_security_group_id" {
    type = list(string)
    description = "Security group ID"
}

variable "module_instance_name" {
    type = string
    description = "Name for EC2 Instance"
  
}
