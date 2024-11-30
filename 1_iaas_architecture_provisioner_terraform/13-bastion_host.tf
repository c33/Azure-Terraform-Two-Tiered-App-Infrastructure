module "bastion_host" {
  source              = "../shared_modules/modules/bastion_host"
  resource_group_name = var.resource_group_name
  location            = var.location
  pip_name            = var.bastion_pip_name
  allocation_method   = var.bastion_pip_allocation_method
  bastion_name        = var.bastion_name
  subnet_id           = module.vnet.subnetsByAlias["AzureBastionSubnet"].id
}
