#Global Variables

variable "location" {
  type = string
}

#Resource Group Variables
variable "resource_group_name" {
  type = string
}


#Virtual Network Variables
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

#Subnet Variables

variable "subnets" {
  type = map(object({
    subnet_name       = string
    address_prefixes  = list(string)
    service_endpoints = optional(list(string))
  }))
}

#NSG Variables

#Bastion Variables
variable "bastion_pip_name" {
  type = string
}

variable "bastion_pip_allocation_method" {
  type = string
}

variable "bastion_name" {
  type = string
}

#VM Variables

variable "virtual_machines" {
  type = map(object({
    nic_instance            = string
    vm_name                 = string
    vm_size                 = string
    admin_username          = string
    admin_password          = string
    vm_caching              = string
    vm_storage_account_type = string
    managed_disk_instance   = string
    storage_account_type    = string
    create_option           = string
    disk_size_gb            = number
    md_caching              = string
    md_lun                  = string
    publisher               = string
    offer                   = string
    image_sku               = string
    image_version           = string
  }))
}


#SQL Server

variable "sql_server_name" {
  type = string
}

variable "sql_server_version" {
  type = string
}

variable "sql_admin_username" {
  type = string
}

variable "sql_admin_password" {
  type = string
}

variable "sql_server_public_network_access_enabled" {
  type = bool
}

variable "sql_firewall_rule_name" {
  type = string
}

variable "start_ip_address" {
  type = string
}

variable "end_ip_address" {
  type = string
}

variable "sql_db_name" {
  type = string
}

variable "sql_db_collation" {
  type = string
}

variable "sql_db_license_type" {
  type = string
}

variable "sql_db_max_size_gb" {
  type = string
}

variable "sql_db_sku_name" {
  type = string
}

variable "sql_db_enclave_type" {
  type = string
}

variable "sql_db_storage_account_type" {
  type = string
}

variable "sql_db_geo_backup_enabled" {
  type = bool
}
