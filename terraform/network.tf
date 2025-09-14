module "azure-network" {
  source  = "app.terraform.io/solexb/azure-network/azurerm"
  version = "0.0.1-alpha-3"
  
  project             = var.project
  resource_group_name = local.resource_group_name
  location            = azurerm_resource_group.rg.location
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}
