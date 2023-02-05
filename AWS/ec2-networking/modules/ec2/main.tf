resource "aws_instance" "instance" {
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
    network_interface {
      network_interface_id = aws_network_interface.interface.id
      device_index         = 0
    }
    tags = {
      Name = var.module_instance_name
    }
}

resource "aws_network_interface" "interface" {
    subnet_id = var.module_subnet_id
    private_ips = var.module_private_ip_list
    security_groups = var.module_security_group_id

}