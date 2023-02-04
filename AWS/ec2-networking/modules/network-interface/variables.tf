variable "module_subnet_id" {
    type = string
    description = "Subnet ID"
}

variable "module_private_ip_list" {
    type = list(string)
    description = "IP for this network interface"
}

variable "module_security_group_id" {
    type = string
    description = "Security group ID"
  
}

variable "module_instance_id" {
    type = string
    description = "EC2 Instance ID"
  
}