<!-- BEGIN_TF_DOCS -->
# Terraform Azure Module: Available IPs

Module responsible for getting available IPs inside a subnet.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.7 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.7 |
| <a name="provider_external"></a> [external](#provider\_external) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | ~> 3.1 |

## Resources

| Name | Type |
|------|------|
| [null_resource.keepers](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |
| [external_external.available_ips](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Subnet's resource group. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet's name. | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Subnet's virtual network name. | `string` | n/a | yes |
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Keepers for this IP. | `list(string)` | `[]` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subnet's subscription ID. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all"></a> [all](#output\_all) | List all checked available IPs for the Subnet. |
| <a name="output_one"></a> [one](#output\_one) | List one checked available IP for the Subnet. |
<!-- END_TF_DOCS -->