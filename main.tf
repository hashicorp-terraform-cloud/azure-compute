provider "azurerm" {
  features {}
}

module "rhel" {
  source  = "app.terraform.io/acme-cloud-demo/rhel/azurerm"
  version = "0.0.11"
  count   = var.vm_count

  vm_name_prefix            = var.vm_name_prefix
  vm_owner                  = var.vm_owner
  rg_name                   = var.rg_name
  ssh_admin_user_public_key = var.ssh_admin_user_public_key
  ssh_admin_user            = var.ssh_admin_user
}
