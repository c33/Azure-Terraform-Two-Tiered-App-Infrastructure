output "virtual_network" {
  value = azurerm_virtual_network.vnet
}

output "subnets" {
  value = azurerm_subnet.subnets
}

output "subnetsByAlias" {
  value = { for alias, subnet in azurerm_subnet.subnets : alias => {
    id : subnet.id
    name : subnet.name
    address_prefixes : subnet.address_prefixes
    }
  }
}
