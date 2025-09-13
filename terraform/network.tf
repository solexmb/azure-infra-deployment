module "network" {
  source  = "app.terraform.io/<ORG>/network/azure"
  version = "0.1.0"

  project             = var.project
  resource_group_name = local.resource_group_name
  location            = azurerm_resource_group.rg.location
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}