resource "azurerm_mssql_server" "sql_server" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.sql_server_version
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  public_network_access_enabled = var.public_network_access_enabled
}

resource "azurerm_mssql_firewall_rule" "access_rule" {
  name             = var.sql_firewall_rule_name
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = var.start_ip_address
  end_ip_address   = var.end_ip_address
}
