output "rhel_vm_id" {
  value       = module.rhel.*.rhel_vm_id
  description = "The ID of the Azure Virtual Machine Instance"
}

output "private_ip" {
  value       = module.rhel.*.rhel_private_ip
  description = "The Private IP Adress of the Azure Virtual Machine Instance"
}

output "public_ip" {
  value       = module.rhel.*.rhel_public_ip
  description = "The Public IP Adress of the Azure Virtual Machine Instance"
}

output "default_username" {
  value       = module.rhel.*.rhel_default_username
  description = "The Default Admin Username of the Azure Virtual Machine Instance"
}