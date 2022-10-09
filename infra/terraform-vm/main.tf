module "vm" {
  source                     = "git::https://github.com/dptcs/terraform-azure-vm.git?ref=v0.0.1"
  resource_group_name_prefix = var.resource_group_name_prefix
}
