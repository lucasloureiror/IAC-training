module "instances" {
    source = "./modules/ec2"
}

module "vpc" {
    source = "./modules/vpc"
    module_vpc_name = var.vpc_name
    module_cidr_block = var.vpc_cidr_block
}