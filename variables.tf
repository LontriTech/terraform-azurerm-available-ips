variable "subscription_id" {
  description = "Subnet's subscription ID."

  type     = string
  default  = null
  nullable = true
}

variable "keepers" {
  description = "Keepers for this IP."

  type     = list(string)
  default  = []
  nullable = false
}


variable "resource_group" {
  description = "Subnet's resource group."

  type     = string
  nullable = false
}

variable "vnet_name" {
  description = "Subnet's virtual network name."

  type     = string
  nullable = false
}

variable "subnet_name" {
  description = "Subnet's name."

  type     = string
  nullable = false
}
