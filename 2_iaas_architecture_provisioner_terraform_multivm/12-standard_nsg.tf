module "standard_network_security_group" {
  for_each            = { for s, subnet in var.subnets : s => subnet if s != "AzureBastionSubnet" }
  source              = "../shared_modules/modules/network_security_group"
  location            = var.location
  resource_group_name = var.resource_group_name
  name                = each.key
  associated_subnet   = module.vnet.subnetsByAlias[each.key].id
  depends_on          = [module.vnet]
}

