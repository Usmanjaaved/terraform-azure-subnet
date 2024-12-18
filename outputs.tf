output "subnet_id" {
  description = "The ID of the subnet"
  value       = azurerm_subnet.main.id
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.main.name
}

# output "subnet_address_prefixes" {
#   description = "The address prefixes of the subnet"
#   value       = azurerm_subnet.main.address_prefixes
# }
