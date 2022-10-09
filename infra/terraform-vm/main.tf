module "vm" {
  source                     = "git::https://github.com/dptcs/terraform-azure-vm.git?ref=v0.0.1"
  resource_group_name_prefix = var.resource_group_name_prefix
}

resource "github_actions_secret" "vm_rg" {
  repository  = var.github_repo_name
  secret_name = "VM_RG"
  #checkov:skip=CKV_GIT_4: "Ensure Secrets are encrypted"
  plaintext_value = module.vm.resource_group_name
}

resource "github_repository_file" "foo" {
  repository          = var.github_repo_name
  branch              = "main"
  file                = "vm_ip.md"
  content             = "http://${module.vm.public_ip_address}"
  commit_message      = "chore: new vm IP"
  commit_author       = "dptcs"
  commit_email        = "Deepak.Sisupalan@mnscorp.net"
  overwrite_on_create = true
}
