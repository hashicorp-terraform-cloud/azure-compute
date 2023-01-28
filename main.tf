provider "azurerm" {
  features {}
}

provider "random" {
}

resource "random_pet" "compute_id" {
  length = 3
  keepers = {
    owner = var.vm_owner
  }

}

locals {
  default_resource_tags = {
    OwnedBy = random_pet.compute_id.keepers.owner
  }
}

locals {
  vm_name = "${var.vm_name_prefix}-${random_pet.compute_id.id}"
}

module "rhel-standard" {
  source  = "app.terraform.io/ben-holmes/rhel-standard/azurerm"
  version = "0.0.5"
  count   = var.vm_instance_count

  vm_name                   = "${local.vm_name}-${count.index}"
  vm_owner                  = random_pet.compute_id.keepers.owner
  vm_sku                    = var.vm_sku
  vm_size                   = var.vm_size
  rg_name                   = var.rg_name
  ssh_admin_user_public_key = var.ssh_admin_user_public_key
  ssh_admin_user            = var.ssh_admin_user
  resource_tags             = local.default_resource_tags
}
