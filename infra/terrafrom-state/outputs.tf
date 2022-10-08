output "backend_config" {
  value = "key=tstate,resource_group_name=${module.storage.azurerm_resource_group},container_name=${module.storage.azurerm_storage_container},storage_account_name=${module.storage.azurerm_storage_account}"
}
