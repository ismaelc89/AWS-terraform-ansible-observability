module "networking" {
  source = "./modules/networking"
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.networking.vpc_id
}

module "compute" {
  source                 = "./modules/compute"
  public_subnet          = module.networking.public_subnet_id
  private_subnet         = module.networking.private_subnet_id
  public_security_group  = module.security_groups.public_sg
  private_security_group = module.security_groups.pirvate_sg
}
