resource "azurerm_public_ip" "public_ip" {
  name                = var.pip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
}

resource "azurerm_bastion_host" "bastion_host" {
  name                = format("%s-bast", var.bastion_name)
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"

  ip_configuration {
    name                 = format("%s-ipconfig", var.bastion_name)
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}

