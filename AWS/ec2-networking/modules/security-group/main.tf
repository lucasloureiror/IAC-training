resource "aws_security_group" "security_group" {
    name = var.module_security_group_name
    description = var.module_security_group_description
    vpc_id = var.module_vpc_id

    ingress {
        description = "Rules for ingress"
        from_port = var.module_ingress_from_port
        to_port = var.module_ingress_to_port
        protocol = var.module_ingress_protocol
        cidr_blocks = var.module_ingress_cidr_block
    }

    egress {
        description = "Rules for egress"
        from_port = var.module_egress_port
        to_port = var.module_egress_port
        protocol = var.module_egress_protocol
        cidr_blocks = var.module_egress_cidr_block
    }

    tags = {
        Name = var.module_security_group_name
    }
  
}