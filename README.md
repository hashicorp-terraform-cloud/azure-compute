# azure-compute

Example of Terraform configurations called a module in Terraform Cloud's Private Module Registry.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.14.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.6.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rhel-standard"></a> [rhel-standard](#module\_rhel-standard) | app.terraform.io/ben-holmes/rhel-standard/azurerm | 0.1.6 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to be applied to the created resources | `map(any)` | `{}` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Target Resource Group Name | `string` | n/a | yes |
| <a name="input_rhsm_activation_key"></a> [rhsm\_activation\_key](#input\_rhsm\_activation\_key) | RHSM Activation Key | `string` | n/a | yes |
| <a name="input_rhsm_organisation_id"></a> [rhsm\_organisation\_id](#input\_rhsm\_organisation\_id) | RHSM Organisation ID | `string` | n/a | yes |
| <a name="input_ssh_admin_user_public_key"></a> [ssh\_admin\_user\_public\_key](#input\_ssh\_admin\_user\_public\_key) | Admin User SSH Public Key | `string` | n/a | yes |
| <a name="input_vm_instance_count"></a> [vm\_instance\_count](#input\_vm\_instance\_count) | Number of Azure Virtual Machines to create | `number` | `1` | no |
| <a name="input_vm_name_prefix"></a> [vm\_name\_prefix](#input\_vm\_name\_prefix) | Each VM is created with a randomly generated name. Assign a common prefix. | `string` | n/a | yes |
| <a name="input_vm_owner"></a> [vm\_owner](#input\_vm\_owner) | Individual or Team responsible | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Azure Virtual Machine Size | `string` | `"Standard_D2as_v5"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_hostname"></a> [default\_hostname](#output\_default\_hostname) | The default hostname of the Azure Virtual Machine Instance |
| <a name="output_default_username"></a> [default\_username](#output\_default\_username) | The default username of the Azure Virtual Machine Instance |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The private IP adress of the Azure Virtual Machine Instance |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public IP adress of the Azure Virtual Machine Instance |
| <a name="output_rhel_vm_id"></a> [rhel\_vm\_id](#output\_rhel\_vm\_id) | The Azure ID of the Azure Virtual Machine Instance |
<!-- END_TF_DOCS -->