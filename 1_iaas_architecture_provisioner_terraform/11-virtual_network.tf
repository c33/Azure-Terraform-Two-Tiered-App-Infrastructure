module "vnet" {
  source = "../shared_modules/modules/virtual_network"

  location            = var.location
  resource_group_name = var.resource_group_name

  vnet_name     = var.vnet_name
  address_space = var.address_space

  subnets = var.subnets
}
