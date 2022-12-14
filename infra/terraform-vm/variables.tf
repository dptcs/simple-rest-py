variable "resource_group_name_prefix" {
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "github_repo_name" {
  type    = string
  default = "simple-rest-py"
}
