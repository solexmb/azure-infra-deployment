resource "azurerm_resource_group" "primary_automation_cu_rg" {
  name     = "${local.prefix}-cu-rg"
  location = var.location
}

// Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "vm_law" {
  name                = "${local.prefix}-cu-law"
  location            = azurerm_resource_group.primary_automation_cu_rg.location
  resource_group_name = azurerm_resource_group.primary_automation_cu_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
#   tags                = var.tags
}