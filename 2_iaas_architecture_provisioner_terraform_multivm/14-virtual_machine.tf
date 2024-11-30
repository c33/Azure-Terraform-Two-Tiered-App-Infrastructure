module "windows_vm" {
  for_each = var.virtual_machines
  source   = "../shared_modules/modules/windows_vm"

  location            = var.location
  resource_group_name = var.resource_group_name

  nic_instance = each.value.nic_instance
  subnet_id    = module.vnet.subnetsByAlias["AppSubnet"].id

  vm_name        = each.value.vm_name
  vm_size        = each.value.vm_size
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  vm_caching              = each.value.vm_caching
  vm_storage_account_type = each.value.vm_storage_account_type

  publisher     = each.value.publisher
  offer         = each.value.offer
  image_sku     = each.value.image_sku
  image_version = each.value.image_version

  managed_disk_instance = each.value.managed_disk_instance
  storage_account_type  = each.value.storage_account_type
  create_option         = each.value.create_option
  disk_size_gb          = each.value.disk_size_gb
  md_caching            = each.value.md_caching
  md_lun                = each.value.md_lun
}
