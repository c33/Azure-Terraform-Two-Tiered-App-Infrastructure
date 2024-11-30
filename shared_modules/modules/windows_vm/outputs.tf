output "virtual_machine" {
  value = azurerm_windows_virtual_machine.windows_vm
}

output "managed_disk" {
  value = azurerm_managed_disk.managed_disk
}
