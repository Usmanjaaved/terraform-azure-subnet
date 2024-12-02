resource "azurerm_subnet" "main" {
  name                 = var.subnet_name            # Correct usage of the variable
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.subnet_address_prefixes  # Correct usage of the variable
}