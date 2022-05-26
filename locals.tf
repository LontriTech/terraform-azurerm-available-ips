locals {
  subscription_id = var.subscription_id == null ? data.azurerm_client_config.current.subscription_id : var.subscription_id

  delimiter = ","

  available_ips = split(local.delimiter, data.external.available_ips.result.data)

  keepers = join(",", var.keepers)
}
