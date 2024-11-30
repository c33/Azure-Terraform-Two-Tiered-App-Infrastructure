resource "azurerm_network_interface" "windows_vm_nic" {
  name                = format("%s-%s", var.vm_name, var.nic_instance)
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "Internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.windows_vm_nic.id
  ]

  os_disk {
    caching              = var.vm_caching
    storage_account_type = var.vm_storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.image_sku
    version   = var.image_version
  }
}

resource "azurerm_managed_disk" "managed_disk" {
  name                 = format("%s-%s", azurerm_windows_virtual_machine.windows_vm.name, var.managed_disk_instance)
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.storage_account_type
  create_option        = var.create_option
  disk_size_gb         = var.disk_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.managed_disk.id
  virtual_machine_id = azurerm_windows_virtual_machine.windows_vm.id
  lun                = var.md_lun
  caching            = var.md_caching
  depends_on         = [azurerm_network_interface.windows_vm_nic, azurerm_windows_virtual_machine.windows_vm, azurerm_managed_disk.managed_disk]
}
