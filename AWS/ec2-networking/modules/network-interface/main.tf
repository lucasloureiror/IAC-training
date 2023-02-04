resource "aws_network_interface" "interface" {
    subnet_id = var.module_subnet_id
    private_ip = var.module_private_ip_list
    security_groups = var.module_security_group_id

    attachment {
      instance = var.module_instance_id
      device_index = 0
    }
}