output "all_available_ips" {
  value = module.available_ips.all
}

output "one_available_ip" {
  value = module.available_ips.one
}
