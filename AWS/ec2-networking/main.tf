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
