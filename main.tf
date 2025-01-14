provider "azurerm" {
  resource_provider_registrations = "core"
  features {}
}

resource "random_pet" "compute_id" {
  length = 2
  keepers = {
    owner = var.vm_owner
  }

}

module "rhel-standard" {
  source  = "app.terraform.io/ben-holmes/rhel-standard/azurerm"
  version = "0.1.5"
  count   = var.vm_instance_count

  vm_name_prefix            = var.vm_name_prefix
  vm_owner                  = var.vm_owner
  vm_size                   = var.vm_size
  rg_name                   = var.rg_name
  ssh_admin_user_public_key = var.ssh_admin_user_public_key
  extra_tags                = var.extra_tags
  rhsm_organisation_id      = var.rhsm_organisation_id
  rhsm_activation_key       = var.rhsm_activation_key
}
