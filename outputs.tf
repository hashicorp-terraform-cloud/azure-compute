output "rhel_vm_id" {
  value       = module.rhel-standard.*.rhel_vm_id
  description = "The Azure ID of the Azure Virtual Machine Instance"
}

output "private_ip" {
  value       = module.rhel-standard.*.rhel_private_ip
  description = "The private IP adress of the Azure Virtual Machine Instance"
}

output "public_ip" {
  value       = module.rhel-standard.*.rhel_public_ip
  description = "The public IP adress of the Azure Virtual Machine Instance"
}

output "default_username" {
  value       = module.rhel-standard.*.rhel_default_username
  description = "The default username of the Azure Virtual Machine Instance"
}

output "default_hostname" {
  value       = module.rhel-standard.*.rhel_default_hostname
  description = "The default hostname of the Azure Virtual Machine Instance"
}
