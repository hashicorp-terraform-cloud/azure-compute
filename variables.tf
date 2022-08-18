variable vm_count {
  description = "Number of Azure Virtual Machines to create"
  type = number
  default = 1
}

variable "ssh_admin_user_public_key" {
  description = "Admin User SSH Public Key"
  type        = string
}

variable "ssh_admin_user" {
  description = "Admin User SSH Username"
  type        = string
}

variable vm_base_name {
  description = "Azure Virtual Machine Name Prefix"
  type = string
}

variable "rg_name" {
  description = "Resource Group Name"
  default     = "terraformDefaultRG"
  type        = string
}