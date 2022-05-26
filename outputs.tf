output "all" {
  description = "List all checked available IPs for the Subnet."

  value = local.available_ips
}

output "one" {
  description = "List one checked available IP for the Subnet."

  value = local.available_ips[0]
}
