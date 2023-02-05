module "vpc" {
  source = "./modules/vpc"

  module_vpc_name   = var.vpc_name
  module_cidr_block = var.vpc_cidr_block
}

module "internet_gateway" {
  source          = "./modules/internet-gateway"
  module_vpc_id   = module.vpc.vpc_id
  module_igw_name = var.igw_name
}

module "public_subnet" {
  source = "./modules/subnet"

  module_subnet_name           = var.subnet_name1
  module_subnet_cidr_block     = var.subnet1_cidr_block
  module_vpc_id                = module.vpc.vpc_id
  module_boolean_public_subnet = true
}

module "private_subnet" {
  source = "./modules/subnet"

  module_subnet_name           = var.subnet2_name
  module_subnet_cidr_block     = var.subnet2_cidr_block
  module_vpc_id                = module.vpc.vpc_id
  module_boolean_public_subnet = false
}

module "ssh_security_group" {
  source = "./modules/security-group"

  module_vpc_id                     = module.vpc.vpc_id
  module_security_group_name        = var.security1_group_name
  module_ingress_protocol           = var.ssh_ingress_protocol
  module_ingress_to_port            = var.ssh_ingress_port
  module_ingress_from_port          = var.ssh_ingress_port
  module_ingress_cidr_block         = var.allow_all_cidr_block
  module_security_group_description = var.ssh_security_group_description
  module_egress_cidr_block          = var.allow_all_cidr_block
  module_egress_port                = var.allow_all_egress_port
  module_egress_protocol            = var.allow_all_egress_protocol
}


module "icmp_security_group" {
  source = "./modules/security-group"

  module_vpc_id                     = module.vpc.vpc_id
  module_security_group_name        = var.security_group2_name
  module_ingress_protocol           = var.icmp_ingress_protocol
  module_ingress_from_port          = 8
  module_ingress_to_port            = 0
  module_ingress_cidr_block         = var.allow_all_cidr_block
  module_security_group_description = var.icmp_security_group_description
  module_egress_cidr_block          = var.allow_all_cidr_block
  module_egress_port                = var.allow_all_egress_port
  module_egress_protocol            = var.allow_all_egress_protocol
}

module "route_table_and_association" {
  source = "./modules/route-table"

  module_gateway_id       = module.internet_gateway.igw_id
  module_route_cidr       = var.allow_all_cidr_block
  module_vpc_id           = module.vpc.vpc_id
  module_subnet_id        = module.public_subnet.subnet_id
  module_route_table_name = var.route_table_name

}

module "public_instance" {
  source                   = "./modules/ec2"
  module_security_group_id = ["${module.ssh_security_group.security_group_id}"]
  module_private_ip_list   = var.ip_public_instance
  module_subnet_id         = module.public_subnet.subnet_id
  module_instance_name     = var.instance1_name
}

module "private_instance" {
  source                   = "./modules/ec2"
  module_security_group_id = ["${module.icmp_security_group.security_group_id}"]
  module_private_ip_list   = var.ip_private_instance
  module_subnet_id         = module.private_subnet.subnet_id
  module_instance_name     = var.instance2_name
}

