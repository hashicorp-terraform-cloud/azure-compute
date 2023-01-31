variable "vm_instance_count" {
  description = "Number of Azure Virtual Machines to create"
  type        = number
  default     = 1
}

variable "ssh_admin_user_public_key" {
  description = "Admin User SSH Public Key"
  type        = string
}

variable "ssh_admin_user" {
  description = "Admin User SSH Username"
  type        = string
}

variable "vm_name_prefix" {
  description = "Each VM is created with a randomly generated name. Assign a common prefix."
  type        = string
}

variable "vm_owner" {
  description = "Individual or Team responsible"
  type        = string
}

variable "rg_name" {
  description = "Target Resource Group Name"
  type        = string
  
  validation {
    condition     = length(var.rg_name) > 1
    error_message = "rg_name must be a string value greater than 1 character in length"
  }
}

variable "vm_sku" {
  description = "Azure RHEL Virtual Machine SKU"
  default     = "rhel-lvm91-gen2"
  type        = string
}

variable "vm_size" {
  description = "Azure Virtual Machine Size"
  default     = "Standard_D2as_v4"
  type        = string
}
