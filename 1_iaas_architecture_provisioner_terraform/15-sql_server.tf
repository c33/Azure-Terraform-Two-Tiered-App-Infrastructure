module "sql_server" {
  source                        = "../shared_modules/modules/sql_server"
  name                          = var.sql_server_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sql_server_version            = var.sql_server_version
  administrator_login           = var.sql_admin_username
  administrator_login_password  = var.sql_admin_password
  public_network_access_enabled = var.sql_server_public_network_access_enabled

  sql_firewall_rule_name = var.sql_firewall_rule_name
  start_ip_address       = var.start_ip_address
  end_ip_address         = var.end_ip_address
}

