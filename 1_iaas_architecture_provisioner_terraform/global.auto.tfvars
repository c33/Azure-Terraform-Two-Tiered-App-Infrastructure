#Global Variables
location = "northeurope"

resource_group_name = "terraform-eun-t-iaas-rg-001"

#Virtual Network Variables
vnet_name     = "terraform-eun-t-vnet-001"
address_space = ["10.0.0.0/16"]

#Subnet Variables
subnets = {
  AzureBastionSubnet = {
    subnet_name      = "AzureBastionSubnet"
    address_prefixes = ["10.0.0.0/24"]
  }
  AppSubnet = {
    subnet_name       = "AppSubnet"
    address_prefixes  = ["10.0.1.0/24"]
    service_endpoints = ["Microsoft.Sql"]
  }
}

#Bastion Variables
bastion_pip_name              = "bastion-001-pip"
bastion_pip_allocation_method = "Static"
bastion_name                  = "WebApp1"

#VM Variables
virtual_machines = {
  "web001" = {
    vm_name = "vmapp1web01"
    vm_size = "Standard_D4s_v3"

    admin_username = "ProjectUser"
    admin_password = "34syT0R3m3mb3r!"

    vm_caching              = "None"
    vm_storage_account_type = "Standard_LRS"

    managed_disk_instance = "001"
    storage_account_type  = "Standard_LRS"
    create_option         = "Empty"
    disk_size_gb          = "100"
    md_lun                = "10"
    md_caching            = "None"

    publisher     = "MicrosoftWindowsServer"
    offer         = "WindowsServer"
    image_sku     = "2022-datacenter-azure-edition"
    image_version = "latest"

    nic_instance = "001"
  }
}

#SQL Server Variables
sql_server_name                          = "vmapp1sql01"
sql_server_version                       = "12.0"
sql_admin_username                       = "app1dba"
sql_admin_password                       = "St0ckC0ntrol!"
sql_server_public_network_access_enabled = true

sql_firewall_rule_name = "FromAppLayer"
start_ip_address       = "10.0.1.0"
end_ip_address         = "10.0.1.255"

#SQL Database Variables
sql_db_name                 = "app1db"
sql_db_collation            = "Latin1_General_CI_AS"
sql_db_license_type         = "BasePrice"
sql_db_max_size_gb          = "250"
sql_db_sku_name             = "S0"
sql_db_enclave_type         = "Default"
sql_db_storage_account_type = "Local"
sql_db_geo_backup_enabled   = false
