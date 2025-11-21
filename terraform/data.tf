data "azurerm_log_analytics_workspace" "law" {
  name                = "cloud-platform-cu-law"
  resource_group_name = "cloud-platform-cu-rg"
}