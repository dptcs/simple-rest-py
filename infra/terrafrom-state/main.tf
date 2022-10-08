module "storage" {
  source = "git::https://github.com/dptcs/terrafrom-azure-storage-account.git?ref=v0.0.1"
}

resource "github_actions_secret" "backend_config" {
  repository = var.github_repo_name
  #checkov:skip=CKV_GIT_4: "Ensure Secrets are encrypted"
  secret_name     = "BACKEND_CONFIG"
  plaintext_value = "key=tstate,resource_group_name=${module.storage.azurerm_resource_group},container_name=${module.storage.azurerm_storage_container},storage_account_name=${module.storage.azurerm_storage_account}"
}

