resource "azurerm_resource_group" "base_resource_group" {
  name     = "rg-${var.project_name}-${var.location}-${var.envrionment}-001"
  location = var.location

  tags = var.default_tags
}

module "networking" {
  source              = "./modules/networking"
  address_space       = ["10.0.0.0/16"]
  vnet_name           = "vnet-${var.project_name}-${var.location}-${var.envrionment}-001"
  location            = azurerm_resource_group.base_resource_group.location
  resource_group_name = azurerm_resource_group.base_resource_group.name
}
