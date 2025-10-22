module "azure-network" {
  source  = "app.terraform.io/solexb/azure-network/azurerm"
  version = "0.0.1-alpha-7"
  
  project             = var.project
  resource_group_name = azurerm_resource_group.primary_automation_dev_rg.name
  location            = azurerm_resource_group.primary_automation_dev_rg.location
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}

module "azure-network-1" {
  source  = "app.terraform.io/solexb/azure-network/azurerm"
  version = "0.0.1-alpha-7"
  
  project             = var.project
  resource_group_name = azurerm_resource_group.primary_automation_dev_rg.name
  location            = azurerm_resource_group.primary_automation_dev_rg.location
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}