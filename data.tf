data "azurerm_client_config" "current" {}

data "azurerm_subnet" "this" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group
}

data "external" "available_ips" {
  program = ["bash", "${path.module}/script/get_available_ips.sh"]
  query = {
    subscription   = local.subscription_id
    resource_group = var.resource_group
    vnet_name      = var.vnet_name
    subnet_name    = var.subnet_name
  }

  depends_on = [null_resource.keepers]
}
