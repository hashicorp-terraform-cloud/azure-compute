provider "azurerm" {
  features {}
}

provider "random" {
}

module "rhel" {
  source  = "app.terraform.io/ben-holmes/rhel-standard/azurerm"
  version = "0.0.4"
  count   = var.vm_instance_count

  vm_name_prefix            = var.vm_name_prefix
  vm_count_suffix           = count.index
  vm_owner                  = var.vm_owner
  rg_name                   = var.rg_name
  ssh_admin_user_public_key = var.ssh_admin_user_public_key
  ssh_admin_user            = var.ssh_admin_user
}
