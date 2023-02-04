module "instances" {
    source = "./modules/ec2"
}

module "vpc" {
    source = "./modules/vpc"
    module_vpc_name = var.vpc_name
    module_cidr_block = var.vpc_cidr_block
}

module "subnet" {
    source = "./modules/subnet"
    module_subnet_name = var.subnet_name1
    module_subnet_cidr_block = var.subnet1_cidr_block
    module_vpc_id = module.vpc.vpc_id
    module_boolean_public_subnet = 1
}

module "security_group" {
    source = "./modules/security-group"
    module_vpc_id = module.vpc.vpc_id
    module_security_group_name = var.security1_group_name
    module_ingress_protocol = var.ssh_ingress_protocol
    module_ingress_port = var.ssh_ingress_port
    module_ingress_cidr_block = var.allow_all_cidr_block
    module_security_group_description = var.ssh_security_group_description
    module_egress_cidr_block = var.allow_all_cidr_block
    module_egress_port = var.allow_all_egress_port
    module_egress_protocol = var.allow_all_egress_protocol
}
