/**
 * # Example: Basic
 *
 * Basic example for the module.
 */

module "available_ips" {
  source = "../.."

  resource_group = "my-rg"
  vnet_name      = "my-vnet"
  subnet_name    = "my-subnet"
}
