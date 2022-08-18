provider "azurerm" {
    features {}
}

module "rhel" {
  source  = "app.terraform.io/acme-cloud-demo/rhel/azurerm"
  version = "0.0.6"
  count   = var.vm_count
  
  vm_name                   = format("%s%d", var.vm_base_name, count.index)
  rg_name                   = var.rg_name
  ssh_admin_user_public_key = var.ssh_admin_user_public_key
  ssh_admin_user            = var.ssh_admin_user
  
  # resource_tags = {
  #   app = var.vm_base_name
  #   os  = "linux"
  #   eol = "01-02-2023" 
  # }
}