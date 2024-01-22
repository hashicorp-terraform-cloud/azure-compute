# azure-compute

Example of Terraform configurations called a module in Terraform Cloud's Private Module Registry.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.77.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rhel-standard"></a> [rhel-standard](#module\_rhel-standard) | app.terraform.io/ben-holmes/rhel-standard/azurerm | 0.0.10 |

## Resources

| Name | Type |
|------|------|
| [random_pet.compute_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to be applied to the created resources | `map(any)` | `{}` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Target Resource Group Name | `string` | n/a | yes |
| <a name="input_ssh_admin_user"></a> [ssh\_admin\_user](#input\_ssh\_admin\_user) | Admin User SSH Username | `string` | n/a | yes |
| <a name="input_ssh_admin_user_public_key"></a> [ssh\_admin\_user\_public\_key](#input\_ssh\_admin\_user\_public\_key) | Admin User SSH Public Key | `string` | n/a | yes |
| <a name="input_vm_instance_count"></a> [vm\_instance\_count](#input\_vm\_instance\_count) | Number of Azure Virtual Machines to create | `number` | `1` | no |
| <a name="input_vm_name_prefix"></a> [vm\_name\_prefix](#input\_vm\_name\_prefix) | Each VM is created with a randomly generated name. Assign a common prefix. | `string` | n/a | yes |
| <a name="input_vm_owner"></a> [vm\_owner](#input\_vm\_owner) | Individual or Team responsible | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Azure Virtual Machine Size | `string` | `"Standard_D2as_v4"` | no |
| <a name="input_vm_sku"></a> [vm\_sku](#input\_vm\_sku) | Azure RHEL Virtual Machine SKU | `string` | `"rhel-lvm91-gen2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_username"></a> [default\_username](#output\_default\_username) | The Default Admin Username of the Azure Virtual Machine Instance |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The Private IP Adress of the Azure Virtual Machine Instance |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The Public IP Adress of the Azure Virtual Machine Instance |
| <a name="output_rhel_vm_id"></a> [rhel\_vm\_id](#output\_rhel\_vm\_id) | The ID of the Azure Virtual Machine Instance |
