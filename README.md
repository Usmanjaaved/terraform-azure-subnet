# Terraform Module: Azure Subnet

This Terraform module creates an Azure Subnet within a specified Virtual Network and Resource Group.

## Requirements

- Terraform 0.12 or higher
- Azure Provider (`azurerm` version >= 2.0)

## Module Inputs

| Name                    | Description                                                    | Type           | Default | Required |
|-------------------------|----------------------------------------------------------------|----------------|---------|----------|
| `resource_group_name`    | The name of the Resource Group where the subnet will be created| string         | N/A     | Yes      |
| `virtual_network_name`   | The name of the Virtual Network to which the subnet belongs    | string         | N/A     | Yes      |
| `subnet_name`            | The name of the subnet                                         | string         | N/A     | Yes      |
| `subnet_address_prefixes`| A list of address prefixes for the subnet                      | list(string)   | N/A     | Yes      |

## Module Outputs

| Name          | Description                               |
|---------------|-------------------------------------------|
| `subnet_id`   | The ID of the created subnet              |
| `subnet_name` | The name of the created subnet            |

## Example Usage

### Basic Example

```hcl
module "azurerm_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.subnet_name
  resource_group_name     = module.azurerm_resource_group.resource_group_name
  virtual_network_name    = module.virtual_network.vnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}


Input Variables
resource_group_name: The name of the resource group where the subnet will be created.
virtual_network_name: The name of the Virtual Network that the subnet will belong to.
subnet_name: The name to assign to the subnet.
subnet_address_prefixes: A list of address prefixes for the subnet, e.g., ["10.0.1.0/24", "10.0.2.0/24"].
Outputs
subnet_id: The ID of the created subnet.
subnet_name: The name of the created subnet.


Notes
Ensure that the Virtual Network and Resource Group are already created before using this module.
This module supports the definition of multiple address prefixes for the subnet.
