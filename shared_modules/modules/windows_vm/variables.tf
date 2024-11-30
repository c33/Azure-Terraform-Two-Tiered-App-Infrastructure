variable "location" {
  type = string
}

#Resource Group Variables
variable "resource_group_name" {
  type = string
}

#VM Variables
variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

#OS Disk Variables
variable "vm_caching" {
  type = string
}

variable "vm_storage_account_type" {
  type = string
}

#Image Variables

variable "publisher" {
  type = string
}

variable "offer" {
  type = string
}

variable "image_sku" {
  type = string
}

variable "image_version" {
  type = string
}

#NIC Variables
variable "subnet_id" {
  type = string
}

variable "nic_instance" {
  type = string
}

#Managed Disk Variables
variable "managed_disk_instance" {
  type = string
}

variable "storage_account_type" {
  type = string
}

variable "create_option" {
  type = string
}

variable "disk_size_gb" {
  type = string
}

#Managed Disk Attachment Variables

variable "md_lun" {
  type = string
}

variable "md_caching" {
  type = string
}
