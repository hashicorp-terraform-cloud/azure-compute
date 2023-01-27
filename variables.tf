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
}