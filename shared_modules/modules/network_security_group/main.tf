resource "azurerm_network_security_group" "nsg" {
  name                = format("%s-nsg", var.name)
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "nsg_associations" {
  subnet_id                 = var.associated_subnet
  network_security_group_id = azurerm_network_security_group.nsg.id
}

